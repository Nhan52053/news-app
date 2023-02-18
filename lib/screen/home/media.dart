import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/news4.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                    child: Container(
                  // padding: EdgeInsets.only(bottom: 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 10),
                        child: Text(
                            'Chuong trinh thoi su hom nay hoom any jfhsfsdffafsafsafsa.'),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Text('08/02/2023'),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          TextButton(
                              onPressed: () {
                                print('click on button');
                              },
                              child: Center(
                                // padding: EdgeInsets.only(left: 60),
                                child: Text(
                                  'Show more',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 20, 0, 170)),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
