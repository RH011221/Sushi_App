import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

import '../theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: primaryColor,
    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 25),

      // shop name
          Text(
            "SUSHI MAN", 
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 28,
            color: Colors.white,
            ),
          ),
          const SizedBox(height: 25),

      // icon
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset('lib/images/sashimi.png'),
        ),
        const SizedBox(height: 25),

      //title
      Text(
          "THE TASTE OF JAPANESE FOOD",
            style: GoogleFonts.dmSerifDisplay(
            fontSize: 44,
            color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

      //subtitle
      Text(
            "Feel the taste of japanese food anywhere and anyplace",
            style: TextStyle(
              color: Colors.grey[300],
              height: 2,
            ),
          ),

          const SizedBox(height: 25),

      //get startd button
      MyButton(text: "Get Started",
      onTap: (){
        //go to menu pagesssss
        Navigator.pushNamed(context, '/menupage');
            },
          )
         ],
        ),
      ),
    );
  }

}