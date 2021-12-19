import 'package:flutter/material.dart';
import 'package:flutter_profile/models/recommendation.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';

import 'package:flutter_profile/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recomendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendations.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(model: recommendations[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class Recommendations extends StatelessWidget {
//   const Recommendations({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Recommendations",
//             style: Theme.of(context).textTheme.headline6,
//           ),
//           const SizedBox(height: defaultPadding),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: List.generate(
//                 demo_recommendations.length,
//                 (index) => Padding(
//                   padding: const EdgeInsets.only(right: defaultPadding),
//                   child: RecommendationCard(
//                     recommendation: demo_recommendations[index],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

