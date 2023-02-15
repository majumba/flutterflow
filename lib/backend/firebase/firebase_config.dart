import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBd2nTubuxqqSVSuPI052yxXAToMT9juEA",
            authDomain: "banteng-3525b.firebaseapp.com",
            projectId: "banteng-3525b",
            storageBucket: "banteng-3525b.appspot.com",
            messagingSenderId: "190768470030",
            appId: "1:190768470030:web:51cc8ebb66ab8aa2a8445f",
            measurementId: "G-29C9XSGH3T"));
  } else {
    await Firebase.initializeApp();
  }
}
