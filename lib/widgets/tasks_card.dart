import 'package:flutter/material.dart';

import '../constants.dart';

class TasksCard extends StatelessWidget {
  const TasksCard({
    Key? key,
    required this.title,
    required this.description,
    required this.backColor,
    required this.iconColor,
  }) : super(key: key);

  final String title, description;
  final Color backColor, iconColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.22,
      width: size.width * 0.44,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kDefaultBorder * 2),
          boxShadow: kElevationToShadow[16]),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: backColor,
                  borderRadius: BorderRadius.circular(kDefaultBorder * 1.5)),
              alignment: Alignment.center,
              child: Icon(
                Icons.android,
                color: iconColor,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
