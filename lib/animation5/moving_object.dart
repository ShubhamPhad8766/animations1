import 'package:demo/animation5/headphone_model.dart';
import 'package:flutter/material.dart';

class MovingObjectAnimation extends StatefulWidget {
  const MovingObjectAnimation({super.key});

  @override
  State<MovingObjectAnimation> createState() => _MovingObjectAnimationState();
}

class _MovingObjectAnimationState extends State<MovingObjectAnimation> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 41, 41),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(product[selectedIndex].image),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "BOAT ROCkERZ 450R",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),
          ),
          const Text(
            "Bluethooth Headphones",
            style: TextStyle(color: Colors.grey, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(product.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: product[index].color,
                        border: Border.all(
                            width: 2,
                            color: selectedIndex == index
                                ? Colors.white70
                                : Colors.transparent)),
                  ),
                ),
              );
            }),
          )
        ],
      )),
    );
  }
}
