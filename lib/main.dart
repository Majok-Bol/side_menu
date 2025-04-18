import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('Side menu',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,
        ),
        body: Center(child: Text('Main context'),),
        drawer: Drawer(
          child: ListView(
            children:const [
            DrawerHeader(decoration:BoxDecoration(
              color: Colors.blueGrey,
            ),
                child: Text('Menu')),
              ListTile(title: Text('Home'),),
              ListTile(title: Text('Settings'),),
              ListTile(title: Text('Logout'),),
            ],
          ),
        ),
      ) ,
    );
  }
}