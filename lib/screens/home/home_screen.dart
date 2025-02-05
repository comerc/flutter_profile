import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/models/recommendation.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'package:flutter_profile/constants.dart';
import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MainScreen(
//       children: [
//         HomeBanner(),
//         HighLightsInfo(),
//         MyProjects(),
//         Recommendations(),
//       ],
//     );
//   }
// }
