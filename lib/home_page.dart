import 'package:dot_indicator/pages/page1.dart';
import 'package:dot_indicator/pages/page2.dart';
import 'package:dot_indicator/pages/page3.dart';
import 'package:dot_indicator/pages/page4.dart';
import 'package:dot_indicator/pages/page5.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
                Page5(),
              ],
            ),
          ),
          //Dot indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 5,
            //swapEffect
            //jumping
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 15,
            ),
          ),
        ],
      ),
    );
  }
}
