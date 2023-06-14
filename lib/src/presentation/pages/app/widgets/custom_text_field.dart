import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required TextTheme textTheme,
    required int textFieldMaxLines,
    required this.data,
  })  : _textTheme = textTheme,
        _textFieldMaxLines = textFieldMaxLines;

  final TextTheme _textTheme;
  final int _textFieldMaxLines;
  final String data;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: _textTheme.bodyMedium,
      maxLines: _textFieldMaxLines,
      decoration: InputDecoration(
        hintText: data,
        hintStyle: _textTheme.bodyMedium,
        border: InputBorder.none,
      ),
    );
  }
}
