import 'package:flutter/material.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  MovieAppBar({super.key});

  final double toolbarHeight = 70;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('MovieDB'),
      titleTextStyle: Theme.of(context)
          .textTheme
          .headlineLarge
          ?.copyWith(fontWeight: FontWeight.bold),
      toolbarHeight: toolbarHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
