import 'package:flutter/material.dart';



class SkillsScreen extends StatefulWidget {
  @override
  _SkillsScreenState createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Skills\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '- Teamwork skills developed during hackathons and being part of the High School Volleyball team for five years\n \n- Excellent logical thinking as going to multiple Mathematical and Physic competitions\n \n - Organization skills gained during 2 years of being pupil representative in High School\n \n - Very good understanding of computer’s, phone’s and gaming consoles’ hardware\n\n - Good understanding of Arduino and similar micro controllers\n\n - Good command of Kotlin, Dart, Delphi programming languages and SQLite\n\n - Good command of Flutter and Firemonkey frameworks\n\n- Experience with Firebase Cloud Messaging and Firebase Crashlytics \n\n- Familiar with Android SDK and Rad Studio SDK\n\n - Good understanding of MVC and MVVM architectures ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\n\n Other skills:\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              TextSpan(
                                  text: 'First aid: certified in providing first aid, as part of my driving lessons\n- Positivity\n- Adaptability\n- Teachable\n- Reliable\n- Responsible\n- Motivated\n- Sense of humor',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                            ]
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }

}