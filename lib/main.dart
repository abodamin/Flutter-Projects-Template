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
      home: InitialWidget(),
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
