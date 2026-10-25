import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC3CE7eoXIW0p3iB3xQk850FSPZS0B0ps8',
      appId: '1:684583288714:ios:c00a5846fb37ceb7365273',
      messagingSenderId: '684583288714',
      projectId: 'my-app-7308f',
      storageBucket: 'my-app-7308f.firebasestorage.app',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                await FirebaseStorage.instance
                    .ref('test/hello.txt')
                    .putString('Hello Firebase!');
              },
              child: const Text('Upload test'),
            ),
          ),
        ),
      );
}
