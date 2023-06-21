import 'dart:async';
import 'dart:io';



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TapScreen extends StatefulWidget {
  const TapScreen({super.key});
  static const routeName = '/tap';
  @override
  State<TapScreen> createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> with TickerProviderStateMixin {
  AnimationController? animationController;

  Widget tabBody = Container(
    color: Color(0xFFF2F3F8),
  );

  late List<Map<String, Object>> _pages; //
  int _selectedPageIndex = 1;

  
  @override
  void initState() {
  
    // _pages = [
    //   {'page': InstaScreen(), 'title': 'upload'},
    //   {
    //     'page': DesignCourseHomeScreen(selectPage: (int index) {
    //       if (mounted) {
    //         setState(() {
    //           _selectedPageIndex = index;
    //         });
    //       }
    //     }),
    //     'title': 'test'
    //   },
    //   {'page': ChallengeScreen(), 'title': 'challenge'},
    // ];

    super.initState();
  }

  @override
  void dispose() {
  
    super.dispose();
  }

  void selectPage(int index) {
    if (mounted) {
      setState(() {
        _selectedPageIndex = index;
      });
    }
  }

  // void _signOut() {
  //   FirebaseAuth.instance.signOut();
  //   GoogleSignIn().signOut();
  // }

  @override
  @override
  Widget build(BuildContext context) {
    // var pickedCategory =
    //     Provider.of<CategoryManage>(context, listen: false).category;
    // changeCategory(String selectedCategory) {
    //   Provider.of<CategoryManage>(context, listen: false)
    //       .changeCategory(selectedCategory);
    // }

    // List actionWidget(int chosenPageIndex) {
    //   if (chosenPageIndex == 1) {
    //     return [];
    //   } else if (chosenPageIndex == 0) {
    //     return [
    //       PopupMenuButton(
    //         itemBuilder: (_) => [
    //           PopupMenuItem(
    //             onTap: () {
    //               WidgetsBinding.instance.addPostFrameCallback((_) {
    //                 showDialog<bool>(
    //                     context: context,
    //                     builder: (ctx) {
    //                       return AlertDialog(
    //                         content: Text('앱을 종료할까요?'),
    //                         actions: <Widget>[
    //                           ElevatedButton(
    //                             style: ElevatedButton.styleFrom(
    //                                 backgroundColor: mainColor),
    //                             child: Text('아니오.'),
    //                             onPressed: () {
    //                               Navigator.of(context).pop(false);
    //                             },
    //                           ),
    //                           ElevatedButton(
    //                             style: ElevatedButton.styleFrom(
    //                                 backgroundColor: mainColor),
    //                             child: Text('네. 종료합니다.'),
    //                             onPressed: () {
    //                               Navigator.of(context).pop(true);

    //                               _signOut();

    //                               // 화면 업데이트 추가
    //                             },
    //                           ),
    //                         ],
    //                       );
    //                     });
    //               });
    //             },
    //             child: SignOutButton(),
    //           ),
    //         ],
    //         icon: Icon(Icons.settings),
    //       ),
    //       PopupMenuButton(
    //         itemBuilder: (ctx) => [
    //           PopupMenuItem(
    //               onTap: () {
    //                 WidgetsBinding.instance.addPostFrameCallback((_) {
    //                   Navigator.of(context).pushNamed(TutorialScreen.routeName);
    //                 });
    //               },
    //               child: Center(
    //                 child: Container(
    //                   color: Colors.white,
    //                   child: Text(
    //                     '튜토리얼',
    //                     style: TextStyle(
    //                         fontSize:
    //                             MediaQuery.of(context).size.width / 360 * 15,
    //                         color: mainColor,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ),
    //               )),
    //           // PopupMenuItem(
    //           // onTap: () {
    //           //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //           //     Navigator.of(context).pushNamed(ExplainScreen.routeName);
    //           //   });
    //           // },
    //           // child: Center(
    //           //   child: Container(
    //           //     color: Colors.white,
    //           //     child: Text(
    //           //       '첼린지 유의사항',
    //           //       style: TextStyle(
    //           //           fontSize:
    //           //               MediaQuery.of(context).size.width / 360 * 15,
    //           //           color: mainColor,
    //           //           fontWeight: FontWeight.bold),
    //           //     ),
    //           //   ),
    //           // )),
    //         ],
    //         icon: Icon(Icons.help_outline_sharp),
    //       )
    //     ];
    //   } else {
    //     return [];
    //   }
    // }

    return Scaffold(
      drawerScrimColor: Color(0xFFF2F3F8),
      appBar: _selectedPageIndex == 1
          ? null
          : AppBar(
              // actions: [SignOutButton()],
              // actions: [...actionWidget(_selectedPageIndex)],
              // iconTheme: IconThemeData(color: mainColor),
              title: Row(
                children: [
                  // Image.asset('assets/logos/header_logo.png',
                  //     width: MediaQuery.of(context).size.width / 360 * 45,
                  //     height: MediaQuery.of(context).size.width / 360 * 45),
                  SizedBox(width: MediaQuery.of(context).size.width / 360 * 15),
                  Text(
                    'Habbit',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 360 * 25,
                        // color: mainColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
      body: SafeArea(
        child: _pages[_selectedPageIndex]['page'] as Widget,
        // AdWidget(ad: banner!)
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF00B6F0),
          onTap: selectPage,
          backgroundColor: Color(0xFFF2F3F8),
          // unselectedItemColor: blackColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.upload_file),
                label: '게시판'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.home_outlined),
                label: '홈'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.calendar_today),
                label: '진행 현황'),
          ]),
    );
  }
}
