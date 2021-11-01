import 'package:flutter/material.dart';

class SliverWithImagePage extends StatelessWidget {
  const SliverWithImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.brown.shade900,
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Lion King',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset('assets/lion.png'),
            ),
          ),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Text _buildContent() {
    return const Text(
      'The majestic Lion King Mufasa gives birth to an heir named Simba. Already as a child, an inquisitive baby falls victim to the intrigues of his envious uncle Scar, who dreams of power. Simba learns the grief of loss, betrayal and exile, but eventually finds faithful friends and finds a loved one. Tempered by trials, he wins his rightful place in the "Circle of Life" in a difficult struggle, realizing what it means to be a real King.',
      style: TextStyle(fontSize: 20),
    );
  }
}
