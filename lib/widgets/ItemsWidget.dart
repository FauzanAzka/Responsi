import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
       childAspectRatio: 0.68,
      // it disable the scroll functionallity of gridview
      //then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                   padding: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     color: Color(0xFFAEEA00),
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Text("124210073", style: TextStyle(
                     fontSize: 14,
                       color: Colors.white, fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
                  Icon(Icons.favorite_border,
                      color: Colors.red,
                  ),

                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("images/$i.png",
                    height: 120,
                    width: 120,
                  ),
                )
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text("Food's",
                  style: TextStyle(fontSize: 18,color: Color(0xFFFF5722),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                  child: Text("The Best Food Menu", style: TextStyle(
                    fontSize: 12, color: Color(0xFF4A148C),
                  ),
                  ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "55k",
                        style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold,
                            color: Color(0xFFFF5722) ),
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Color(0xFFFF5722),
                  )
                ],
              ),
              ),
            ],
          ),
        )
      ],
    );
  }
}