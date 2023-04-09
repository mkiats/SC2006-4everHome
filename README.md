# 4everHome
SC2006 Software Engineering Project

## Project Description
<p align="justify"> 
  4EverHome is a mobile application which seeks to assist users in the purchase of properties in Singapore. The mobile app aims to seamlessly bridge the gap between different parties such as consumers, realtors, financial institutions and interior designers to facilitate the purchase of a property.
  <p align="center">
    <img src='https://user-images.githubusercontent.com/77598625/229779826-5a7a40be-6bef-451c-9348-327a1d9d5475.png'>
  </p>
  4EverHome's functions can be broadly categorised into 2 main purposes.
  4EverHome aids users in finding their ideal home by taking into account factors such as types of residence, price range, and preferred location. Users can view suggested properties based on their preferences and make their decision to purchase the property.
  4EverHome connects users to external agents such as loan agents, realtors and interior designers, which are often difficult and time-consuming to source. Through the usage of this app, users can choose which services they can engage with during the purchase of their property. 4everHome aims to bring convenience for the users and provide seamless user experiences for them.
</p>
<br>

## Key Features
1. User Authentication
- Existing users will be able to login using their registered email address and password. New users can sign up an account using the register page.
 
 <table>
  <tr>
    <td align="center">Login</td>
    <td align="center">Register</td>
  </tr>
  <tr>
    <td align="center"><img width=50% height=auto src="https://user-images.githubusercontent.com/77598625/230762699-03324234-a95f-41e9-b258-47fa49b0ce24.png"></td>
    <td align="center"><img width=50% height=auto src="https://user-images.githubusercontent.com/77598625/230762742-2499b511-2c56-419b-9f70-147ace3443f0.png"></td>
  </tr>
 </table>
<br>

2. Search for available listings
- Users can choose to either search for listings by text search or by filters.
 
 <table>
  <tr>
    <td align="center">Search Listing by Name</td>
    <td align="center">Search Listing by Filters</td>
    <td align="center">Recommended Listings</td>
  </tr>
  <tr>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230763257-043c2852-f6a0-40f0-a558-eb189f867af3.png"></td>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230763322-3cc3c557-247a-458b-8b67-9c2cd31505da.png"></td>
    <td align="center"><img width=90% height=auto src="https://user-images.githubusercontent.com/77598625/230763357-d48309b9-9808-4220-b97f-aaf2ac4d0bf0.png"></td>
  </tr>
 </table>
<br>

3. View details for a selected listing
- After selecting a particular listing on the google map, users can find out more about it.
 
 <table>
  <tr>
    <td align="center">View Nearby Amenities</td>
    <td align="center">View Budget Estimation</td>
    <td align="center">Loan Calculation</td>
    <td align="center">View Loan Estimation</td>
  </tr>
  <tr>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230763783-f04410ac-6177-43b8-a9b5-860e3a2c2394.png"></td>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230763813-545d0896-4cc6-40dd-a336-20c9015f6e76.png"></td>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230763828-21fa46d0-6d8d-44b4-9c8c-4ddea8e83748.png"></td>
    <td align="center"><img src="https://user-images.githubusercontent.com/77598625/230764309-59ef1ca4-106b-4dea-b0dc-df3a6a471f8f.png"></td>
  </tr>
 </table>


4. Liaise with external agents


5. Send email confirmation




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

