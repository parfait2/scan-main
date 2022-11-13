import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
                '측정 결과',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                )
            ),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/report1.jpg')),

            SizedBox
              (height: 200,
                width: 200,
                child: Image.asset('assets/images/report2.png')),

          ],
        ),
      ),// This
    );
  }
}