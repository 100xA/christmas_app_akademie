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
    apiKey: 'AIzaSyCb40snmCE0g2C5CR0AOprDgiMT5nGnaYk',
    appId: '1:1074968909224:web:14ff1351fac596712b799d',
    messagingSenderId: '1074968909224',
    projectId: 'bloc-fb-auth',
    authDomain: 'bloc-fb-auth.firebaseapp.com',
    storageBucket: 'bloc-fb-auth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD1h_B_RXJBrmS7q_BVZ8dQFUXetYTz8rk',
    appId: '1:1074968909224:android:49b10295465012462b799d',
    messagingSenderId: '1074968909224',
    projectId: 'bloc-fb-auth',
    storageBucket: 'bloc-fb-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCd1MTlkH7Vh9H6G6QIXLQOgzQSjxSBB6E',
    appId: '1:1074968909224:ios:5704cc7cdbc7000e2b799d',
    messagingSenderId: '1074968909224',
    projectId: 'bloc-fb-auth',
    storageBucket: 'bloc-fb-auth.appspot.com',
    iosClientId: '1074968909224-qt0lgj9jbcvjhff91eueo8g19ojt22bo.apps.googleusercontent.com',
    iosBundleId: 'com.example.blocFbAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCd1MTlkH7Vh9H6G6QIXLQOgzQSjxSBB6E',
    appId: '1:1074968909224:ios:5c8afb782588e9992b799d',
    messagingSenderId: '1074968909224',
    projectId: 'bloc-fb-auth',
    storageBucket: 'bloc-fb-auth.appspot.com',
    iosClientId: '1074968909224-i1qm5jipvamaagks8t3af7b39tfpnp58.apps.googleusercontent.com',
    iosBundleId: 'com.example.blocFbAuth.RunnerTests',
  );
}
