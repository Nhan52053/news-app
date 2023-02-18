import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  // final Stream<QuerySnapshot> news =
  //     FirebaseFirestore.instance.collection('news').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PREMIUM'),
        centerTitle: true,
      ),
      // body: ListView(
      //   padding: EdgeInsets.all(20),
      //   children: [
      //     Container(
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height,
      //       padding: const EdgeInsets.symmetric(vertical: 0),
      //       child: StreamBuilder<QuerySnapshot>(
      //           stream: news,
      //           builder: (
      //             BuildContext context,
      //             AsyncSnapshot<QuerySnapshot> snapshot,
      //           ) {
      //             if (snapshot.hasError) {
      //               return Text('Something went wrong');
      //             }
      //             if (snapshot.connectionState == ConnectionState.waiting) {
      //               return Text('Loading');
      //             }

      //             final data = snapshot.requireData;

      //             return ListView.builder(
      //               itemCount: data.size,
      //               itemBuilder: (context, index) {
      //                 return Row(
      //                   children: [
      //                     Container(
      //                       width: 100,
      //                       height: 80,
      //                       decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(20),
      //                           image: DecorationImage(
      //                               image: NetworkImage(
      //                                   '${data.docs[index]['imageUrl']}'))),
      //                     ),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     Container(
      //                       padding: EdgeInsets.only(top: 10),
      //                       child: Row(
      //                         children: <Widget>[
      //                           Container(
      //                               width: 220,
      //                               child: Column(
      //                                 crossAxisAlignment:
      //                                     CrossAxisAlignment.start,
      //                                 children: <Widget>[
      //                                   Text('${data.docs[index]['title']}'),
      //                                   Row(
      //                                     children: [
      //                                       Text(
      //                                         '8h',
      //                                         style: TextStyle(
      //                                             color: Color.fromARGB(
      //                                                 255, 122, 122, 122)),
      //                                       ),
      //                                       SizedBox(
      //                                         width: 100,
      //                                       ),
      //                                       TextButton(
      //                                           onPressed: () {
      //                                             print('click button');
      //                                           },
      //                                           child: Container(
      //                                             alignment: Alignment.center,
      //                                             width: 80,
      //                                             height: 20,
      //                                             color: Color.fromARGB(
      //                                                 255, 1, 115, 172),
      //                                             child: Text(
      //                                               'Show more',
      //                                               style: TextStyle(
      //                                                   color: Color.fromARGB(
      //                                                       255, 255, 255, 255),
      //                                                   fontWeight:
      //                                                       FontWeight.normal),
      //                                             ),
      //                                           ))
      //                                     ],
      //                                   )
      //                                 ],
      //                               )),
      //                         ],
      //                       ),
      //                     )
      //                   ],
      //                 );
      //               },
      //             );
      //           }),
      //     ),
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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

      // SizedBox(
      //   height: 20,
      // ),

      // // row text
      // Row(
      //   children: [
      //     SizedBox(width: 10),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 40,
      //       child: Text("Long An: Hơn 1.600 tân binh lên đường nhập ngũ"),
      //     )
      //   ],
      // ),

      // // row image
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //   ],
      // ),

      // // row time
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
      //     Text(
      //       "2 giờ",
      //       style: TextStyle(color: Color.fromARGB(255, 122, 122, 122)),
      //     ),
      //     SizedBox(
      //       width: 310,
      //     ),
      //     Icon(
      //       Icons.info_outline,
      //       color: Color.fromARGB(255, 122, 122, 122),
      //     )
      //   ],
      // ),

      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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

      // SizedBox(
      //   height: 20,
      // ),

      // // news
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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

      // SizedBox(
      //   height: 20,
      // ),
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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

      // SizedBox(
      //   height: 20,
      // ),

      // // row text
      // Row(
      //   children: [
      //     SizedBox(width: 10),
      //     Container(
      //       alignment: Alignment.topLeft,
      //       height: 40,
      //       child: Text("Long An: Hơn 1.600 tân binh lên đường nhập ngũ"),
      //     )
      //   ],
      // ),

      // // row image
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Container(
      //       width: 117,
      //       height: 80,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //               image: AssetImage("assets/news3.jpg"),
      //               fit: BoxFit.cover)),
      //     ),
      //   ],
      // ),

      // // row time
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
      //     Text(
      //       "2 giờ",
      //       style: TextStyle(color: Color.fromARGB(255, 122, 122, 122)),
      //     ),
      //     SizedBox(
      //       width: 310,
      //     ),
      //     Icon(
      //       Icons.info_outline,
      //       color: Color.fromARGB(255, 122, 122, 122),
      //     )
      //   ],
      // ),

      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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

      // SizedBox(
      //   height: 20,
      // ),

      // // news
      // Row(
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
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
      //                       "8 giờ",
      //                       style: TextStyle(
      //                           color: Color.fromARGB(255, 122, 122, 122)),
      //                     ),
      //                     SizedBox(
      //                       width: 180,
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
      //   ],
      // ),
    );
  }
}
