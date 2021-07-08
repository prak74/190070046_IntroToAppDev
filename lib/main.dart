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
  String? output = '';

  void _update(String str){
    setState(() {
      if(input == '0'){
        input = str;
      }
      else{
        input += str;
      }
      _calculate();
    });
  }

  String? _calculate(){

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
                      Expanded(
                        child: OutlinedButton(
                          child: Text('7', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('7'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('8', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('8'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('9', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('9'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Icon(
                            CupertinoIcons.add,
                            size: 50,
                          ),
                          onPressed: () => _update(' + '),
                          style: OutlinedButton.styleFrom(primary: Colors.lightBlue, minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          child: Text('4', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('4'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('5', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('5'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('6', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('6'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 50,
                          ),
                          onPressed: () => _update(' - '),
                          style: OutlinedButton.styleFrom(primary: Colors.lightBlue, minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          child: Text('1', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('1'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('2', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('2'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('3', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('3'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Icon(
                            CupertinoIcons.multiply,
                            size: 50,
                          ),
                          onPressed: () => _update(' x '),
                          style: OutlinedButton.styleFrom(primary: Colors.lightBlue, minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          child: Text('.', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('.'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('0', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('0'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('00', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50), ),
                          onPressed: () => _update('00'),
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90)),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          child: Text('C', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50, color: Colors.white), ),
                          onPressed: () {
                            setState(() {
                              input = '0';
                              output = '';
                            });
                          },
                          style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(90), backgroundColor: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    child: Text('=', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50),),
                    onPressed: (){
                      setState(() {
                        output = _calculate();
                      });
                    },
                    style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 90), backgroundColor: Colors.lightGreen),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
