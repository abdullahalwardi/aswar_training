import 'package:aswar_training/screens/main_screen/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils.dart';
import '../../../widgets/buttons/default_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login_Screen';
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;

  late String password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                height: size.height,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.4),
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      children: [
                        const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'تسجيل الدخول كموظف',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )),
                        const SizedBox(
                          height: kDefaultPadding * 1.5,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            textDirection: TextDirection.ltr,
                            onChanged: (emal) {
                              setState(() {
                                email = emal;
                              });
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@') ||
                                  !value.contains('.com')) {
                                return 'يرجى ادخال بريد الكتروني صالح!';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: kTextFieldDecoration.copyWith(
                                labelText: 'البريد الإلكتروني',
                                prefixIcon: const Icon(Icons.email),
                                hintText: 'البريد الإلكتروني'),
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding * 1.5,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            textDirection: TextDirection.ltr,
                            onChanged: (pass) {
                              setState(() {
                                password = pass;
                              });
                            },
                            obscureText: passwordVisible,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.contains(' ')) {
                                return 'يرجى ادخال كلمة مرور صالحة!';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: kTextFieldDecoration.copyWith(
                                labelText: 'كلمة المرور',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  splashRadius: 15.0,
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisible == false
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                                hintText: 'كلمة المرور'),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.27,
                        ),
                        DefaultButton(
                          title: 'تسجيل الدخول',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, MainScreen.id);
                            } else {
                              Utils.showSnackBar(
                                  'البريد الإلكتروني او كلمة المرور غير صالحة!');
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                height: size.height * 0.3,
                child: Container(
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          alignment: Alignment.center)),
                ))
          ],
        ),
      ),
    );
  }
}
