import 'package:flutter/material.dart';
import 'package:level_map_example/LevelMapSDK/src/level_map.dart';
import 'package:level_map_example/LevelMapSDK/src/model/image_params.dart';
import 'package:level_map_example/LevelMapSDK/src/model/level_map_params.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LevelMapPage(),
    );
  }
}


const Color kPrimary = Color(0xffDE7FC4);
class LevelMapPage extends StatefulWidget {
  @override
  _LevelMapPageState createState() => _LevelMapPageState();
}

class _LevelMapPageState extends State<LevelMapPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LevelMap(
          backgroundColor:kPrimary ,
          levelMapParams: LevelMapParams(
            levelCount: 100,
            currentLevel: 2.5,
            studentLevelList: [],
            pathColor: Colors.amber,
            showPathShadow: false,
            currentLevelImage: ImageParams(
              path: "assets/images/current_black.png",
              size: Size(40, 47),
            ),
            lockedLevelImage: ImageParams(
              path: "assets/images/LevelBackground2.png",
              size: Size(50, 60),
            ),
            completedLevelImage: ImageParams(
              path: "assets/images/completed_black.png",
              size: Size(40, 42),
            ),
            startLevelImage: ImageParams(
              path: "assets/images/Boy Study.png",
              size: Size(60, 60),
            ),
            pathEndImage: ImageParams(
              path: "assets/images/Boy Graduation.png",
              size: Size(60, 60),
            ),
            bgImagesToBePaintedRandomly: [
              // ImageParams(path: "assets/images/Energy equivalency.png", size: Size(80, 80), repeatCountPerLevel: 0.5),
              // ImageParams(path: "assets/images/Astronomy.png", size: Size(80, 80), repeatCountPerLevel: 0.25),
              // ImageParams(path: "assets/images/Atom.png", size: Size(80, 80), repeatCountPerLevel: 0.25),
              // ImageParams(path: "assets/images/Certificate.png", size: Size(80, 80), repeatCountPerLevel: 0.25),
            ],
          ),
        ),
      ),
    );
  }
}
