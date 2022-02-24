import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'pages/signup_page.dart';
import 'shared/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: Config.apiKey,
    authDomain: Config.authDomain,
    appId: Config.appId,
    messagingSenderId: Config.messagingSenderId,
    projectId: Config.projectId,
    storageBucket: Config.storageBucket,
    measurementId: Config.measurementId,
  ));
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //   apiKey: "AIzaSyCrk2c5s0mI-P9fhhDHAFO_Su4t6P6sCYY",
  //   authDomain: "udi-ease-shop-53319.firebaseapp.com",
  //   appId: "1:267729655155:web:f4472f26a93d3fda586106",
  //   messagingSenderId: "26772965515",
  //   projectId: "udi-ease-shop-53319",
  //   storageBucket: "udi-ease-shop-53319.appspot.com",
  //   measurementId: "G-5P55SEJE5H"
  // ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
      )),
      home: const SignUpPage(),
    );
  }
}
