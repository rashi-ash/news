import 'package:flutter/material.dart';

class news extends StatefulWidget {
   var path;
   var path1;

  news({this.path = 'image', this.path1 = "data"});

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  String defaultImagePath = "http://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/No-Whatsapp-Dp-Images-6.jpg";

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
                image:
                DecorationImage(
                    image:NetworkImage(widget.path == null ? widget.path=defaultImagePath: widget.path ),
                    fit: BoxFit.fill),
              ),
              width: 220,
              height: 100,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
                width: 220,
                child: Text(
                  widget.path1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

