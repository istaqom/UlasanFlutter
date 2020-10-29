import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/bg.png"), fit: BoxFit.cover
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Wrap(
              children: <Widget>[
                FlatButton(
                    onPressed: (){
                      debugPrint("Puas");
                      test();
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset(
                        'image/puas.png',
                        height: 300,
                        fit: BoxFit.fitWidth
                    )
                ),
                FlatButton(
                    onPressed: (){
                      debugPrint("Cukup");
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset(
                        "image/cukup.png",
                        height: 300,
                        fit: BoxFit.fitWidth
                    )
                ),
                FlatButton(
                    onPressed: (){
                      debugPrint("Kurang");
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image.asset(
                      "image/kurang.png",
                        height: 300,
                        fit: BoxFit.fitWidth
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

void excelbruh() async {
  debugPrint("Bruh");

  var excel = Excel.createExcel();

  excel.encode().then((onValue) {
    File(join("Path_to_destination/excel.xlsx"))
      ..createSync(recursive: true)
      ..writeAsBytesSync(onValue);
  });
}


void test() async {
  return debugPrint("Testo");
}

// class hitung {
//   var now = new DateTime.now();
//   if
// }