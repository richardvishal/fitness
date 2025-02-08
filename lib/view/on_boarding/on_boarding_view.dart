import 'package:fitness/common_widgets/on_boarding_page.dart';
import 'package:flutter/material.dart';

import '../../common/common_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  List<Map<String, String>> pageObjects= [
    {
      "title": "Track Your Goal",
      "subtitle": "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/images/onBoarding1.png",
    },
    {
      "title": "Get Burn",
      "subtitle": "Let’s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/onBoarding2.png",
    },{
      "title": "Eat Well",
      "subtitle": "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/onBoarding3.png",
    },{
      "title": "Improve Sleep Quality",
      "subtitle": "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/images/onBoarding4.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              var pageObj = pageObjects[index] as Map<String, String>? ?? {};
              return OnBoardingPage(pageObject: pageObj);
            },
          ),
        ],
      ),
    );
  }
}
