import 'package:get/get.dart';
import 'package:projects_template/app/colors.dart';
import 'package:projects_template/views/register/login_page.dart';
import 'package:projects_template/views/home/home_page.dart';

import 'app/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // isLoggedIn= await SharedPrefManager.getLoginSession();
  isLoggedIn = false;
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
      ),
      home: InitialWidget(),//sdlkfjcnv,mjzxn
    ),
  );
}

// use this widget as initial widget,
// helps in future with provider.
class InitialWidget extends StatelessWidget {
  const InitialWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? HomePage() : LoginPage();
  }
}

//TODO: Add Locale & dark theme
// return AdaptiveTheme(
// light: ThemeData(
// brightness: Brightness.light,
// primarySwatch: Colors.blue,
// accentColor: Colors.amber,
// // HERE ADD SOME THEMES IF NEEDED.
// ),
// dark: ThemeData(
// brightness: Brightness.dark,
// primarySwatch: Colors.red,
// accentColor: Colors.amber,
// // HERE ADD SOME THEMES IF NEEDED.
// ),
// initial: AdaptiveThemeMode.system,
// builder: (theme, darkTheme) {
// return MaterialApp(
// title: 'Seen App',
// debugShowCheckedModeBanner: false,
// localizationsDelegates: [
// GlobalCupertinoLocalizations.delegate,
// GlobalMaterialLocalizations.delegate,
// GlobalWidgetsLocalizations.delegate,
// ],
// supportedLocales: [
// Locale('ar', 'AE'),
// Locale('en', 'US'),
// ],
// locale: Locale('ar', 'AE'),
// theme: theme,
// darkTheme: darkTheme,
// home: RootPage(),
// );
// });