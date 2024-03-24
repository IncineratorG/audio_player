import 'package:audio_player/screens/main/views/main_screen_app_bar.dart';
import 'package:audio_player/screens/main/views/main_screen_view.dart';
import 'package:flutter/material.dart';

import '../../components/common/app-drawer/app_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
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
      appBar: MainScreenAppBar(),
      // appBar: AppBar(backgroundColor: Colors.amber),
      body: MainScreenView(),
      drawer: AppDrawer(),
      // drawer: Drawer(),
    );
  }
}