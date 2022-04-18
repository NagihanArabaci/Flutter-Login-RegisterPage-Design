import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({ Key? key }) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        
        margin: EdgeInsets.only(left: 15,top:30,bottom: 0,right: 15),
        child: TextFormField(decoration:InputDecoration(hintText: "Your email address ",hintStyle: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),)
        ),
      ),
      
    );
  }
}