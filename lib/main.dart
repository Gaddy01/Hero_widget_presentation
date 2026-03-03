import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animations Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HeroAnimationsHome(),
    );
  }
}

class HeroAnimationsHome extends StatelessWidget {
  const HeroAnimationsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animations Demo'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Tap any icon below!',
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Hero 1: Circle Avatar
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetailScreen(heroTag: 'avatar', type: 1),
                  ),
                );
              },
              child: Hero(
                tag: 'avatar',
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.person, color: Colors.white, size: 30),
                ),
              ),
            ),
            // Hero 2: Rectangle Box
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetailScreen(heroTag: 'box', type: 2),
                  ),
                );
              },
              child: Hero(
                tag: 'box',
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.star, color: Colors.white, size: 30),
                ),
              ),
            ),
            // Hero 3: Text Label
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DetailScreen(heroTag: 'text', type: 3),
                  ),
                );
              },
              child: Hero(
                tag: 'text',
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'FLUTTER',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String heroTag;
  final int type;

  const DetailScreen({super.key, required this.heroTag, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.3),
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Hero(
            tag: heroTag,
            child: _buildLargeWidget(),
          ),
        ),
      ),
    );
  }

  Widget _buildLargeWidget() {
    switch (type) {
      case 1:
        return CircleAvatar(
          radius: 100,
          backgroundColor: Colors.blue,
          child: const Icon(Icons.person, color: Colors.white, size: 100),
        );
      case 2:
        return Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(Icons.star, color: Colors.white, size: 100),
        );
      case 3:
        return Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'FLUTTER',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      default:
        return const SizedBox();
    }
  }
}
