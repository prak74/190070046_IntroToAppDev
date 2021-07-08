import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCalc());
}

class MyCalc extends StatefulWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  _MyCalcState createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {

  String input = '0';
  double? ans;
  String? output = '';

  void _update(String str){
    setState(() {
      if(input == '0'){
        input = str;
      }
      else{
        input += str;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$input',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$output',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                        child: Text('7', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('7'),
                      ),
                      OutlinedButton(
                        child: Text('8', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('8'),
                      ),
                      OutlinedButton(
                        child: Text('9', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('9'),
                      ),
                      OutlinedButton(
                        child: Icon(
                          CupertinoIcons.add,
                        ),
                        onPressed: () => _update(' + '),
                        style: OutlinedButton.styleFrom(primary: Colors.lightBlue),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        child: Text('4', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('4'),
                      ),
                      OutlinedButton(
                        child: Text('5', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('5'),
                      ),
                      OutlinedButton(
                        child: Text('6', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('6'),
                      ),
                      OutlinedButton(
                        child: Icon(
                          CupertinoIcons.minus,
                        ),
                        onPressed: () => _update(' - '),
                        style: OutlinedButton.styleFrom(primary: Colors.lightBlue),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        child: Text('1', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('1'),
                      ),
                      OutlinedButton(
                        child: Text('2', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('2'),
                      ),
                      OutlinedButton(
                        child: Text('3', style: TextStyle(fontWeight: FontWeight.normal),),
                        onPressed: () => _update('3'),
                      ),
                      OutlinedButton(
                        child: Icon(
                          CupertinoIcons.multiply,
                        ),
                        onPressed: () => _update(' x '),
                        style: OutlinedButton.styleFrom(primary: Colors.lightBlue),
                      ),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
