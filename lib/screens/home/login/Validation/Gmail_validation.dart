import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GmailValidation extends StatefulWidget {
  const GmailValidation({super.key});

  @override
  State<GmailValidation> createState() => _GmailValidationState();
}
// TextEditingController txtEmail = TextEditingController();

class _GmailValidationState extends State<GmailValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f9),
      body: Center(
        child: Container(
          height: 400,
          width: 900,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                children: [
                 Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/img/g1.png'),
                        ),
                      ),
                    ),

                ],
              ),

            Row(
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: TextField(
                                        decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide( width : 1,
                            color:Colors.grey),
                      ),
                      ),
                      ),
                    ),
                  ],
                ),
                   Text(
                  'Use your Google Account',
                  style: TextStyle(
                    color: Color(0xff2b2b2b),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
