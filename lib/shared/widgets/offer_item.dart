import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
 final String img,title,body;

  const OfferItem({super.key, required this.img, required this.title, required this.body});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 130,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xffFFFFFF)),
              ),
              const SizedBox(
                height: 5,
              ),
               Text(
                body,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Color(0xffFFFFFF)),
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Learn More',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
                color: const Color(0xff007575),
                height: 30,
                minWidth: 100,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
