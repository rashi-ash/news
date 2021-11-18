import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news.dart';

class homepage extends StatefulWidget {
  dynamic newsTitles;
  homepage({this.newsTitles="News"});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 50,
        color: Color(0xffe1e2e3),
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.jpg"),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 15),
                      child: Text(
                        'Record 929 Covid Deaths In Russia Today',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2B4F95),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 30,right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: const <Widget>[
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                      size: 26.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 26.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 10, ),
                child: const ListTile(
                  leading: Text(
                    'Breaking News',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2B4F95),
                    ),
                  ),
                  trailing: Text(
                    'More',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B4F95)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 30.0),
                height: 270.0,
                child:
                ListView.builder(itemBuilder: (context, index){
                  return ListTile(
                    title: news(
                      path1: widget.newsTitles["articles"][index]["title"],
                      path: widget.newsTitles["articles"][index]["urlToImage"],
                    ),
                  );
                }),

                // ListView(
                //    scrollDirection: Axis.horizontal,
                //    children: <Widget>[
                //
                //      news(
                //          path: widget.newsTitles["articles"][2]["urlToImage"],
                //          path1: widget.newsTitles["articles"][2]["titles"],
                //      ),
                //
                //    ],
                //  ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
