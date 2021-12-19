import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import '../../constants.dart';
import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class DemoProject {
  DemoProject({
    required this.title,
    required this.description,
  });

  String title, description;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final demoProjects = [
    DemoProject(
      title: "Lorem ipsum dolor sit, amet consectetur adipisicing elit.",
      description:
          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quae ipsum obcaecati quod maiores quo quasi fuga minus non eum asperiores molestias harum eaque quibusdam et illo doloribus repellendus eveniet dolorum iste, provident a laboriosam repellat? Beatae, unde dolorem. Eaque voluptatibus sunt nisi suscipit velit quod reprehenderit in voluptatem quisquam exercitationem!",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
    DemoProject(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description: "Description",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(project: demoProjects[index]);
          },
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final DemoProject project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            project.description,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
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
