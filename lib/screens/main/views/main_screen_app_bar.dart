import 'package:audio_player/services/services.dart';
import 'package:flutter/material.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const MainScreenAppBar({super.key}): preferredSize = const Size.fromHeight(kToolbarHeight);

  @override 
  Widget build(BuildContext context) {
    final t = Services.get().translationService.translation();

    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(t("MainScreen_defaultTitle")),
            ),
          )
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [Container()],
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child: Container(
  //           height: preferredSize.height,
  //           color: Colors.black12,
  //         )
  //       )
  //     ],
  //   );
  // }
}