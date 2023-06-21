
import 'package:developmemt_template/Screen/tap_screen.dart';
import 'package:flutter/material.dart';



import 'package:provider/provider.dart';

import 'package:flutter/services.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
    
          //  ChangeNotifierProvider.value(
          //   value: CategoryManage(),
          // ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FlutterChat',
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFF2F3F8),
            appBarTheme: const AppBarTheme(
              color: Color(0xFFF2F3F8),
            ),
          ),
          home: TapScreen(),
          
          // firebase 인증 사용 시 아래 꺼로
          // StreamBuilder(
          //   stream: FirebaseAuth.instance.authStateChanges(),
          //   builder: (ctx, userSnapshot) {
          //     if (userSnapshot.connectionState == ConnectionState.waiting) {
          //       return SplashScreen();
          //     }
          //     if (userSnapshot
          //         .hasData /*|| FirebaseAuth.instance.currentUser != null*/) {
          //       return TapScreen();
          //     } else
          //       return IntroductionAnimationScreen();
          //   },
          // ),

          
          routes: {
            // PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
        
          },
        ));
  }
}
