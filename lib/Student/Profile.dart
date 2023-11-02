import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String studentName = "Amrdeep Singh";
    final String studentEmail = "adsingh26@gmail.com";
    final String studentImage = "assets/student_image.jpg";
    final String studentID = "22050296";
    final String course = "Information Technology";

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Profile"),
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
                  backgroundImage: AssetImage('assets/IMG_7512.jpg'),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    studentName,
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
                    studentEmail,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.confirmation_number),
                  title: Text(
                    "Student ID",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    studentID,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text(
                    "Course",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    course,
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
