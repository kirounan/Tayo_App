import 'package:flutter/material.dart';
import 'package:tayo_app/config/routes/app_routes.dart';
import 'package:tayo_app/core/utils/strings.dart';

import '../../../../core/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/loginBackground.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  15.ph,
                  const Text(
                    AppStrings.appTitleEn,
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    AppStrings.appTitleAr,
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  10.ph,
                  const Text(
                    AppStrings.gm3Aktr,
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  35.ph,
                  const Text(
                    AppStrings.login,
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  15.ph,
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 23),
                    child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  border: InputBorder.none,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  labelText: AppStrings.id,
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelStyle: const TextStyle(fontSize: 18),
                                ),
                                onChanged: (text) {
                                  //password = text;
                                },
                                validator: (text) {
                                  if (text == null || text.trim().isEmpty) {
                                    return AppStrings.enterId;
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            15.ph,
                            TextFormField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText: AppStrings.password,
                                filled: true,
                                fillColor: Colors.white,
                                labelStyle: const TextStyle(fontSize: 18),
                              ),
                              onChanged: (text) {
                                //password = text;
                              },
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return AppStrings.enterPassword;
                                }
                                if (text.length < 8) {
                                  return AppStrings.inCorrectFormatPassword;
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ],
                        )),
                  ),
                  20.ph,
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.pinccColor)),
                      onPressed: () {
                        /// login function

                        validateCheck();
                        setState(() {});
                      },
                      child: const Text(
                        AppStrings.login,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  8.ph,
                  InkWell(
                    onTap: () {
                      /// the password is forgotten
                    },
                    child: const Text(
                      AppStrings.passwordForgotten,
                      //textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  20.ph,
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.registerScreenRouteName);
                    },
                    child: const Text(
                      AppStrings.register,
                      //textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> validateCheck() async {
    if (formKey.currentState?.validate() == true) {}
  }
}

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );

  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}
