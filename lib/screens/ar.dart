import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({Key? key}) : super(key: key);

  @override
  State<ARScreen> createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late Object currentObject;
  List<String> objFiles = ['vr12.obj', 'vr2.obj', 'vr3.obj', 'vr10.obj'];

  @override
  void initState() {
    super.initState();
    loadObject(objFiles[0]);
  }

 void loadObject(String fileName) {
  setState(() {
    currentObject = Object(
      fileName: 'assets/vr/$fileName',
      isAsset: true,
      scale: Vector3(1.0, 1.0, 1.0),
    );
   // print(currentObject.);
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('3D Dress Viewer'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: objFiles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => loadObject(objFiles[index]),
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      objFiles[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Cube(
                interactive: true,
                onSceneCreated: (scene) {
                  scene.world.add(currentObject);
                scene.camera.zoom = 11;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}