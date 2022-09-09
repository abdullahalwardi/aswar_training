import 'package:flutter/material.dart';

import '../../constants.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            splashRadius: 25,
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: const Text(
          'المهام',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
          maxLines: 1,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              height: size.height * 0.3,
              child: Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: size.height * 1.5),
                  child: Column(
                    children: [
                      Wrap(
                        children: [],
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
