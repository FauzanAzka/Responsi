import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFFFF5722),
          ),
          Padding(padding:
          EdgeInsets.only(left: 20),
            // Edgeinsets.only
            child: Text("124210073_FauzanAzka", style: TextStyle(fontSize: 23,
              fontWeight: FontWeight.bold, color: Color(0xFFFF5722),
            ),
            ),
          ),
          Spacer(),
          Badge(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color(0xFFFF5722),
                ),

              )
          ),
        ],
      ),
    );

  }
}