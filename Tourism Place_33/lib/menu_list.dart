import 'package:flutter/material.dart';
import 'package:wisata/tourism_place.dart';

import 'detail_page.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Wisata Bandung"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        final TourismPlace tourism = tourismList[index];
        return Card(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailPage(tourism: tourism);
              }));
            },
            child: Container(
              height: (MediaQuery.of(context).size.height)/4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.network(tourism.imageUrls[0], fit: BoxFit.cover, width: MediaQuery.of(context).size.width, color: Colors.black45, colorBlendMode: BlendMode.darken,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textAlignLeftWhite(tourism.name),
                      Container(
                        height: 35,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: int.parse(tourism.stars),
                          itemBuilder: (BuildContext context, int index) => Icon(Icons.star, color: Colors.white,),
                        ),
                      ),
                      textAlignLeftWhite(tourism.ticketPrice)
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
        itemCount: tourismList.length,
      ),
    );
  }
}

Widget textAlignLeftWhite(String text){
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(
      color: Colors.white,
      fontSize: 30,
    ),
  );
}