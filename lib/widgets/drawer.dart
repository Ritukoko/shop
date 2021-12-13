import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/login.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

final imgurl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1dzgsdpRW5TVu3pzYiIWEsRHAMaL4I4R-Hw&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPictureSize: Size(120,120),
              margin: EdgeInsets.zero,
              accountName: Text("$use"),
              currentAccountPicture: Container(
               // width: 150,
                //height: 200,
                padding: EdgeInsets.fromLTRB(50.0, 5.0, 0, 0),
                //margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgurl)
                  ),
                ),
              ),
              //currentAccountPicture: Image.network(imgurl),
              accountEmail: Text("koko@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.greenAccent,)
            ,title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.greenAccent,)
            ,title: Text("profile"),
          )

        ],
      ),
    );
  }
}
