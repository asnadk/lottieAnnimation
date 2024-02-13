import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation {
   static String name="tap to expand";
  static String image ="https://i.pinimg.com/236x/b9/e7/4b/b9e74b226d563e1a27269b419a12aad8.jpg";
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile With Lottie'),
      ),
      body: ListView.builder(
        itemCount:1,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(Animation.image),
              ),
              title: Text(Animation.name),
              children:  <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Lottie.network("https://lottie.host/5109fed5-a940-4730-b2dc-51fd5c9a61a3/7RzCmvpg8a.json",
                          height: 350,  width: 350,
                         ),
                  ),
                 const Text("please wait...!",style: TextStyle(letterSpacing: 3,fontWeight: FontWeight.bold,fontSize:20),),
                 const SizedBox(height: 20,),
              ],
            ),
          );
        },
      ),
    );
  }
}