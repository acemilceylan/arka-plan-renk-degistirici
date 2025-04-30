import 'package:flutter/material.dart';

/*

MOBILE APPLICATION DEVELOPMENT
DR.ÖĞRETİM ÜYESİ FEHİM KÖYLÜ

VİZE ÖDEVİ

Konu: SEÇİLEN ÖĞEYE GÖRE ARKA PLAN DEĞİŞTİRME

1030520979 Ahmet Cemil CEYLAN

*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arka Plan Değiştirici',
      home: ColorChangerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor(Color newColor) {
    setState(() {
      backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Arka Planı Değiştir"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            colorButton("Kırmızı", Colors.red),
            SizedBox(height: 16),
            colorButton("Yeşil", Colors.green),
            SizedBox(height: 16),
            colorButton("Mavi", Colors.blue),
            SizedBox(height: 16),
            colorButton("Light Mode", Colors.grey[200]!),
            SizedBox(height: 16),
            colorButton("Dark Mode", Colors.black),
          ],
        ),
      ),
    );
  }

  Widget colorButton(String title, Color color) {
    return ElevatedButton(
      onPressed: () => changeBackgroundColor(color),
      child: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
        minimumSize: Size(200, 40),
      ),
    );
  }
}
 