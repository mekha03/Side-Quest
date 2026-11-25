import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:side_quest/screens/preview/eventCardPreview.dart';
import 'firebase_options.dart';
import 'package:side_quest/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const SideQuestApp());
}

class SideQuestApp extends StatelessWidget {
  const SideQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SideQuest',
      debugShowCheckedModeBanner: false,
      home: const EventCardPreview(),
    );
  }
}