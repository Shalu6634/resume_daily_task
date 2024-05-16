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
###  User Info

```dart
import 'dart:io';

void main() {
  String? name, addr, comp, city, email;
  int? id, age, salary;
  double? phone_num, per;

  Map m1 = {

  };

  stdout.write('Enter your name:');
  name = stdin.readLineSync()!;
  m1.addAll({'name': name});

  stdout.write('Enter your id:');
  id = int.parse(stdin.readLineSync()!);
  m1.addAll({'Id': id});

  stdout.write('Enter your age:');
  age = int.parse(stdin.readLineSync()!);
  m1.addAll({'age': age});

  stdout.write('Enter your salary:');
  salary = int.parse(stdin.readLineSync()!);
  m1.addAll({'salary': salary});

  stdout.write('Enter your percentage:');
  per = double.parse(stdin.readLineSync()!);
  m1.addAll({'per': per});

  stdout.write('Enter your address:');
  addr = stdin.readLineSync()!;
  m1.addAll({'address': addr});

  stdout.write('Enter your comp_name:');
  comp = stdin.readLineSync()!;
  m1.addAll({'company_name': comp});

  stdout.write('Enter your phone_num:');
  phone_num = double.parse(stdin.readLineSync()!);
  m1.addAll({'phone_num': phone_num});

  stdout.write('Enter your email_id:');
  email = stdin.readLineSync()!;
  m1.addAll({'email': email});

  stdout.write('Enter your city_name:');
  city = stdin.readLineSync()!;
  m1.addAll({'city': city});



  print('\n\n');

  m1.forEach((key, value) {
    print('${key}:${value}');
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



## Drawer page
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/6b89be58-2eb2-49a7-bf1c-cd2d262d0e7a" width = 20%  heigth = 25%>

## first Page

<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/799a7ff8-e0ed-4188-b565-9c3ce6027762" width = 20% height = 25%>


## login Page

<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/d3eb6f88-bb90-4ea6-a12b-4f502cb1066d" width = 20% height = 25%>



## Gmail

<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/af6b7f2a-5d6f-4b29-9204-949b79bed218" width = 40% height = 40%>
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/5f23d15c-b95f-49da-abb0-e4e5f1a2cbf8"  width = 40% height = 40%>
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/02fd6432-1aac-4a60-ab81-c50a2c117251" width = 40%  height = 40%>
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/81bf3597-4aa8-4c42-bfa5-72c6ebbdd67d" width = 40%  height = 40%>

## Password

<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/236c43a9-138b-48ae-9105-5b4807862fe2" width = 40%  height = 40%>

<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/89a7a5bc-7252-4eeb-ab1f-1f8b421cf2b2" width = 40%  height = 40%>
<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/d8308168-6be4-428f-b6c6-09abfe5ce45a" width = 40%  height = 40%>
<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/4d5641dd-1212-44b3-b4e5-6710fa61f42e" width = 40%  height = 40%>
<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/a4984ecd-34a4-46b0-910f-fbb28beddb2a" width = 40%  height = 40%>


## validation complete

<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/51ba10f0-714b-4760-a313-44642977852f" width = 40%  height = 40%>

## SnakBar
<img src ="https://github.com/Shalu6634/resume_daily_task/assets/149373622/123098ee-d0d9-4144-af2d-42386352aae6" width = 40%  height = 40%>



https://github.com/Shalu6634/resume_daily_task/assets/149373622/7c3d7a47-e2a3-4094-9591-102a90d50065



## ImagePicker

<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/d294a4ff-d75f-4e8a-ae95-b39b2a42fde4" width = 20%  heigth = 25%>
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/89cf6661-9440-4633-83d1-68f20a533249" width = 20%  heigth = 25%>
<img src = "https://github.com/Shalu6634/resume_daily_task/assets/149373622/00a5f1df-a232-48a0-b27a-0be69660d67a" width = 20%  heigth = 25%>


