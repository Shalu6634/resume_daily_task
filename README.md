# resume_daily_task

 # what is List ?
 
- List data type is similar to arrays in other programming languages. 
- List is collection of multiple value of all data type.
- List is denoted by '[]'.

## List declaration :-

**Syntax:-** List variableName = [Values];

## Example : -

```javascript
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1[2]);

}
```
## Find length of list :

```javascript
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1.length);

}
```
## Add value of list 

 ```javascript
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1.add(12));

}
```
## Add multiple value
```javascript
import 'dart:io';

void main() {

  List l1 = [1, 2, 'A', 'S'];

  l1.addAll([1, 2, 3]);

  print(l1);

}

```
## Remove value in list

```javascript
import 'dart:io';

void main() 
{
  List l1 = [1, 3, 'a', 'b'];

  l1.remove(1);

  print(l1);
  
}
```
## Remove value at Index

```javascript
import 'dart:io';

void main() 
{
  List l1 = [1, 3, 'a', 'b'];

  l1.removeAt(1);

  print(l1);
  
}
```






## StatusBar

```javascript
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft],);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```

## StatusBar

```javascript

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.green,
        ),
      ),
    );
  }
}

```


## StatusBar

```javascript

import 'package:flutter/material.dart';
import 'package:resume_daily_task/screens/home/homepage.dart';
class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes = {'/':(context)=>HomePage(),
  };
}
```

