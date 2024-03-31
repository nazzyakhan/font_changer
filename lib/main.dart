import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Changer',
      home: FontChanger(),
    );
  }
}

class FontChanger extends StatefulWidget {
  @override
  _FontChangerState createState() => _FontChangerState();
}

class _FontChangerState extends State<FontChanger> {
  String selectedFont = 'Roboto'; // Default font

  void changeFont(String newFont) {
    setState(() {
      selectedFont = newFont;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontFamily: selectedFont, fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: selectedFont,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  changeFont(newValue);
                }
              },
              items: <String>[
                'Roboto',
                'Arial',
                'Times New Roman',
                'Courier',
                'poppins',
                'Raleway',
                'Lobster',
                'Indie Flower',
                'Caveat',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
