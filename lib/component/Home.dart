import 'package:flutter/material.dart';
import 'BottomNavigationOne.dart';
import 'BottomNavigationTwo.dart';
import 'BottomNavigationThree.dart';
import 'BottomNavigationFour.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home>{
  int currentIndex=0;
  final List<Widget> list_=[BottomNavigationOne(),BottomNavigationTwo(),BottomNavigationThree(),BottomNavigationFour()];
  PageController mPageController= PageController(initialPage:0);

  changePageViewPosition (int index)  {
    mPageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: PageView.builder(
              controller:mPageController,
              physics: NeverScrollableScrollPhysics(),
              itemCount: list_.length,
              itemBuilder: (BuildContext context,int index){
                  return list_[index];
              }),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                currentIndex=index;
              });
              changePageViewPosition(index);
            },
            items:<BottomNavigationBarItem>[
              new BottomNavigationBarItem(icon: Icon(Icons.language),title:Text("微信")),
              new BottomNavigationBarItem(icon: Icon(Icons.rate_review),title:Text("通讯录")),
              new BottomNavigationBarItem(icon: Icon(Icons.find_in_page),title:Text("发现")),
              new BottomNavigationBarItem(icon: Icon(Icons.my_location),title:Text("我"))
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
          ),
        ));
  }
}

