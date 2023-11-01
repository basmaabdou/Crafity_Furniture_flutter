import 'package:crafty_furniture/layouts/group_layout.dart';
import 'package:crafty_furniture/modules/home_layout.dart';
import 'package:crafty_furniture/modules/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9F9F9),
        title: const Image(
          image: AssetImage('assets/images/egFlag1.png'),
          width: 38,
          height: 25,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>GroupLayout())
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
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ListView(
              shrinkWrap: true,
              children:[
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 32,
                      color: Color(0xff264446)),
                ),
                const Text(
                  ' Please Enter Your Details.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff828A89)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                      color: Color(0xff101817)),
                ),
                Container(
                  width: 327,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        labelText: "Enter your email",
                        labelStyle: TextStyle(color: Color(0xff828A89)),
                        enabledBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email must be not empty';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                      color: Color(0xff101817)),
                ),
                Container(
                  width: 327,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                      controller: passController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        enabledBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password must be not empty';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Color(0xff007575),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  color: const Color(0xff007575),
                  height: 56,
                  minWidth: 327,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: const Color(0xffFFFFFF),
                  height: 56,
                  width: 327,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/google.png'),
                        width: 23.52,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 161,
                        height: 24,
                        child: const Text(
                          'Sign in with google',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Color(0xff101817)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300, // Adjust the height according to your needs
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account ?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff756B6B)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>SignUpScreen())
                          );
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff007575)),
                        ),
                      )
                    ],
                  ),
                )
              ]
              ),
          ])
          ),
        ),
      ),
    );
  }
}
