// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vchat1/Row1Screens/otpverification_screen.dart';
import 'package:vchat1/constants.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width:74.w ,
                height:74.h ,
                child: SvgPicture.asset('assets/vchatLogo.svg'),
              ),
              SizedBox(height: 20.h,),
              Text(Constants.welcometovchat,style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22.sp),
              ),),
              SizedBox(height: 16.h,),
              Text(Constants.enteryournumber,style: GoogleFonts.inter(
                textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16.sp),
              ),),
              SizedBox(height: 42.h,),
          Center(
            child: SizedBox(
              width: 314.w,
              height: 48.h,
              child: TextField(
                controller: phoneNumberController,
                minLines: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Constants.kgrey,
                  filled: true,

                  hintText: 'Phone number' ,
                  hintStyle: TextStyle(color: Constants.klightgrey ),
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
              SizedBox(height: 25.h,),
              SizedBox(
                width: 275.w,
                height: 48.h,
                child: TextButton(onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerificationScreen()))
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
                              side: BorderSide(color:Constants.ktransparent,width: 0)
                          )
                      )
                  ),
                  child: Text(Constants.getcontinue,style: GoogleFonts.quicksand(),),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
