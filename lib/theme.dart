import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color cardColor = const Color(0xffF6F8FA);
Color backgroundColor = const Color(0xffFFFFFF);
Color primaryColor = const Color(0xff35325E);
Color secondaryColor = const Color(0xff90909E);
Color blueColor = Color.fromARGB(255, 92, 185, 221);
Color greenColor = Color.fromARGB(255, 0, 255, 0);

const double basePadding = 4.0;
const double safePadding = 16.0;

TextStyle boldTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: primaryColor,
);

TextStyle regularTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: primaryColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: secondaryColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: Colors.white,
);

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Color(0xff57549E),
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
