import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/constants/colorconstants.dart';
import 'package:portfolioweb/view/homescreen/responsive/responsive.dart';
import 'package:portfolioweb/view/homescreen/sections/profilesection/components/buttons.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isMobile(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, I\'m,',
          style: GoogleFonts.pattaya().copyWith(
            fontSize: 15,
            color: ColorConstants.primaryWhite,
          ),
        ),
        Text(
          'Ajas pj',
          style: GoogleFonts.alatsi().copyWith(
            fontSize: 30,
            color: ColorConstants.primaryWhite,
          ),
        ),
        Text(
          'Flutter Developer',
          style: GoogleFonts.aboreto().copyWith(
            fontSize: 25,
            color: Colors.white70,
          ),
          textAlign: isMobile(context) ? TextAlign.center : null,
        ),
        Text(
          'Developing and Deploying beautiful mobile application ',
          style: GoogleFonts.aboreto().copyWith(
            fontSize: 14,
            color: Colors.white54,
          ),
          textAlign: isMobile(context) ? TextAlign.center : TextAlign.start,
        ),
        const SocialMediaButtons()
      ],
    );
  }
}
