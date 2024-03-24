import 'package:audio_player/app-routes/app_routes.dart';
import 'package:audio_player/screens/main/main_screen.dart';
import 'package:audio_player/screens/options/options_screen.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key});

  @override
  State createState() {
    return _AppLoaderScreenState();
  }
}

class _AppLoaderScreenState extends State<AppLoader> {
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
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.Main,
      routes: {
        AppRoutes.Main: (context) => const MainScreen(),
        AppRoutes.Options: (context) => const OptionsScreen(),
      },
    );
  }
}