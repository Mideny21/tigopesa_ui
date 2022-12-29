import 'package:flutter/material.dart';
import 'package:tigopesa_ui/utils/colors.dart';

import '../pages/home_screen.dart';
import '../pages/huduma.dart';
import '../widgets/appBar.dart';

class MainsScreen extends StatefulWidget {
  const MainsScreen({super.key});

  @override
  State<MainsScreen> createState() => _MainsScreenState();
}

class _MainsScreenState extends State<MainsScreen> {
  late List<Widget> _pages;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _pages = [
      const HomeScreen(),
      const HudumaScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'TigoPesa',
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.amber),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.favorite_border_outlined,
                  color: Colors.amber),
              onPressed: () {}),
        ],
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Nyumbani',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'jihudumie',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        iconSize: 35,
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        backgroundColor: Colors.blue[900],
        selectedIconTheme: const IconThemeData(color: AppColors.yellowColors),
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 0.8,
            color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
