import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/colorconstants.dart';
import 'package:portfolioweb/controller/homescreencontroller.dart';
import 'package:portfolioweb/view/homescreen/components/comp1.dart';
import 'package:portfolioweb/view/homescreen/components/comp2.dart';
import 'package:portfolioweb/view/homescreen/components/comp3.dart';
import 'package:portfolioweb/view/homescreen/responsive/responsive.dart';
import 'package:portfolioweb/view/homescreen/sections/about.dart';
import 'package:portfolioweb/view/homescreen/sections/contact.dart';
import 'package:portfolioweb/view/homescreen/sections/footer.dart';
import 'package:portfolioweb/view/homescreen/sections/profilesection/profilesection.dart';
import 'package:portfolioweb/view/homescreen/sections/projectsection/projectsection.dart';
import 'package:portfolioweb/view/homescreen/sections/skills.dart';
import 'package:portfolioweb/view/homescreen/sections/worksection/worksection.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionSpacing = 25;
    var provider = context.read<HomeScreenController>();
    return DefaultTabController(
      length: provider.keys.length,
      child: Scaffold(
        key: provider.scaffoldKey,
        endDrawer: isbelow750(context) ? const HomeScreenDrawer() : null,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Ajas pj'),
          backgroundColor: Colors.transparent,
          actions: isbelow750(context) ? _mobileNav() : _desktopNav(provider),
          flexibleSpace: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: ColorConstants.navy.withOpacity(0.7),
              ),
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            controller: context.read<HomeScreenController>().scrollController,
            padding: const EdgeInsets.all(15).copyWith(
              top: 50,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(const Size.fromWidth(1000)),
                child: Column(
                  children: [
                    ProfileSection(key: provider.keys[0]),
                    const SizedBox(height: sectionSpacing),
                    AboutSection(key: provider.keys[1]),
                    const SizedBox(height: sectionSpacing),
                    const SkillsSection(),
                    const SizedBox(height: sectionSpacing),
                    WorkSection(key: provider.keys[2]),
                    const SizedBox(height: sectionSpacing),
                    ProjectsSection(key: provider.keys[3]),
                    const SizedBox(height: sectionSpacing),
                    ContactSection(key: provider.keys[4]),
                    const SizedBox(height: sectionSpacing),
                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: const HomeScreenBackToTopFloatingButton(),
      ),
    );
  }

  List<Widget> _desktopNav(HomeScreenController provider) {
    return [
      Builder(
        builder: (context) {
          provider.tabContext = context;
          return TabBar(
            labelColor: ColorConstants.secondaryGreen,
            unselectedLabelColor:
                ColorConstants.secondaryGreen.withOpacity(0.7),
            indicatorPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            indicatorColor: ColorConstants.secondaryGreen,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            dividerHeight: 0,
            overlayColor: MaterialStatePropertyAll(
              ColorConstants.secondaryGreen.withOpacity(0.15),
            ),
            splashBorderRadius: BorderRadius.circular(10),
            tabAlignment: TabAlignment.start,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: List.generate(
              provider.navBarItems.length,
              (index) => Tab(
                text: provider.navBarItems[index],
              ),
            ),
            onTap: (int index) => provider.scrollToChild(provider.keys[index]),
          );
        },
      ),
      const SizedBox(width: 5),
      const ResumeButton(),
      const SizedBox(width: 10),
    ];
  }

  List<Widget> _mobileNav() {
    return [
      Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: Transform.flip(
              flipX: true,
              child: const Icon(Icons.sort),
            ),
          );
        },
      ),
    ];
  }
}
