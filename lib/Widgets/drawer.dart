import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const Drawer());
}
class Drawer_main extends StatelessWidget {
  const Drawer_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://www.google.com/search?q=vasanth+kumar+theliki&sxsrf=AOaemvLq0MAqIX1PUkH18dtXOxBGTgtQbg:1639296442687&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjM9JaR5930AhV94XMBHbKEBOgQ_AUoAXoECAQQAw&biw=1440&bih=821&dpr=1#imgrc=L1aD8656Ds8NEM";
    return Scaffold(
      appBar: AppBar(
        title: Text('something')
      ),
      drawer: Container(
        width: 225,
        child: Drawer(
          child: Container(
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("Nikhil S N"),
                      accountEmail: Text("nikhilsn.cs19@bmsce.ac.in"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    )
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                  ),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.share),
                  title: Text(
                    "Income",
                    textScaleFactor: 1.2,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.collections),
                  title: Text(
                    "Deductions",
                    textScaleFactor: 1.2,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined),
                  title: Text(
                    "Tax Saving ideas",
                    textScaleFactor: 1.2,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.collections),
                  title: Text(
                    "About us",
                    textScaleFactor: 1.2,
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.share),
                  title: Text(
                    "Logout",
                    textScaleFactor: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
