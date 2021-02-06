import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          
        ),
      ),
      
    );
  }
}

// import 'package:flutter/material.dart';  wait yr

// import 'package:flare_flutter/flare_actor.dart';
// //import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//     TextEditingController email = TextEditingController();
//       TextEditingController a = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       resizeToAvoidBottomPadding: true,
//       body: Stack(
//          children: <Widget>[
//           // Text('hello'),
//           Container(
//                  margin: EdgeInsets.only(top:h/15),
//             height: h/1.2,
//             width: w,
//             child: RotatedBox(
//               quarterTurns: 0,
//               child: FlareActor(
//                 'assets/curv.flr',
//                 animation: 'Flow',
//                 alignment: Alignment.bottomCenter,
//                 fit: BoxFit.fill,
//                 // isPaused: x,
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: w / 4, left: w / 7),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Welcome ",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 32,
                      
//                       fontWeight: FontWeight.w600),
//                 ),
//                 Text(
//                   "Back ",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 32,
//                       fontWeight: FontWeight.w600,
//                         ),
//                 ),
               
//               ],
//             ),
//           ),
//         ],
//       )
//     );
// }
// }