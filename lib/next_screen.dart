import 'package:animation_task/LoginPage.dart';
import 'package:animation_task/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Layout/animation.dart';
import 'package:animation_task/Layout/animation.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale1Controller;

  AnimationController _widthController;
  AnimationController _width1Controller;
  AnimationController _positionController;
  AnimationController _position2Controller;
  AnimationController _scale2Controller;
  AnimationController _scale3Controller;

  Animation<double> _scaleAnimation;
  Animation<double> _scale1Animation;
  Animation<double> _widthAnimation;
  Animation<double> _width1Animation;
  Animation<double> _positionAnimation;
  Animation<double> _position2Animation;
  Animation<double> _scale2Animation;
  Animation<double> _scale3Animation;

  bool hideIcon = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaleController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _scale1Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _scale1Animation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scale1Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _width1Controller.forward();
            }
          });
    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _widthAnimation =
        Tween<double>(begin: 80.0, end: 220.0).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });
    _width1Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _width1Animation =
        Tween<double>(begin: 80.0, end: 220.0).animate(_width1Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _position2Controller.forward();
            }
          });

    _positionController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 130.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _position2Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _position2Animation =
        Tween<double>(begin: 0.0, end: 150.0).animate(_position2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale3Controller.forward();
            }
          });

     _scale2Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: LoginPage()));
            }
          });

    _scale3Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scale3Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale3Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: RegisterPage()));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.pink[100],
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: Animationn(
                1,
                Container(
                  width: width,
                  //width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('design.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            Positioned(
                top: -100,
                left: 0,
                child: Animationn(
                  1.3,
                  Container(
                    width: width,
                    // width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('design.png'),
                      fit: BoxFit.cover,
                    )),
                  ),
                )),
            Positioned(
              top: -150,
              left: 0,
              child: Animationn(
                1.6,
                Container(
                  width: width,
                  // width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('design.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Animationn(
                      1,
                      Text("Welcome",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              decoration: TextDecoration.none))),
                  SizedBox(
                    height: 15,
                  ),
                  Animationn(
                    1.3,
                    Text(
                      "Jai Shree Krishna RADHE RADHE hello how are you",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 20,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Animationn(
                    1.6,
                    Row(
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          width: 47,
                        ),
                        AnimatedBuilder(
                            animation: _scaleController,
                            builder: (context, child) => Transform.scale(
                                  scale: _scaleAnimation.value,
                                  child: Center(
                                    child: AnimatedBuilder(
                                      animation: _widthController,
                                      builder: (context, child) => Container(
                                        width: _widthAnimation.value,
                                        height: 80,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.purple.withOpacity(0.4),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            _scaleController.forward();
                                            print('test');
                                          },
                                          child: Stack(children: <Widget>[
                                            AnimatedBuilder(
                                              animation: _positionController,
                                              builder: (context, child) =>
                                                  Positioned(
                                                left: _positionAnimation.value,
                                                child: AnimatedBuilder(
                                                  animation: _scale2Controller,
                                                  builder: (context, child) =>
                                                      Transform.scale(
                                                    scale:
                                                        _scale2Animation.value,
                                                    child: Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.pink,
                                                      ),
                                                      child: hideIcon == false
                                                          ? Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          : Container(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                      ],
                    ),
                  ),
//kya hua? wait ye ek functionality thi???????????????????hm  hats offfff dearrrrr?? waaah g waaaahhh misss coddderrr mst hai yrr thnks
// oye ek kam karo dono button ke o/p par simple se static page attach kar do bss ok isko dekh ke to ache acheo ki halat kharab ho jani hai by god very funny

                  SizedBox(
                    height: 30,
                  ),
                  Animationn(
                    1.6,
                    Row(
                      children: <Widget>[
                        Text(
                          'SignUp',
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        AnimatedBuilder(
                            animation: _scale1Controller,
                            builder: (context, child) => Transform.scale(
                                  scale: _scale1Animation.value,
                                  child: Center(
                                    child: AnimatedBuilder(
                                      animation: _width1Controller,
                                      builder: (context, child) => Container(
                                        width: _width1Animation.value,
                                        height: 80,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.purple.withOpacity(0.4),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            _scale1Controller.forward();
                                            print('test');
                                          },
                                          child: Stack(children: <Widget>[
                                            AnimatedBuilder(
                                              animation: _position2Controller,
                                              builder: (context, child) =>
                                                  Positioned(
                                                left: _position2Animation.value,
                                                child: AnimatedBuilder(
                                                  animation: _scale3Controller,
                                                  builder: (context, child) =>
                                                      Transform.scale(
                                                    scale:
                                                        _scale3Animation.value,
                                                    child: Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.pink,
                                                      ),
                                                      child: hideIcon == false
                                                          ? Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          : Container(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
haa dear bolo k ye error ku ara h konsi red wali hm ok abhi dekh lete hai
*/
// Animationn(  iskcut karo orr neeche paste karo fir ek ek kar fix karte hai
//   1.6,
//   AnimatedBuilder(
//     animation: _scaleController,
//     builder: (context, child) => Transform.scale(
//         scale: _scaleAnimation.value,
//         child: Center(
//           child: AnimatedBuilder(
//             animation: _widthController,
//             builder: (context, child) => Container(
//               width: _widthAnimation.value,
//               height: 80,
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.blue.withOpacity(0.4),
//               ),
//               child: InkWell(
//                 onTap: () {
//                   _scaleController.forward();
//                 },
//                 child: Stack(
//                   children: <Widget>[
//                     AnimatedBuilder(
//                       animation: _positionController,
//                       builder: (context, child) => Positioned(
//                         left: _positionAnimation.value,
//                         child: AnimatedBuilder(
//                           animation: _scale2Controller,
//                           builder: (context, child) =>
//                               Transform.scale(
//                             scale: _scale2Animation.value,
//                             child: Container(
//                               width: 60,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.greenAccent,
//                               ),
//                               child: hideIcon == false
//                                   ? Icon(
//                                       Icons.arrow_forward,
//                                       color: Colors.white,
//                                     )
//                                   : Container(),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )),
//   ),
// ),
//                 SizedBox(
//                   height: 60,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//                 ),
//                 SizedBox(height: 30),
//                 Animationn(
//                   1.6,
//                   Row(
//                     children: <Widget>[
//                       Text(
//                         'login',
//                         style: TextStyle(fontSize: 20, color: Colors.black),
//                       ),
//                       SizedBox(
//                         width: 30,
//                       ),
//                       Container(
//                         width: 80,
//                         height: 80,
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.blue.withOpacity(0.4),
//                         ),
//                         child: Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.greenAccent,
//                           ),
//                           child: Icon(Icons.arrow_forward, color: Colors.black),
//                         ),
//                       ),
//                     ],
//                     //                     child: Center(
//                     // child: Container(
//                     //   width: 80,
//                     //   height: 80,
//                     //   padding: EdgeInsets.all(10),
//                     //   decoration: BoxDecoration(
//                     //     borderRadius: BorderRadius.circular(30),
//                     //     color: Colors.blue.withOpacity(0.4),
//                     //   ),
//                     //   child: Container(
//                     //     width: 60,
//                     //     height: 60,
//                     //     decoration: BoxDecoration(
//                     //       shape: BoxShape.circle,
//                     //       color: Colors.greenAccent,
//                     //     ),
//                     //     child: Icon(Icons.arrow_forward, color: Colors.black),
//                     //   ),
//                     // ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 400,
//       color: Colors.amber,
//     );
//   }
// }
