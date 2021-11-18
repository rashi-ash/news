import 'package:news_app/models/network.dart';
import 'package:flutter/material.dart';
import 'package:news_app/homepage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getNewsTitleData() async {

    var newsTitle = await NetworkHelper().getData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return homepage(
            newsTitles: newsTitle,
          );
        },
      ),

    );
  }

  @override
  void initState() {
    super.initState();
    getNewsTitleData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          size: 80,
          color: Colors.red,
        ),
      ),
    );
  }
}