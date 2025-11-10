import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  String userAnswer = "";
  int happy = 0;
  int tired = 0;
  int angry = 0;




  String result = "❓";

  void answer(String answer) {
    setState(() {
      userAnswer = answer;

      if (answer == 'happy') {
        happy++;
        result ='😊happy';
    }
       } else if {
        answer =='tired';
        tired++;
   
        result = '😫tired';
      });
  }

  void reset() {
    setState(() {
      userAnswer = '';
      happy = 0;
      tired = 0;
      angry = 0;
      result = "❓";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'How Do you Feel Today?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.yellow(200)),
            onPressed: () {
              answer('happy');
            },
            label: Text('A: 😊happy', style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.orange(200)),
            onPressed: () {
              answer('tired');
            },
            label: Text('B: tired', style: TextStyle(color: Colors.black)),
          )
                 OutlinedButton.icon(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.red(200)),
            onPressed: () {
              answer('angry');
            },
            label: Text('B: angry', style: TextStyle(color: Colors.black)),
          ),
          SizedBox(height: 25),
          Text(result, style: TextStyle(fontSize: 25)),
          SizedBox(height: 25),
          Text("Happy: $happy"),
          Text("Tired: $tired"),
          Text("Angry: $angry"),
          SizedBox(height: 15),
          OutlinedButton(
            onPressed: () {
              reset();
            },
            child: Text('Reset', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
