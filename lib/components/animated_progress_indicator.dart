import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (
              BuildContext context,
              double value,
              Widget? child,
            ) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      "${(value * 100).toInt()}%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

// class AnimatedCircularProgressIndicator extends StatelessWidget {
//   const AnimatedCircularProgressIndicator({
//     Key? key,
//     required this.percentage,
//     required this.label,
//   }) : super(key: key);

//   final double percentage;
//   final String label;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         AspectRatio(
//           aspectRatio: 1,
//           child: TweenAnimationBuilder(
//             tween: Tween<double>(begin: 0, end: percentage),
//             duration: defaultDuration,
//             builder: (context, double value, child) => Stack(
//               fit: StackFit.expand,
//               children: [
//                 CircularProgressIndicator(
//                   value: value,
//                   color: primaryColor,
//                   backgroundColor: darkColor,
//                 ),
//                 Center(
//                   child: Text(
//                     (value * 100).toInt().toString() + "%",
//                     style: Theme.of(context).textTheme.subtitle1,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: defaultPadding / 2),
//         Text(
//           label,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//           style: Theme.of(context).textTheme.subtitle2,
//         ),
//       ],
//     );
//   }
// }

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (
          BuildContext context,
          double value,
          Widget? child,
        ) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    "${(value * 100).toInt()}%",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
              SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
            ],
          );
        },
      ),
    );
  }
}

// class AnimatedLinearProgressIndicator extends StatelessWidget {
//   const AnimatedLinearProgressIndicator({
//     Key? key,
//     required this.percentage,
//     required this.label,
//   }) : super(key: key);

//   final double percentage;
//   final String label;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: defaultPadding),
//       child: TweenAnimationBuilder(
//         tween: Tween<double>(begin: 0, end: percentage),
//         duration: defaultDuration,
//         builder: (context, double value, child) => Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 Text((value * 100).toInt().toString() + "%"),
//               ],
//             ),
//             SizedBox(height: defaultPadding / 2),
//             LinearProgressIndicator(
//               value: value,
//               color: primaryColor,
//               backgroundColor: darkColor,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
