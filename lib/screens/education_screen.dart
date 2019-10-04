import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';



class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {


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
                      Text("Education\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                       RichText(
                         textAlign: TextAlign.center,
                        text: TextSpan(
                            text: '2017–Present\n',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Technical University of Sofia',
                                  recognizer: new TapGestureRecognizer()
                                  ..onTap = () { launch('https://tu-sofia.bg');
                                  },
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)
                              ),
                              TextSpan(
                                  text: ', Sofia (Bulgaria)',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      ),

                              ),
                              TextSpan(
                                  text: '\n - Computer Engineering\n - Software Engineering\n - Mathematics\n - Physics',
                                  style: TextStyle(color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                             text: '\n \n\n 2012–2017 \n',
                             style: TextStyle(
                                 color: Colors.blue,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: '"Ivan Tsenov" High School of Natural Sciences and Mathematics',
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () { launch('https://pmg-vratsa.org');
                                    },
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)
                              ),
                              TextSpan(
                                  text: ', Vratsa (Bulgaria)',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              TextSpan(
                                  text: '\n - Computer Science, Mathematics, English Language, Biology, Chemistry, Bulgarian Language and Literature, German Language, Arts, Sports, Music, Physics, Geography, Philosophy',
                                  style: TextStyle(color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: '\n \n\n 2015–2016 \n',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: 'Private English lessons, Vratsa (Bulgaria)\n ',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: '- IELTS Certificate 7.5 (C1)',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              TextSpan(
                                  text: '\n \n\n 2016–2017 \n',
                                  style: TextStyle(color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                  text: 'Private Mathematical lessons, Vratsa (Bulgaria)\n ',
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                text: '- Technical University of Sofia candidate student exam- 5.85',
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