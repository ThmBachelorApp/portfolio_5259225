import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'skills_page.dart';
import 'projects_page.dart';
import 'contact_page.dart';
import 'resume_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THM Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/skills': (context) => const SkillsPage(),
        '/projects': (context) => const ProjectsPage(),
        '/contact': (context) => const ContactPage(),
        '/resume': (context) => const ResumePage(),
      },
    );
  }
}
