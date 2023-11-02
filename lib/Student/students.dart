import 'package:coreconnect/Student/Attendance.dart';
import 'package:coreconnect/Student/Dashboard.dart';
import 'package:coreconnect/Student/Profile.dart';
import 'package:flutter/material.dart';

class StudentScreen extends StatefulWidget {
  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<StudentScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    ProfileScreen(),
    AttendanceScreen(),
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
            icon: Icon(Icons.event),
            label: 'Attendance',
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