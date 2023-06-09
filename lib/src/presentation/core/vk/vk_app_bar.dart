import 'package:flutter/material.dart';

class VkAppBar extends AppBar {
  VkAppBar(
    BuildContext context, {
    required String title,
    List<Widget>? actions,
    super.key,
  }) : super(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black87),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          centerTitle: false,
          actions: actions,
        );
}
