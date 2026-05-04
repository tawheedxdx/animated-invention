# Project Blueprint

## Overview

This is a Flutter application that displays a web page in a webview. The app starts with an animated splash screen and then loads the specified URL.

## Features

*   **Animated Splash Screen:** An animated "FYXEN" logo is displayed when the app starts.
*   **Webview:** The main screen of the app is a webview that loads the website `https://www.fyxen.in`.

## Project Structure

*   `lib/main.dart`: The main entry point of the application, containing the splash screen and the main webview screen.
*   `pubspec.yaml`: Contains the project dependencies, including `webview_flutter` and `animated_text_kit`.
*   `android/app/build.gradle.kts`: Android build configuration, with `minSdkVersion` set to 21.
*   `android/app/src/main/AndroidManifest.xml`: Android manifest, with the `INTERNET` permission added.
