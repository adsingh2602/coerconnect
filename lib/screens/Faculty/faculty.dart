import 'package:coreconnect/screens/Faculty/Dashboard.dart';
import 'package:coreconnect/screens/Faculty/Marking.dart';
import 'package:coreconnect/screens/Faculty/Profile.dart';
import 'package:flutter/material.dart';

class FacultyScreen extends StatefulWidget {
  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    ProfileScreen(),
    AttendanceMarking(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Faculty Screen"),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Marking',
            backgroundColor: Colors.white
          ),         
          
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        // backgroundColor: Colors.blue, // Set the background color here
        unselectedItemColor: Colors.grey, // Set the unselected item color
      ),
      
    );
  }
  


}