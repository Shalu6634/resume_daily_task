
import 'package:flutter/material.dart';

import '../../../utils/global_var.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
             const  Padding(
                padding: EdgeInsets.only(right: 210, top: 40),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             const  Divider(
                thickness: 2,
                color: Colors.black,
              ),
              ...List.generate(
                icon.length,
                (index) => buildListTile(index),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
      ),
    );
  }

  Widget buildListTile(int index) {
    return ListTile(

      leading: Icon(icon[index]),
      title: Text(txt[index]),

    );
  }
}
