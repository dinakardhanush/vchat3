// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vchat1/constants.dart';

import 'createaccount_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(child: SizedBox(height: 190.h,)),
                 Center(
                   child: SizedBox(
                      width: 178.w,
                      height: 74.h,
                      child: SvgPicture.asset('assets/vchat.svg'),
                    ),
                 ),

                Flexible(child: SizedBox(height: 222.h,)),
                Center(
                  child: Flexible(
                    child: SizedBox(
                        width: 325.w,
                        height: 48.h,
                        child: TextButton(onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountScreen()))
                        },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Constants.kprimaryblue),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
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
                                      side: BorderSide(color:Colors.transparent,width: 1.w)
                                  )
                              )
                          ),
                          child: Text(Constants.getstarted,style: GoogleFonts.quicksand(),),),
                      ),
                  ),
                ),
                SizedBox(height: 30.h,)




              ],
            ),

        ),
      
    );
  }
}
