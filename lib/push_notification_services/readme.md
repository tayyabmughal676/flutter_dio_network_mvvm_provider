### in main.dart

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// If you're going to use other Firebase services in the background, such as Firestore,
// make sure you call `initializeApp` before using other Firebase services.
await Firebase.initializeApp();
debugPrint('Handling a background message ${message.messageId}');
}

### inside the main.dart -> app
FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);