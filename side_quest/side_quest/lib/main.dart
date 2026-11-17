import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Set the background color of the app bar
        backgroundColor: const Color(0xFFBCE1CF),
        
        // Set the title of the app bar
        title: Image.asset('build/flutter_assets/images/logo.png', height: 36, fit: BoxFit.contain),
      ),
      
      // The main body of the scaffold
      body: const Center(
        
        // Display a centered text widget
        child: Text(
          "Test!!",
          
          // Apply text styling
          style: TextStyle(
            
            // Set font size
            fontSize: 24,          
            
            // Set font weight
            fontWeight: FontWeight.bold, 
          ),
        ),
      ),
    );
  }
}
