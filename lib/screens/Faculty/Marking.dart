import 'package:flutter/material.dart';

class AttendanceMarking extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceMarking> {
  List<String> students = [
    'Akshat Bhardwaj',
    'Amardeep Singh',
    'Ayush Kumar',
    // Add your student names here
  ];

  List<bool> attendance = List.generate(3, (index) => false); // Initialize with false for all students

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Attendance'),
                backgroundColor: Colors.red,

      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index]),
            trailing: Checkbox(
              value: attendance[index],
              onChanged: (value) {
                setState(() {
                  attendance[index] = value!;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Save attendance data or perform any other required action
          // You can save the `attendance` list or send it to an API.
          // For this example, we print the attendance to the console.
          print(attendance);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}