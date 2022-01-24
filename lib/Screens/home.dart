
import 'package:flutter/material.dart';
import 'package:bmicalculator/widgets/left_bar.dart';
import 'package:bmicalculator/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();

  double _bmiResult = 0;
  String _textResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Color.fromARGB(0xff, 0, 9, 87),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(0xff,36, 161,156),  //background color
      body: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _heightController,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(0xff, 50, 82, 136),   //text color
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Height In cm',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(0xff, 50, 82, 136),   //color
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130.0,
                  child: TextField(
                    controller: _weightController,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(0xff, 50, 82, 136),   //color
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight In Kg',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(0xff, 50, 82, 136),    //color
                      ),
                    ),
                  ),
                )
              ],
            ),
           const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h / 10000);
                  if (_bmiResult > 25) {
                    _textResult = 'your over weight';
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    _textResult = 'you have normal weight';
                  }
                   else {
                    _textResult = 'your under weight';
                  }
                });
              },
              child:  Container(
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(0xff, 204, 209, 228),  //buton text color
                  ),
                ),
              ),
            ),
           const SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 90,
                  color: Color.fromARGB(0xff, 50, 82, 136),  //color
                ),
              ),
            ),
           const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(
                  _textResult,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(0xff, 50, 82, 136),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const LeftBar(
              barWidth: 40.0,
            ),
            const SizedBox(
              height: 19,
            ),
            const LeftBar(
              barWidth: 70,
            ),
            const SizedBox(
              height: 19.0,
            ),
            const LeftBar(
              barWidth: 40,
            ),
            const SizedBox(
              height: 19,
            ),
            const LeftBar(
              barWidth: 70,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            const RightBar(
              barWidth: 70,
            ),
            const SizedBox(
              height: 19,
            ),
            const RightBar(
              barWidth: 30,
            ),
            const SizedBox(
              height: 19,
            ),
            const RightBar(
              barWidth: 70,
            ),
            const SizedBox(
              height: 19,
            ),
            const RightBar(
              barWidth: 30,
            ),
          ],
        ),
      ),
    );
  }
}
