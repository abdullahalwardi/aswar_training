import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.title,
    required this.trailing,
  }) : super(key: key);

  final String title, trailing;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          color: Colors.white,
          borderRadius: BorderRadius.circular(kDefaultBorder)),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(kDefaultBorder * 1.5)),
          alignment: Alignment.center,
          child: const Icon(
            Icons.android,
            color: Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.blue),
        ),
        trailing: Text(
          trailing,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
