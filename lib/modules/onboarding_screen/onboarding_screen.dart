import 'package:crafty_furniture/modules/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/componant/componant.dart';



class BoardingModel{
  final String image;
  final String text;

  BoardingModel({
    required this.image,
    required this.text
  });
}



class OnBoardingScreen extends StatelessWidget {

var pageController=PageController();
bool isLast=false;

  @override
  Widget build(BuildContext context) {
    List<BoardingModel> boarding=[
    BoardingModel(
      image:  'assets/images/onboarding1.png',
        text: "View And Exprience Furniture With The Help Of Augmented Reality  "
    ),
    BoardingModel(
      image:  'assets/images/onboarding2.png',
        text: "Design Your Space With Augmented Reality By Creating Room"
    ),
    BoardingModel(
      image:  'assets/images/onboarding3.png',
        text: "Explore World Class Top Furnitures As Per Your Requirements & Choice "
    )
    ];
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context)=>LoginScreen()),
                        (route) => false
                );
              },
              child: Container(
                width: 62,
                height: 24,
                child: const Text(
                  'Skip',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                 child: PageView.builder(
                     itemBuilder: (context,index) => buildItemBoarding(boarding[index]),
                   physics: BouncingScrollPhysics(),
                   itemCount: boarding.length,
                   controller: pageController,
                 )
             ),

          Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context)=>LoginScreen()),
                                    (route) => false
                            );
                          },
                          child: Text('Get Started'),
                          color: Color(0xff007575),
                          height: 56,
                          minWidth: 327,
                        ),
                      )
          ],
        ),
      ),
    );
  }

}
