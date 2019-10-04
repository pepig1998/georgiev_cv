import 'package:flutter/material.dart';



class AchievementsScreen extends StatefulWidget {
  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {


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
                      Text("Achievments\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      RichText(
                       textAlign: TextAlign.center,
                       text: TextSpan(
                       text: '- Two times first place winner of Vratsa hackathon\n\n- 8th place in National Physic Competition\n\n- Multiple first places in Mathematical competitions in region Vratsa\n\n- Two times being in top 6 National Volleyball High School teams\n\n- Second place in photography competition',
                       style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,fontWeight: FontWeight.bold),
                       )
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