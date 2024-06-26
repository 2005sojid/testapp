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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyDOMdCj5FxWZhL8-LTel0SNxVxY5IqBFk4',
    appId: '1:903345900358:web:510c84aefa628ab1a8b347',
    messagingSenderId: '903345900358',
    projectId: 'crudtutorial-8fa74',
    authDomain: 'crudtutorial-8fa74.firebaseapp.com',
    storageBucket: 'crudtutorial-8fa74.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCS6tjpDGEW5vVkODMHI2hjf3kpiP8FaK4',
    appId: '1:903345900358:android:1dfdbcc50cdcdcc1a8b347',
    messagingSenderId: '903345900358',
    projectId: 'crudtutorial-8fa74',
    storageBucket: 'crudtutorial-8fa74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQaqHxkYjX5lfJGYWpw97NqTx-30XD5wM',
    appId: '1:903345900358:ios:6f075525eb1e4ee6a8b347',
    messagingSenderId: '903345900358',
    projectId: 'crudtutorial-8fa74',
    storageBucket: 'crudtutorial-8fa74.appspot.com',
    iosBundleId: 'com.sojidbakhronov.iosapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQaqHxkYjX5lfJGYWpw97NqTx-30XD5wM',
    appId: '1:903345900358:ios:268abd7ddd28db38a8b347',
    messagingSenderId: '903345900358',
    projectId: 'crudtutorial-8fa74',
    storageBucket: 'crudtutorial-8fa74.appspot.com',
    iosBundleId: 'com.example.testapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDOMdCj5FxWZhL8-LTel0SNxVxY5IqBFk4',
    appId: '1:903345900358:web:7239ca1eef75123fa8b347',
    messagingSenderId: '903345900358',
    projectId: 'crudtutorial-8fa74',
    authDomain: 'crudtutorial-8fa74.firebaseapp.com',
    storageBucket: 'crudtutorial-8fa74.appspot.com',
  );
}
