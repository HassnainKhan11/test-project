import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project/views/home_view.dart';
import 'package:test_project/views/progress_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ProgressView(),
    const Center(
      child: Text("History"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xffA7A7A7),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.sliders), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookOpen), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userLarge), label: ""),
        ],
      ),
    );
  }
}
