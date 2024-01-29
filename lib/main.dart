import 'package:auth_app/app.dart';
import 'package:auth_app/data/repositories/authentication_repo.dart';
import 'package:auth_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
// Todo: Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();
// Todo: Init Local Storage
// Todo: Await Native Splash
// Todo: Initialize Firebase
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
).then((value) => Get.put(AuthenticationRepository()));
// Todo: Initialize Authentication
  runApp(const App());
}