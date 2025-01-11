# flutter_skeleton

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/to/state-management-sample).

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/to/resolution-aware-images).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter apps](https://flutter.dev/to/internationalization).

## Run/Debug

VSCode has very good Flutter support. Just press F5 to run.

### Run as web app with Chromium

```bash
export CHROME_EXECUTABLE=/usr/bin/chromium
flutter run -d chrome
```

## Deploy

When you want to deploy webapp to custom path, then set **"FLUTTER_BASE_HREF"**
environment variable in your CI

### Deploy - GitHub Actions

If you deploy in GitHub organization and want to make this webapp to be at root of your GH organization's front page in root of domain, then you need to uncomment few lines in workflow configuration

**.github/workflows/flutter-web-deploy.yml:

```yaml
          personal_token: ${{ secrets.PERSONAL_TOKEN }}
          external_repository: BorderBook/borderbook.github.io
          publish_branch: main
```

***BorderBook/borderbook.github.io*** - this replace with your **Organizaton/Repository**

And also you need to add Personal Token to your account and set security variable for your CI - **PERSONAL_TOKEN**, and also configure settings of your organization in **GitHub (Settings/Personal Token)**
