# 4everHome

## SC2006 Software Engineering Project

## Project Description

4EverHome is a mobile application which seeks to assist users in the purchase of properties in Singapore. The mobile app aims to seamlessly bridge the gap between different parties such as consumers, realtors, financial institutions and interior designers to facilitate the purchase of a property.

![app flow](https://user-images.githubusercontent.com/77598625/229779826-5a7a40be-6bef-451c-9348-327a1d9d5475.png)

4EverHome's functions can be broadly categorised into 2 main purposes.
4EverHome aids users in finding their ideal home by taking into account factors such as type of residence, price range, and preferred location. Users can view suggested properties based on their preferences and make their decision to purchase the property.
4EverHome connects users to external agents such as realtors and interior designers, which are often difficult and time-consuming to source. Through the usage of this app, users can choose which services they can engage with during the purchase of their property.


## Setup Instructions

- Download [Visual Studio Code](https://code.visualstudio.com/download)
- Download the Dart and Flutter VSCode extensions
- Download [Android Studio](https://developer.android.com/studio/install) and [Android Toolchain](https://developer.android.com/ndk/downloads)
- Download [Flutter SDK](https://docs.flutter.dev/release/archive)
- Locate the path to bin folder and add path to environmental variable PATHS
- Open forever_home folder in VS Code
- Run 'flutter pub get'
- Run 'flutter packages pub run build_runner build --delete-conflicting-outputs' on VS Code terminal
- Change directory to forever_home in VS Code terminal
- Run 'flutter build apk --split-per-abi' in the VS Code terminal
- Locate APK files under forever_home/build/app/outputs
- Install APK into android test devices

Test device used:
- OS:
- Model:


## Technologies

Project is created with:

- [Flutter](https://docs.flutter.dev/get-started/install)
- [Firebase](https://firebase.google.com/)
- [Google Place API](https://developers.google.com/maps/documentation/places/web-service)
- [SendGrid Email API](https://sendgrid.com/solutions/email-api/)

## Contributors

| Profile                                                                                                                                           | Name             | School                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------- |
| <a href='https://github.com/jklye' title='jklye'> <img src='https://github.com/jklye.png' height='50' width='50'/></a> | Lye Jin Kai       | Nanyang Technological University (NTU) |
| <a href='https://github.com/kiatCodes' title='kiatCodes'> <img src='https://github.com/kiatCodes.png' height='50' width='50'/></a>                   | Tng Meng Kiat | Nanyang Technological University (NTU) |
| <a href='https://github.com/jialatsin' title='jialatsin'> <img src='https://github.com/jialatsin.png' height='50' width='50'/></a>                   | Gerald Sin | Nanyang Technological University (NTU) |
| <a href='https://github.com/SamsonOngqx' title='SamsonOngqx'> <img src='https://github.com/SamsonOngqx.png' height='50' width='50'/></a>                   | Ong Qi Xuan Samson | Nanyang Technological University (NTU) |
| <a href='https://github.com/chenyi1491' title='chenyi1491'> <img src='https://github.com/chenyi1491.png' height='50' width='50'/></a>                   | Chen Yi | Nanyang Technological University (NTU) |

