import 'package:flutter/material.dart';

main (){
  runApp(const AmrApp());
}

class AmrApp extends StatelessWidget{
  const AmrApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home:  const HomeActivaty(),

    );
  }
}


//Snakmessage
thisSnakBar(msg,context ){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg))
  );
}


//HomeActivaty
class HomeActivaty extends StatelessWidget{
  const HomeActivaty({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:AppBar(
        title: const Text("AmrApp"),
        titleSpacing: 20 ,
        centerTitle: false,
        toolbarHeight:40 ,
        toolbarOpacity:1,
        elevation: 20,
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(onPressed: (){thisSnakBar ("I Am appbar", context);}, icon: const Icon(Icons.ice_skating)),
          IconButton(onPressed: (){thisSnakBar ("I Am appbar", context);}, icon: const Icon(Icons.ice_skating)),
          IconButton(onPressed: (){thisSnakBar ("I Am appbar", context);}, icon: const Icon(Icons.ice_skating))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () { thisSnakBar("This is floating action button",context ); },
        // backgroundColor: Color(Colors.pink),
        child: const Icon(Icons.add_circle),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:0,
        items: [
          BottomNavigationBarItem(icon:Icon (Icons.home), label: "home"),
          BottomNavigationBarItem(icon:Icon (Icons.account_circle_outlined), label: "home"),
          BottomNavigationBarItem(icon:Icon (Icons.mail_sharp), label: "home")
        ],



        onTap: (int index){
          if (index==0){
            thisSnakBar("I am footer home ", context);
          }
          if (index==1){
            thisSnakBar("I am footer profile ", context);
          }
          if (index==2){
            thisSnakBar("I am footer contact ", context);
          }
        },

        elevation: 10,
        backgroundColor: Colors.grey,
        iconSize: 25,
      ),

    );
  }


}