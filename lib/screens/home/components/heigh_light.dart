import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';

import '../../../constants.dart';

class HeightLight extends StatelessWidget {
  const HeightLight({
    Key? key,
    required this.value,
    required this.valueSuffix,
    required this.label,
  }) : super(key: key);

  final int value;
  final String valueSuffix;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedCounter(value: value, valueSuffix: valueSuffix),
        SizedBox(width: defaultPadding / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

// class HeighLight extends StatelessWidget {
//   const HeighLight({
//     Key? key,
//     required this.counter,
//     this.label,
//   }) : super(key: key);

//   final Widget counter;
//   final String? label;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         counter,
//         SizedBox(width: defaultPadding / 2),
//         Text(label!, style: Theme.of(context).textTheme.subtitle2),
//       ],
//     );
//   }
// }