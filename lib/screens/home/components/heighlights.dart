import 'package:flutter/material.dart';
// import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import 'package:flutter_profile/constants.dart';
import 'heigh_light.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeightLight(
                      value: 119,
                      valueSuffix: "K+",
                      label: "Subscribers",
                    ),
                    const HeightLight(
                      value: 40,
                      valueSuffix: "+",
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeightLight(
                      value: 30,
                      valueSuffix: "+",
                      label: "GitHub Projects",
                    ),
                    const HeightLight(
                      value: 13,
                      valueSuffix: "K+",
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeightLight(
                  value: 119,
                  valueSuffix: "K+",
                  label: "Subscribers",
                ),
                const HeightLight(
                  value: 40,
                  valueSuffix: "+",
                  label: "Videos",
                ),
                const HeightLight(
                  value: 30,
                  valueSuffix: "+",
                  label: "GitHub Projects",
                ),
                const HeightLight(
                  value: 13,
                  valueSuffix: "K+",
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}

// class HighLightsInfo extends StatelessWidget {
//   const HighLightsInfo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//       child: Responsive.isMobileLarge(context)
//           ? Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     HeighLight(
//                       counter: AnimatedCounter(
//                         value: 119,
//                         text: "K+",
//                       ),
//                       label: "Subscribers",
//                     ),
//                     HeighLight(
//                       counter: AnimatedCounter(
//                         value: 40,
//                         text: "+",
//                       ),
//                       label: "Videos",
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: defaultPadding),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     HeighLight(
//                       counter: AnimatedCounter(
//                         value: 30,
//                         text: "+",
//                       ),
//                       label: "GitHub Projects",
//                     ),
//                     HeighLight(
//                       counter: AnimatedCounter(
//                         value: 13,
//                         text: "K+",
//                       ),
//                       label: "Stars",
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           : Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 HeighLight(
//                   counter: AnimatedCounter(
//                     value: 119,
//                     text: "K+",
//                   ),
//                   label: "Subscribers",
//                 ),
//                 HeighLight(
//                   counter: AnimatedCounter(
//                     value: 40,
//                     text: "+",
//                   ),
//                   label: "Videos",
//                 ),
//                 HeighLight(
//                   counter: AnimatedCounter(
//                     value: 30,
//                     text: "+",
//                   ),
//                   label: "GitHub Projects",
//                 ),
//                 HeighLight(
//                   counter: AnimatedCounter(
//                     value: 13,
//                     text: "K+",
//                   ),
//                   label: "Stars",
//                 ),
//               ],
//             ),
//     );
//   }
// }
