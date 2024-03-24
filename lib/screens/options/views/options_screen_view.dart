import 'package:flutter/material.dart';

class OptionsScreenView extends StatefulWidget {
  const OptionsScreenView({super.key});

  @override
  State createState() {
    return _OptionsScreenState();
  }
}

class _OptionsScreenState extends State<OptionsScreenView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.amber
              ),
            )
          )
        ],
      ),
    );
  }
}