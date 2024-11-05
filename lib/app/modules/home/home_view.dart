import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confetti'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ConfettiWidget(
                confettiController: controller.confettiController,
                blastDirectionality: BlastDirectionality.explosive, 
                blastDirection: pi/2, // radial value - LEFT
              particleDrag: 0.05, // apply drag to the confetti
              emissionFrequency: 0.05, // how often it should emit
              numberOfParticles: 120, // number of particles to emit
              gravity: 0.05,
              ),
            ),
            SizedBox(
              height: 350,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.confirmOrder();
                },
                child: Text('CONFIRM ORDER')),
          ],
        ),
      ),
    );
  }
}
