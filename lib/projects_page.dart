import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projekte', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/thm_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Leicht hellgrauer Hintergrund
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                sectionTitle('Projekte'),
                const SizedBox(height: 16),
                buildProject(
                  context,
                  title: 'DevOps Projekt mit Jenkins und Java',
                  description: 'Ein Projekt zur Implementierung einer CI/CD-Pipeline mit Jenkins und Java.',
                  url: 'https://github.com/ThmBachelorApp/DevOpsGruppe1.git',
                  details: 'In diesem Projekt haben wir Jenkins verwendet, um eine vollständige CI/CD-Pipeline zu implementieren, die Java-Anwendungen automatisiert baut, testet und bereitstellt.',
                ),
                const SizedBox(height: 8),
                buildProject(
                  context,
                  title: 'PowerApps Tool',
                  description: 'Entwicklung eines Tools mit Microsoft PowerApps für das Softwareprojekt 1.',
                  url: 'https://github.com/ThmBachelorApp/SoftwareProjekt1.git',
                  details: 'Dieses Projekt umfasste die Erstellung eines benutzerdefinierten Tools mit Microsoft PowerApps, das Geschäftsprozesse optimiert und die Effizienz verbessert.',
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

  Widget buildProject(BuildContext context, {
    required String title,
    required String description,
    required String url,
    required String details,
  }) {
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
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                launchURL(url);
              },
              child: Text(
                url,
                style: const TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                showPopup(context, title, details);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Mehr erfahren'),
            ),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void showPopup(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Schließen'),
            ),
          ],
        );
      },
    );
  }
}
