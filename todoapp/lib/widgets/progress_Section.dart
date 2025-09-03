import 'package:flutter/material.dart';
import 'package:todoapp/widgets/app_Theams.dart'; // <-- Import the theme config

class ProgressSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppThemes.cardBg, // <-- Use centralized color
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Daily Task",
              style: AppThemes.titleStyle.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ), // <-- Use centralized style
            ),
            const SizedBox(height: 4),
            Text(
              "2/3 Task Completed",
              style: AppThemes.bodyStyle, // <-- Use centralized style
            ),
            const SizedBox(height: 6),
            Text(
              "You are almost done go ahead",
              style: AppThemes.bodyStyle.copyWith(color: Color(0xFFB77BFC)),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    color: const Color(0xFFB77BFC),
                    backgroundColor: Colors.white12,
                    value: 0.66, // 66%
                    minHeight: 8,
                  ),
                ),
                const SizedBox(width: 14),
                Text(
                  "66%",
                  style: AppThemes.titleStyle.copyWith(
                    color: Color(0xFFB77BFC),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
