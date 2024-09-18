import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final screen = [
    const Center(child: Text('Home ', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Laboratorios', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Mapa', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Perfil', style: TextStyle(fontSize: 45))),
  ];

  final colors = [Colors.blue, Colors.grey, Colors.green, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Lab',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
        centerTitle: true,
        backgroundColor: colors[_currentIndex],
      ),
      body: screen[_currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconActiveColor: Colors.black,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.directions,
              text: "Laboratorios",
              iconActiveColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/HomeScreen');
              },
            ),
            GButton(
              icon: Icons.map,
              text: "Mapa",
              iconActiveColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/Mapa');
              },
            ),
            GButton(
              icon: Icons.person,
              text: "Perfil",
              iconActiveColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/Perfil');
              },
            ),
          ],
        ),
      ),
    );
  }
}
