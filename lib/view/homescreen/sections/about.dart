import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/colorconstants.dart';
import 'package:portfolioweb/constants/stringconstants.dart';
import 'package:portfolioweb/widgets.dart/subtitle.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Subtitle(text: 'About'),
        const SizedBox(height: 10),
        Text(
          aboutMe,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: ColorConstants.white70,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
