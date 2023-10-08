import 'package:flutter/material.dart';

main (){
  runApp(const AmrApp());
}

class AmrApp extends StatelessWidget{
  const AmrApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home:  const HomeActivaty(),

    );
  }
}

class HomeActivaty extends StatelessWidget{
  const HomeActivaty({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar:AppBar(
        title: Text("AmrApp"),
        titleSpacing: 20 ,
        centerTitle: false,
        toolbarHeight:40 ,
        toolbarOpacity:1,
        elevation: 20,
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.ice_skating))
        ],

      ),


      body: Text("this is body.................."),

    );

  }


}