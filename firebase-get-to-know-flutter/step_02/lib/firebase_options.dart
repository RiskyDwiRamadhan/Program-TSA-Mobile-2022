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
    apiKey: 'AIzaSyCn0X9Ep8UJLJkw8MRjoUeiDqvj4N-M4Go',
    appId: '1:672916998473:web:6c9a94c1ec07168f5a7298',
    messagingSenderId: '672916998473',
    projectId: 'flutter-ui-25e73',
    authDomain: 'flutter-ui-25e73.firebaseapp.com',
    storageBucket: 'flutter-ui-25e73.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7MnuoF8ey4fqoE7z9rw2BEiJXTq7BeFI',
    appId: '1:672916998473:android:af44970744be5e835a7298',
    messagingSenderId: '672916998473',
    projectId: 'flutter-ui-25e73',
    storageBucket: 'flutter-ui-25e73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSP0u5_ErprJET0JstpKmmJ0v72MUBAnI',
    appId: '1:672916998473:ios:25294b3a5db90e3c5a7298',
    messagingSenderId: '672916998473',
    projectId: 'flutter-ui-25e73',
    storageBucket: 'flutter-ui-25e73.appspot.com',
    iosClientId: '672916998473-dhc328j7af1a8todq80k2pd7v9e61gbe.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSP0u5_ErprJET0JstpKmmJ0v72MUBAnI',
    appId: '1:672916998473:ios:25294b3a5db90e3c5a7298',
    messagingSenderId: '672916998473',
    projectId: 'flutter-ui-25e73',
    storageBucket: 'flutter-ui-25e73.appspot.com',
    iosClientId: '672916998473-dhc328j7af1a8todq80k2pd7v9e61gbe.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
