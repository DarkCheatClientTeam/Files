using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace DCC
{
    public partial class ResultScript : UserControl
    {
        private NotificationService _notificationService;
        public string script { get; set; }

        public ResultScript()
        {
            InitializeComponent();

            // Try to get the notification service from the main window
            try
            {
                _notificationService = NotificationService.GetInstance(Dispatcher);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error getting notification service: {ex.Message}");
            }
        }

        private void CopyButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Copy script to clipboard
                Clipboard.SetText(script);

                // Show notification
                if (_notificationService != null)
                {
                    _notificationService.ShowNotification("Script Hub", "Script copied to clipboard", 2.0);
                }
                else
                {
                    var mainWindow = Application.Current.MainWindow as MainWindow;
                    if (mainWindow != null)
                    {
                        mainWindow.ShowNotification("Script Hub", "Script copied to clipboard", 2.0);
                    }
                }

                // Play enhanced animation
                PlayEnhancedButtonAnimation(sender as Button);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error copying script: {ex.Message}");
                var mainWindow = Application.Current.MainWindow as MainWindow;
                if (mainWindow != null)
                {
                    mainWindow.ShowNotification("Error", $"Failed to copy script: {ex.Message}", 3.0);
                }
            }
        }

        private void PlayEnhancedButtonAnimation(Button button)
        {
            if (button == null) return;

            // Create a transform group for more complex animations
            TransformGroup transformGroup = new TransformGroup();
            ScaleTransform scaleTransform = new ScaleTransform(1, 1);
            transformGroup.Children.Add(scaleTransform);

            // Set the transform to the button
            button.RenderTransform = transformGroup;
            button.RenderTransformOrigin = new Point(0.5, 0.5);

            // Create scale animation (pulse effect)
            DoubleAnimation scaleDownAnimation = new DoubleAnimation
            {
                From = 1.0,
                To = 0.85,
                Duration = TimeSpan.FromMilliseconds(100),
                AutoReverse = true,
                EasingFunction = new BackEase { EasingMode = EasingMode.EaseOut, Amplitude = 0.3 }
            };

            // Create color animation for background
            ColorAnimation colorAnimation = new ColorAnimation
            {
                To = (Color)ColorConverter.ConvertFromString("#FF0000"),
                Duration = TimeSpan.FromMilliseconds(200),
                AutoReverse = true,
                EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
            };

            // Apply the scale animation
            scaleTransform.BeginAnimation(ScaleTransform.ScaleXProperty, scaleDownAnimation);
            scaleTransform.BeginAnimation(ScaleTransform.ScaleYProperty, scaleDownAnimation);

            // Apply the color animation if available
            if (button.Background is SolidColorBrush brush)
            {
                brush.BeginAnimation(SolidColorBrush.ColorProperty, colorAnimation);
            }

            // Create and apply a ripple effect
            CreateRippleEffect(button);
        }

        private void CreateRippleEffect(Button button)
        {
            // Create an ellipse for the ripple
            Ellipse ripple = new Ellipse
            {
                Width = 0,
                Height = 0,
                Fill = new SolidColorBrush(Color.FromArgb(100, 255, 255, 255)),
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center
            };

            // Add the ripple to the button's visual tree
            if (button.Template.FindName("ButtonBorder", button) is Border border)
            {
                if (border.Child is Grid grid)
                {
                    grid.Children.Add(ripple);
                }
                else
                {
                    Grid newGrid = new Grid();
                    UIElement originalChild = border.Child;
                    border.Child = newGrid;
                    if (originalChild != null)
                        newGrid.Children.Add(originalChild);
                    newGrid.Children.Add(ripple);
                }
            }

            // Create animations for the ripple
            DoubleAnimation growAnimation = new DoubleAnimation
            {
                From = 0,
                To = button.ActualWidth * 2,
                Duration = TimeSpan.FromMilliseconds(400),
                EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseOut }
            };

            DoubleAnimation fadeAnimation = new DoubleAnimation
            {
                From = 1,
                To = 0,
                Duration = TimeSpan.FromMilliseconds(400),
                EasingFunction = new QuadraticEase { EasingMode = EasingMode.EaseOut }
            };

            // Start the animations
            ripple.BeginAnimation(WidthProperty, growAnimation);
            ripple.BeginAnimation(HeightProperty, growAnimation);
            ripple.BeginAnimation(OpacityProperty, fadeAnimation);

            // Remove the ripple after animation completes
            fadeAnimation.Completed += (s, e) =>
            {
                if (button.Template.FindName("ButtonBorder", button) is Border b &&
                    b.Child is Grid g && g.Children.Contains(ripple))
                {
                    g.Children.Remove(ripple);
                }
            };
        }

        private void ResultScript_MouseEnter(object sender, MouseEventArgs e)
        {
            // Create hover animation
            DoubleAnimation opacityAnimation = new DoubleAnimation
            {
                From = 1.0,
                To = 0.9,
                Duration = TimeSpan.FromMilliseconds(200),
                EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
            };

            this.BeginAnimation(OpacityProperty, opacityAnimation);

            // Scale animation
            ScaleTransform scaleTransform = new ScaleTransform(1, 1);
            this.RenderTransform = scaleTransform;
            this.RenderTransformOrigin = new Point(0.5, 0.5);

            DoubleAnimation scaleAnimation = new DoubleAnimation
            {
                From = 1.0,
                To = 1.05,
                Duration = TimeSpan.FromMilliseconds(200),
                EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
            };

            scaleTransform.BeginAnimation(ScaleTransform.ScaleXProperty, scaleAnimation);
            scaleTransform.BeginAnimation(ScaleTransform.ScaleYProperty, scaleAnimation);
        }

        private void ResultScript_MouseLeave(object sender, MouseEventArgs e)
        {
            // Create hover animation
            DoubleAnimation opacityAnimation = new DoubleAnimation
            {
                From = 0.9,
                To = 1.0,
                Duration = TimeSpan.FromMilliseconds(200),
                EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
            };

            this.BeginAnimation(OpacityProperty, opacityAnimation);

            // Scale animation
            ScaleTransform scaleTransform = this.RenderTransform as ScaleTransform;
            if (scaleTransform != null)
            {
                DoubleAnimation scaleAnimation = new DoubleAnimation
                {
                    From = 1.05,
                    To = 1.0,
                    Duration = TimeSpan.FromMilliseconds(200),
                    EasingFunction = new CubicEase { EasingMode = EasingMode.EaseOut }
                };

                scaleTransform.BeginAnimation(ScaleTransform.ScaleXProperty, scaleAnimation);
                scaleTransform.BeginAnimation(ScaleTransform.ScaleYProperty, scaleAnimation);
            }
        }
    }
}
