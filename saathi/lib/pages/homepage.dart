import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: new Image.asset('assets/images/menu.png'),
            );
          },
        ),
      ),
      drawer: NavDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width / 1.7, //20.0,
      child: Drawer(
        child: Container(
          color: Color(0xffaecccf),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff90b7e2),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/love.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Welcome'),
                    onTap: () => {},
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.verified_user_rounded),
                  //   title: Text('Profile'),
                  //   onTap: () => Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Profile())),
                  // ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SliderDialog())),
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Feedback'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
