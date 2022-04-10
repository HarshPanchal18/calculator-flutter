import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget{

  @override
  State createState()=>  HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1=0,num2=0,res=0,op="";
  final TextEditingController t1 =  TextEditingController(text: "");
  final TextEditingController t2 =  TextEditingController(text: "");

  void addition(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      res=num1+num2;
      op="Addition";
    });
  }

  void substraction(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      res=num1-num2;
      op="Substraction";
    });
  }

  void multiplication(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      res=num1*num2;
      op="Multiplication";
    });
  }

  void division(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      //res=num1~/num2;
      res=(num1/num2) as int;
      op="Division";
    });
  }

  void clear(){
    setState(() {
      t1.text="";
      t2.text="";
      res=0;
      op="Cleared";
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

            const Padding(padding: EdgeInsets.only(top: 20.0)),

            Text("Operation : $op",
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}