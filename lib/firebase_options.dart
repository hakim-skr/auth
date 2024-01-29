// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyARxZ3IMt0yFJt4-oS_RPfFzvY7mDFKuFE',
    appId: '1:1091592520260:web:7102b051bdcbc54ea1f211',
    messagingSenderId: '1091592520260',
    projectId: 'authapp-8d87f',
    authDomain: 'authapp-8d87f.firebaseapp.com',
    storageBucket: 'authapp-8d87f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAA-MC4Cq21W0_CYwdeiwW5_S-sA_6UMfU',
    appId: '1:1091592520260:android:247f947a04c35a17a1f211',
    messagingSenderId: '1091592520260',
    projectId: 'authapp-8d87f',
    storageBucket: 'authapp-8d87f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALQvcErPtE_N-lKK9vqng4A_UALgSnW8Y',
    appId: '1:1091592520260:ios:0399c5f6d7285299a1f211',
    messagingSenderId: '1091592520260',
    projectId: 'authapp-8d87f',
    storageBucket: 'authapp-8d87f.appspot.com',
    androidClientId: '1091592520260-6gscsph8kp597t8ktm1cta6sd0jjbquu.apps.googleusercontent.com',
    iosClientId: '1091592520260-v1n3fe3qhfij1gn40itlaovqjee84oc5.apps.googleusercontent.com',
    iosBundleId: 'com.example.authApp',
  );
}