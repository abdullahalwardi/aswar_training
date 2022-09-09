import 'package:aswar_training/screens/auth/login/login_screen.dart';
import 'package:aswar_training/widgets/buttons/default_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/profile_tile.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'Profile_Screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          'الملف الشخصي',
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
              )),
          Positioned(
            top: size.height * 0.22,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.only(
                  left: kDefaultPadding / 2,
                  right: kDefaultPadding / 2,
                  bottom: kDefaultPadding * 1.5,
                  top: kDefaultPadding * 4.5),
              height: size.height * 0.2,
              width: size.width - kDefaultPadding * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kElevationToShadow[12],
                  borderRadius: BorderRadius.circular(kDefaultBorder * 3)),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'عبدالله هيثم',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'مبرمج',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.17,
              left: size.width * 0.39,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(45 / 360),
                child: Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0AD),
                    borderRadius: BorderRadius.circular(kDefaultBorder * 3),
                  ),
                  child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(315 / 360),
                      child: Image.asset('assets/images/profile_avatar.png')),
                ),
              )),
          Positioned(
              top: size.height * 0.45,
              width: size.width,
              child: SingleChildScrollView(
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'الإعدادات',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 1.5,
                    ),
                    const ProfileTile(
                      title: 'العربية',
                      trailing: 'اللغة',
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 1.5,
                    ),
                    const ProfileTile(
                      title: '',
                      trailing: 'سياسة الخصوصية',
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 1.5,
                    ),
                    const ProfileTile(
                      title: '',
                      trailing: 'الشروط والاحكام',
                    ),
                    const SizedBox(
                      height: kDefaultPadding * 3,
                    ),
                    DefaultButton(
                      title: 'تسجيل الخروج',
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
