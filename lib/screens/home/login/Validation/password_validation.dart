import 'package:flutter/material.dart';
import 'package:resume_daily_task/utils/global_var.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

GlobalKey<FormState> formKey1 = GlobalKey();
TextEditingController txtPassword = TextEditingController();

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f9),
      body: Form(
        key: formKey1,
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
                        decoration: const BoxDecoration(
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
                      const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(
                        height: 105,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, right: 30),
                          child: TextFormField(
                            onChanged: (value) {
                              pass = value;
                            },
                            validator: (value) {
                              int i = 0;
                              if (value!.isEmpty) {
                                return 'field is must be required';
                              } else if (value.contains(' ')) {
                                return 'Space not allow ';
                              } else if (value.length <= 8) {
                                return 'Enter password greater then 8';
                              }
                              for (i = 0; i < value.length; i++) {
                                if (value[i] != value[i].toLowerCase()) {
                                  checkCapitalCase = true;
                                }
                              }
                              for (i = 0; i < value.length; i++) {
                                if (value[i] != value[i].toUpperCase()) {
                                  checkLowerCase = true;
                                }
                              }
                              if (!checkCapitalCase) {
                                return 'Enter minimum one character is capital !';
                              }
                              if (!checkLowerCase) {
                                return 'Enter minimum one is small!';
                              }
                              for (int i = 0; i < value.length; i++) {
                                int charCode = value.codeUnitAt(i);
                                if ((charCode >= 32 && charCode <= 38) || (charCode >= 58 && charCode <= 64) ||
                                    (charCode >= 91 && charCode <= 96) ||
                                    (charCode >= 123 && charCode <= 126)) {
                                  specialChar = true;
                                }
                                if ((charCode >= 48 && charCode <= 57)) {
                                  checkDigit = true;
                                }
                              }
                              if (!specialChar) {
                                return 'Enter one special character !';
                              }
                              if (!checkDigit) {
                                return 'Enter minimum one Digit !';
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('login is successfully '),
                                  duration: Duration(seconds: 5),
                                ),
                              );
                            },
                            controller: txtPassword,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                color: Color(0xff2b2b2b),
                              ),
                              enabledBorder:const  OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.black87, width: 1),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 1)),
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
                            'Forgot password?',
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
                            'Update password',
                            style: TextStyle(
                                color: Color(0xff0a59d1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            bool res = formKey1.currentState!.validate();
                            if (res) {
                              pass = txtPassword.text;
                              Navigator.of(context)
                                  .pushNamed('/done', arguments: email);
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 30),
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xff0a59d1),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
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
