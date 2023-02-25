import 'package:flutter/material.dart';
import 'package:tayo_app/features/login/presentations/ui/login_screen.dart';
import 'package:tayo_app/features/providers/config_provider.dart';
import 'package:tayo_app/features/register/presentations/ui/church_bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/strings.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    return Scaffold(
        body: Stack(children: [
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
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              AppStrings.appTitleAr,
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            7.ph,
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
              AppStrings.createAccount,
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
                      TextFormField(
                        cursorColor: AppColors.pinccColor,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.pinccColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          floatingLabelStyle:
                              TextStyle(color: AppColors.pinccColor),
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
                      15.ph,
                      TextFormField(
                        cursorColor: AppColors.pinccColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.pinccColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          floatingLabelStyle:
                              TextStyle(color: AppColors.pinccColor),
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
                      15.ph,
                      TextFormField(
                        cursorColor: AppColors.pinccColor,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.pinccColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          floatingLabelStyle:
                              TextStyle(color: AppColors.pinccColor),
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
                      15.ph,
                      TextFormField(
                        cursorColor: AppColors.pinccColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.pinccColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          floatingLabelStyle:
                              TextStyle(color: AppColors.pinccColor),
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
                      15.ph,
                      TextFormField(
                        cursorColor: AppColors.pinccColor,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.pinccColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          floatingLabelStyle:
                              TextStyle(color: AppColors.pinccColor),
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
                      15.ph,
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {
                  showThemeBottomSheet();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.newChurch,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.pinccColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      size: 24,
                      color: AppColors.pinccColor,
                    )
                  ],
                ),
              ),
            ),
            15.ph,
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.pinccColor)),
                onPressed: () {
                  /// login function

                  validateCheck();
                  setState(() {});
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Text(
                    AppStrings.next,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
            8.ph,
          ],
        ),
      ))
    ]));
  }

  Future<void> validateCheck() async {
    if (formKey.currentState?.validate() == true) {}
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ChurchBottomSheet();
        });
  }
}
