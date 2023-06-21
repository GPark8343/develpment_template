import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class InstaScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container();
    // return FutureBuilder(
    //     future:
    //         Provider.of<BanManage>(context, listen: false).fetchAndSetBanUser(),
    //     builder: (context, futureSnapshot) {
    //       return StreamBuilder(
    //           stream: FirebaseFirestore.instance
    //               .collection('posts')
    //               .orderBy('created_at', descending: true)
    //               .limit(20)
    //               .snapshots(),
    //           builder: (ctx, snapshot) {
    //             if (snapshot.connectionState == ConnectionState.waiting) {
    //               return Center(
    //                 child: Container(
    //                   color: Colors.white
    //                 ),
    //               );
    //             }
    //             final docs = snapshot.data?.docs;
    //             return ListView.builder(
    //                 shrinkWrap: true,
    //                 itemCount: docs?.length,
    //                 itemBuilder: (context, index) {
    //                   return docs?.length == 0
    //                       ? Container()
    //                       : PostWidget(
    //                           post: Post.fromJson(
    //                               docs![index]['uid'], docs[index].data()),
    //                         );
    //                 });

    //           });
    //     });
  }
}
