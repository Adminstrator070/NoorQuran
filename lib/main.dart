import 'package:flutter/material.dart';

void main() {
  runApp(const NoorQuranApp());
}

class NoorQuranApp extends StatelessWidget {
  const NoorQuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نور الهدى',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF5F7F5),
      ),
      home: const MainLibraryView(),
    );
  }
}

class MainLibraryView extends StatelessWidget {
  const MainLibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
        title: const Text(
          'نور الهدي',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Main Library',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          const SizedBox(height: 12),
          _buildSurahCard(
            title: 'سورة البقرة',
            subtitle: 'Sura Al-Baqaraah • Meccan - Medinan',
          ),
          _buildSurahCard(
            title: 'سورة العمرة',
            subtitle: 'Surah Allam • 8 ayahs - Medinan',
          ),
          _buildSurahCard(
            title: 'سورة الفميرة',
            subtitle: 'Surah Al-Bamah • Meccan - Medinan',
          ),
          _buildSurahCard(
            title: 'سورة البقرة',
            subtitle: 'Surah Al-Ravab • 6 ayahs - Medinan',
          ),
        ],
      ),
    );
  }

  Widget _buildSurahCard({required String title, required String subtitle}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F0EC),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Colors.black54),
        ),
        trailing: CircleAvatar(
          backgroundColor: const Color(0xFF2E5A44),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
        onTap: () {},
      ),
    );
  }
}
