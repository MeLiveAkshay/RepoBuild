import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

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
            children: [
              const Text("Social Media", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialIcon(Icons.facebook, "https://www.facebook.com"),
                  _buildSocialIcon(Icons.camera_alt, "https://www.instagram.com"),
                  _buildSocialIcon(Icons.link, "https://www.linkedin.com/in/akshaycompsci/"),
                  _buildSocialIcon(Icons.code, "https://github.com/AkshayMobileApplicationDeveloper"),
                  _buildSocialIcon(Icons.alternate_email, "https://twitter.com"),
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