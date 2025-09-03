import 'package:flutter/material.dart';
import 'package:todoapp/widgets/app_Theams.dart'; // <-- Import the theme config

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppThemes.titleStyle, // <-- Use centralized style
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String date;
  final bool completed;
  final Color color;

  const TaskCard({
    required this.title,
    required this.date,
    required this.completed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppThemes.cardBg, // <-- Use centralized color
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        leading: Container(
          width: 8,
          height: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        title: Text(
          title,
          style: AppThemes.bodyStyle.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ), // <-- Use centralized style
        ),
        subtitle: Text(
          date,
          style: AppThemes.bodyStyle.copyWith(color: Colors.white54),
        ),
        trailing: completed
            ? const Icon(Icons.check_circle, color: Color(0xFFB77BFC))
            : const Icon(
                Icons.radio_button_unchecked,
                color: Color(0xFFB77BFC),
              ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        tileColor: AppThemes.cardBg, // <-- Use centralized color
      ),
    );
  }
}
