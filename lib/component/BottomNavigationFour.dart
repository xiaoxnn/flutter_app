import 'package:flutter/material.dart';

class BottomNavigationFour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(shape:BoxShape.rectangle,borderRadius: BorderRadiusDirectional.circular(10),
                        image:DecorationImage(image:NetworkImage("http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg"),fit: BoxFit.fill) ),
                  ),
                  Container(
                    height: 54,
                    margin: EdgeInsets.only(left: 10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("justin",style: TextStyle(fontSize: 20),),
                        Text("微信号: 12345678ui"),
                      ],
                    ),
                  )

                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("支付"),
                leading: Image.asset( "./assets/images/icon_9.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),
            Container(
              height: 10,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("收藏"),
                leading: Image.asset( "./assets/images/icon_10.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),
            Divider(
              indent: 70,
              height: 1,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("相册"),
                leading: Image.asset( "./assets/images/icon_11.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),
            Divider(
              indent: 70,
              height: 1,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("卡包"),
                leading: Image.asset( "./assets/images/icon_12.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),
            Divider(
              indent: 70,
              height: 1,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("表情"),
                leading: Image.asset( "./assets/images/icon_1.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),

            Container(
              height: 10,
              color: Colors.grey.withAlpha(100),
            ),
            ListTile(
                title: Text("设置"),
                leading: Image.asset( "./assets/images/icon_13.png",width: 26,),
                trailing:Icon(Icons.keyboard_arrow_right)
            ),
            Container(
              height: 20,
              color: Colors.grey.withAlpha(100),
            ),
          ],
        ),
      )
    );
  }

}