# NodeX Patient App

Welcome to NodeX, a Flutter app developed for the [Hackathon Name]. NodeX is a mobile application designed to [briefly describe the purpose or functionality of your app]. This README.md file will guide you through the project structure, dependencies, and how to run the app locally.

## Table of Contents
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Versioning](#versioning)


## Project Structure

The project follows a standard Flutter structure with the main files and folders:

- **lib**: Contains the Dart code for the Flutter app.
  - **Presentation**: User interface layer.
    - **Routes**: Define the app's routes.
    - **Screens**: Individual screens/widgets for different parts of the app.
- **assets**: Stores app assets such as images.
- **pubspec.yaml**: Configuration file for Flutter dependencies.

## Getting Started

Follow these steps to get the NodeX app up and running on your local machine:

1. Ensure you have Flutter installed. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone this repository: `git clone https://github.com/isaquliyev/USG_APEX_Hackhaton.git`
3. Navigate to the project directory: `cd mobile_app`
4. Run the app: `flutter run`

## Dependencies

NodeX relies on several Flutter packages for its functionality. Here are the key dependencies:

- **bloc**: State management library for Flutter.
- **flutter_bloc**: Flutter-specific extensions for BLoC.
- **google_fonts**: Provides a wide range of Google Fonts for styling.
- **image_gallery_saver**: Allows saving images to the device gallery.
- **fluttertoast**: Displays toast messages in the app.
- **percent_indicator**: Creates circular and linear progress indicators.
- **file_picker**: Enables file picking functionality.
- **iconsax**: Icon set for your app.
- **dotted_border**: Renders dotted borders for widgets.
- **dio**: A powerful HTTP client for making network requests.

To install these dependencies, run: `flutter pub get`

## Versioning

The app follows semantic versioning. The current version is `1.0.0+1`, where `1.0.0` is the version, and `1` is the build number.
