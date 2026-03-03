# Hero Widget Presentation

A Flutter demonstration of the Hero widget for smooth cross-screen animations.

## How to Run

1. Ensure Flutter is installed on your system
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to launch the app on your preferred device

## About the Hero Widget

The **Hero widget** creates smooth, animated transitions of a widget between two screens, making navigation feel fluid and connected.

### Key Attributes

1. **tag** (required): A unique identifier that matches the Hero widget across both screens, enabling Flutter to link them for the animation.

2. **child** (required): The widget to be animated. This can be any widget—images, icons, text, containers, etc.

3. **createRectTween** (optional): Defines the animation path between screens. While not used in this demo, it allows customization of how the Hero travels during the transition.

### What This Demo Shows

This app demonstrates three different Hero animations:
- **CircleAvatar** with a person icon (blue) that expands when tapped
- **Container** with a star icon (orange) that grows and transforms
- **Text widget** displaying "FLUTTER" (green) that scales up smoothly

Tap any of the three icons at the bottom to see the Hero animation in action!

## Screenshot

![Hero Animations Demo](Final%20UI%20Screenshot.png)

## Presntation date

March 3rd 2026

## AUthor

Gaddiel Irakoze
