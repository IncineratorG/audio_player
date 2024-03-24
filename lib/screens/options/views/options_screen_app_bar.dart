import 'package:flutter/material.dart';

class OptionsScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const OptionsScreenAppBar({super.key}): preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: preferredSize.height,
            color: Colors.black12,
          ),
        )
      ],
    );
  }
}