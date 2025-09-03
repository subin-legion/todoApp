import 'package:flutter/material.dart';
import 'package:todoapp/widgets/app_Theams.dart'; // <-- Import the theme config

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppThemes.cardBg, // <-- Use centralized color
        hintText: "Search Task Here",
        hintStyle: AppThemes.bodyStyle.copyWith(
          color: Colors.white54,
        ), // <-- Use centralized style
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search, color: Colors.white54),
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
      ),
      style: AppThemes.bodyStyle.copyWith(
        color: Colors.white,
      ), // <-- Use centralized style
    );
  }
}
