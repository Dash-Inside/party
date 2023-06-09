import 'package:flutter/material.dart';

class VkAppBar extends AppBar {
  VkAppBar({
    required String title,
    List<Widget>? actions,
    super.key,
  }) : super(
          title: Text(title),
          centerTitle: false,
          actions: actions,
        );
}
