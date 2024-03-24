import 'package:audio_player/screens/options/views/options_screen_app_bar.dart';
import 'package:audio_player/screens/options/views/options_screen_view.dart';
import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State createState() {
    return _OptionsScreenState();
  }
}

class _OptionsScreenState extends State<OptionsScreen> {
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
    return const Scaffold(
      appBar: OptionsScreenAppBar(),
      body: OptionsScreenView(),
    );
  }
}