import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'widgets/double_button.dart';
part 'widgets/search_option.dart';

class VkAppBar extends AppBar {
  VkAppBar(
    BuildContext context, {
    required String title,
    super.key,
  }) : super(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          leading: SearchOprion(),
          actions: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: DoubleButton(),
            ),
          ],
        );
}
