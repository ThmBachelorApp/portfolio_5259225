import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THM Portfolio', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Navigation', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: const Text('Über mich'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: const Text('Fähigkeiten'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              title: const Text('Projekte'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              title: const Text('Kontakt'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: const Text('Lebenslauf'),
              onTap: () {
                Navigator.pushNamed(context, '/resume');
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/thm_background.png'), // Füge ein passendes Bild hinzu
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.jpg'), // Dein Profilbild
              ),
              const SizedBox(height: 20),
              const Text(
                'Ufuk Bahar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                'Student an der THM Friedberg',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Verwende backgroundColor anstelle von primary
                ),
                child: const Text('Mehr über mich erfahren'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
