
import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  AttendanceScreenState createState() => AttendanceScreenState();
}

class AttendanceScreenState extends State<AttendanceScreen> {
  // Assuming attendanceData is a list of attendance records
  List<AttendanceRecord> attendanceData = [
    AttendanceRecord(date: '2023-10-20', status: true, subject:'DSA'),
    AttendanceRecord(date: '2023-10-20', status: true, subject:'OOPs'),
    AttendanceRecord(date: '2023-10-20', status: false, subject:'Python Programming'),
    AttendanceRecord(date: '2023-10-20', status: false, subject:'Java Programming'),
    AttendanceRecord(date: '2023-10-21', status: true, subject:'DSA'),
    AttendanceRecord(date: '2023-10-21', status: true, subject:'OOPs'),
    AttendanceRecord(date: '2023-10-21', status: true, subject:'Python Programming'),
    AttendanceRecord(date: '2023-10-21', status: false, subject:'Java Programming'),
    AttendanceRecord(date: '2023-10-22', status: true, subject:'DSA'),
    AttendanceRecord(date: '2023-10-22', status: true, subject:'OOPs'),
    AttendanceRecord(date: '2023-10-22', status: true, subject:'Python Programming'),
    AttendanceRecord(date: '2023-10-22', status: false, subject:'Java Programming'),

    // Add more records as needed
  ];

  double calculateTotalAttendancePercentage() {
    int presentCount = attendanceData.where((record) => record.status).length;
    return (presentCount / attendanceData.length) * 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Attendance Tracking'),
            Text(
              'Total Attendance: ${calculateTotalAttendancePercentage().toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: attendanceData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Date: ${attendanceData[index].date}'),
            subtitle: Text('Subject: ${attendanceData[index].subject}\nStatus: ${attendanceData[index].status ? 'Present' : 'Absent'}'),
            // trailing: IconButton(
            //   icon: Icon(Icons.edit),
            //   onPressed: () {
            //     _showUpdateDialog(index);
            //   },
            // ),
          );
        },
      ),
    );
  }

  void _showUpdateDialog(int index) {
    // ...
    // (No changes in _showUpdateDialog method)
  }

  void _updateAttendance(int index, bool status) {
    // ...
    // (No changes in _updateAttendance method)
  }
}

class AttendanceRecord {
  String date;
  bool status;
  String subject;

  AttendanceRecord({required this.date, required this.status, required this.subject});
  
 
}
