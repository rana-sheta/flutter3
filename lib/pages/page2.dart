import 'package:flutter/material.dart';
import 'package:task4/pages/page1.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key, required this.title}) : super(key: key);
  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hello User'),
        ),
        body: Column(
                children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        AssetImage('images/photo_2022-05-14_18-45-36.jpg'),
                  ),
                  Icon(
                    Icons.add_photo_alternate_rounded,
                    color: Colors.redAccent,
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
                 ListTile(
              leading: Icon(Icons.account_circle_sharp,size: 30,color: Colors.cyanAccent,),
              title: Text('Chang Icon',style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold),),
              subtitle: Text('Tap to change Icon'),
              trailing: Icon(Icons.add,size: 30,),
              selected: true,
              onTap: (){},
            ),
             SizedBox(height: 170,),
            ListTile(
              title: Text(title,style: TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 30),textAlign: TextAlign.center,),
              tileColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              trailing: Icon(Icons.add, size:  40),

            ),
    ],
            ),
        );

  }
}
