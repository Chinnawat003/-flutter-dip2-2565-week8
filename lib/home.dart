import 'package:flutter/material.dart';

import 'login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext context) {
    //2.build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Basic"),
      ),
      body: Center(
          child: Column(
            children: [
              Text("Welcome"),
              Text("To Lungtoo"),
            ],
          )),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Dong"),
              accountEmail: Text("Chinnawat1926@gmail.com"),
              currentAccountPicture: CircleAvatar(
                // child: Icon(Icons.android),
                backgroundImage: NetworkImage("https://hilight.thaibuffer.com/img_cms2/user/juthamat/jutha03/3_28.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.home,color: Colors.indigo,size: 30),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("Contact",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.contacts,color: Colors.indigo,size: 30),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("Login",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.login,color: Colors.indigo,size: 30),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              title: Text("Exit",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.logout,color: Colors.indigo,size: 30),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("JJ",style: TextStyle(color: Colors.purple,fontSize: 14,fontWeight: FontWeight.bold)),
              leading: Icon(Icons.logout,color: Colors.indigo,size: 30),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}