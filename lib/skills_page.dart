import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fähigkeiten', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/thm_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Fähigkeiten',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  '• Programmiersprachen: Java Script (Grundlagen), Python (Grundlagen), HTML (Grundlagen), Visual Basic Application (Sehr gute Kenntnisse)',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  '• EDV-Kenntnisse: Microsoft Office Excel und Access (SQL), Bloomberg (Seminar Basics & Excel Add-on), SAP ERP Systeme, BEX Analyzer, SAP BO Design Studio',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  '• Sprachen: Türkisch (Muttersprache), Deutsch (sehr gut), Englisch (sehr gut)',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
