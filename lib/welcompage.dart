import 'package:flutter/material.dart';
import 'package:major_project/alertdia.dart';
import 'package:major_project/login.dart';
import 'package:major_project/main.dart';
import 'package:major_project/profile.dart';
import 'alertdia.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.greenAccent.shade100,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     size: 20,
        //     color: Colors.black,
        //   ),
        // ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            //SizedBox(
            Container(
              color: Colors.greenAccent.shade200,
              child: Text(
                "MENU",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    decorationThickness: 5),
              ),
            ),
            //),

            Divider(
              thickness: 5,
              color: Colors.greenAccent.shade200,
            ),
            // ListTile(
            //   title: Text(
            //     "Help",
            //     style: TextStyle(color: Colors.black87, fontSize: 15),
            //   ),
            //   trailing: Icon(
            //     Icons.help,
            //     color: Colors.greenAccent.shade200,
            //   ),
            // ),
            // Divider(
            //   thickness: 5,
            //   color: Colors.greenAccent.shade200,
            // ),

            // ListTile(
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Profile()));
            //   },
            //   title: Text(
            //     "Update Profile",
            //     style: TextStyle(color: Colors.black87, fontSize: 15),
            //   ),
            //   //tileColor: Colors.purple,
            //   trailing: Icon(
            //     Icons.person,
            //     color: Colors.greenAccent.shade200,
            //   ),
            // ),
            Divider(
              thickness: 5,
              color: Colors.greenAccent.shade200,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),
              onTap: () => _showMessageDialog(context),
              // async {
              //   final action = await AlertDialogs.yescanceldialog(
              //       context, "Logout", "Are you sure ?");
              // },

              trailing: Icon(
                Icons.logout,
                color: Colors.greenAccent.shade200,
              ),
            ),
          ],
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Text(
                      "WELCOME",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                fullscreenDialog: false,
                                builder: (context) => QuizPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent.shade100,
                          onPrimary: Colors.greenAccent),
                      child: Text(
                        "Start Quiz",
                        style: TextStyle(color: Colors.white70),
                      )),
                ],
              ),
            ],
          )),
    );
  }
}

_showMessageDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          title: Text('Alert!!!'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            )
          ],
        ));
