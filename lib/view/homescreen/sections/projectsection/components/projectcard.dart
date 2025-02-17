import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolioweb/constants/colorconstants.dart';
import 'package:portfolioweb/model/projectmodel.dart';
import 'package:portfolioweb/view/homescreen/sections/projectsection/components/projectcarousal.dart';
import 'package:portfolioweb/widgets.dart/elevatedcontainer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.item,
  });
  final ProjectModel item;
  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CarouselSlider.builder(
              itemCount: item.images.length,
              itemBuilder: (context, index, realIndex) {
                var carouselItem = item.images[index];
                return ProjectCarouselWidget(
                  item: carouselItem,
                  isOdd: index % 2 != 0,
                );
              },
              options: CarouselOptions(
                aspectRatio: 10 / 8,
                enlargeCenterPage: false,
                viewportFraction: 1,
                autoPlay: true,
              ),
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: ColorConstants.primaryWhite,
                  ),
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: item.skills
                    .map(
                      (e) => ProjectSkillsWidget(
                        text: e,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (item.gitLink != null)
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        launchUrl(Uri.parse(item.gitLink!));
                      },
                      icon: const Icon(EvaIcons.github_outline),
                      label: const Text('View on GitHub'),
                    ),
                  ),
                ),
              if (item.gitLink != null && item.liveLink != null)
                const SizedBox(width: 10),
              if (item.liveLink != null)
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        launchUrl(Uri.parse(item.liveLink!));
                      },
                      icon: const Icon(EvaIcons.globe_2_outline),
                      label: const Text('View Live Demo'),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectSkillsWidget extends StatelessWidget {
  const ProjectSkillsWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: ColorConstants.navyShadow,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ColorConstants.white60,
            ),
      ),
    );
  }
}
