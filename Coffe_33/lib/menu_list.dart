import 'package:coffe/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:coffe/coffee_menu.dart';


class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Menu Coffee"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        final CoffeeMenu coffee = coffeeList[index];
        return Card(
          child: InkWell(
           onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailPage(coffee: coffee);
              }));
            },
            child: Container(
              height: (MediaQuery.of(context).size.height)/4,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.network(coffee.imageUrls[0], fit: BoxFit.cover, width: MediaQuery.of(context).size.width, color: Colors.black45, colorBlendMode: BlendMode.darken,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textAlignLeftWhite(coffee.name),
                      Container(
                        height: 35,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) => Icon(Icons.price_change_rounded, color: Colors.white),
                        ),
                      ),
                      textAlignLeftWhite(coffee.price)
                    ],
                  )
                ],

              ),
            ),
          ),
        );
      },
        itemCount: coffeeList.length,
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