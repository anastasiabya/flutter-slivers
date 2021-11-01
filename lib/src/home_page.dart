import 'package:flutter/material.dart';
import 'package:slivers/src/sliver_basic.dart';
import 'package:slivers/src/sliver_header.dart';
import 'package:slivers/src/sliver_with_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Text('Slivers'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Sliver basic'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SliverBasicPage())),
          ),
          ListTile(
            title: const Text('Sliver with image'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SliverWithImagePage())),
          ),
          ListTile(
            title: const Text('Sliver header'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomSliverHeader())),
          ),
        ],
      ),
    );
  }
}
