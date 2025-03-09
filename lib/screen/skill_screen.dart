import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

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
              const Text("Skills", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Divider(),
              Wrap(
                spacing: 8.0,
                children: const [
                  SkillChip(label: "Flutter"),
                  SkillChip(label: "Dart"),
                  SkillChip(label: "Java"),
                  SkillChip(label: "Kotlin"),
                  SkillChip(label: "MySQL"),
                  SkillChip(label: "PHP"),
                  SkillChip(label: "Firebase"),
                  SkillChip(label: "Python"),
                  SkillChip(label: "WordPress"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(fontSize: 16)),
      backgroundColor: Colors.deepPurple.withOpacity(0.2),
    );
  }
}