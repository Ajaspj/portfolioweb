import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/constants/colorconstants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0).copyWith(bottom: 0),
      child: Center(
        child: Text(
          '',
          style: GoogleFonts.aladin(
            textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: ColorConstants.secondaryGreen.withOpacity(
                    0.5,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
