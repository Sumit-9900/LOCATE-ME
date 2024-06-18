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
    apiKey: 'AIzaSyCV2izGtiWILFlh9LxlPDlZJb4QF_dl_Jk',
    appId: '1:218548033912:web:67abd2ac56dfd1ff08108d',
    messagingSenderId: '218548033912',
    projectId: 'locateme-fd587',
    authDomain: 'locateme-fd587.firebaseapp.com',
    storageBucket: 'locateme-fd587.appspot.com',
    measurementId: 'G-ZB8T5RPN0W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGZB9STyA3dfSKTz4OC-NAiKoxNqB9iz4',
    appId: '1:218548033912:android:f5f3ff82037bbc1708108d',
    messagingSenderId: '218548033912',
    projectId: 'locateme-fd587',
    storageBucket: 'locateme-fd587.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_F1qIJQZexgXwDnt00u4NW_L9BMpdpEw',
    appId: '1:218548033912:ios:afa5dbf17184b6d708108d',
    messagingSenderId: '218548033912',
    projectId: 'locateme-fd587',
    storageBucket: 'locateme-fd587.appspot.com',
    iosBundleId: 'com.example.locateMe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_F1qIJQZexgXwDnt00u4NW_L9BMpdpEw',
    appId: '1:218548033912:ios:afa5dbf17184b6d708108d',
    messagingSenderId: '218548033912',
    projectId: 'locateme-fd587',
    storageBucket: 'locateme-fd587.appspot.com',
    iosBundleId: 'com.example.locateMe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCV2izGtiWILFlh9LxlPDlZJb4QF_dl_Jk',
    appId: '1:218548033912:web:595f753a89102b2f08108d',
    messagingSenderId: '218548033912',
    projectId: 'locateme-fd587',
    authDomain: 'locateme-fd587.firebaseapp.com',
    storageBucket: 'locateme-fd587.appspot.com',
    measurementId: 'G-ZG32J9NS45',
  );
}
