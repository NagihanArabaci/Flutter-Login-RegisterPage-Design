import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_desing/pages/forgotPage.dart';
import 'package:login_desing/pages/register.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}
  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: const[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }


class _SigninPageState extends State<SigninPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              child: Text(
                "Let's Sign you in",
                style: GoogleFonts.varelaRound(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome Back,You have been missed",
              style: GoogleFonts.varelaRound(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email,phone & username',
                hintStyle: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Text(
                    "Forgot Password ?",
                    style: GoogleFonts.varelaRound(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ForgotPage())));
                  },
                )
              ],
            ),

            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                //KAYDOLDUKTAN SONRA KULLANICI SAYFASINA YÖNLENDİR
              },
              child: Text(
                'Sign in',
                style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(400, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
            const SizedBox(
              height: 20,
            ),
           _divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                InkWell(
                  child: Text(
                    "Register",
                    style: GoogleFonts.varelaRound(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
