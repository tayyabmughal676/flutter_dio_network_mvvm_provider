# In main.dart

```dart
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// If you're going to use other Firebase services in the background, such as Firestore,
// make sure you call `initializeApp` before using other Firebase services.
await Firebase.initializeApp();
debugPrint('Handling a background message ${message.messageId}');
}
```

# Inside the main.dart -> app
```dart
FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

```
