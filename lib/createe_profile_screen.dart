import 'package:flutter/material.dart';
import 'profile_screen.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREAR PERFIL:)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'nombre'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'edad'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _occupationController,
              decoration: InputDecoration(labelText: 'ocupacion'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Guardar y ver perfil'),
              onPressed: () {
                String name = _nameController.text;
                String age = _ageController.text;
                String occupation = _occupationController.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      name: name,
                      age: age,
                      occupation: occupation,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
