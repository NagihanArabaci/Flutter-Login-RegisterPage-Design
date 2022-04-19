import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_desing/models/model.dart';
import 'package:login_desing/pages/register.dart';
import 'package:login_desing/pages/signinPage.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<Models> items = [
    Models(
        img: 'assets/login_logo.png',
        text: 'Team Work All',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.'),
    Models(
        img: 'assets/image_01.png',
        text: 'Team Work All',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.'),
    Models(
        img: 'assets/image_01.png',
        text: 'Team Work All',
        description:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.'),
  ];
  int currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    MediaQueryData _queryData = MediaQuery.of(context);
    double _height = _queryData.size.height / 100.0;
    double _widht = _queryData.size.width / 100.0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 25.0,right: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: _height * 70,
                child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            items[index].img,
                            width: _widht * 80,
                            height: _height * 40,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            items[index].text,
                            style: GoogleFonts.varelaRound(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          
                          const SizedBox(height: 10),
                          Text(
                            items[index].description,
                            style: GoogleFonts.varelaRound(
                                fontSize: 15, color: Colors.black),
                            maxLines: 4,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    for(int i=0; i<items.length;i++)
                    
                         Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        margin:const EdgeInsets.symmetric(horizontal: 5.0),
                        height:  currentIndex == i ? 20 : 10,
                        width:  currentIndex == i ? 20 : 10,
                        decoration:  BoxDecoration(
                          color: currentIndex == i ? Colors.blue : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      )

                  ],
                ),
   
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Padding(padding: EdgeInsets.only(left: 15, right: 15)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninPage()));
                        },
                        child: const Text('Sign in'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 23,
                            ),
                            //padding: const EdgeInsets.all(8.0),
                            primary: Colors.black,
                            minimumSize: const Size(160, 50),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0))))),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: const Text('Register'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 23,
                            ),
                            // padding: const EdgeInsets.all(8.0),
                            primary: Colors.blue[400],
                            minimumSize: const Size(160, 50),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0)))))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
