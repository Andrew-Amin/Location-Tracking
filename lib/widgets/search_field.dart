import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final fieldTextController;
  final void Function(String) onChanged;
  final void Function() onTap;
  SearchField({
    Key key,
    this.fieldTextController,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: TextField(
          controller: fieldTextController,
          textInputAction: TextInputAction.search,
          onChanged: onChanged,
          style: TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.search,
                color: Colors.black54,
              ),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.9),
            hintText: 'Search...',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
