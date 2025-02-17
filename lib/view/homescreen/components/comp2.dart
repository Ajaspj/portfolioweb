import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/colorconstants.dart';
import 'package:portfolioweb/controller/homescreencontroller.dart';
import 'package:portfolioweb/view/homescreen/components/comp3.dart';
import 'package:provider/provider.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = context.read<HomeScreenController>();
    return Drawer(
      backgroundColor: ColorConstants.lightNavy,
      child: Builder(
        builder: (context) {
          return SafeArea(
            child: Column(
              children: [
                ...List.generate(
                  provider.navBarItems.length,
                  (index) => ListTile(
                    onTap: () {
                      provider.scrollToChild(provider.keys[index]);
                      Scaffold.of(context).closeEndDrawer();
                    },
                    title: Text(
                      provider.navBarItems[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: ColorConstants.secondaryGreen,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ResumeButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
