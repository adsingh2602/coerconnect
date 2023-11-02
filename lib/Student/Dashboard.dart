import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Courses'),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/courseList'); // Navigates to another screen
              },
              child: _buildCourseCard('Course 1'),
            ),
            // _buildCourseCard('Course 2'),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/courseList'); // Navigates to another screen
              },
              child: _buildCourseCard('Course 2'),
            ),
            

            SizedBox(height: 20.0),

            _buildSectionTitle('Assignments'),
            _buildAssignmentCard('Assignment 1'),
            _buildAssignmentCard('Assignment 2'),

            SizedBox(height: 20.0),

            _buildSectionTitle('Notifications'),
            _buildNotificationCard('Notification 1'),
            _buildNotificationCard('Notification 2'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCourseCard(String courseName) {
    return Card(
      child: ListTile(
        title: Text(courseName),
      ),
    );
  }

  Widget _buildAssignmentCard(String assignmentName) {
    return Card(
      child: ListTile(
        title: Text(assignmentName),
      ),
    );
  }

  Widget _buildNotificationCard(String notificationText) {
    return Card(
      child: ListTile(
        title: Text(notificationText),
      ),
    );
  }
}
