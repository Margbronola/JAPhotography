import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (_, c) {
        final double w = c.maxWidth;
        final double h = c.maxHeight;
        return Container(
          color: Colors.black87,
          alignment: Alignment.center,
          child: ListView(
            children: [
              Container(
                width: w,
                height: h * .7,
                color: Colors.grey.shade800,
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: w * .55,
                  height: h * .47,
                  color: Colors.white,
                ),
              ),
              Container(
                width: w,
                height: h * .8,
                color: Colors.grey.shade300,
              ),
            ],
          ),
        );
      },
    );
  }
}
