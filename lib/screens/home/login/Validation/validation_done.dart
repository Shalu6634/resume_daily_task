import 'package:flutter/material.dart';
import 'package:resume_daily_task/utils/global_var.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

GlobalKey<FormState> formKey2 = GlobalKey();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f3f8),
      body: Form(
        key: formKey2,
        child: Center(
          child: Container(
            height: 400,
            width: 550,
            decoration: BoxDecoration(
              color: Colors.white,

              boxShadow: [BoxShadow(color: Colors.black38)],
            ),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 230, top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/img/g1.png'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(spreadRadius: 1, color: Colors.black26),
                        ]),
                    child: Center(
                      child: Text(email,style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'You can update your Password now if you forgotten it.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120, top: 80),
                      child: Text(
                        'Update password',
                        style: TextStyle(color: Color(0xff0958cf)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120, top: 80),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xff0958cf),
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
