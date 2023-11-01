import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/modules/authentication/login_screen.dart';
import 'package:crafty_furniture/modules/cart.dart';
import 'package:crafty_furniture/modules/notification.dart';
import 'package:crafty_furniture/shared/componant/componant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/widgets/card_item.dart';
import '../shared/widgets/default_row.dart';
import '../shared/widgets/offer_item.dart';
import '../shared/widgets/popular_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeScreen> {
  var searchController = TextEditingController();

  var boardController = PageController();

  bool isLast = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(
        backgroundColor: Color(0xff007575),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/profile.png'),
              ),
              Text(
                'Yosra Allam',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF9F9F9),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Notifcations',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Languages',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'My Order',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.payments,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Payments',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Share App',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.feedback,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Feedback',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help_center,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Terms',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.privacy_tip,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF9F9F9),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                    size: 26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      showGeneralDialog(
                        context: context,
                        pageBuilder: (_, __, ___) {
                          return Center(
                            child: Container(
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F9F9),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Material(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.warning_rounded,
                                        color: Colors.red,
                                        size: 50,
                                      ),
                                      Text(
                                        'Are You Sure, you want to leave ?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {
                                              navigateTo(
                                                  context, LoginScreen());
                                            },
                                            child: const Text(
                                              'LogOut',
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),
                                            ),
                                            color: const Color(0xff007575),
                                            height: 50,
                                            minWidth: 70,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0))),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              navigateTo(
                                                  context, GroupLayout());
                                            },
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: Color(0xff007575),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),
                                            ),
                                            // color: const Color(0xff007575),
                                            height: 50,
                                            minWidth: 70,
                                            //   shape: const RoundedRectangleBorder(
                                            //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                            //
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // ),
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffF9F9F9),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/Vector.png',
            width: 25,
            height: 17.5,
            color: const Color(0xff828A89),
          ),
          iconSize: 100,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: const Image(
          image: AssetImage('assets/images/Logo.png'),
          width: 98,
          height: 50,
          color: Color(0xff007575),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/notify.png',
              width: 50,
              height: 48,
            ),
            onPressed: () {
              navigateTo(context, NotificationScreen());
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10, top: 5),
        child: SingleChildScrollView(
          // physics:NeverScrollableScrollPhysics(),
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 260,
                    height: 45,
                    child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            labelText: "Search",
                            labelStyle: TextStyle(color: Color(0xff828A89)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            prefixIcon: Image(
                              image: AssetImage('assets/images/search.png'),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'email must be not empty';
                          }
                          return null;
                        }),
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/Group.png', width: 50),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              DefaultRow(
                title: 'Special Offers',
                subTitle: '',
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 130.0,
                child: ListView.separated(
                  itemBuilder: (context, index) => OfferItem(
                    img: offItem[index].img,
                    title: offItem[index].title,
                    body: offItem[index].body,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 5.0,
                  ),
                  itemCount: offItem.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: boardController,
                  count: 5,
                  effect: const ExpandingDotsEffect(
                      dotColor: Color(0xffDEE7E3),
                      activeDotColor: Color(0xff0C8A7B),
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 5,
                      expansionFactor: 4),
                ),
              ),
              DefaultRow(
                title: " Top Trend",
                subTitle: "View All",
              ),
              Container(
                height: 189.0,
                child: ListView.separated(
                  itemBuilder: (context, index) => cartItem[index],
                  // CardItem(img:cartItem[index].img ,title: cartItem[index].title,
                  // price: cartItem[index].price,),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: cartItem.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              DefaultRow(
                title: 'Popular Now',
                subTitle: "View All",
              ),
              Container(
                height: 68.0,
                child: ListView.separated(
                  itemBuilder: (context, index) => PopularItem(
                    img: popItem[index].img,
                    title: popItem[index].title,
                    price: popItem[index].price,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: popItem.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<CardItem> cartItem = [
  CardItem(
    img: 'assets/images/chair2.png',
    price: "120",
    title: "Tortor Chair Modern Style",
  ),
  CardItem(
    img: 'assets/images/chair3.png',
    price: "300",
    title: " Chair Modern",
  ),
  CardItem(
    img: 'assets/images/chair4.png',
    price: "430",
    title: " Chair Modern Style",
  ),
  CardItem(
    img: 'assets/images/chair2.png',
    price: "234",
    title: "Tortor Chair Modern Style",
  ),
  CardItem(
    img: 'assets/images/chair2.png',
    price: "120",
    title: "Tortor Chair Modern Style",
  ),
  CardItem(
    img: 'assets/images/chair3.png',
    price: "300",
    title: " Chair Modern",
  ),
  CardItem(
    img: 'assets/images/chair4.png',
    price: "430",
    title: " Chair Modern Style",
  ),
  CardItem(
    img: 'assets/images/chair2.png',
    price: "234",
    title: "Tortor Chair Modern Style",
  ),
];

List<PopularItem> popItem = [
  PopularItem(
    img: 'assets/images/chair2.png',
    price: "120",
    title: "Tortor Chair Modern Style",
  ),
  PopularItem(
    img: 'assets/images/chair3.png',
    price: "300",
    title: " Chair Modern",
  ),
  PopularItem(
    img: 'assets/images/chair4.png',
    price: "430",
    title: " Chair Modern Style",
  ),
  PopularItem(
    img: 'assets/images/chair2.png',
    price: "234",
    title: "Tortor Chair Modern Style",
  ),
  PopularItem(
    img: 'assets/images/chair2.png',
    price: "120",
    title: "Tortor Chair Modern Style",
  ),
  PopularItem(
    img: 'assets/images/chair3.png',
    price: "300",
    title: " Chair Modern",
  ),
  PopularItem(
    img: 'assets/images/chair4.png',
    price: "430",
    title: " Chair Modern Style",
  ),
  PopularItem(
    img: 'assets/images/chair2.png',
    price: "234",
    title: "Tortor Chair Modern Style",
  ),
];

List<OfferItem> offItem = [
  OfferItem(
      img: 'assets/images/furniture2.jpg',
      title: '25% discount',
      body: 'For a cozy yellow set!'),
  OfferItem(
      img: 'assets/images/Armchair.jpeg',
      title: '20% discount',
      body: 'For a cozy yellow set!'),
  OfferItem(
      img: 'assets/images/furniture3.jpg',
      title: '70% discount',
      body: 'For a cozy yellow set!'),
];
