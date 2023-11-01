import 'package:crafty_furniture/modules/check_out.dart';
import 'package:flutter/material.dart';

import '../layouts/group_layout.dart';
import '../shared/componant/componant.dart';
import '../shared/widgets/shop_item.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff007575),),onPressed:(){ navigateTo(context, GroupLayout());}),
        title: Center(
          child: Text(
            'Cart',
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
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 330,
              child: ListView.separated(
                  itemBuilder: (context,index)=>ShoppingItem(img: shopItem[index].img, text: shopItem[index].text, price: shopItem[index].price, numPecies: shopItem[index].numPecies,),
                  separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  itemCount: shopItem.length
              ),
            ),
            Container(
              color: Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff264446),
                        shadows:  <Shadow>[
                          Shadow(
                            blurRadius: 15.0,
                            color: Color(0xff000000).withOpacity(.25),
                            offset: Offset(0.0, 8.0),

                          )],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff264446),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$926.99',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE49E62),
                            shadows:  <Shadow>[
                              Shadow(
                                blurRadius: 15.0,
                                color: Color(0xff000000).withOpacity(.25),
                                offset: Offset(0.0, 8.0),

                              )],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Shipping Cost',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff264446),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$926.99',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE49E62),
                            shadows:  <Shadow>[
                              Shadow(
                                blurRadius: 15.0,
                                color: Color(0xff000000).withOpacity(.25),
                                offset: Offset(0.0, 8.0),

                              )],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Total payment',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff264446),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$926.99',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffE49E62),
                            shadows:  <Shadow>[
                              Shadow(
                                blurRadius: 15.0,
                                color: Color(0xff000000).withOpacity(.25),
                                offset: Offset(0.0, 8.0),

                              )],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 327,
                      child: MaterialButton(
                        onPressed: (){
                          navigateTo(context, CheckOutScreen());
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
            ),
          ],
        ),
      ),
    );
  }

  List<ShoppingItem> shopItem=[
    ShoppingItem(img: 'assets/images/chair4.png', text: 'OxMathis Furniture', price: '\$200',numPecies:'1'),
    ShoppingItem(img: 'assets/images/chair3.png', text: 'Modern Style', price: '\$250',numPecies: '3'),
    ShoppingItem(img: 'assets/images/chair2.png', text: 'OxMathis Furniture', price: '\$500',numPecies:'1'),
  ];
}
