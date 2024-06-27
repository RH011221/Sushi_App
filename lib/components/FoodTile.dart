import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function ()? onTap;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.only(left:25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //images
        Image.asset(
          food.imagePath,
          height: 140,
        ),
          //text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize:20)
            ),
        
          //price+rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                    Text('\$'+ food.price, style:TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 18),
                    ),
      
                // Rating
                  Icon(Icons.star, color: Colors.yellow),
                  Text(food.rating, style: TextStyle(color: Colors.grey),),
              ],
            ),
          )
        ],
        ),
      ),
    );
  }
}
