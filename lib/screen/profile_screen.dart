import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://via.placeholder.com/150"),
              ),
              const SizedBox(height: 10),
              const Text("Akshay Kumar Prajapati", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text("Mobile Application Developer", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 10),
              const Text("Pandu, Palamu, Jharkhand - 822132"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialIcon(Icons.email, "mailto:akshaykumarprajapati@hotmail.com"),
                  _buildSocialIcon(Icons.link, "https://www.linkedin.com/in/akshaycompsci/"),
                  _buildSocialIcon(Icons.code, "https://github.com/AkshayMobileApplicationDeveloper"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, size: 30, color: Colors.deepPurple),
      onPressed: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
    );
  }
}