import 'dart:async';

import 'package:flutter/material.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreenView> {
  bool _buttonDown = false;
  final _stopwatch = Stopwatch();
  Timer? _timer;
  int _secondsPassed = 0;

  void startTimer() {
    print("_MainScreenState->startTimer()");
    _secondsPassed = 0;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _secondsPassed += 1;
      print('_MainScreenState->TIMER: $_secondsPassed');

      if (_secondsPassed == 1) {
        stopTimer();
        Scaffold.of(context).openDrawer();
        // Navigator.pushNamed(context, AppRoutes.Options);
      }
    });
  }

  void stopTimer() {
    print("_MainScreenState->stopTimer()");
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _stopwatch.stop();
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    tapDownHandler(TapDownDetails details) {
      print("_MainScreenState->tapDownHandler()");
      startTimer();
      setState(() {
        _buttonDown = true;
        // _stopwatch.reset();
        // _stopwatch.start();
      });
    }

    tapUpHandler(TapUpDetails details) {
      print("_MainScreenState->tapUpHandler()");
      stopTimer();
      setState(() {
        _buttonDown = false;
        // _stopwatch.stop();
        // Duration elapsed = _stopwatch.elapsed;
        // print("_MainScreenState->tapUpHandler()->ELAPSED: {$elapsed}");
      });
    }

    return Center(
      child: GestureDetector(
        onTap: () => {
          print("Button->onTap()"),

          Scaffold.of(context).openDrawer()

          // Scaffold.of(context).openDrawer()
          // Navigator.pushNamed(context, AppRoutes.Options)
        },
        onTapDown: tapDownHandler,
        onTapUp: tapUpHandler,
        child: Column(
          children: [
              Expanded(
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: _buttonDown ? Colors.black26 : const Color.fromARGB(15, 0, 0, 0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, size: 48),
                    ],
                  ),
                ),
                // child: const Center(
                //   child: Text('Value'),
                // ),
              ),
            )
          ]
        ),
      )
    );
  }
}

// import 'package:flutter/material.dart';

// class MainScreenView extends StatefulWidget {
//   const MainScreenView({super.key});

//   @override
//   State createState() {
//     return _MainScreenState();
//   }
// }

// class _MainScreenState extends State<MainScreenView> {
//   bool _buttonDown = false;

//   @override 
//   Widget build(BuildContext context) {
//     tapDownHandler(TapDownDetails details) {
//       print("_MainScreenState->tapDownHandler()");
//       setState(() {
//         _buttonDown = true;
//       });
//     }

//     tapUpHandler(TapUpDetails details) {
//       print("_MainScreenState->tapUpHandler()");
//       setState(() {
//         _buttonDown = false;
//       });
//     }

//     return Center(
//       child: GestureDetector(
//         onTap: () => {
//           // print("Button->onTap()")
//         },
//         onTapDown: tapDownHandler,
//         onTapUp: tapUpHandler,
//         child: Material(
//           elevation: 4,
//           borderRadius: BorderRadius.circular(4),
//           child: Container(
//             // color: Color.fromARGB(255, 166, 203, 222),
//             padding: EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 166, 203, 222).withOpacity(_buttonDown ? 0.5 : 1.0),
//               borderRadius: BorderRadius.circular(4),
//             ),
//             child: Text("Button"),
//           )
//         ),
//       )
//     );
//   }
// }
