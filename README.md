# resume_daily_task

 # what is List ?
 
- List data type is similar to arrays in other programming languages. 
- List is collection of multiple value of all data type.
- List is denoted by '[]'.

## List declaration :-

**Syntax:-** List variableName = [Values];

###  Example : -

```dart
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1[2]);

}
```
###  Find length of list :

```dart
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1.length);

}
```
###  Add value of list 

 ```dart
import 'dart:io';

void main()
{
  List l1 =['s','a',1,2];

  print(l1.add(12));

}
```
### Add multiple value
```dart
import 'dart:io';

void main() {

  List l1 = [1, 2, 'A', 'S'];

  l1.addAll([1, 2, 3]);

  print(l1);

}

```
###  Remove value in list

```dart
import 'dart:io';

void main() 
{
  List l1 = [1, 3, 'a', 'b'];

  l1.remove(1);

  print(l1);
  
}
```
###  Remove value at Index

```dart
import 'dart:io';

void main() 
{
  List l1 = [1, 3, 'a', 'b'];

  l1.removeAt(1);

  print(l1);
  
}
```
### Insert value:

```dart

 void main() 
 {
    List l1 = ['s','c',1,3,7];


    l1.insert(0, 'flutter');
   
    print(l1);
 }
```
### InsertAll value:

```dart

 void main()
{
  List l1 =[1,23,4];

  l1.insertAll(1, [2,4,5]);


  print(l1);

}        
```

###  Generics :

```dart
import 'dart:io';

  void main() 
  {
    List <int> l1 = [];
    

    print("Enter number  : ");
    int  n = int.parse(stdin.readLineSync()!);
 
    for(int i=0; i<n; i++)
    {
      l1.add(n);
    }
    print(l1);
  }
    
```


## Map 

- Map is collection of multiple List.
- Map is an object that stores data in the form of a key-value pair. 
- Both keys and values can be any type.


### InsertAll value:

```dart
import 'dart:io';

void main()
{


   Map  m1 ={
     'key':'value',
     'key1':'value1',
     'key2':'value2',
   };

   print(m1);
   
   print("\n");
    
   m1.forEach((key, val) 
   {
      print("${key} : ${val}");
    });

}

```





## StatusBar

```dart
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

```dart

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

```dart

import 'package:flutter/material.dart';
import 'package:resume_daily_task/screens/home/homepage.dart';
class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes = {'/':(context)=>HomePage(),
  };
}
```

