import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/modules/cart.dart';
import 'package:crafty_furniture/modules/cubit/cubit.dart';
import 'package:crafty_furniture/modules/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/componant/componant.dart';


class CheckOutScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ navigateTo(context, CartScreen());}),
        title: Center(
          child: Text(
            'Checkout',
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
        padding: const EdgeInsetsDirectional.only(start: 15,top: 15,end: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff264446),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 100,
              width:346,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/circle.png'),)),
                    Column(
                      children: [
                        Text(
                          'Home Address',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            color: Color(0xff101817),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '(269) 444-6853',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff828A89),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Road Number 5649 Akali',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff828A89),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Expanded(child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/edit.png'),color: Color(0xff101817),))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Choose payment method',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff264446),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                    height:43.74 ,
                    width: 62.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF),
                    ),
                    child: IconButton(onPressed: (){}, icon:Image(image: AssetImage('assets/images/pay1.png'),))
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                    height:43.74 ,
                    width: 62.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF),
                    ),
                    child: IconButton(onPressed: (){}, icon:Image(image: AssetImage('assets/images/pay2.png'),))
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                    height:43.74 ,
                    width: 62.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF),
                    ),
                    child: IconButton(onPressed: (){}, icon:Image(image: AssetImage('assets/images/pay3.png'),))
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                    height:43.74 ,
                    width: 62.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Icon(Icons.more_horiz_outlined)
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage('assets/images/Card.png'),),
            SizedBox(
              height: 10,
            ),
            Text(
              'Promo code',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff264446),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 54,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF),

              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Promo code',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828A89),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width:75,
                      child: MaterialButton(
                        onPressed: (){
                          navigateTo(context, CheckOutScreen());
                        },
                        color: Color(0xff007575),
                        height: 34,
                        child: Text(
                            'Apply',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                            )
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 120,
              width: 375,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFFFFF),

              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 8,start: 8,end: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total payment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff264446),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$86.680',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE09742),
                     ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 327,
                      child: MaterialButton(
                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return  Container(
                                  height:500 ,
                                  width: 375,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffFFFFFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                        children: [
                                          Image(image: AssetImage('assets/images/sheet.png')),
                                          Text(
                                            'Thank you for  your order',
                                            style: TextStyle(
                                              color: Color(0xff264446),
                                              fontWeight: FontWeight.w100,
                                              fontSize: 24
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: 327,
                                            child: MaterialButton(
                                              onPressed: (){
                                                navigateTo(context, GroupLayout());
                                              },
                                              color: Colors.white,
                                              height: 56,
                                              child: Text(
                                                  'Back Home',
                                                  style: TextStyle(
                                                      color: Color(0xff828A89),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400
                                                  )
                                              ),
                                              shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: 327,
                                            child: MaterialButton(
                                              onPressed: (){
                                                navigateTo(context, CheckOutScreen());
                                              },
                                              color: Color(0xff007575),
                                              height: 56,
                                              child: Text(
                                                  'Track your order',
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600
                                                  )
                                              ),
                                              shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                            ),
                                          ),
                                        ],

                                    ),
                                  ),
                                );
                              });
                        },
                        color: Color(0xff007575),
                        height: 50,
                        child: Text(
                            'Check Out',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      ),
                    )
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
