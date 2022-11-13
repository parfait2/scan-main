import 'package:flutter/material.dart';

import '../../camera.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 160,
          height: 160,
          child: ElevatedButton (
            child: Text(
                "Scan",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                )
            ),
            onPressed: () {
              // 눌렀을 때 두 번째 route로 이동합니다.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CameraExample()),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 200),
              shape: const CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}