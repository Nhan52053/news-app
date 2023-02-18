import 'package:flutter/material.dart';
import 'package:flutter_2/screen/video_screen/trangChu.dart';
import 'latest_screen.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  // List category = [
  //   "Mới",
  //   "Xã hội",
  //   "Thế giới",
  //   "Toà án",
  //   "Văn hoá",
  //   "Video",
  //   "Toạ đàm",
  //   "Pháp đình",
  //   "Media",
  //   "Đời sống",
  //   "Leaders Talk",
  //   "Pháp luật",
  //   "Công lý 24h",
  //   "An ninh trật tự"
  // ];

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
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
    NewsVideo(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Video"),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: tabs,
              ),
            ),
          ),
          body: TabBarView(
            children: tabsContent,
          ),
        ));
  }
}
