import 'package:flutter/material.dart';
import 'package:freedo/app/common/theme/app_color.dart';
import 'package:freedo/app/modules/splashscreen/views/step1_view.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Free Do",style: TextStyle(color: blackcolor,fontSize: 80,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),)),
          Center(child: Text("Free time done right",style: TextStyle(color: blackcolor,fontSize: 20,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),)),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Container(
            height: 44,
            width: 172,
            decoration: BoxDecoration(
              color: primarycolor,
              borderRadius: BorderRadius.circular(5),

            ),
            child: Center(child: Text("Log in",style: TextStyle(color: Color(0xFF505050),fontSize: 16,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),)),
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: ()
            {
              Get.to(IntroPage());
            },
            child: Container(
              height: 44,
              width: 172,
              decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.circular(5),

              ),
              child: Center(child: Text("Sign up",style: TextStyle(color: Color(0xFF505050),fontSize: 16,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),)),
            ),
          )
        ],
      )
    );
  }
}
