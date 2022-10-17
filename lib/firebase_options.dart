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
    apiKey: 'AIzaSyCFkhrex_Smjwzc6e-VcV63iCVGKOA7ih8',
    appId: '1:839710367624:web:68803fb08d3e7aa790243d',
    messagingSenderId: '839710367624',
    projectId: 'aulaespejo2022',
    authDomain: 'aulaespejo2022.firebaseapp.com',
    storageBucket: 'aulaespejo2022.appspot.com',
    measurementId: 'G-BKYH2E6YYY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtoCp6cu7DmwcH5xOPV8GklRItZnr2Bks',
    appId: '1:839710367624:android:488c789f10e380a890243d',
    messagingSenderId: '839710367624',
    projectId: 'aulaespejo2022',
    storageBucket: 'aulaespejo2022.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJlN1qkRm_t4I1FEy5cN1c5gqMP2HiInc',
    appId: '1:839710367624:ios:1d93ace10e73dc8a90243d',
    messagingSenderId: '839710367624',
    projectId: 'aulaespejo2022',
    storageBucket: 'aulaespejo2022.appspot.com',
    iosClientId: '839710367624-asc8f4rv7er1lbadudpbd585n1980de5.apps.googleusercontent.com',
    iosBundleId: 'co.edu.ucundinamarca.comprasAulaEspejo',
  );
}