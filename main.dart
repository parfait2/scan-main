import 'package:flutter/material.dart';
import 'package:scan/screens/first.dart';
import 'package:scan/screens/home.dart';
import 'package:scan/screens/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '다발성 모반 측정',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '다발성 모반 측정'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [const Home(), First(), Second()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _children[_currentIndex],
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
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.black45),

              ListTile(
                title: Text('환경 설정'),
                trailing: Icon(Icons.keyboard_arrow_right_sharp),
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
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo_album_outlined),
                label: '기록',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
                label: '리포트',
              )
            ]));
  }
}