import 'package:flutter/material.dart';
import 'package:georgiev_cv/screens/education_screen.dart' as education ;
import 'package:georgiev_cv/screens/achievements_screen.dart' as achievements ;
import 'package:georgiev_cv/screens/skills_screen.dart' as skills ;
import 'package:georgiev_cv/screens/work_experience_screen.dart' as workExperience ;
import 'package:url_launcher/url_launcher.dart';


class TabControl extends StatefulWidget {
  @override
  _TabControlState createState() => new _TabControlState();
}

class _TabControlState extends State<TabControl>
    with SingleTickerProviderStateMixin {
  TabController controller;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.blue;
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.blue,
      appBar:
      new PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight + 100 + 10),
        child: Card(
          margin: EdgeInsets.only(left: 0.0),
          color: Colors.blue,
          elevation: 20.0,
          clipBehavior: Clip.antiAlias,
          child: new Container(
            color: backgroundColor,
            child: new SafeArea(
              child: Container(
                child: Column(
                  children: <Widget>[
                    //new Expanded(
                    new Container(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Peter Georgiev',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontFamily: 'Montserrat' ,
                                    color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35.0,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text('Software engineering student',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontFamily: 'Montserrat' ,
                                    color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 18.0,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              backgroundImage: ExactAssetImage('assets/profile.jpg'),
                              radius: 40,
                            )
                            /*Container(
                              alignment: Alignment.bottomLeft,
                              height: 80.0,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/profile.jpg'),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),*/
                          ],
                        )
                      ),
                      height: 100,
                      margin: EdgeInsets.only(left: 20.0),
                    ),
                    //),
                    new SizedBox(height: 10.0),
                    new TabBar(
                      labelColor: Colors.white,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 45.0),
                      ),
                      controller: controller,
                      tabs: <Widget>[
                        new Tab(icon: new Icon(Icons.school, size: 38,)),
                        new Tab(icon: new Icon(Icons.check, size: 38,)),
                        new Tab(icon: new Icon(Icons.work, size: 38,)),
                        new Tab(icon: new Icon(Icons.star, size: 38,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(
          children: <Widget>[
            // SizedBox(height: 100.0,),
            Expanded(
              flex: 85,
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: TabBarView(
                          controller: controller,
                          children: [
                            new education.EducationScreen(),
                            new skills.SkillsScreen(),
                            new workExperience.WorkExperienceScreen(),
                            new achievements.AchievementsScreen(),
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10.0, // has the effect of softening the shadow
                      spreadRadius: 6.0, // has the effect of extending the shadow
                      offset: Offset(
                        10.0, // horizontal, move right 10
                        10.0, // vertical, move down 10
                      ),
                    )
                  ],
                ),
                child: Card(
                  margin: EdgeInsets.only(left: 0.0),
                  color: Colors.blue,
                  elevation: 20.0,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.all(0.0),
                    // child: FittedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(0.0),
                          textColor: Colors.white,
                          onPressed: () {
                            launch('https://www.linkedin.com/in/real-peter-georgiev');
                          },
                          //child: Image.asset('assets/logo.png'),
                          child: Icon(const IconData(0xf05c, fontFamily: 'outbox'), size: 40, ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0.0),
                          textColor: Colors.white,
                          onPressed: () {
                            launch("tel:+35989910353");
                          },
                          child: Icon(Icons.call, size: 40, ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(0.0),
                          textColor: Colors.white,
                          onPressed: () {
                            launch("mailto:pepig1998@gmail.com?subject=CV&body=");
                          },
                          //child: Image.asset('assets/logo.png'),
                          child: Icon(Icons.email, size: 40, ),
                        ),
                      ],
                    )
                    // ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


