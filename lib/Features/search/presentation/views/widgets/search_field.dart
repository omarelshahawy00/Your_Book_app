import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.onSearchChanged});
  final Function(String) onSearchChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearchChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Search...',
        suffixIcon: const Opacity(
          opacity: .7,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 21,
          ),
        ),
      ),
    );
  }
}
