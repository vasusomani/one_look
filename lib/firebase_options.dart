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
    apiKey: 'AIzaSyA7wKUwugpimcP3L4khzNEyJZbUyqxZQAI',
    appId: '1:708857609705:web:caf3112a2cdc653bd25f78',
    messagingSenderId: '708857609705',
    projectId: 'onelook-2a94a',
    authDomain: 'onelook-2a94a.firebaseapp.com',
    storageBucket: 'onelook-2a94a.appspot.com',
    measurementId: 'G-H4JHJKDMVH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_jK38NBOfazhPXJ-n2cn9FJx_-yP7nDY',
    appId: '1:708857609705:android:7f1d0cc0ee72610fd25f78',
    messagingSenderId: '708857609705',
    projectId: 'onelook-2a94a',
    storageBucket: 'onelook-2a94a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBS_8bLCfwmNeaMQeS5zjsab8ogTc-Y8Ig',
    appId: '1:708857609705:ios:d91743ab76ac867dd25f78',
    messagingSenderId: '708857609705',
    projectId: 'onelook-2a94a',
    storageBucket: 'onelook-2a94a.appspot.com',
    iosClientId: '708857609705-jcnah06m8csna0o8gatci61k6ohb7ph5.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBS_8bLCfwmNeaMQeS5zjsab8ogTc-Y8Ig',
    appId: '1:708857609705:ios:9fc2762d9ec95f5ed25f78',
    messagingSenderId: '708857609705',
    projectId: 'onelook-2a94a',
    storageBucket: 'onelook-2a94a.appspot.com',
    iosClientId: '708857609705-4bpqaujhlfpad2503ho64j4k4ln7i4f4.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo.RunnerTests',
  );
}
