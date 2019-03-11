import 'package:flutter/material.dart';
class BottomNavigationThree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
      ),
      body: ListView(
        children: <Widget>[
           ListTile(
              title: Text("盆友圈"),
              leading: Image.asset( "./assets/images/icon_15.png",width: 26,),
              trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Container(
              height: 10,
              color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("扫一扫"),
               leading: Image.asset( "./assets/images/icon_2.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Divider(
             indent: 70,
             height: 1,
             color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("摇一摇"),
               leading: Image.asset( "./assets/images/icon_3.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Container(
             height: 10,
             color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("看一看"),
               leading: Image.asset( "./assets/images/icon_4.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Divider(
             indent: 70,
             height: 1,
             color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("搜一搜"),
               leading: Image.asset( "./assets/images/icon_5.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Container(
             height: 10,
             color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("附近人"),
               leading: Image.asset( "./assets/images/icon_6.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Container(
             height: 10,
             color: Colors.grey.withAlpha(100),
           ),
           ListTile(
               title: Text("购物"),
               leading: Image.asset( "./assets/images/icon_7.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           ListTile(
               title: Text("游戏"),
               leading: Image.asset( "./assets/images/icon_8.png",width: 26,),
               trailing:Icon(Icons.keyboard_arrow_right)
           ),
           Container(
             height: 10,
             color: Colors.grey.withAlpha(100),
           ),
        ],
      ),
    );
  }

}