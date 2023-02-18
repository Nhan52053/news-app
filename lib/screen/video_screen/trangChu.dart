import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NewsVideo extends StatefulWidget {
  const NewsVideo({Key? key}) : super(key: key);

  @override
  State<NewsVideo> createState() => _NewsVideoState();
}

class _NewsVideoState extends State<NewsVideo> {
  final Stream<QuerySnapshot> videos =
      FirebaseFirestore.instance.collection('videos').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder<QuerySnapshot>(
                stream: videos,
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Loading');
                  }
                  final data = snapshot.requireData;

                  return ListView.builder(
                    itemCount: data.size,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 250,
                                height: 100,
                                child: Text('${data.docs[index]['title']}'))
                          ],
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
