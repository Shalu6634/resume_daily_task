import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global_var.dart';

class GmailValidation extends StatefulWidget {
  const GmailValidation({super.key});

  @override
  State<GmailValidation> createState() => _GmailValidationState();
}

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController txtEmail = TextEditingController();

class _GmailValidationState extends State<GmailValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f9),
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            height: 400,
            width: 900,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, right: 30),
                          child: TextFormField(
                            onChanged: (value) {
                              email=value;
                            },
                            validator: (value) {
                          
                              if (value!.isEmpty) {
                                return 'field is must be required';
                              }
                              else if(!value.contains('@')){
                                return 'Enter @gmail.com';
                              }
                              else if(value.toString()=='@gmail.com'){
                                return 'xyz@gmail.com';
                              }
                              return null;


                            },
                            controller: txtEmail,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Email or phone',
                              hintText: 'abcd@gamil.com',
                              labelStyle: TextStyle(
                                color: Color(0xff2b2b2b),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 150, top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Use your Google Account',
                          style: TextStyle(
                            color: Color(0xff2b2b2b),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 250),
                          child: Text(
                            'Forgot email?',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0a59d1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 470, top: 40),
                    child: Row(
                      children: [
                        Text(
                          'Not your computer?Use Guest mode to sign in privately.',
                          style:
                              TextStyle(color: Color(0xff737473), fontSize: 12),
                        ),
                        Text(
                          'Learn more',
                          style: TextStyle(
                              color: Color(0xff0a59d1),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30,
                          ),
                          child: Text(
                            'Create  account',
                            style: TextStyle(
                                color: Color(0xff0a59d1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bool res = formKey.currentState!.validate();
                            if(res)
                            {
                              email = txtEmail.text;
                              Navigator.of(context).pushNamed('/pass',arguments: email);
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 30),
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xff0a59d1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'Next',
                                style:
                                TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        // OutlinedButton(onPressed: (){
                        //   bool res = formKey.currentState!.validate();
                        //   if(res)
                        //     {
                        //       email=txtEmail.text;
                        //       Navigator.of(context).pushNamed('/pass');
                        //
                        //     }
                        //
                        //
                        // }, child: Text('Next'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
