import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projects_template/app/imports.dart';
import 'package:projects_template/views/home/home_page_viewmodel.dart';
import 'package:projects_template/views/register/login_page_viewmodel.dart';
import 'package:projects_template/views/reusable_widgets//adaptive_button.dart';
import 'package:projects_template/views/reusable_widgets/responsive.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  // can be used outside the scope of GetBuilder.
  final HomePageViewModel controller = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText("Login"),
      ),
      body: GetBuilder<LoginPageViewModel>(
        init: LoginPageViewModel(),
        builder: (LoginPageViewModel _viewModel) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: getMediaWidth(context),
                  margin: mHor16Vert8,
                  decoration: containerColorRadiusBorder(
                    Colors.transparent,
                    10,
                    getTheme(context).primaryColor,
                  ),
                  child: TextField(
                    decoration: txtFieldLabel("username"),
                  ),
                ),
                Container(
                  width: getMediaWidth(context),
                  margin: mHor16Vert8,
                  decoration: containerColorRadiusBorder(
                    Colors.transparent,
                    10,
                    getTheme(context).primaryColor,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: txtFieldLabel("password"),
                  ),
                ),
                Container(
                  width: getMediaWidth(context),
                  margin: mHor16Vert8,
                  child: AdaptiveButton(
                    onPressed: () {
                      //TODO call api
                      //TODO save in shared prefs
                      T.message("Temp Access");
                      // navigateTo(context, NextPage());
                    },
                    color: getTheme(context).buttonColor,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}

