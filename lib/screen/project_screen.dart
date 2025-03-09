import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        ProjectCard(title: "Baby Care App", description: "A mobile application designed to assist parents in tracking baby activities and health.", link: "https://github.com/AkshayMobileApplicationDeveloper/BabyCareApp"),
        ProjectCard(title: "Doctor Appointment App", description: "An app to schedule and manage doctor appointments with real-time notifications.", link: "https://github.com/AkshayMobileApplicationDeveloper/DoctorAppointmentApp"),
        ProjectCard(title: "Personal Website", description: "A portfolio website showcasing my skills, projects, and achievements.", link: "https://github.com/AkshayMobileApplicationDeveloper/PersonalWebsite"),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title, description, link;
  const ProjectCard({super.key, required this.title, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: IconButton(
          icon: const Icon(Icons.link, color: Colors.deepPurple),
          onPressed: () async {
            final Uri uri = Uri.parse(link);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
        ),
      ),
    );
  }
}