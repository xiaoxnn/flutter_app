import 'package:flutter/material.dart';
import 'package:flutter_app/bean/UserInformation.dart';

class BottomNavigationOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationOne();
  }

}

class _BottomNavigationOne extends State<BottomNavigationOne> with AutomaticKeepAliveClientMixin{

  final List<UserInformation> list=new List.generate(100, (int index){
    return new UserInformation("http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg","nihao","你好，你在干嘛呢","张三");
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("微信"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.find_in_page), onPressed:()=>debugPrint("dddd")),
            IconButton(icon: Icon(Icons.find_in_page), onPressed: null),
          ],
        ),
        body:ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context,int index){
              return Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child:Column(
                    children: <Widget>[
                      Container(
                        height: 59,
                        alignment: AlignmentDirectional.center,
                        child:  Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                  image:DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          list[index].imageUrl,scale: 1.0
                                      ))
                              ),
                            ),
                            Container(
                              height: 40,
                              padding: EdgeInsets.only(left: 10.0,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("${list[index].title} $index"),
                                  Text(list[index].message),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Divider(
                        height: 1.0,
                        indent: 50,
                        color: Colors.grey,
                      )

                    ],
                  )
              );
            })
    );
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}