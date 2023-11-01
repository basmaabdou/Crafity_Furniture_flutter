import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/shared/componant/componant.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ navigateTo(context, GroupLayout());}),
        title: Center(
          child: Text(
            'Notfications',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize:20 ,
              color: Color(0xff264446),
              shadows:  <Shadow>[
                Shadow(
                  blurRadius: 15.0,
                  color: Color(0xff000000).withOpacity(.25),
                  offset: Offset(0.0, 8.0),

                )],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Color(0xff007575),
                    height: 50,
                    child: Text(
                        'News & Update',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        )
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10) )),
                  ),
                ),
                Container(
                  width: 150,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Color(0xffFFFFFF),
                    height: 50,
                    child: Text(
                        'Draft',
                        style: TextStyle(
                            color: Color(0xff007575),
                            fontSize: 21,
                            fontWeight: FontWeight.w700
                        )
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10) )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Current',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Color(0xff264446),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              width:320,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15)
              ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage('assets/images/noti1.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimalist Cahir',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff264446),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'On the Way',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1F7066),
                              ),
                            ),
                            Text(
                              '. 3 items',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4C4E52),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

            ],),),
            SizedBox(
              height: 30,
            ),
            Text(
              'March 3',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff264446),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width:320,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child:  Image(
                      image: AssetImage('assets/images/noti2.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Totar Chair',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Delivered',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffB67514),
                            ),
                          ),
                          Text(
                            '. 1 items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4C4E52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],),),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width:320,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    child:  Image(
                      image: AssetImage('assets/images/noti3.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mathis Sofa',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Delivered',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffB67514),
                            ),
                          ),
                          Text(
                            '. 3 items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4C4E52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],),),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width:320,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 60,
                    child:  Image(
                      image: AssetImage('assets/images/noti5.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modern Sofa',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Canceled',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff9B1525),
                            ),
                          ),
                          Text(
                            '. 3 items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4C4E52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],),),
            SizedBox(
              height: 30,
            ),
            Text(
              'January 26',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff264446),
              ),
            ),
            Container(
              height: 70,
              width:320,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child:  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage('assets/images/noti1.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modern Chair',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff264446),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'On the Way',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1F7066),
                            ),
                          ),
                          Text(
                            '. 3 items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff4C4E52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ],),),
          ],
        ),
      ),
    );
  }
}
