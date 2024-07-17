import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BgBackgroudScreen extends StatefulWidget {
  const BgBackgroudScreen({super.key});

  @override
  State<BgBackgroudScreen> createState() => _BgBackgroudScreenState();
}

class _BgBackgroudScreenState extends State<BgBackgroudScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedBackground(
      behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
              spawnMaxRadius: 40,
              spawnMaxSpeed: 40,
              particleCount: 80,
              spawnMinSpeed: 15,
              spawnOpacity: 0.1,
              baseColor: Colors.red,
              // image: Image(image: AssetImage('assets/1.png'))
              )),
      vsync: this,
      child: const Center(child: Text("Animated Backgroud")),
    ));
  }
}
