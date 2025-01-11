import 'package:flutter/material.dart';
import './src/features/authentication/views/auth_selection_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Border Queue',
      theme: ThemeData.dark(), // Optional: Use dark theme
      home: const AuthSelectionView(),
    );
  }
}
