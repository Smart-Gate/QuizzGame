import 'package:flutter/material.dart';
import './quizz.dart';
import './result.dart';
void main() => runApp(_QuizzApp());

class _QuizzApp extends StatefulWidget {
 State<StatefulWidget> createState() {
   return _MyAppState();
 } 
}
class _MyAppState extends State<_QuizzApp>{
  final _questions = const [
      {'questionText':'what is your favourite colour','answers':[
        {'text':'Black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':3},
        {'text':'White','score':1},
        ]},
      {'questionText':'what is ur favorite aniaml','answers':[
        {'text':'Rabbit','score':10},
        {'text':'Donkey','score':5},
        {'text':'Elephant','score':3},
        {'text':'White','score':1},
        ]},
      {'questionText':'what is your favourite Instructre','answers':[
        {'text':'Max','score':10},
        {'text':'Hans','score':5},
        {'text':'Bons','score':3},
        {'text':'Jack','score':1},
        ]},
    ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQizz(){
    setState(() {
      _totalScore = 0;
_questionIndex = 0;
    });

print(_questionIndex);
  }
  void _answerQustion(int score){

    if(_questionIndex < _questions.length){
      print('still quistions');
      _totalScore +=score;
    }
    setState(() {
     _questionIndex = _questionIndex + 1;
     
    });
   print(_questionIndex);
    print('answer chosen');
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(
        'My First App',),
        ),
        body:_questionIndex < _questions.length? 
        Quizz(answerQuestion:_answerQustion ,questions: _questions,questionIndex:_questionIndex)
        :Result(_totalScore,_resetQizz),
      )
      );
  }
  
}