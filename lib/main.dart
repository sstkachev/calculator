import 'package:flutter/material.dart';
import 'package:simple_calc/calc_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calc',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final buttonColor = MaterialStateProperty.all(Colors.grey.shade200);
  final numberTextColor = Colors.grey.shade500;
  final operationTextColor = Colors.blue.shade700;
  String result = '';
  bool hasBracket = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              alignment: Alignment.topRight,
              child: Text(
                result,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
                //textDirection: TextDirection.rtl,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCircle(
                buttonText: 'C',
                buttonFunc: () {
                  setState(() {
                    result = '';
                    hasBracket = false;
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '()',
                buttonFunc: () {
                  setState(() {
                    if (hasBracket) {
                      result = '$result)';
                      hasBracket = !hasBracket;
                    } else {
                      result = result + '(';
                      hasBracket = !hasBracket;
                    }
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '%',
                buttonFunc: () {
                  setState(() {
                    result = result + '%';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '/',
                buttonFunc: () {
                  setState(() {
                    result = result + '/';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCircle(
                buttonText: '7',
                buttonFunc: () {
                  setState(() {
                    result = result + '7';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '8',
                buttonFunc: () {
                  setState(() {
                    result = result + '8';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '9',
                buttonFunc: () {
                  setState(() {
                    result = result + '9';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '*',
                buttonFunc: () {
                  setState(() {
                    result = result + '*';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCircle(
                buttonText: '4',
                buttonFunc: () {
                  setState(() {
                    result = result + '4';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '5',
                buttonFunc: () {
                  setState(() {
                    result = result + '5';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '6',
                buttonFunc: () {
                  setState(() {
                    result = result + '6';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '-',
                buttonFunc: () {
                  setState(() {
                    result = result + '-';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCircle(
                buttonText: '1',
                buttonFunc: () {
                  setState(() {
                    result = result + '1';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '2',
                buttonFunc: () {
                  setState(() {
                    result = result + '2';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '3',
                buttonFunc: () {
                  setState(() {
                    result = result + '3';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '+',
                buttonFunc: () {
                  setState(() {
                    result = result + '+';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCircle(
                buttonText: '+/-',
                buttonFunc: () {},
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '0',
                buttonFunc: () {
                  setState(() {
                    result = result + '0';
                  });
                },
                buttonTextColor: numberTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '.',
                buttonFunc: () {
                  setState(() {
                    result = result + '.';
                  });
                },
                buttonTextColor: operationTextColor,
                buttonColor: buttonColor,
              ),
              ButtonCircle(
                buttonText: '=',
                buttonFunc: () {
                  setState(() {});
                },
                buttonTextColor: operationTextColor,
                buttonColor: MaterialStateProperty.all(
                  Colors.blue.shade200,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
