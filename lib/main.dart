import 'package:aswar_training/screens/auth/login/login_screen.dart';
import 'package:aswar_training/screens/main_screen/main_screen.dart';
import 'package:aswar_training/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeController()),
        ],
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeController>(context);
          return MaterialApp(
              scaffoldMessengerKey: Utils.messengerKey,
              debugShowCheckedModeBanner: false,
              title: 'Aswar Training',
              themeMode: themeProvider.themeMode,
              theme: ThemeData.light().copyWith(
                  textTheme: ThemeData.light().textTheme.apply(
                        fontFamily: 'ArabicFonts',
                      ),
                  primaryTextTheme: ThemeData.light().textTheme.apply(
                        fontFamily: 'ArabicFonts',
                      ),
                  primaryColorLight: kPrimaryColor,
                  primaryColor: kPrimaryColor,
                  buttonTheme: const ButtonThemeData(
                    buttonColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultBorder)),
                    ),
                  ),
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: TextButton.styleFrom(
                      backgroundColor: kSecondaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(kDefaultBorder)),
                      ),
                    ),
                  ),
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: kPrimaryColor,
                        error: Colors.redAccent,
                      ),
                  cardColor: kSecondaryColor),
              darkTheme: ThemeData.dark().copyWith(
                  inputDecorationTheme: const InputDecorationTheme(
                    fillColor: Colors.white24,
                  ),
                  popupMenuTheme:
                      const PopupMenuThemeData(color: kSecondaryColor),
                  scaffoldBackgroundColor: kBgColor,
                  canvasColor: kSecondaryColor,
                  buttonTheme: const ButtonThemeData(
                    buttonColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultBorder)),
                    ),
                  ),
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(kDefaultBorder)),
                      ),
                    ),
                  ),
                  textSelectionTheme:
                      const TextSelectionThemeData(cursorColor: Colors.white),
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: kPrimaryColor,
                        error: Colors.redAccent,
                      ),
                  cardColor: kPrimaryColor),
              home: LoginScreen(),
              initialRoute: MainScreen.id,
              routes: {
                LoginScreen.id: (context) => LoginScreen(),
                MainScreen.id: (context) => MainScreen()
              });
        });
  }
}
