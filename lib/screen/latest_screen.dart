import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_2/models/latest_news.dart';

class LatestScreen extends StatefulWidget {
  @override
  State<LatestScreen> createState() => _LatestScreenState();
}

class _LatestScreenState extends State<LatestScreen> {
  List images = [
    "news1",
    "news2",
    "news3",
    "news4",
    "news5",
    "news6",
    "news7",
    "news8",
    "news9",
    "news10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mới Nhất',
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 49, 162, 255),
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text('${data.error}'),
            );
          } else if (data.hasData) {
            var items = data.data as List<LatestNews>;
            return ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'assets/images/${images[index]}.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  items[index].title.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(items[index].createAt.toString()),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      // body: ListView(children: [
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   ),
      //   Row(
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Container(
      //             width: 120,
      //             height: 80,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/news3.jpg"),
      //                     fit: BoxFit.cover)),
      //           )),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Container(
      //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      //           child: Row(
      //             children: <Widget>[
      //               Container(
      //                   width: 250,
      //                   height: 70,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: <Widget>[
      //                       Text(
      //                           "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
      //                       SizedBox(
      //                         height: 10,
      //                       ),
      //                       Row(
      //                         children: [
      //                           Text(
      //                             "8 giờ",
      //                             style: TextStyle(
      //                                 color:
      //                                     Color.fromARGB(255, 122, 122, 122)),
      //                           ),
      //                           SizedBox(
      //                             width: 180,
      //                           ),
      //                           Icon(
      //                             Icons.info_outlined,
      //                             size: 25,
      //                             color: Color.fromARGB(255, 122, 122, 122),
      //                           )
      //                         ],
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )),
      //     ],
      //   )
      // ]);
    );
  }

  Future<List<LatestNews>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/latest_news.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => LatestNews.fromJson(e)).toList();
  }
}
