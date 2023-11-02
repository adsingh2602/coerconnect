
import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  AttendanceScreenState createState() => AttendanceScreenState();
}

class AttendanceScreenState extends State<AttendanceScreen> {
  // Assuming attendanceData is a list of attendance records
  List<AttendanceRecord> attendanceData = [
    AttendanceRecord(date: '2023-10-20', status: true),
    AttendanceRecord(date: '2023-10-21', status: false),
    // Add more records as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Tracking'),
      ),
      body: ListView.builder(
        itemCount: attendanceData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Date: ${attendanceData[index].date}'),
            subtitle: Text('Status: ${attendanceData[index].status ? 'Present' : 'Absent'}'),
            // trailing: IconButton(
              // icon: Icon(Icons.edit),
              // onPressed: () {
              //   _showUpdateDialog(index);
              // },
            // ),
          );
        },
      ),
    );
  }

  void _showUpdateDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Attendance'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Date: ${attendanceData[index].date}'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _updateAttendance(index, true);
                      Navigator.pop(context);
                    },
                    child: Text('Present'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _updateAttendance(index, false);
                      Navigator.pop(context);
                    },
                    child: Text('Absent'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _updateAttendance(int index, bool status) {
    setState(() {
      attendanceData[index].status = status;
    });
  }
}

class AttendanceRecord {
  String date;
  bool status;

  AttendanceRecord({required this.date, required this.status});
}