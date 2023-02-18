import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UtilitiesScreen extends StatefulWidget {
  const UtilitiesScreen({Key? key}) : super(key: key);

  @override
  State<UtilitiesScreen> createState() => _UtilitiesScreenState();
}

class _UtilitiesScreenState extends State<UtilitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Tiện ích')),
        ),
        body: Container(
          height: 650,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                'LỊCH VIỆT',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/dragon.png'),
                          fit: BoxFit.cover)),
                  // color: Color.fromARGB(247, 199, 26, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 80,
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "THỨ SÁU",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 93, 93, 93)),
                                ),
                                Text(
                                  "17",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 255, 17, 0),
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "27 ÂL",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 93, 93, 93)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 15),
                            width: 230,
                            height: 65,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'THỨ SÁU',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('17/02/2023 (Dương Lịch)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                Text('27/01, Bính Ngọ (Âm Lịch)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                Text('Giờ Hợi|Ngày Bính Ngọ|Tháng Giáp Dần',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 10, right: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Nên làm: Ngày có trực Định nên làm các việc cầu tài, cầu tự, kí kết hợp đồng, ngày giao dịch mua bán, ngày nhập hàng, khai trương, khởi động, cầu may mắn, bình an, việc hỷ sự, bốc thuốc, chữa bệnh, nhập trạch, nạp thú cưng, khoan giếng, đổ trần, gác đòn dông, lợp nhà, cất nóc, nhậm chức, tu tạo nhà cửa, làm thiện nguyện, động thổ. Đó là những công việc nên làm trong ngày hôm nay. nó giúp cho gia đình của bạn thuận hoà hơn khi mọi công việc đều được suôn sẻ.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Không nên làm: Không nên làm các việc chuyển nhà, ngày phạt mộc, xuất hành đi xa, đi du lịch. Không nên cúng viếng trong ngày hôm này bởi vì ngày hôm nay rất xấu và có hậu quả khôn lường cho những việc làm sai trái của gia chủ. Nếu không cẩn thận thì cả gia đình sẽ gặp xui xẻo trong những ngày sắp tới. Không nên làm trái với đạo đức của mình. Luôn luôn thành khẩn cầu nguyện để có được một cuộc sống bình an.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'THỜI TIẾT',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}
