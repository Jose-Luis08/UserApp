import 'package:flutter/material.dart';
import 'createe_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Crear perfil'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateProfileScreen()), //Aquí voy a crear la otra screen
            );
          },
        ),
      ),
    );
  }
}
