import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Perfil App',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xFF4A90E2), 
        secondary: Color(0xFF4A90E2), 
      ),
      scaffoldBackgroundColor: Colors.white, 
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF4A90E2)), 
        titleTextStyle: TextStyle(color: Color(0xFF4A4A4A), fontSize: 20),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4A90E2), 
          foregroundColor: Colors.white, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Color(0xFF4A4A4A)),
        bodyMedium: TextStyle(color: Color(0xFF4A4A4A)),
      ),
    ),
    home: HomeScreen(),
  ));
}
