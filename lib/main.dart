import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_demo/video_detail_page.dart';


void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: Text(
              'ようつべ',
          ),

          actions: <Widget>[
            SizedBox(
              width: 36,
              child: FlatButton(
               child: Icon(Icons.search),
              ),
            ),

            SizedBox(
              width: 40,

              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){

                },
              ),
            )
          ],
        ),


        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                          'https://yt3.ggpht.com/a/AATXAJyE05zFdjYCHAdIhsZh97LC6tP4AdsIlqJ7zqxueA=s100-c-k-c0x00ffffff-no-rj'
                      ),

                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'ようつべちゃんねる'
                        ),
                        FlatButton(

                          child: Row(
                            children: <Widget>[
                              Icon(Icons.video_call,
                              color: Colors.red,),
                              Text('登録する')
                            ],
                          ),
                          onPressed: (){

                          },


                        ),
                      ],
                    )

                  ],
                ),
              ),
          Expanded(
            child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoDetailPage(),
                    ),
                  );
                },
                contentPadding: EdgeInsets.all(8),
                leading:  Image.network(
                    'https://yt3.ggpht.com/a/AATXAJyE05zFdjYCHAdIhsZh97LC6tP4AdsIlqJ7zqxueA=s100-c-k-c0x00ffffff-no-rj'
                ),
              title: Column(
                children: <Widget>[
                  Text(
                      'Jesusなおっぺけペーを作る方法',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '23万再生',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '5日前',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),

                trailing: Icon(Icons.more_vert),
               );
               },
               ),
          ),
            ],
          ),
        ),

      ),
    );

  }
}



