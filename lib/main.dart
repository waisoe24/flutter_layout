import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Text("Button Demo")),
          body: SpacerWidget(),
          floatingActionButton: FABWidget(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}

class ButtonStateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        RaisedButton(
          onPressed: null,
          child: Text(
            'Disable Button',
            style: TextStyle(fontSize: 20),
          ),
        ),
        // const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Enabled Button',
            style: TextStyle(fontSize: 20),
          ),
        ),
        // const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF0D4171),
              Color(0xFF0D8211),
              Color(0xAA0D2156)
            ])),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Gradient Button',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ]),
    );
  }
}

class FABWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      tooltip: 'Add',
      child: Icon(Icons.add),
    );
  }
}

class BlueBox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Row(children:[
     BlueBox(),
     Flexible(
       child: BlueBox(),
       flex: 1,
       fit: FlexFit.loose,
       ),
       Flexible(
         child: BlueBox(),
         flex: 2,
         fit: FlexFit.tight,
         )
   ],);
  }

}

class ExpandedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Expanded(child: BlueBox()),
        BlueBox()
      ],);
  }

}

class SpacerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BlueBox(),
        Spacer(flex: 2),
        BlueBox(),
        Spacer(flex: 2),
        BlueBox()

    ],);
  }

}


