import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Courses'),

              _buildCourseCard(context, 'DSA', Icons.book),
              _buildCourseCard(context, 'OOps', Icons.book),
              _buildCourseCard(context, 'Python Programming', Icons.book),
              _buildCourseCard(context, 'Java Programming', Icons.book),

              SizedBox(height: 20.0),

              _buildSectionTitle('Assignments'),
              _buildAssignmentCard('Assignment 1 {OOps}'),
              _buildAssignmentCard('Assignment 2 {DSA}'),

              SizedBox(height: 20.0),

              _buildSectionTitle('Notifications'),
              _buildNotificationCard('Assignment 1 {OOps}', Icons.notifications, '2023-11-07'),
              _buildNotificationCard('Assignment 2 {DSA}', Icons.notifications, '2023-11-08'),
            ],
          ),
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

  Widget _buildCourseCard(BuildContext context, String courseName, IconData icon) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(courseName),
        onTap: () {
          // Navigator.pushNamed(context, '/courseList');
        },
      ),
    );
  }

  Widget _buildAssignmentCard(String assignmentName) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(Icons.assignment, color: Colors.orange),
        title: Text(assignmentName),
      ),
    );
  }

  Widget _buildNotificationCard(String notificationText, IconData icon, String date) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(icon, color: Colors.green),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notificationText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              date,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
