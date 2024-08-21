import 'package:flutter/material.dart';
import 'package:training_final_project/screens/helpscreen.dart';
import 'package:training_final_project/screens/home_screen.dart';
import 'package:training_final_project/screens/more_screen.dart';
import 'package:training_final_project/screens/offerscreen.dart';
import 'package:training_final_project/screens/recharge_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Recharge(),
    const Helpscreen(),
    const MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        elevation: 0.0,
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 18.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 'Home', 0),
            _buildNavItem(Icons.play_circle_outline_outlined, 'Play', 1),
            const SizedBox(width: 40), // Space for the floating action button
            _buildNavItem(Icons.help_outline, 'Help', 2),
            _buildNavItem(Icons.more_horiz, 'More', 3),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 100,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          shape: const CircleBorder(),
          onPressed: () {
            // Action for the FAB
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    Color color = _selectedIndex == index ? Colors.pink : Colors.white;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Text(label, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
