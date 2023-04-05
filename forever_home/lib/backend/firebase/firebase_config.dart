import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAsQ83Bzk7TtC5XvzrstK8c0KRVMIdCH1o",
            authDomain: "ever-home-dce4d.firebaseapp.com",
            projectId: "ever-home-dce4d",
            storageBucket: "ever-home-dce4d.appspot.com",
            messagingSenderId: "733052436718",
            appId: "1:733052436718:web:c8347adffe2b18e73033ff",
            measurementId: "G-KSLK9GB0YC"));
  } else {
    await Firebase.initializeApp();
  }
}
