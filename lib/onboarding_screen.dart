// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'signup.dart';

class Onboarding_Scrren extends StatefulWidget {
  const Onboarding_Scrren({Key? key}) : super(key: key);

  @override
  State<Onboarding_Scrren> createState() => _Onboarding_ScrrenState();
}

PageController nextpage = PageController();
int pagenumber = 0;

class _Onboarding_ScrrenState extends State<Onboarding_Scrren> {
  Widget dotpageview() {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: i == pagenumber ? 25 : 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: i == pagenumber ? Color(0xff3d7a8b) : Colors.grey,
                ),
              ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_back,
        //       size: 20,
        //       color: Color(0xff217a76),
        //     ),
        //   ),
        // ),

        body: PageView(
          onPageChanged: (value) {
            setState(() {
              pagenumber = value;
            });
          },
          controller: nextpage,
          children: [
            Column(
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: InkWell(
                    onTap: () {
                      nextpage.animateToPage(4,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.easeIn);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 250,
                        top: 15,
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff217a76),
                          fontSize: 20,
                          fontFamily: 'Fondamento',
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'images/Security On-amico.png',
                  width: 340,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Provide Security',
                  style: TextStyle(
                    color: Color(0xff217a76),
                    fontSize: 40,
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'It provides 24/7 monitoring, giving customers\n peace of mind that their home is protected at all\n times',
                  style: TextStyle(
                    color: Color(0xff99a9a8),
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    nextpage.animateToPage(1,
                        duration: Duration(milliseconds: 550),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: 114,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff145464),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontFamily: 'Fondamento',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                dotpageview()
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: InkWell(
                    onTap: () {
                      nextpage.animateToPage(4,
                          duration: Duration(milliseconds: 100),
                          curve: Curves.easeIn);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 250,
                        top: 15,
                      ),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xff217a76),
                          fontSize: 20,
                          fontFamily: 'Fondamento',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'images/Chat bot-amico.png',
                  width: 300,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Automate',
                  style: TextStyle(
                    color: Color(0xff217a76),
                    fontSize: 40,
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Switch through different scenes and quick actions\n for fast management of your home',
                  style: TextStyle(
                    color: Color(0xff99a9a8),
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    nextpage.animateToPage(2,
                        duration: Duration(milliseconds: 550),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: 114,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff145464),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontFamily: 'Fondamento',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                dotpageview()
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'images/Cyber attack-amico.png',
                  width: 300,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Get Notified',
                  style: TextStyle(
                    color: Color(0xff217a76),
                    fontSize: 40,
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'You can get all info about your home, family with\n your devices on the app and get notifications for\n any activity or alerts',
                  style: TextStyle(
                    color: Color(0xff99a9a8),
                    fontFamily: 'Fondamento',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    nextpage.animateToPage(3,
                        duration: Duration(milliseconds: 550),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: 165,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff145464),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontFamily: 'Fondamento',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                dotpageview()
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xff217a76),
                              fontFamily: 'Fondamento',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Enjoy Secure Home With Us! ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: 'Fondamento',
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Image.asset(
                              'images/Sign in-amico (1).png',
                              width: 260,
                            ),
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );

                              nextpage.animateToPage(
                                5,
                                duration: Duration(milliseconds: 100),
                                curve: Curves.easeIn,
                              );
                            },
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xff217a76)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff217a76),
                                fontFamily: 'Fondamento',
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                              nextpage.animateToPage(
                                5,
                                duration: Duration(milliseconds: 100),
                                curve: Curves.easeIn,
                              );
                            },
                            color: Color(0xff217a76),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: 'Fondamento',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
