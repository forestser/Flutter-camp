import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,//색변경
        ),
        title: Text('닉네임 변경',
        style: TextStyle(
          color: Colors.black,
        ),
        ),

        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15,top: 30,),
                child: Text('현재 닉네임',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(width: 140,),
              Padding(
                padding: EdgeInsets.only(right: 15,top: 30,),
                child: Text('abcdefg1234',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 51),
            child: Text('번경할 닉네임을 입력해주세요',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 238,
                height: 40,
                child: TextField(
                  autofocus: true,
                ),
              ),
              SizedBox(
                width: 20,
              ),

              ElevatedButton(
                child: Text('중복확인',),
                onPressed: () => Get.dialog(
                  Dialog(
                    child: Container(
                      height: 100,
                      child: Center(
                        child: Text('Dialog'),
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(73, 40),
                  primary: Colors.teal
                ),
              ),
            ],
          ),
          SizedBox(
            height: 381.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: SizedBox(
              width: 331,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('변경하기',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}