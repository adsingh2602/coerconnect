import 'package:coreconnect/screens/login.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  void _handleLogout(BuildContext context) {
    // Navigate to the login screen and remove all previous routes from the stack
    Navigator.pushAndRemoveUntil(

      context,
      MaterialPageRoute(builder: (context) => LoginPage()), 
      (route) => false,
    );
  }
  @override
  Widget build(BuildContext context) {
    final String facultyName = "Amardeep Singh";
    final String facultyEmail = "adsingh26@gmail.com";
    final String facultyImage = "assets/IMG_7512.jpg";
    final String facultyID = "22050296";
    final String department = "Information Technology";

    return Scaffold(
      appBar: AppBar(
        title: Text("Faculty Profile"),
        actions: <Widget>[
          // Add a logout button
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _handleLogout(context), // Call the logout function
          ),
        ],
        backgroundColor: Colors.red,

      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(facultyImage),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    facultyName,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    facultyEmail,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.confirmation_number),
                  title: Text(
                    "Faculty ID",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    facultyID,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text(
                    "Department",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    department,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}