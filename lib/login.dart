import 'package:flutter/material.dart';
import 'package:major_project/emailpass.dart';
import 'package:major_project/registrepage.dart';
//import 'package:flutter/material.dart';
//import 'main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/back.jpg"),
        //      fit: BoxFit.cover,
        //   ),
        // ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                // Image.asset('assets/quiz img.jpg'),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: false,
                            builder: (context) {
                              return LoginPage();
                            }));
                  },
                  color: Colors.greenAccent.shade100,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(60)),
                  child: Text("LOGIN"),
                )
              ],
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: false,
                            builder: (context) {
                              return SignUp();
                            }));
                  },
                  color: Colors.greenAccent.shade100,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(60)),
                  child: Text("REGISTER"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class SecondScreen extends StatefulWidget {
//   const SecondScreen({Key? key}) : super(key: key);

//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               fullscreenDialog: false,
//                               builder: (context) {
//                                 return QuizPage();
//                               }));
//                     },
//                     child: Text("Click here for quizz app screen"))
//               ],
//             ),
//             InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(Icons.logout, size: 65, color: Colors.blue)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ThirdScreen extends StatefulWidget {
//   const ThirdScreen({Key? key}) : super(key: key);

//   @override
//   _ThirdScreenState createState() => _ThirdScreenState();
// }

// class _ThirdScreenState extends State<ThirdScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         //     decoration: BoxDecoration(
//         //     image: DecorationImage(
//         //     image: AssetImage("images/back.jpg"),
//         //     fit: BoxFit.cover,
//         //   ),
//         // ),

//         child: ListView(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: [
//                 Text(
//                   "welcome to 3rd screen",
//                   style: TextStyle(fontSize: 25),
//                 ),
//                 Text(
//                   "Thank you for submitting",
//                   style: TextStyle(fontSize: 25),
//                 ),
//                 //     ElevatedButton(onPressed: (){
//                 //     Navigator.push(context, MaterialPageRoute(
//                 //     fullscreenDialog: false,
//                 //     builder: (context){
//                 //     return FourthScreen();
//                 //   }));
//                 // }, child: Text("Click here for fourth screen"))
//               ],
//             ),
//             InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(Icons.logout, size: 65, color: Colors.blue)),
//           ],
//         ),
//       ),
//     );
//   }
// }
