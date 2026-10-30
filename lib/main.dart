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

class MainLibraryView extends StatefulWidget {
  const MainLibraryView({super.key});

  @override
  State<MainLibraryView> createState() => _MainLibraryViewState();
}

class _MainLibraryViewState extends State<MainLibraryView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const LibraryBody(),
    const Center(child: Text('المصحف الشريف', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    const Center(child: Text('المشغل الصوتى والتلاوات', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF2E5A44),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'المكتبة'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'المصحف'),
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'التلاوات'),
        ],
      ),
    );
  }
}

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

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
          _buildSurahCard(title: 'سورة البقرة', subtitle: 'Sura Al-Baqaraah • Meccan - Medinan'),
          _buildSurahCard(title: 'سورة آل عمران', subtitle: 'Surah Ali ' Imran • Medinan'),
          _buildSurahCard(title: 'سورة النساء', subtitle: 'Surah An-Nisa • Medinan'),
          _buildSurahCard(title: 'سورة المائدة', subtitle: 'Surah Al-Maidah • Medinan'),
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
        trailing: const CircleAvatar(
          backgroundColor: Color(0xFF2E5A44),
          child: Icon(Icons.play_arrow, color: Colors.white),
        ),
        onTap: () {},
      ),
    );
  }
}
