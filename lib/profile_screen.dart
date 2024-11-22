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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), 
                ),
              ],
            ),
            width: 350, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(height: 32),
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
        ),
      ),
    );
  }
}
