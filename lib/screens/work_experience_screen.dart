import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';



class WorkExperienceScreen extends StatefulWidget {
  @override
  _WorkExperienceScreenState createState() => _WorkExperienceScreenState();
}

class _WorkExperienceScreenState extends State<WorkExperienceScreen> {


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
                      Text("Work experience \n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '05/2018–09/2018 \n',
                                  style: TextStyle(color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                  text: 'Monster Drop, Mezdra (Bulgaria) (internship)\n ',
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                text: '- Mobile Software Developer ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '\n \n\n11/2018–12/2018 \n',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: 'Grey Sector, Sofia (Bulgaria)\n ',
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                text: '- Giving Private Software Developing lessons to students, for upcoming exams',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                  text: '\n \n\n 04/2019–present  \n',
                                  style: TextStyle(color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                  text: 'Adjenda',
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () { launch('https://www.adjenda.com');
                                    },
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline
                                  )
                              ),
                              TextSpan(
                                text: ', Sofia (Bulgaria)(freelance) ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' \n - Mobile Software Developer ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '\n \n\n 11/2019–present  \n',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: 'Allterco Robotics, Sofia (Bulgaria)\n ',
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                text: ' - Mobile Software Developer ',
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