import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF232124),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Daily Task",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "2/3 Task Completed",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 6),
            const Text(
              "You are almost done go ahead",
              style: TextStyle(color: Color(0xFFB77BFC)),
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
                const Text(
                  "66%",
                  style: TextStyle(
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
