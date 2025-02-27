// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDxXsMpBCx3sCzuDhhmRwzyVPHS4ZIRlHY',
    appId: '1:1077706114550:web:3c349dbe5ceed1388433d7',
    messagingSenderId: '1077706114550',
    projectId: 'aldemirj-estudos-prog',
    authDomain: 'aldemirj-estudos-prog.firebaseapp.com',
    storageBucket: 'aldemirj-estudos-prog.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7nk65_fkXPwIGloWVwwawBL5EjV1gpr0',
    appId: '1:1077706114550:android:f0196b484ffffd688433d7',
    messagingSenderId: '1077706114550',
    projectId: 'aldemirj-estudos-prog',
    storageBucket: 'aldemirj-estudos-prog.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDxXsMpBCx3sCzuDhhmRwzyVPHS4ZIRlHY',
    appId: '1:1077706114550:web:691837ebcd369faa8433d7',
    messagingSenderId: '1077706114550',
    projectId: 'aldemirj-estudos-prog',
    authDomain: 'aldemirj-estudos-prog.firebaseapp.com',
    storageBucket: 'aldemirj-estudos-prog.appspot.com',
  );

}