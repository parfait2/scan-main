import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera.dart';

void main() => runApp(MyApp());

/*
Future<void> main() async {
  // 디바이스에서 이용가능한 카메라 목록을 받아옵니다.
  final cameras = await availableCameras();

  // 이용가능한 카메라 목록에서 특정 카메라를 얻습니다.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: CameraExample(
        // 적절한 카메라를 TakePictureScreen 위젯에게 전달합니다.
        camera: firstCamera,
      ),
    ),
  );
}

class TakePictureScreen {
}
*/
class MyApp extends StatelessWidget {
  final appTitle = '다발성 모반 측정';

  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: CameraExample(),// home: MyHomePage(title: '다발성 모반',),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key ? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
            width: 160,
            height: 160,
            child: Center(
                child: Text(
                    "Scan",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    )
                ),
            ),
            decoration: BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.shade700.withOpacity(0.7),
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: const Offset(0,7),
                  )
                ]
            ),
          ),
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text('다발성 모반 측정'),
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
              ),
            ),
            ListTile(
              title: Text('알림 시간대 설정'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.black45),
            ListTile(
              title: Text('앱 기본 정보'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.black45),
            ListTile(
              title: Text('앱 사용법'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.black45),
            ListTile(
              title: Text('이용 약관'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.black45),
          ],
        ),
      ),
    );
  }
}