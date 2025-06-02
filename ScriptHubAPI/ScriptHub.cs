using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using DCC;

namespace DCC
{
    public class SHL
    {
        public string _currentSearch = string.Empty;
        public int _currentPage = 1;
        private bool _isSearching = false;
        public int page = 1;
        public int TotalPages = 1;

        public int GetTotalPages()
        {
            return TotalPages;
        }

        public string GetCurrentS()
        {
            return _currentSearch;
        }

        public int GetPage()
        {
            return page;
        }

        public bool IsSearching()
        {
            return _isSearching;
        }
        public void SetCurrentS(string search)
        {
            _currentSearch = search;
        }

        private void SetTotalPages(int pages)
        {
            TotalPages = pages;
        }

        public void SetPage(int pg)
        {
            page = pg;
        }
        internal async Task LoadTrendingScripts(WrapPanel EveryResults, TextBlock SearchLoadingIndicator, TextBlock NoResultsText)
        {
            try
            {
                // Show loading indicator
                if (SearchLoadingIndicator != null)
                    SearchLoadingIndicator.Visibility = Visibility.Visible;
                if (NoResultsText != null)
                    NoResultsText.Visibility = Visibility.Collapsed;

                // Clear existing results first
                if (EveryResults != null)
                    EveryResults.Children.Clear();

                string api = $"https://scriptblox.com/api/script/fetch?max=20";
                HttpClient httpClient = new HttpClient();
                using (HttpResponseMessage response = await httpClient.GetAsync(api))
                {
                    response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();

                    if (string.IsNullOrEmpty(responseBody))
                    {
                        throw new InvalidOperationException("Received empty response from API");
                    }

                    ResultObject result = JsonConvert.DeserializeObject<ResultObject>(responseBody);

                    if (result == null || result.result == null || result.result.scripts == null)
                    {
                        throw new InvalidOperationException("Failed to parse API response");
                    }

                    if (result.result.scripts.Length == 0)
                    {
                        if (NoResultsText != null)
                            NoResultsText.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        if (NoResultsText != null)
                            NoResultsText.Visibility = Visibility.Collapsed;

                        // Add scripts with animation
                        for (int i = 0; i < result.result.scripts.Length; i++)
                        {
                            try
                            {
                                ScriptObject script = result.result.scripts[i];

                                if (script == null || script.game == null)
                                    continue;

                                string imageUrl = script.game.imageUrl;
                                if (!string.IsNullOrEmpty(imageUrl))
                                {
                                    if (!imageUrl.StartsWith("http"))
                                        imageUrl = "https://scriptblox.com" + imageUrl;

                                    // Create a BitmapImage with proper error handling
                                    BitmapImage bitmapImage = new BitmapImage();
                                    bitmapImage.BeginInit();
                                    bitmapImage.UriSource = new Uri(imageUrl);
                                    bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
                                    bitmapImage.CreateOptions = BitmapCreateOptions.IgnoreImageCache;
                                    bitmapImage.EndInit();

                                    // Create the ResultScript control
                                    ResultScript scriptHubResult = new ResultScript
                                    {
                                        script = script.script ?? ""
                                    };

                                    // Set properties safely
                                    if (scriptHubResult.script_image != null)
                                        scriptHubResult.script_image.Source = bitmapImage;

                                    if (scriptHubResult.script_name != null)
                                        scriptHubResult.script_name.Text = script.Title ?? "Unnamed Script";

                                    if (scriptHubResult.script_game != null)
                                        scriptHubResult.script_game.Text = script.game.name ?? "Unknown Game";

                                    if (scriptHubResult.script_views != null)
                                        scriptHubResult.script_views.Text = $"Views: {script.views}";

                                    // Add tags
                                    if (scriptHubResult.TagsPanel != null)
                                    {
                                        if (script.isPatched)
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Patched"));
                                        if (script.scriptType == "paid")
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Paid"));
                                        if (script.scriptType == "free")
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Free"));
                                        if (script.isUniversal)
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Universal"));
                                        if (script.verified)
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Verified"));
                                        if (script.key)
                                            scriptHubResult.TagsPanel.Children.Add(CreateTag("Key System"));
                                    }

                                    scriptHubResult.Opacity = 0;
                                    scriptHubResult.Margin = new Thickness(0, 20, 0, 0);

                                    if (EveryResults != null)
                                    {
                                        EveryResults.Children.Add(scriptHubResult);

                                        // Animate the script entry with a slight delay for each item
                                        await Task.Delay(50 * i);
                                        AnimateScriptEntry(scriptHubResult);
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine($"Error processing script {i}: {ex.Message}");
                                // Continue with the next script
                            }
                        }
                    }

                    SetTotalPages(result.result.totalPages);
                }
            }
            finally
            {
                // Hide loading indicator
                if (SearchLoadingIndicator != null)
                    SearchLoadingIndicator.Visibility = Visibility.Collapsed;
            }
        }

        private void AnimateScriptEntry(ResultScript scriptEntry)
        {
            try
            {
                if (scriptEntry == null)
                    return;

                // Create animations
                DoubleAnimation fadeIn = new DoubleAnimation
                {
                    From = 0,
                    To = 1,
                    Duration = TimeSpan.FromMilliseconds(300),
                    EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
                };

                ThicknessAnimation slideIn = new ThicknessAnimation
                {
                    From = new Thickness(0, 20, 0, 0),
                    To = new Thickness(0, 0, 0, 0),
                    Duration = TimeSpan.FromMilliseconds(300),
                    EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
                };

                // Apply animations
                scriptEntry.BeginAnimation(UIElement.OpacityProperty, fadeIn);
                scriptEntry.BeginAnimation(FrameworkElement.MarginProperty, slideIn);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error animating script entry: {ex.Message}");
            }
        }

        private Border CreateTag(string tagName)
        {
            return new Border
            {
                Background = new SolidColorBrush(Color.FromRgb(20,20,20)),
                CornerRadius = new CornerRadius(5),
                Margin = new Thickness(0, 0, 15, -12.5),
                Child = new TextBlock
                {
                    Text = tagName,
                    FontSize = 18,
                    Foreground = Brushes.White,
                    Margin = new Thickness(3, 0, 3, 0)
                }
            };
        }

        internal async Task LoadScripts(bool ImprovedSearch, string search, WrapPanel EveryResults, TextBlock SearchLoadingIndicator, TextBlock NoResultsText)
        {
            if (_isSearching) return;
            _isSearching = true;

            try
            {
                // Show loading indicator
                if (SearchLoadingIndicator != null)
                    SearchLoadingIndicator.Visibility = Visibility.Visible;

                if (page == 1 && EveryResults != null)
                {
                    // Clear existing results only if this is the first page
                    EveryResults.Children.Clear();
                    if (NoResultsText != null)
                        NoResultsText.Visibility = Visibility.Collapsed;
                }

                string api = $"https://scriptblox.com/api/script/search?q={Uri.EscapeDataString(search)}&page={page}";
                HttpClient httpClient = new HttpClient();
                using (HttpResponseMessage response = await httpClient.GetAsync(api))
                {
                    response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();

                    if (string.IsNullOrEmpty(responseBody))
                    {
                        throw new InvalidOperationException("Received empty response from API");
                    }

                    ResultObject result = JsonConvert.DeserializeObject<ResultObject>(responseBody);

                    if (result == null || result.result == null || result.result.scripts == null)
                    {
                        throw new InvalidOperationException("Failed to parse API response");
                    }

                    if (result.result.scripts.Length == 0 && page == 1)
                    {
                        if (NoResultsText != null)
                            NoResultsText.Visibility = Visibility.Visible;
                    }
                    else
                    {
                        if (NoResultsText != null)
                            NoResultsText.Visibility = Visibility.Collapsed;

                        bool foundAnyScripts = false;

                        // Add scripts with animation
                        for (int i = 0; i < result.result.scripts.Length; i++)
                        {
                            try
                            {
                                ScriptObject script = result.result.scripts[i];

                                if (script == null || script.game == null)
                                    continue;

                                bool shouldAdd = true;

                                // Apply improved search filter if enabled
                                if (ImprovedSearch && !string.IsNullOrEmpty(search))
                                {
                                    shouldAdd = false;

                                    // Check if script title contains search term (case insensitive)
                                    if (script.Title != null && script.Title.IndexOf(search, StringComparison.OrdinalIgnoreCase) >= 0)
                                    {
                                        shouldAdd = true;
                                    }
                                    // Check if game name contains search term (case insensitive)
                                    else if (script.game.name != null && script.game.name.IndexOf(search, StringComparison.OrdinalIgnoreCase) >= 0)
                                    {
                                        shouldAdd = true;
                                    }
                                }

                                if (shouldAdd)
                                {
                                    foundAnyScripts = true;
                                    string imageUrl = script.game.imageUrl;
                                    if (!string.IsNullOrEmpty(imageUrl))
                                    {
                                        if (!imageUrl.StartsWith("http"))
                                            imageUrl = "https://scriptblox.com" + imageUrl;

                                        // Create a BitmapImage with proper error handling
                                        BitmapImage bitmapImage = new BitmapImage();
                                        bitmapImage.BeginInit();
                                        bitmapImage.UriSource = new Uri(imageUrl);
                                        bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
                                        bitmapImage.CreateOptions = BitmapCreateOptions.IgnoreImageCache;
                                        bitmapImage.EndInit();

                                        // Create the ResultScript control
                                        ResultScript scriptHubResult = new ResultScript
                                        {
                                            script = script.script ?? ""
                                        };

                                        // Set properties safely
                                        if (scriptHubResult.script_image != null)
                                            scriptHubResult.script_image.Source = bitmapImage;

                                        if (scriptHubResult.script_name != null)
                                            scriptHubResult.script_name.Text = script.Title ?? "Unnamed Script";

                                        if (scriptHubResult.script_game != null)
                                            scriptHubResult.script_game.Text = script.game.name ?? "Unknown Game";

                                        if (scriptHubResult.script_views != null)
                                            scriptHubResult.script_views.Text = $"Views: {script.views}";

                                        // Add tags
                                        if (scriptHubResult.TagsPanel != null)
                                        {
                                            if (script.isPatched)
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Patched"));
                                            if (script.scriptType == "paid")
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Paid"));
                                            if (script.scriptType == "free")
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Free"));
                                            if (script.isUniversal)
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Universal"));
                                            if (script.verified)
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Verified"));
                                            if (script.key)
                                                scriptHubResult.TagsPanel.Children.Add(CreateTag("Key System"));
                                        }

                                        scriptHubResult.Opacity = 0;
                                        scriptHubResult.Margin = new Thickness(0, 20, 0, 0);

                                        if (EveryResults != null)
                                        {
                                            EveryResults.Children.Add(scriptHubResult);

                                            // Animate the script entry with a slight delay for each item
                                            await Task.Delay(30 * i);
                                            AnimateScriptEntry(scriptHubResult);
                                        }
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine($"Error processing script {i}: {ex.Message}");
                                // Continue with the next script
                            }
                        }

                        // Show no results message if no scripts were added with improved search
                        if (!foundAnyScripts && ImprovedSearch && page == 1)
                        {
                            if (NoResultsText != null)
                                NoResultsText.Visibility = Visibility.Visible;
                        }
                    }

                    SetTotalPages(result.result.totalPages);
                }
            }
            finally
            {
                // Hide loading indicator
                if (SearchLoadingIndicator != null)
                    SearchLoadingIndicator.Visibility = Visibility.Collapsed;
                _isSearching = false;
            }
        }
    }
    public class ResultObject
    {
        public ResultContent result { get; set; }
    }

    public class ResultContent
    {
        public int totalPages { get; set; }
        public ScriptObject[] scripts { get; set; }
    }

    public class ScriptObject
    {
        public string _id { get; set; }
        public string Title { get; set; }
        public Game game { get; set; }
        public int views { get; set; }
        public bool isPatched { get; set; }
        public string scriptType { get; set; }
        public bool isUniversal { get; set; }
        public bool verified { get; set; }
        public bool key { get; set; }
        public string script { get; set; }
    }

    public class Game
    {
        public string imageUrl { get; set; }
        public string name { get; set; }
    }
}
