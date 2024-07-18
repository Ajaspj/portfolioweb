import 'package:flutter/material.dart';
import 'package:portfolioweb/data/work.dart';
import 'package:portfolioweb/view/homescreen/sections/worksection/components/workcard.dart';
import 'package:portfolioweb/widgets.dart/subtitle.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Subtitle(text: 'Experience'),
        ListView.separated(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var item = workList[index];
            return WorkCard(item: item);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: workList.length,
        ),
      ],
    );
  }
}
