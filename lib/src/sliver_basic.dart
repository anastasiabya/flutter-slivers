import 'package:flutter/material.dart';

class SliverBasicPage extends StatelessWidget {
  const SliverBasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.purple,
            pinned: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Slivers'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildListDelegate([
              Container(color: Colors.red[100]),
              Container(color: Colors.red[200]),
              Container(color: Colors.red[300]),
              Container(color: Colors.red[400]),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9)],
                  child: Text('orange $index'),
                );
              },
              childCount: 9,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9)],
                  child: Text('$index'),
                );
              },
              childCount: 30,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9)],
                  child: Text('$index'),
                );
              },
              childCount: 30,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.0,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red[100]),
              Container(color: Colors.red[200]),
              Container(color: Colors.red[300]),
              Container(color: Colors.red[400]),
              Container(color: Colors.red[500]),
              Container(color: Colors.red[600]),
            ],
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
