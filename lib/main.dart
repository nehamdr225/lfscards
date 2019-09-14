import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:lfs/screens/HomePage.dart';
import 'package:lfs/screens/login_screen/userprompt.dart';
import 'package:lfs/services/state/theme.dart';
import 'package:provider/provider.dart';

Future main() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(BootStrapper());//BootStrapper(await getValue('token')));
}

class BootStrapper extends StatelessWidget {
  // final token;
  // BootStrapper(this.token);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider(builder: (context) => ProductModel()),
        //ChangeNotifierProvider(builder: (context) => UserModel()),
        //ChangeNotifierProvider(builder: (context) => CartModel()),
        //ChangeNotifierProvider(builder: (context) => WishlistModel()),
        ChangeNotifierProvider(builder: (context) => FTheme())
      ],
      child: LfsApp(),
    );
  }
}

class LfsApp extends StatelessWidget {
  // final token;
  // LfsApp({this.token});
  static final navKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<FTheme>(context);
    return MaterialApp(
      //initialRoute: "/",
      home: UserPromptPage(),
      //onGenerateRoute: routes,
      navigatorKey: navKey,
      theme: theme.getTheme(),
      
    );
  }
}

// Route routes (RouteSettings settings){
//   switch (settings.name){
//     case '/':
//       return MaterialPageRoute(
//         builder: (_) => UserPromptPage(),
//       );
//     case '/home':
//       HomeClass home = settings.arguments as HomeClass;
//       return MaterialPageRoute(
//         builder: (_) => HomeClass(
//           homeClass: home,
//         ),
//       );
//     default: 
//       return MaterialPageRoute
//       (
//         builder: (_) => UserPromptPage(),
//       );
//   }
// }
