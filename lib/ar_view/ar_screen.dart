import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'package:vector_math/vector_math_64.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({super.key});

  @override
  State<ARScreen> createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  void onARViewCreated(
    ARSessionManager sessionManager,
    ARObjectManager objectManager,
    ARAnchorManager anchorManager,
    ARLocationManager locationManager,
  ) {
    arSessionManager = sessionManager;
    arObjectManager = objectManager;

    arSessionManager.onInitialize(
      showFeaturePoints: false,
      showPlanes: true,
      planeDetectionConfig: PlaneDetectionConfig.horizontal,
    );

    arObjectManager.onInitialize();

    _addObject();
  }

  Future<void> _addObject() async {
    final node = ARNode(
      type: NodeType.localGLTF2,
      uri: "assets/cube.gltf",
      scale: Vector3(0.2, 0.2, 0.2),
      position: Vector3(0, 0, -1),
    );

    await arObjectManager.addNode(node);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello World AR")),
      body: ARView(
        onARViewCreated: onARViewCreated,
      ),
    );
  }
}