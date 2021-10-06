import 'package:flutter/material.dart';
class news extends StatelessWidget {
  final String path,path1;

  news({this.path='images/img1.jpg',this.path1 ="data"});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 3),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                   color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage(path),
                      fit: BoxFit.fill
                  ),
              ),
              width: 220,
            ),
          ),
          SizedBox(height: 10,),
          Text(path1 ,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }
}