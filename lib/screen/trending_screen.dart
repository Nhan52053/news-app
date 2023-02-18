import 'package:flutter/material.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 163, 255),
          title: Text('Xu Hướng'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 20, left: 10),
          children: [
            Row(
              children: [
                Icon(
                  Icons.outbond_sharp,
                  size: 35,
                  color: Color.fromARGB(255, 255, 1, 1),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'ĐANG ĐƯỢC QUAN TÂM',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
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
                            padding:
                                EdgeInsets.only(left: 8, right: 8, top: 10),
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
                                          color:
                                              Color.fromARGB(255, 20, 0, 170)),
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
            ),
            // Row(
            //   children: [
            //     Container(
            //         child: Container(
            //       width: 120,
            //       height: 80,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           image: DecorationImage(
            //               image: AssetImage("assets/news3.jpg"),
            //               fit: BoxFit.cover)),
            //     )),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Container(
            //         child: Row(
            //       children: <Widget>[
            //         Container(
            //             width: 250,
            //             height: 70,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: <Widget>[
            //                 Text(
            //                     "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
            //                 SizedBox(
            //                   height: 10,
            //                 ),
            //                 Row(
            //                   children: [
            //                     Text(
            //                       "08/02/2023",
            //                       style: TextStyle(
            //                           color:
            //                               Color.fromARGB(255, 122, 122, 122)),
            //                     ),
            //                     SizedBox(
            //                       width: 135,
            //                     ),
            //                     Icon(
            //                       Icons.info_outlined,
            //                       size: 25,
            //                       color: Color.fromARGB(255, 122, 122, 122),
            //                     )
            //                   ],
            //                 )
            //               ],
            //             )),
            //       ],
            //     )),
            //   ],
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      print('click on button');
                    },
                    child: Text('Show more'))
              ],
            ),
            Row(
              children: [
                Container(
                  width: 370,
                  height: 7,
                  color: Color.fromARGB(255, 233, 233, 233),
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),

            // Nóng 24h
            Row(
              children: [
                Icon(
                  Icons.outbond_sharp,
                  size: 35,
                  color: Color.fromARGB(255, 255, 1, 1),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'NÓNG 24H',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
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
                            padding:
                                EdgeInsets.only(left: 8, right: 8, top: 10),
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
                                          color:
                                              Color.fromARGB(255, 20, 0, 170)),
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
            ),
            // Row(
            //   children: [
            //     Container(
            //         child: Container(
            //       width: 120,
            //       height: 80,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           image: DecorationImage(
            //               image: AssetImage("assets/news3.jpg"),
            //               fit: BoxFit.cover)),
            //     )),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Container(
            //         child: Row(
            //       children: <Widget>[
            //         Container(
            //             width: 250,
            //             height: 70,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: <Widget>[
            //                 Text(
            //                     "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
            //                 SizedBox(
            //                   height: 10,
            //                 ),
            //                 Row(
            //                   children: [
            //                     Text(
            //                       "08/02/2023",
            //                       style: TextStyle(
            //                           color:
            //                               Color.fromARGB(255, 122, 122, 122)),
            //                     ),
            //                     SizedBox(
            //                       width: 135,
            //                     ),
            //                     Icon(
            //                       Icons.info_outlined,
            //                       size: 25,
            //                       color: Color.fromARGB(255, 122, 122, 122),
            //                     )
            //                   ],
            //                 )
            //               ],
            //             )),
            //       ],
            //     )),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      print('click on button');
                    },
                    child: Text('Show more'))
              ],
            ),
            Row(
              children: [
                Container(
                  width: 370,
                  height: 7,
                  color: Color.fromARGB(255, 233, 233, 233),
                )
              ],
            ),
          ],
        ));
  }
}
