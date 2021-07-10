import 'package:flutter_application_1/constanst/constanst.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/left_bar.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController  = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",
            style:
                TextStyle(color: accentHexcolor, fontWeight: FontWeight.w300)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      fontSize:42,
                      fontWeight: FontWeight.w300,
                      color: accentHexcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.8)
                      )
                    ),
                    ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      fontSize:42,
                      fontWeight: FontWeight.w300,
                      color: accentHexcolor
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.8)
                      )
                    ),
                    ),
                )
              ],
            ),
            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                double _height = double.parse(_heightController.text);
                double _weight = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _weight/ (_height * _height);
                  if(_bmiResult > 25){
                    _textResult = "You are over weight";
                  }else if(_bmiResult >= 18.5 && _bmiResult < 25){
                    _textResult = "You have a normal weight";
                  }else{
                    _textResult = "You are under weight";
                  }
                });
              },
              child: Text("Calculate",style: 
              TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
                color: accentHexcolor 
                ),),
            ),
            SizedBox(height: 50,),
            Container(
              child: Text(_bmiResult.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 90,
                color: accentHexcolor,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Text(
                _textResult,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: accentHexcolor
                ),
              ),
            ),
            SizedBox(height:10 ,),
            LeftBar(barWidth:50),
            SizedBox(height:10 ,),
            LeftBar(barWidth:70),
            SizedBox(height:10 ,),
            LeftBar(barWidth:50),

            SizedBox(height:10 ,),
            RightBar(barWidth:50),
            SizedBox(height:10 ,),
            RightBar(barWidth:70),
            SizedBox(height:10 ,),
            RightBar(barWidth:50),

            
          ],
        ),
      ),
    );
  }
}
