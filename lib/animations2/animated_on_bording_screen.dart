import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedBoardingScreen extends StatefulWidget {
  const AnimatedBoardingScreen({super.key});

  @override
  State<AnimatedBoardingScreen> createState() => _AnimatedBoardingScreenState();
}

class _AnimatedBoardingScreenState extends State<AnimatedBoardingScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
        lottieURL:
            'https://assets7.lottiefiles.com/packages/lf20_tfb3estd.json'),
    OnboardingItem(
        lottieURL:
            'https://assets1.lottiefiles.com/private_files/lf30_QLsD8M.json'),
    // 'https://assets7.lottiefiles.com/packages/lf20_tfb3estd.json'),
    OnboardingItem(
        lottieURL:
            'https://assets1.lottiefiles.com/private_files/lf30_yQtj4O.json')
    // 'https://assets7.lottiefiles.com/packages/lf20_tfb3estd.json'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPaint(
            painter: ArcPaint(),
            child: SizedBox(
              height: size.height / 1.35,
              width: size.width,
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            left: 0,
            child: Lottie.network(
              onboardingItems[currentIndex].lottieURL,
              width: 500,
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 270,
              child: Column(
                children: [
                  Flexible(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardingItems.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return const Column(
                          children: [
                            Text(
                              'Hello',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hello,',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArcPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path orangeArc = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 175)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 175)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(orangeArc, Paint()..color = Colors.orange);

    Path whiteArc = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 180)
      ..quadraticBezierTo(
          size.width / 2, size.height - 60, size.width, size.height - 180)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(
        whiteArc, Paint()..color = const Color.fromARGB(255, 144, 202, 249));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class OnboardingItem {
  final String lottieURL;

  OnboardingItem({required this.lottieURL});
}
