import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lebenslauf', style: TextStyle(color: Colors.white)),
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              sectionTitle('Ufuk Bahar'),
              const SizedBox(height: 16),
              sectionTitle('Berufserfahrung'),
              const SizedBox(height: 8),
              buildExperience(
                company: 'S-Country Desk GmbH',
                location: 'Bad Homburg, Deutschland',
                role: 'PO Digitale Welt',
                duration: 'Okt 2017 – heute',
                details: const [
                  'Mitarbeit an der Weiterentwicklung der App und der Webseite',
                  'Erstellung von Reporting mit VBA und Excel',
                  '1st-Level Support für technische Anfragen zur Nutzung der Webseite und der App',
                ],
              ),
              buildExperience(
                company: 'Fresenius Kabi Deutschland GmbH',
                location: 'Bad Homburg, Deutschland',
                role: 'Global IT – Business Intelligence and Master Data',
                duration: 'Nov 2016 – Sep 2017',
                details: const [
                  'Mitarbeit in Projekten zur Implementierung eines Data-Warehouse',
                  'Entwicklung von Tools zur Simulation von Dashboards mithilfe von VBA',
                ],
              ),
              buildExperience(
                company: 'Deutsche Börse EUREX AG Frankfurt',
                location: 'Eschborn, Deutschland',
                role: 'Student - Business Analyst – Sales Continental Europe',
                duration: 'Okt 2014 – Mai 2016',
                details: const [
                  'Erstellung von monatlichen Reports und Rankinganalysen für Kunden',
                  'Entwicklung von Tools zur Automatisierung der Datenpflege',
                ],
              ),
              buildExperience(
                company: 'Stadtwerke Oberursel Stadthalle',
                location: 'Oberursel, Deutschland',
                role: 'Assistent',
                duration: 'Feb 2013 – Mai 2014',
                details: const [
                  'Eventplanung und Kundenbetreuung',
                  'Administrative Aufgaben',
                ],
              ),
              buildExperience(
                company: 'A&B Events',
                location: 'Frankfurt, Deutschland',
                role: 'Assistent – Controller',
                duration: 'Okt 2012 – Aug 2013',
                details: const [
                  'Verwaltung im Rechnungswesen',
                  'Service Mitarbeiter',
                ],
              ),
              const SizedBox(height: 16),
              sectionTitle('Akademische Laufbahn'),
              const SizedBox(height: 8),
              buildEducation(
                institution: 'Technische Hochschule Mittelhessen',
                location: 'Friedberg, Deutschland',
                degree: 'Bachelor Wirtschaftsinformatik',
                duration: 'Okt 2020 - heute',
              ),
              buildEducation(
                institution: 'Technische Universität Darmstadt',
                location: 'Darmstadt, Deutschland',
                degree: 'Bachelor Wirtschaftsingenieur Elektro- und Informationstechnik',
                duration: 'Apr 2014 – Mär 2018',
              ),
              buildEducation(
                institution: 'Technische Universität Darmstadt',
                location: 'Darmstadt, Deutschland',
                degree: 'Bachelor Materialtechnik',
                duration: 'Okt 2012 – Sep 2013',
              ),
              buildEducation(
                institution: 'Humboldtschule',
                location: 'Bad Homburg, Deutschland',
                degree: 'Allgemeine Hochschulreife (N.C. 2.2)',
                duration: 'Jun 2009 – Mai 2011',
              ),
              const SizedBox(height: 16),
              sectionTitle('Kenntnisse und Fähigkeiten'),
              const SizedBox(height: 8),
              buildSkills(
                skills: const [
                  'Sprachen: Türkisch (Muttersprache), Deutsch (sehr gut), Englisch (sehr gut)',
                  'EDV-Kenntnisse: Microsoft Office Excel und Access (SQL), Bloomberg (Seminar Basics & Excel Add-on)',
                  'SAP ERP Systeme, BEX Analyzer, SAP BO Design Studio',
                  'Programmiersprachen: Java Script (Grundlagen), Python (Grundlagen), HTML (Grundlagen), Virtual Basic Application (Sehr gute Kenntnisse)',
                ],
              ),
              const SizedBox(height: 16),
              sectionTitle('Interessen'),
              const SizedBox(height: 8),
              const Text('VWI Hochschulverein, Reisen und entdecken neuer Kulturen.', style: TextStyle(color: Colors.black)),
            ],
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

  Widget buildExperience({
    required String company,
    required String location,
    required String role,
    required String duration,
    required List<String> details,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$role, $company', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
        Text(location, style: const TextStyle(color: Colors.black)),
        Text(duration, style: const TextStyle(color: Colors.black)),
        for (var detail in details) Text('• $detail', style: const TextStyle(color: Colors.black)),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget buildEducation({
    required String institution,
    required String location,
    required String degree,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$degree, $institution', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
        Text(location, style: const TextStyle(color: Colors.black)),
        Text(duration, style: const TextStyle(color: Colors.black)),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget buildSkills({required List<String> skills}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: skills.map((skill) => Text('• $skill', style: const TextStyle(color: Colors.black))).toList(),
    );
  }
}
