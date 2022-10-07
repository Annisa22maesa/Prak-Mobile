import 'package:flutter/material.dart';
import 'package:coffe/coffee_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final CoffeeMenu coffee;

  const DetailPage({Key? key, required this.coffee}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isFavorite) ? Colors.lightBlueAccent : Colors.white,
      appBar: AppBar(
        title: Text("${widget.coffee.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
      child : Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: (MediaQuery
                .of(context)
                .size
                .height) / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.coffee.imageUrls[index]),
                );
              },
              itemCount: widget.coffee.imageUrls.length,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textBesar(widget.coffee.name),
                SizedBox(height: 10,),
                textBesar("Deskripsi : " + widget.coffee.description),
                SizedBox(height: 10,),
                textBesar("Harga : " + widget.coffee.price),
                SizedBox(height: 10,),
                textBesar("Nutrisi : " + widget.coffee.nutrition),
                SizedBox(height: 10,),
                textBesar("Kepuasan Pelanggan : " + widget.coffee.reviewAverage),
                SizedBox(height: 10,),
                textBesar("Jumlah Review : " + widget.coffee.reviewCount),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      _launchURL(widget.coffee.linkStore);
                    },
                    child: Text("Halaman Website"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
