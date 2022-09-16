import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (_, c) {
        final double w = c.maxWidth;
        final double h = c.maxHeight;
        return SizedBox(
            child: ListView(
          children: [
            Container(
              width: w,
              height: h,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      "https://dvyvvujm9h0uq.cloudfront.net/com/articles/1543483387-reinhart-julian-1145947-unsplash.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(.6),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WELCOME TO",
                              style: TextStyle(
                                color: Colors.white,
                                // fontFamily: "Schyler",
                                // fontWeight: FontWeight.w600,
                                // fontWeight: FontWeight.bold,
                                fontSize: w * (w <= 800 ? .03 : .015),
                                height: 1,
                              ),
                            ),
                            Text(
                              "JA Photography",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Schyler",
                                // fontWeight: FontWeight.w600,
                                fontSize: w * .15,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
      },
    );
  }
}
