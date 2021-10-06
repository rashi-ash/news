import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        color:Colors.white60,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 30),
                  child: Text(
                    'Covid-19 News Update ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2B4F95),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 24.0,
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    news(
                      path: 'images/img1.jpg',
                      path1:"Record 929 Covid Deaths In Russia Today"
                    ),
                    news(
                      path: 'images/img1.jpg',
                    ),
                    news(
                      path: 'images/bg.jpg',
                    ),
                    news(
                      path: 'images/img1.jpg',
                    ),
                    news(
                      path: 'images/img1.jpg',
                    ),
                    news(
                      path: 'images/img1.jpg',
                    ),
                    news(
                      path: 'images/img1.jpg',
                    ),
                    news(
                      path: 'images/img8.jpg',
                    ),
                  ],
                ),
              ),

              
            ],
          ),
        ],
      ),
    );
  }
}
