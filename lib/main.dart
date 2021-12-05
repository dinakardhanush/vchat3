import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vchat1/Row1Screens/getstarted_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    //using screenutilinit from screen util package
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vchat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GetStartedScreen(),
      ),
      designSize: const Size(360,640),
    );
  }
}
