# 4everHome
SC2006 Software Engineering Project

## Project Description
<p align="justify"> 
  
  4EverHome is a mobile application which seeks to assist users in the purchase of properties in Singapore. The mobile app aims to seamlessly bridge the gap between different parties such as consumers, realtors, financial institutions and interior designers to facilitate the purchase of a property.
  
  <p align="center">
    <img width="650" height="350" src='https://user-images.githubusercontent.com/77598625/229779826-5a7a40be-6bef-451c-9348-327a1d9d5475.png'>
  </p>

  4EverHome's functions can be broadly categorised into 2 main purposes.
  4EverHome aids users in finding their ideal home by taking into account factors such as types of residence, price range, and preferred location. Users can view suggested properties based on their preferences and make their decision to purchase the property.
  4EverHome connects users to external agents such as loana agents, realtors and interior designers, which are often difficult and time-consuming to source. Through the usage of this app, users can choose which services they can engage with during the purchase of their property. 4everHome aims to bring convenience for the users and provide seamless user experiences for them.
</p>


## Key Features
1. User Authentication
- Login/Register
  <p align="center">
    <img src='https://user-images.githubusercontent.com/77598625/230762699-03324234-a95f-41e9-b258-47fa49b0ce24.png'>
    <img src='https://user-images.githubusercontent.com/77598625/230762742-2499b511-2c56-419b-9f70-147ace3443f0.png'>
  </p>





## Technologies

Project is created with:

- [Flutter](https://docs.flutter.dev/get-started/install)
- [Firebase](https://firebase.google.com/)
- [Dart](https://dart.dev/get-dart)
- [Google Place API](https://developers.google.com/maps/documentation/places/web-service)
- [SendGrid Email API](https://sendgrid.com/solutions/email-api/)


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
- Operating System: Android 
- Version: Android 11 Red Velvet Cake
- Model: Samsung Galaxy S10+
- Stable internet connection is required.


## Contributors

| Profile                                                                                                                                           | Name             | School                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------- |
| <a href='https://github.com/jklye' title='jklye'> <img src='https://github.com/jklye.png' height='50' width='50'/></a> | Lye Jin Kai       | Nanyang Technological University (NTU) |
| <a href='https://github.com/kiatCodes' title='kiatCodes'> <img src='https://github.com/kiatCodes.png' height='50' width='50'/></a>                   | Tng Meng Kiat | Nanyang Technological University (NTU) |
| <a href='https://github.com/jialatsin' title='jialatsin'> <img src='https://github.com/jialatsin.png' height='50' width='50'/></a>                   | Gerard Sin | Nanyang Technological University (NTU) |
| <a href='https://github.com/SamsonOngqx' title='SamsonOngqx'> <img src='https://github.com/SamsonOngqx.png' height='50' width='50'/></a>                   | Ong Qi Xuan Samson | Nanyang Technological University (NTU) |
| <a href='https://github.com/chenyi1491' title='chenyi1491'> <img src='https://github.com/chenyi1491.png' height='50' width='50'/></a>                   | Chen Yi | Nanyang Technological University (NTU) |

