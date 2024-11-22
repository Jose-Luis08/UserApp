import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  ProfileScreen({required this.name, required this.age, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: $name',
              style: TextStyle(fontSize: 18, color: Color(0xFF4A4A4A)),
            ),
            SizedBox(height: 10),
            Text(
              'Edad: $age',
              style: TextStyle(fontSize: 18, color: Color(0xFF4A4A4A)),
            ),
            SizedBox(height: 10),
            Text(
              'Ocupación: $occupation',
              style: TextStyle(fontSize: 18, color: Color(0xFF4A4A4A)),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text('Regresar a Inicio'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
