import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF232124),
        hintText: "Search Task Here",
        hintStyle: const TextStyle(color: Colors.white54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search, color: Colors.white54),
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
