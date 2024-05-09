import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 100),
            child: Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/1.jfif'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 120),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              'Make it work,make it right,make it fast.',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'E-mail'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240),
            child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff272727),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'OR',
              style: TextStyle(color: Color(0xff272727), fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff272727), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/img/g.jfif'),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Sign-In with Google',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  'Don`t have an Account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ),
              Text('SignUp',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}
