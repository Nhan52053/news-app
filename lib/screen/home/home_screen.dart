import 'package:flutter/material.dart';
import 'package:flutter_2/screen/home/KT-DN.dart';
import 'package:flutter_2/screen/home/congNghe.dart';
import 'package:flutter_2/screen/home/media.dart';
import 'package:flutter_2/screen/home/nongLam.dart';
import 'package:flutter_2/screen/home/phapLuat.dart';
import 'package:flutter_2/screen/home/theGioi.dart';
import 'package:flutter_2/screen/home/thoiSu.dart';
import 'package:flutter_2/screen/home/toaAn.dart';
import 'package:flutter_2/screen/home/toaDam.dart';
import 'package:flutter_2/screen/home/trangChu.dart';
import 'package:flutter_2/screen/home/xaHoi.dart';
import 'package:flutter_2/screen/home/yTe.dart';
import 'package:flutter_2/signIn-signUp/signIn_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List categories = [
      "Trang chủ",
      "Toà án",
      "Thời sự",
      "Xã hội",
      "Kinh tế - Doanh nghiệp",
      "Pháp luật",
      "Y tế",
      "Nông lâm",
      "Công nghệ",
      "Media",
      "Toạ đàm",
      "Thế giới",
    ];

    List<Tab> tabs = [
      Tab(child: Text("Trang chủ")),
      Tab(child: Text("Toà án")),
      Tab(child: Text("Thời sự")),
      Tab(child: Text("Xã hội")),
      Tab(child: Text("Kinh tế - Doanh nghiệp")),
      Tab(child: Text("Pháp luật")),
      Tab(child: Text("Y tế")),
      Tab(child: Text("Nông lâm")),
      Tab(child: Text("Công nghệ")),
      Tab(child: Text("Media")),
      Tab(child: Text("Toạ đàm")),
      Tab(child: Text("Thế giới")),
    ];

    List<Widget> tabsContent = [
      Home(),
      ToaAnScreen(),
      ThoiSuScreen(),
      XaHoiScreen(),
      KTDNScreen(),
      PhapLuatScreen(),
      YTeScreen(),
      NongLamScreen(),
      CongNgheScreen(),
      MediaScreen(),
      ToaDamScreen(),
      TheGioiScreen(),
    ];

    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          // AppBar with automaticallyImplyLeading = "true" (Default)
          appBar: AppBar(
            title: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: tabs,
              ),
            ),
            // title: SingleChildScrollView(
            //   child: Container(
            //     child: Row(
            //       children: <Widget>[
            //         Container(
            //           height: 25,
            //           width: 200,
            //           child: ListView.builder(
            //             scrollDirection: Axis.horizontal,
            //             itemCount: categories.length,
            //             itemBuilder: (context, index) {
            //               return GestureDetector(
            //                 onTap: () {
            //                   Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => SignUpScreen()));
            //                 },
            //                 child: Container(
            //                   margin: EdgeInsets.only(top: 5, right: 14),
            //                   child: Stack(children: <Widget>[
            //                     Text(
            //                       '${categories[index]}',
            //                       style: TextStyle(fontSize: 15),
            //                     )
            //                   ]),
            //                 ),
            //               );
            //             },
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            automaticallyImplyLeading: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => {print("Click on button")},
              ),
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()))
                },
              ),
            ],
          ),

          body: TabBarView(
            children: tabsContent,
          ),

          // body: Container(
          //   child: ListView(
          //     children: <Widget>[
          //       SizedBox(
          //         height: 10,
          //       ),

          //       // first
          //       Container(
          //         alignment: Alignment.bottomCenter,
          //         width: double.infinity,
          //         height: 250,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             image: DecorationImage(
          //                 image: AssetImage("assets/news3.jpg"),
          //                 fit: BoxFit.cover)),
          //         child: Text(
          //           "Vu an xay ra tai mot so trung tam dang kiem tham nhung co to chuc",
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 255, 255, 255),
          //               fontWeight: FontWeight.normal,
          //               fontSize: 18),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 40,
          //       ),

          //       // second
          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Container(
          //             width: 120,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           )),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Row(
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
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122)),
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
          //         ],
          //       ),

          //       SizedBox(
          //         height: 20,
          //       ),

          //       // row text
          //       Row(
          //         children: [
          //           SizedBox(width: 10),
          //           Container(
          //             alignment: Alignment.topLeft,
          //             height: 40,
          //             child: Text(
          //                 "Long An: Hơn 1.600 tân binh lên đường nhập ngũ"),
          //           )
          //         ],
          //       ),

          //       // row image
          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             width: 117,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             width: 117,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             width: 117,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           ),
          //         ],
          //       ),

          //       // row time
          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           SizedBox(
          //             height: 50,
          //           ),
          //           Text(
          //             "2 giờ",
          //             style:
          //                 TextStyle(color: Color.fromARGB(255, 122, 122, 122)),
          //           ),
          //           SizedBox(
          //             width: 310,
          //           ),
          //           Icon(
          //             Icons.info_outline,
          //             color: Color.fromARGB(255, 122, 122, 122),
          //           )
          //         ],
          //       ),

          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Container(
          //             width: 120,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           )),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Row(
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
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122)),
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
          //         ],
          //       ),

          //       SizedBox(
          //         height: 20,
          //       ),

          //       // news
          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Container(
          //             width: 120,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           )),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Row(
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
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122)),
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
          //         ],
          //       ),

          //       SizedBox(height: 10),

          //       Stack(
          //         alignment: Alignment.center,
          //         children: [
          //           Container(
          //             width: 390,
          //             height: 240,
          //             color: Color.fromARGB(255, 86, 171, 255),
          //           ),
          //           Container(
          //             padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
          //             alignment: Alignment.topLeft,
          //             width: 392,
          //             height: 236,
          //             color: Color.fromARGB(255, 208, 245, 255),
          //             child: Row(
          //               children: [
          //                 Text(
          //                   "PREMIUM",
          //                   style: TextStyle(
          //                       color: Colors.red,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 18),
          //                 ),
          //                 SizedBox(
          //                   width: 5,
          //                 ),
          //                 Text(
          //                   "Chuyên mục thu phí của",
          //                   style: TextStyle(fontSize: 16),
          //                 ),
          //                 SizedBox(
          //                   width: 10,
          //                 ),
          //                 Container(
          //                   width: 100,
          //                   height: 60,
          //                   decoration: BoxDecoration(
          //                       borderRadius: BorderRadius.circular(15),
          //                       image: DecorationImage(
          //                           image: AssetImage("assets/logo.png"),
          //                           fit: BoxFit.cover)),
          //                 )
          //               ],
          //             ),
          //           ),

          //           SizedBox(
          //             height: 20,
          //           ),

          //           // Premium news
          //           Row(
          //             children: [
          //               SizedBox(
          //                 width: 10,
          //               ),
          //               Container(
          //                   padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          //                   child: Container(
          //                     width: 120,
          //                     height: 80,
          //                     decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(10),
          //                         image: DecorationImage(
          //                             image: AssetImage("assets/news3.jpg"),
          //                             fit: BoxFit.cover)),
          //                   )),
          //               SizedBox(
          //                 width: 10,
          //               ),
          //               Container(
          //                   child: Row(
          //                 children: <Widget>[
          //                   Container(
          //                       padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          //                       width: 250,
          //                       height: 100,
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: <Widget>[
          //                           Text(
          //                               "Hơn 4.700 thanh niên TPHCM hăng hái lên đường nhập ngũ"),
          //                           SizedBox(
          //                             height: 10,
          //                           ),
          //                           Row(
          //                             children: [
          //                               Text(
          //                                 "8 giờ",
          //                                 style: TextStyle(
          //                                     color: Color.fromARGB(
          //                                         255, 122, 122, 122)),
          //                               ),
          //                               SizedBox(
          //                                 width: 180,
          //                               ),
          //                               Icon(
          //                                 Icons.info_outlined,
          //                                 size: 25,
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122),
          //                               )
          //                             ],
          //                           )
          //                         ],
          //                       )),
          //                 ],
          //               )),
          //             ],
          //           ),

          //           Container(
          //               padding: EdgeInsets.fromLTRB(200, 170, 0, 0),
          //               child: ElevatedButton.icon(
          //                 icon: Icon(Icons.diamond, size: 20),
          //                 label: Text(
          //                   'Đăng ký ngay',
          //                   style: TextStyle(
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.normal,
          //                   ),
          //                 ),
          //                 onPressed: () {
          //                   Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (context) => HomeScreen()));
          //                 },
          //               )),

          //           // news
          //         ],
          //       ),

          //       SizedBox(
          //         height: 20,
          //       ),

          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Container(
          //             width: 120,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           )),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Row(
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
          //                             "08/02/2023",
          //                             style: TextStyle(
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122)),
          //                           ),
          //                           SizedBox(
          //                             width: 135,
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
          //         ],
          //       ),

          //       SizedBox(
          //         height: 20,
          //       ),

          //       Row(
          //         children: [
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Container(
          //             width: 120,
          //             height: 80,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/news3.jpg"),
          //                     fit: BoxFit.cover)),
          //           )),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //               child: Row(
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
          //                             "09/02/2023",
          //                             style: TextStyle(
          //                                 color: Color.fromARGB(
          //                                     255, 122, 122, 122)),
          //                           ),
          //                           SizedBox(
          //                             width: 135,
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
          //         ],
          //       ),

          //       SizedBox(
          //         height: 20,
          //       ),
          //       // BottomNavbar()
          //     ],
          //   ),
          // ),

          drawer: Drawer(
            child: ListView(
              children: [
                AppBar(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  centerTitle: true,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        'MENU',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),

                // IconButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     icon: Icon(Icons.arrow_back_ios)),

                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 304,
                        child: ListView.builder(
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            tabsContent[index]));
                              },
                              child: Container(
                                width: 180,
                                height: 50,
                                color: Color.fromARGB(255, 213, 246, 255),
                                margin:
                                    EdgeInsets.only(top: 10, right: 5, left: 5),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Text(
                                        '${categories[index]}',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ]),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 304,
                  height: 200,
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
