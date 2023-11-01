import 'package:crafty_furniture/modules/detail.dart';
import 'package:flutter/material.dart';

import '../../modules/onboarding_screen/onboarding_screen.dart';

Widget buildItemBoarding(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage('${model.image}'),
          height: 305,
          width: 302,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '${model.text}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
    );


void navigateTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

void navigateFinish(context, Widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => Widget), (route) => false);
