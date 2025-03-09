
// Contact Screen
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'akshaykumarprajapati@hotmail.com',
        queryParameters: {
          'subject': _subjectController.text,
          'body': 'Name: ${_nameController.text}\nEmail: ${_emailController.text}\n\n${_messageController.text}'
        },
      );
      launchUrl(emailUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Contact Me", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Divider(),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: "Name"),
                      validator: (value) => value!.isEmpty ? "Enter your name" : null,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (value) => value!.isEmpty ? "Enter your email" : null,
                    ),
                    TextFormField(
                      controller: _subjectController,
                      decoration: const InputDecoration(labelText: "Subject"),
                      validator: (value) => value!.isEmpty ? "Enter subject" : null,
                    ),
                    TextFormField(
                      controller: _messageController,
                      decoration: const InputDecoration(labelText: "Message"),
                      maxLines: 4,
                      validator: (value) => value!.isEmpty ? "Enter your message" : null,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text("Send Message"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
