import 'package:flutter/material.dart';
import 'package:photographyportfolio/aboutus.dart';
import 'package:photographyportfolio/homepage.dart';
import 'package:photographyportfolio/projects.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  final List<String> contents = ["HOME", "PROJECTS", "ABOUT US"];
  final List<Widget> contentChildren = const [
    HomePage(),
    ProjectPage(),
    AboutUsPage()
  ];
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: contents.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            /// CHILDREN
            Positioned.fill(
              child: TabBarView(
                controller: _tabController,
                children: contentChildren,
              ),
            ),

            /// HEADER
            Wrap(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  color: Colors.transparent,
                  width: size.width > 1200
                      ? size.width * .7
                      : size.width > 800
                          ? size.width * .55
                          : size.width,
                  child: AnimatedAlign(
                    duration: const Duration(
                      milliseconds: 700,
                    ),
                    alignment: size.width <= 800
                        ? Alignment.center
                        : Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        text: 'JEFFERSON ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: 'ACABO',
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const Text(
                    //   "JA Photography",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 33,
                    //     fontWeight: FontWeight.w600,
                    //     fontFamily: "Schyler",
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: size.width > 1200
                      ? size.width - (size.width * .7)
                      : size.width > 800
                          ? size.width - (size.width * .55)
                          : size.width,
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    indicatorColor: Colors.amber,
                    controller: _tabController,
                    tabs: [
                      ...contents.map(
                        (e) => Tab(
                          text: e,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
