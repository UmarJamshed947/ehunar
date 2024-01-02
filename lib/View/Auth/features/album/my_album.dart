import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            color: Color(0xfffafad2),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffF7DB00), Color(0xffF7A100)],
                    stops: [0.0, 0.5],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  color: Color(0xffFafad2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Gallery",
                      style: GoogleFonts.nunito(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    CircularProfileAvatar(
                      "",
                      backgroundColor: Colors.cyan,
                      borderWidth: 1,
                      borderColor: Colors.deepPurpleAccent,
                      elevation: 20,
                      radius: 40,
                      cacheImage: true,
                      errorWidget: (context, url, error) {
                        return Icon(Icons.face, size: 20);
                      },
                      onTap: () {},
                      animateFromOldImageOnUrlChange: true,
                      placeHolder: (context, url) {
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    ),
                    Text(
                      "Umar",
                      style: GoogleFonts.nunito(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Tell your partner What this album means to you",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
