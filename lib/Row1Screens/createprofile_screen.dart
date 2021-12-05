// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vchat1/constants.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kwhite,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text(Constants.profile,style: TextStyle(color: Constants.kblack,fontWeight: FontWeight.w600,fontSize: 17.sp),),
        backgroundColor: Constants.kwhite,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 75.h,),
            SizedBox(
              width: 100.w,
                height: 100.h,
                child: SvgPicture.asset('assets/camerasvg.svg')),
            SizedBox(height: 40.h,),
            Center(
              child: SizedBox(
                width: 328.w,
                height: 48.h,
                child: TextField(
                  controller: userNameController,
                  minLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Constants.kgrey ,
                    filled: true,

                    hintText: 'Username' ,
                    hintStyle: TextStyle(color: Color(0xff979797) ),
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(7.r),
                        borderSide: BorderSide(color:Constants.kgrey)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.r),
                        borderSide: BorderSide(color: Constants.kgrey)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            SizedBox(
              width: 275.w,
              height: 48.h,
              child: TextButton(onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateProfileScreen()))
              },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Constants.kprimaryblue),
                    foregroundColor: MaterialStateProperty.all(Constants.kwhite),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                    textStyle:MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.r),
                            side: BorderSide(color:Constants.ktransparent,width: 0)
                        )
                    )
                ),
                child: Text("Done",style: GoogleFonts.quicksand(),),),
            ),


          ],
        ),
      ),
    );
  }
}
