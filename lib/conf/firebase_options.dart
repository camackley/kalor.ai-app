import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXQ3YFzh43azM8O06r7aR0d1zSGfVcTJc',
    appId: '1:382282825278:android:453deb79ee481581bc9b6f',
    messagingSenderId: '382282825278',
    projectId: 'kalor-ai',
    storageBucket: 'kalor-ai.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4PdNoTIymi6ggGtGZXgop3iH77fEAMRo',
    appId: '1:382282825278:ios:0299f0175ca85002bc9b6f',
    messagingSenderId: '382282825278',
    projectId: 'kalor-ai',
    storageBucket: 'kalor-ai.appspot.com',
    iosClientId: '382282825278-h57uqh475ivjor5ht8vtsbmg0slolu0i.apps.googleusercontent.com',
    iosBundleId: 'com.example.starLord',
  );
}
