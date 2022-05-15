import 'package:flutter/material.dart';
import 'package:task4/pages/page2.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome Catianze'),
      ),
      body:Center(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Stack(
              alignment: Alignment.bottomLeft,
        children: [
          Image.asset('images/photo_2022-05-14_18-45-21.jpg'),
          Container(
            width: 120,height:100,color: Colors.blue,
            child:Center(child:
            Text('Cat Reloaded',style: TextStyle(fontSize: 20),),
            ),
          )],
      ),
      //SizedBox(height: 5),
      ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, '/page2');
      },
          child: Text('Go to another Screen',
          style:TextStyle(fontSize: 20)
          ,textAlign: TextAlign.center))

      ])),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 30,),
            ListTile(
              title: Text('Setting',style: TextStyle(fontSize: 30),),
              leading : Icon(Icons.settings),
              onTap: (){},
            )
          ],
        ),
      ),
    );

  }
}