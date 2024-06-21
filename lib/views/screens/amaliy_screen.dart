import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmaliyScreen extends StatelessWidget {
  const AmaliyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text(
              "Order Details",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            actions: const [
              Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
              )
            ],
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://media.istockphoto.com/id/906808234/photo/handsome-man.jpg?s=612x612&w=0&k=20&c=Ec8IY-ETslaS56vmO77BJyEOpPM1hzJlLbs6xeKRoAc=",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "Popular",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text("Grid item $index"),
              );
            }, childCount: 20),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                mainAxisExtent: 200,
                crossAxisSpacing: 10,
                childAspectRatio: 4),
          ),
        ],
      ),
    );
  }
}
