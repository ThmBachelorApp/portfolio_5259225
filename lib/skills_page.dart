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
        color: Colors.grey[200], // Leicht hellgrauer Hintergrund
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                sectionTitle('Fähigkeiten'),
                const SizedBox(height: 16),
                skillItem(
                  'Programmiersprachen',
                  'Java Script (Grundlagen), Python (Grundlagen), HTML (Grundlagen), Visual Basic Application (Sehr gute Kenntnisse)',
                ),
                const SizedBox(height: 8),
                skillItem(
                  'EDV-Kenntnisse',
                  'Microsoft Office Excel und Access (SQL), Bloomberg (Seminar Basics & Excel Add-on), SAP ERP Systeme, BEX Analyzer, SAP BO Design Studio',
                ),
                const SizedBox(height: 8),
                skillItem(
                  'Sprachen',
                  'Türkisch (Muttersprache), Deutsch (sehr gut), Englisch (sehr gut)',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget skillItem(String title, String description) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
