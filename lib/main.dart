import 'package:flutter/material.dart';
void main ()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
Widget calculbutton(String btntxt,Color btncolor,Color txtColor){
  return Container(
    child: RaisedButton(onPressed: (){
      //add function for button press
    },
      child: Text(btntxt,style: TextStyle(fontSize: 35,color: txtColor
      ),
      ),
      shape: CircleBorder(),
      color: btncolor,
      padding: EdgeInsets.all(20),

    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.black,),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),

     child: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         //Calculator Display
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Padding(padding: EdgeInsets.all(10.0),
             child:Text('0',
             textAlign: TextAlign.left,
               style: TextStyle(color: Colors.white,
                 fontSize: 100,
               ),
             ),
             )
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             //Buttons function will be called
             calculbutton('AC', Colors.grey, Colors.black),
             calculbutton('+/-', Colors.grey, Colors.black),
             calculbutton('%', Colors.grey, Colors.black),
             calculbutton('/', Colors.amber, Colors.white)
           ],
         ),
         SizedBox(height: 10,),
         //numbers rows
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             //Buttons function will be called
             calculbutton('7', Colors.grey[850], Colors.white),
             calculbutton('8', Colors.grey[850], Colors.white),
             calculbutton('9', Colors.grey[850], Colors.white),
             calculbutton('x', Colors.amber, Colors.white)
           ],
         ),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             //Buttons function will be called
             calculbutton('4', Colors.grey[850], Colors.white),
             calculbutton('5', Colors.grey[850], Colors.white),
             calculbutton('6', Colors.grey[850], Colors.white),
             calculbutton('-', Colors.amber, Colors.white)
           ],
         ),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             //Buttons function will be called
             calculbutton('1', Colors.grey[850], Colors.white),
             calculbutton('2', Colors.grey[850], Colors.white),
             calculbutton('3', Colors.grey[850], Colors.white),
             calculbutton('+', Colors.amber, Colors.white)
           ],
         ),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             RaisedButton(
                 padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                 onPressed: (){
                   //button function
                 },
                 shape: StadiumBorder(),
             child: Text('0',
             style: TextStyle(
               fontSize: 35,
             color: Colors.white,
             ),
             ),
               color: Colors.grey[850],
             ),
             calculbutton('.', Colors.grey[850], Colors.white),
             calculbutton('=', Colors.amber, Colors.white)

           ],
         )
       ],
     ),
      ) ,
    );
  }
}
