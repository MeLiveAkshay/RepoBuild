import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Education", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Divider(),
              ListTile(
                title: Text("B.Tech - Computer Science & Engineering"),
                subtitle: Text("Ramgovind Institute of Technology, Koderma (2021-Present) - 7.1 CGPA"),
                leading: Icon(Icons.school, color: Colors.deepPurple),
              ),
              ListTile(
                title: Text("Intermediate of Science - PCMB"),
                subtitle: Text("RK+2 High School, Pandu (2019-2021) - 78%"),
                leading: Icon(Icons.book, color: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}