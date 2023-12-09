import 'package:akhirmobile/widgets/CategoriesWidget.dart';
import 'package:akhirmobile/widgets/HomeAppBar.dart';
import 'package:akhirmobile/widgets/ItemsWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // temporary height
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFFF5722),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [

              // Search widget
            Container(margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
              ),
                child: Row(

                  children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here...",
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Color(0xFFFF5722),
                  ),
                ],),
              ),
            // Categories
            Container(
               alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,),
      child: Text("Categories",style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold,
        color: Color(0xFFF1F8E9)),
      ),
            ),

            // Categories Widget
            CategoriesWidget(),

            // items
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text("Best Food's for you", style:
              TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF1F8E9),
              ),)
            ),
              //Items Widget
              ItemsWidget(),
          ],
          ),
        ),
      ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Color(0xFFFF5722),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
        ),
          Icon(
           Icons.favorite,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),



    );
  }
}