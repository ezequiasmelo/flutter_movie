# flutter_movie

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


    https://www.themoviedb.org/
    https://developers.themoviedb.org/4/list/get-list


    converter json em Model dart
        https://www.dripcoding.com/json-to-dart/


    https://pub.dev/packages/lottie/install
    https://lottiefiles.com/

    https://pub.dev/packages/shared_preferences/install
    https://pub.dev/packages/cached_network_image/install

    https://pub.dev/packages/get_it/install
    https://pub.dev/packages/dartz/install

Clean Architecture
Micro-frontends com Monorepo

commands 

    cd packages/core
    flutter create --template=package micro_core

    cd packages/commons
    flutter create --template=package dependencies

    cd packages/micro_apps
    flutter create --template=package movie
    flutter create --template=package login
    
    cd packages/commons
    flutter create --template=package eventbus