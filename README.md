# mds_pokemonTCG

A new Flutter project.

<p style="font-size: 18px ; color: red;">
This repo should remain private, some (not critic) paths are informed as well as some mail addresses.
</p>

## What to do ?

Develop a Flutter client app for the API
pokemontcg.io
Your app should contains:
* * [x] A list of all pokemon
* * * [ ] Small picture
* * * [x] Name
* * [x] A detail page for each pokemon
* * * [x] Big picture
* * * [ ] All the pokemon details
* * [x] Search bar
* * * [x] Filter the pokemon list based on a string

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Used commands 

  413  cd android/
  414  fastlane init
  417  ./gradlew --refresh-dependencies
  420  sudo gem install bundler
  422  sudo fastlane add_plugin firebase_app_distribution
  423  bundle exec fastlane run firebase_app_distribution_login
  424  export FIREBASE_TOKEN=1//03kjnJH8t_w4SCgYIARAAGAMSNwF-etc
  425  export GOOGLE_APPLICATION_CREDENTIALS=/home/cedrix/my-mds-pokemontcg-26c03047f6f3.json
  430  firebase login
  431  firebase projects:list
  436  firebase login --reauth
  437  firebase projects:list
  439  fastlane send_to_testers

  (Penser à activer ("commencer") l'app distribution)

  ## App distribution

  Run `cd ./android && fastlane send_to_testers`. 