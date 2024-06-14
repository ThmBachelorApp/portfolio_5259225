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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Projekte',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 16),
                buildProject(
                  title: 'DevOps Projekt mit Jenkins und Java',
                  description: 'Ein Projekt zur Implementierung einer CI/CD-Pipeline mit Jenkins und Java.',
                  url: 'https://github.com/ThmBachelorApp/DevOpsGruppe1.git',
                ),
                const SizedBox(height: 8),
                buildProject(
                  title: 'PowerApps Tool',
                  description: 'Entwicklung eines Tools mit Microsoft PowerApps für das Softwareprojekt 1.',
                  url: 'https://github.com/ThmBachelorApp/SoftwareProjekt1.git',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProject({required String title, required String description, required String url}) {
    return Card(
      color: Colors.white.withOpacity(0.8),
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
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
