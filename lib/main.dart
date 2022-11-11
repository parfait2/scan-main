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

      home: MyHomePage(title: '다발성 모반',), // home: CameraExample(),
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
                  MaterialPageRoute(builder: (context) => CameraExample()),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 200),
                  shape: const CircleBorder(),
              ),
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
            SwitchListTile(
              title: const Text('알림 허용'),
              subtitle: const Text('알림 수신 여부를 설정합니다.'),
              value: true,
              activeTrackColor: Colors.pink[100],
              activeColor: Colors.red,
              onChanged: (value) {},
            ),
            Divider(color: Colors.black45),

            SwitchListTile(
              title: const Text('진동 허용'),
              subtitle: const Text('진동 해제 시 무음'),
              value: true,
              activeTrackColor: Colors.pink[100],
              activeColor: Colors.red,
              onChanged: (value) {},
            ),
            Divider(color: Colors.black45),

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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '메뉴',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '환경 설정'
          ),
        ],
        onTap: (index){
          _idx = index;
        },
        currentIndex: _idx,
      ),
    );
  }
}

int _idx = 0;