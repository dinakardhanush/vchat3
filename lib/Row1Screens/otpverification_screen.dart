// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:vchat1/Row1Screens/createaccount_screen.dart';
import 'package:vchat1/Row1Screens/createprofile_screen.dart';

import '../constants.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }


  final TextEditingController _pinPutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kwhite,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15.h,),
              Row(
                children: [
                  SizedBox(width: 17.w),
                  IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountScreen()));}, icon: Icon(Icons.arrow_back),),
                   SizedBox(width: 70.w,),
                   Text(Constants.otpverification,style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Constants.kblack,fontWeight: FontWeight.w600,fontSize: 17.sp
                      ),
                    )),

                ],
              ),
              SizedBox(height: 49.h,),
              Center(child: Text(Constants.codesent,style: TextStyle(color: Constants.kdarkgrey),)),
              SizedBox(height: 5.h,),
              Center(child: Text(Constants.number)),
              SizedBox(height: 32.h,),
              Center(
                child:Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(20.0),
                child: PinPut(fieldsCount: 4,
                  onSubmit: (String pin){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>CreateProfileScreen()));
                },controller: _pinPutController,
                  submittedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  selectedFieldDecoration: _pinPutDecoration,
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Constants.kprimaryblue.withOpacity(.5),
                    ),
                  ),),)
              ),
              SizedBox(height: 25.h,),
              Center(
                child: SizedBox(
                  width: 275.w,
                  height: 48.h,
                  child: TextButton(onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateProfileScreen()))
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
                    child: Text("Submit",style: GoogleFonts.quicksand(),),),
                ),
              ),
              SizedBox(height: 32.h,),
              Center(
                child: Container(
                  width: 182.w,
                  height: 24.h,
                  child: Wrap(
                    children: [
                      Text(Constants.coderesent,style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Constants.kdarkgrey,fontSize: 12.sp)
                      ),),
                      SizedBox(width: 1.w,),
                      Text('00:57',style: GoogleFonts.inter(
                      textStyle: TextStyle(color: Constants.kprimaryblue,fontSize: 12.sp)
      ),)
                    ],
                  ),
                ),
              )

            ],
          ),
        ) ,
      ),
    );
  }
}
