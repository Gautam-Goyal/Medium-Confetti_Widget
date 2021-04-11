import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Confetti extends StatefulWidget {
  @override
  _ConfettiState createState() => _ConfettiState();
}

class _ConfettiState extends State<Confetti> {
  ConfettiController _controllerCenterRight;
  ConfettiController _controllerCenterLeft;

  @override
  void initState() {
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 4));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 4));
    _controllerCenterLeft.play();
    _controllerCenterRight.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 50.0),
            child: Stack(
                children: <Widget>[
                  Text("HELLO! THERE",textAlign:TextAlign.center,style: TextStyle(fontSize: 100.0,color: Colors.black54),),
                  Align(
                          alignment: Alignment.centerLeft,
                          child: ConfettiWidget(
                            blastDirectionality: BlastDirectionality.explosive,
                            maxBlastForce: 15,
                            confettiController: _controllerCenterLeft,
                            blastDirection: 170,
                            particleDrag: 0.05,
                            emissionFrequency: 0.05,
                            numberOfParticles: 20,
                            gravity: 0.2,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ConfettiWidget(
                            blastDirectionality: BlastDirectionality.explosive,
                            maxBlastForce: 15,
                            confettiController: _controllerCenterRight,
                            blastDirection: 350,
                            particleDrag: 0.05,
                            emissionFrequency: 0.05,
                            numberOfParticles: 40,
                            gravity: 0.2,
                          ),
                        ),
                      ]
            ),
          ),
        ),
    );
  }
}
