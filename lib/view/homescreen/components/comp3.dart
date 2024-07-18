import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/stringconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        launchUrl(Uri.parse(resumeLink));
      },
      child: const Text('My Resume'),
    );
  }
}
