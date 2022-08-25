import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedo/app/common/theme/app_color.dart';
import 'package:freedo/app/modules/question_watch/views/questions_watch.dart';
import 'package:freedo/app/modules/questions/views/questions_view.dart';

import 'package:get/get.dart';

class Step1View extends GetView {
  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 28.0,right: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Welcome back",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
                  Text("Naithik",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Let us help you find the perfect way to spend your moment by providing us with the required information.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,),maxLines: 3,),
            SizedBox(height: 45,),

            Text("Step 1 of 2",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
            SizedBox(height: 10,),
            Text("How much money you would like to spend?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),),
            SizedBox(height: 10,),
            Container(
              height: 44,
              width: 172,
              decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.circular(5),

              ),
              child: TextField(
                controller: controller,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefix: Text("₹"),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Enter here"),
              ),
            ),
            SizedBox(height: 30,),
            Text("How much time you have got?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 44,
                  width: 80,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: TextField(
                    controller: controller,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Hours"),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 44,
                  width: 100,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child: TextField(
                    controller: controller,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Minutes"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Center(child: Text("Not today? No worries we got you. Select date of your choice!",textAlign: TextAlign.center,maxLines: 2,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),)),
            SizedBox(height: 20,),
            Container(
              height: 44,
              width: 172,
              decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.circular(5),

              ),
              child: TextField(
                controller: controller,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Calendar"),
              ),
            ),
          ],
        ),
      )
    );
  }
}




class IntroPage extends StatefulWidget {


  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  TextEditingController controllers = TextEditingController();
  int pageIndex = 0;

  bool first = false;
  bool second = false;
  bool three = false;
  bool four = false;
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assests/background2.png')),

        ),
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value)
              {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28.0,right: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Text("Step 1 of 2",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
                      ),
                      SizedBox(height: 20,),
                      Text("Let us help you find the perfect way to spend your moment by providing us with the required information.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,),maxLines: 3,),
                      SizedBox(height: 45,),


                      SizedBox(height: 10,),
                      Text("How much money you would like to spend?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),),
                      SizedBox(height: 10,),
                      Container(
                        height: 44,
                        width: 172,
                        decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: TextField(
                          controller: controllers,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefix: Text("₹"),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Enter here"),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("How much time you have got?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 44,
                            width: 80,
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: TextField(
                              controller: controllers,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(

                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Hours"),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            height: 44,
                            width: 100,
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: TextField(
                              controller: controllers,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(

                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Minutes"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Center(child: Text("Not today? No worries we got you. Select date of your choice!",textAlign: TextAlign.center,maxLines: 2,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal),)),
                      SizedBox(height: 20,),
                      Container(
                        height: 44,
                        width: 172,
                        decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: TextField(
                          controller: controllers,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(

                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Calendar"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                padding: const EdgeInsets.only(left: 28.0,right: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Text("Step 2 of 2",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
                      ),
                      SizedBox(height: 10,),
                      Text("What would you like to do?",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,),maxLines: 3,),
                      SizedBox(height: 45,),

                      //Text("Step 1 of 2",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
                      InkWell(
                        onTap: ()
                        {
                          setState(() {
                            first = true;
                             second = false;
                             three = false;
                            four = false;
                          });
                        },
                        child: first ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFDCE6FF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text("Eat",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.done,color:  Colors.white,),
                            )
                          ],
                        ) : Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFDCE6FF),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Eat",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Aren’t you hungry yet?",style: TextStyle(color: Color.fromRGBO(80, 80, 80, 0.75),fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 25,),
                      InkWell(
                        onTap: ()
                        {
                          setState(() {
                            first = false;
                             second = true;
                             three = false;
                            four = false;
                          });
                        },
                        child: second ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFDCE6FF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text("Watch",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.done,color:  Colors.white),
                            )
                          ],
                        ) : Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFDCE6FF),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Watch",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Let’s watch something",style: TextStyle(color: Color.fromRGBO(80, 80, 80, 0.75),fontSize: 16,fontWeight: FontWeight.w600),),

                      SizedBox(height: 25,),
                      InkWell(
                        onTap: ()
                        {
                          setState(() {
                            first = false;
                             second = false;
                             three = true;
                            four = false;
                          });
                        },
                        child: three ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFDCE6FF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text("Explore",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.done,color:  Colors.white),
                            )
                          ],
                        ) : Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFDCE6FF),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Explore",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("I think its time to spend some time outside",style: TextStyle(color: Color.fromRGBO(80, 80, 80, 0.75),fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 25,),
                      InkWell(
                        onTap: ()
                        {
                          setState(() {
                            first = false;
                             second = false;
                             three = false;
                            four = true;
                          });
                        },
                        child: four ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFDCE6FF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(child: Text("Events",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                            ),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.done,color: Colors.white,),
                            )
                          ],
                        ) : Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFDCE6FF),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Events",style: TextStyle(color: Color(0xFF5D8AFF),fontSize: 24,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Why not participate and have some fun?",style: TextStyle(color: Color.fromRGBO(80, 80, 80, 0.75),fontSize: 16,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),


              ],
            ),
            Positioned(
              bottom: 13.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 18,
                          width: pageIndex==0 ? 18 : 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 0 ? Color(0xFF5D8AFF) : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 18,
                          width: pageIndex==1 ? 18 : 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 2),
                              color: pageIndex == 1 ? Color(0xFF5D8AFF) : Colors.white),
                        ),
                        // Container(
                        //   margin: EdgeInsets.all(8.0),
                        //   height: 18,
                        //   width: pageIndex==2 ? 18 : 12,
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       border: Border.all(color: Colors.black, width: 2),
                        //       color: pageIndex == 2 ? Color(0xffFDC054) : Colors.white),
                        // )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Opacity(
                          opacity: pageIndex != 1 ? 1.0 : 0.0,
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              onPressed: () {
                                if (!(controller.page == 1.0))
                                  controller.nextPage(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.linear);
                              }

                          ),
                        ),
                        pageIndex != 1
                            ? FlatButton(
                          splashColor: Colors.transparent,
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          onPressed: () {
                            if (!(controller.page == 1.0))
                              controller.nextPage(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.linear);
                          },
                        )
                            : FlatButton(
                          splashColor: Colors.transparent,
                          child: Text(
                            'FINISH',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context){
                            //   return main_page();
                            // }));
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return first ? QuizScreen() : QuizScreen1();
                            }));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
