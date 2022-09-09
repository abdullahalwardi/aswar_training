import 'package:aswar_training/screens/profile/profile_screen.dart';
import 'package:aswar_training/widgets/buttons/default_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/tasks_card.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'Main_Screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              height: size.height * 0.5,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics:
                        const ScrollPhysics(parent: BouncingScrollPhysics()),
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'مرحبا، عبدالله هيثم',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            )),
                        const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'مبرمج',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent),
                            )),
                        const SizedBox(
                          height: kDefaultPadding * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  '04',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      height: 1,
                                      color: Colors.white,
                                      fontSize: 38),
                                ),
                                Text(
                                  'مهام\nمنجزة',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.white54,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  '02',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      height: 1,
                                      color: Colors.white,
                                      fontSize: 38),
                                ),
                                Text(
                                  'مهام\nقيد التقدم',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.white54,
                            ),
                            Column(
                              children: const [
                                Text(
                                  '10',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      height: 1,
                                      color: Colors.white,
                                      fontSize: 38),
                                ),
                                Text(
                                  'مهام\nمعلقة',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
          const Positioned(
              right: kDefaultPadding / 2,
              left: kDefaultPadding / 2,
              bottom: kDefaultPadding,
              child: DefaultButton(title: 'اضافة مهمة جديدة')),
          Positioned(
              top: size.height * 0.4,
              child: Container(
                padding: const EdgeInsets.only(left: kDefaultPadding / 2),
                child: Row(
                  children: [
                    Column(
                      children: [
                        TasksCard(
                          backColor: Colors.teal.shade100,
                          iconColor: Colors.teal,
                          title: 'ملفي الشخصي',
                          description: 'معلومات الملف',
                          onTap: () =>
                              Navigator.pushNamed(context, ProfileScreen.id),
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        TasksCard(
                          backColor: Colors.purple.shade100,
                          iconColor: Colors.purple,
                          title: 'مهامي',
                          description: '16 مهمة جديدة',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TasksCard(
                          backColor: Colors.blue.shade100,
                          iconColor: Colors.blue,
                          title: 'قسمك',
                          description: 'معلومات القسم',
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        TasksCard(
                          backColor: Colors.amber.shade100,
                          iconColor: Colors.amber,
                          title: 'تسجيل الحضور',
                          description: 'قبل 4 ساعة',
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
