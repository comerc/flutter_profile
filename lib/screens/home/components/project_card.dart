import 'package:flutter/material.dart';
import 'package:flutter_profile/models/project.dart';
import 'package:flutter_profile/responsive.dart';

import 'package:flutter_profile/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProjectModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            model.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            ),
            onPressed: () {},
            child: Text(
              "Read More >>>",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class ProjectCard extends StatelessWidget {
//   const ProjectCard({
//     Key? key,
//     required this.project,
//   }) : super(key: key);

//   final Project project;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(defaultPadding),
//       color: secondaryColor,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             project.title!,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: Theme.of(context).textTheme.subtitle2,
//           ),
//           Spacer(),
//           Text(
//             project.description!,
//             maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(height: 1.5),
//           ),
//           Spacer(),
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               " >>",
//               style: TextStyle(color: primaryColor),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
