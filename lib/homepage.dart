import 'package:flutter/material.dart';

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
            SizedBox(
              width: w,
              height: h,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1556103255-4443dbae8e5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGhvdG9ncmFwaGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                      // https://dvyvvujm9h0uq.cloudfront.net/com/articles/1543483387-reinhart-julian-1145947-unsplash.jpg
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(.7),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WELCOME TO",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * (w <= 800 ? .03 : .015),
                                height: 1,
                              ),
                            ),
                            Text(
                              "JA Photography",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Schyler",
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
