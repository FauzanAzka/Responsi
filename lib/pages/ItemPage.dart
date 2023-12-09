import 'package:akhirmobile/widgets/ItemAppBar.dart';
import 'package:akhirmobile/widgets/ItemBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget{
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("images/1.png", height: 300),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEX,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(
                    top: 40,
                  bottom: 15,
                ),
                child: Row(
                children: [
                  Text("Food's", style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFFFF5722),
                    fontWeight: FontWeight.bold,
                  ),)
                ],
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_) => Icon(
                              Icons.favorite,
                              color: Color(0xFFFF5722),
                            ),
                            onRatingUpdate: (index){},
                          ),
                          Row(children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            ),
                            Container(margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("01", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:  Color(0xFF4C53A5),
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 18,
                              ),
                            ),
                          ],)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Bahan-bahan:..."
                          "-600 gram daging ayam,"
                          "-siung bawang putih, tumbuk sedikit kasar,"
                          "-sdt garam,"
                          "-sdt kaldu jamur,"
                          "-sdt ketumbar bubuk,",
                     textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF00796B),

                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Cara Membuat:...."
                            "Cuci bersih daging ayam. Potong jadi beberapa bagian,"
                            "Baluri daging ayam dengan bawang putih, garam, kaldu, dan ketumbar,"
                            "Ungkep selama kurang lebih 15 menit,"
                            "Panaskan minyak goreng dengan api sedang,"
                            "Goreng daging ayam dengan api kecil sampai matang. Angkat dan tiriskan.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF00796B),

                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text("Level;",style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFFF5722),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(
                              width: 10,),
                            Row(
                              children: [
                                for(int i=5; i < 10; i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ],
                                    ),
                                    child: Text(
                                      i.toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFAEEA00),),
                                    ),
                                  ),
                              ],)
                          ],)
                    ),

                  ],
                ),
              ),
            ),


          )

        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}