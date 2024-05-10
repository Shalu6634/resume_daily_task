
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FScreen extends StatefulWidget {
  const FScreen({super.key});

  @override
  State<FScreen> createState() => _FScreenState();
}

class _FScreenState extends State<FScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80, left: 20),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
              image: AssetImage('assets/img/1.jfif'),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              'Build Awesome Apps',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            ),
          ),
          Text(
            'Let`s put your creativity on the',
            style: TextStyle(fontSize: 17),
          ),
          Text(
            'development highway',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              GestureDetector(onTap: (){
                setState(() {
                  Navigator.of(context).pushNamed('/login');
                });
              },
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 80),
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xfffdce2c),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 80),
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                    color: Color(0xff272727),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Sign-up',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
