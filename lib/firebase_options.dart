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
        return macos;
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
    apiKey: 'AIzaSyA2VW2lMY81_FhHYabB1zDuZhJAbs1FBl0',
    appId: '1:719983048017:web:ff12b09c74b8c1794a8f70',
    messagingSenderId: '719983048017',
    projectId: 'lixo-study-owner-acc',
    authDomain: 'lixo-study-owner-acc.firebaseapp.com',
    storageBucket: 'lixo-study-owner-acc.appspot.com',
    measurementId: 'G-SSPZR0XX40',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApGkbTrjulT4ksrX57w6kVImoE4PGZzVM',
    appId: '1:719983048017:android:b1b81600d04723f34a8f70',
    messagingSenderId: '719983048017',
    projectId: 'lixo-study-owner-acc',
    storageBucket: 'lixo-study-owner-acc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPredmKQGawzLXPAUdp7REnH-lrAqOO0E',
    appId: '1:719983048017:ios:08c7ebd34435e0a24a8f70',
    messagingSenderId: '719983048017',
    projectId: 'lixo-study-owner-acc',
    storageBucket: 'lixo-study-owner-acc.appspot.com',
    iosBundleId: 'com.example.lixoStudy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPredmKQGawzLXPAUdp7REnH-lrAqOO0E',
    appId: '1:719983048017:ios:5f49a2c7a9b80a4a4a8f70',
    messagingSenderId: '719983048017',
    projectId: 'lixo-study-owner-acc',
    storageBucket: 'lixo-study-owner-acc.appspot.com',
    iosBundleId: 'com.example.lixoStudy.RunnerTests',
  );
}
