import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                    "Welcome to My Photo Gallery!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.onlinecoursebay.com/2019/03/25052450/2175862_b6cc_4.jpg'),
                    ),
                    title: Text('Sample Photo 1'),
                    subtitle: Text('Catagory 1'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.onlinecoursebay.com/2019/03/25052450/2175862_b6cc_4.jpg'),

                    ),
                    title: Text('Sample Photo 2'),
                    subtitle: Text('Catagory 2'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.onlinecoursebay.com/2019/03/25052450/2175862_b6cc_4.jpg'),
                    ),
                    title: Text('Sample Photo 3'),
                    subtitle: Text('Catagory 1'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Photos Uploaded Successfully!'),
            ),
          );
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }
}