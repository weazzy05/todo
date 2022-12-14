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
    apiKey: 'AIzaSyByrCSVGcuHE7gaqsW5NJIU2nTimqhIXkI',
    appId: '1:842947878524:web:fe88f5e6f3cc2fe346b3f9',
    messagingSenderId: '842947878524',
    projectId: 'yandextodo',
    authDomain: 'yandextodo.firebaseapp.com',
    storageBucket: 'yandextodo.appspot.com',
    measurementId: 'G-C8MFKPRTKY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDytvAz1XN8KUF876-U9NAgDK6iaU4yS1U',
    appId: '1:842947878524:android:46a39e18af174e9246b3f9',
    messagingSenderId: '842947878524',
    projectId: 'yandextodo',
    storageBucket: 'yandextodo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6jiGvsm1qEhifyEbXwjeKcYFSRLnVAlc',
    appId: '1:842947878524:ios:787fdb74fe64a80f46b3f9',
    messagingSenderId: '842947878524',
    projectId: 'yandextodo',
    storageBucket: 'yandextodo.appspot.com',
    iosClientId:
        '842947878524-4qv91stq78juvbm749vn4dcli05dvujr.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6jiGvsm1qEhifyEbXwjeKcYFSRLnVAlc',
    appId: '1:842947878524:ios:787fdb74fe64a80f46b3f9',
    messagingSenderId: '842947878524',
    projectId: 'yandextodo',
    storageBucket: 'yandextodo.appspot.com',
    iosClientId:
        '842947878524-4qv91stq78juvbm749vn4dcli05dvujr.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );
}
