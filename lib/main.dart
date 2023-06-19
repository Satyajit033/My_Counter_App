
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title:"a counter app",
          home: MainActivity(),
        );
  }

}

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return MyActivityUI();
  }
}

class MyActivityUI extends StatefulWidget {
  const MyActivityUI({Key? key}) : super(key: key);

  @override
  State<MyActivityUI> createState() => _MyActivityUIState();
}

class _MyActivityUIState extends State<MyActivityUI> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Counter App"),
          centerTitle: true,
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 100, 20, 50),
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Center(
              child: Text(counter.toString(), style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
        ],
      ),


      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: FloatingActionButton(onPressed: (){counter=counter+1; setState(() {});},child: Icon(Icons.add),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 200, 30, 200),
            child: FloatingActionButton(onPressed: (){counter=0; setState(() {});},child: Text("AC")),
          ),
          Container(
            child: FloatingActionButton(onPressed: (){counter=counter-1;setState(() {});},child: Icon(Icons.remove),),
          )

        ],
      ),



    );
  }
}
