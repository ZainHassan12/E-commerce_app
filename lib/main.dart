import 'package:edens/screen/splashScreen.dart';
import 'package:edens/string.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    title: title,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: regular,
    ),
    builder: EasyLoading.init(),
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
}
