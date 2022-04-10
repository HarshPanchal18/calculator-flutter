import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State createState()=>  HomePageState();
}

class HomePageState extends State<HomePage>{
 var num1=0,num2=0,res=0;
 final TextEditingController t1 =  TextEditingController(text: "");
 final TextEditingController t2 =  TextEditingController(text: "");

 void addition(){
   setState(() {
     num1=int.parse(t1.text);
     num2=int.parse(t2.text);
     res=num1+num2;
   });
 }

 void substraction(){
   setState(() {
     num1=int.parse(t1.text);
     num2=int.parse(t2.text);
     res=num1-num2;
   });
 }

 void multiplication(){
   setState(() {
     num1=int.parse(t1.text);
     num2=int.parse(t2.text);
     res=num1*num2;
   });
 }

 void division(){
   setState(() {
     num1=int.parse(t1.text);
     num2=int.parse(t2.text);
     //res=num1~/num2;
     res=(num1/num2) as int;
   });
 }

 void clear(){
   setState(() {
     t1.text="";
     t2.text="";
     res=0;
   });
 }

 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Calculator"),
       backgroundColor: Colors.deepPurpleAccent,
     ),
     body:Container(
       padding: const EdgeInsets.all(40.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           TextField(
             keyboardType: TextInputType.number,
             decoration: const InputDecoration(hintText: "Enter Number 1"),
             controller: t1,
           ),

           TextField(
             keyboardType: TextInputType.number,
             decoration: const InputDecoration(hintText: "Enter Number 2"),
             controller: t2,
           ),
           
           const Padding(padding: EdgeInsets.only(top: 20.0),),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               MaterialButton(onPressed: addition,
               child: const Text("+"),
               color: Colors.greenAccent,),

               MaterialButton(onPressed: substraction,
                 child: const Text("-"),
                 color: Colors.greenAccent,),
             ],
           ),

           const Padding(padding: EdgeInsets.only(top: 20.0)),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>[
               MaterialButton(onPressed: multiplication,
                 child: const Text("*"),
                 color: Colors.greenAccent,),

               MaterialButton(onPressed: division,
                 child:const Text("/"),
                 color: Colors.greenAccent,),
             ],
           ),

          const Padding(padding: EdgeInsets.only(top: 20.0)),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               MaterialButton(onPressed: clear,
                 child:const Text("CLEAR"),
                 color: Colors.greenAccent,),
             ],
           ),

         const  Padding(padding: EdgeInsets.only(top: 20.0)),

           Text("Result : $res",
             style: const TextStyle(
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.orange),

           ),
         ],
       ),
     ),
   );
  }
}