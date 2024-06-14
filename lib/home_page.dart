import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THM Portfolio', style: TextStyle(color: Colors.white)),
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
              leading: Icon(Icons.person),
              title: const Text('Über mich'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Fähigkeiten'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: const Text('Projekte'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: const Text('Kontakt'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: const Text('Lebenslauf'),
              onTap: () {
                Navigator.pushNamed(context, '/resume');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ufuk Bahar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                'Student an der THM Friedberg',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
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
