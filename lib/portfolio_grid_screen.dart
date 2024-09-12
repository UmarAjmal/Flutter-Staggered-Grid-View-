import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'portfolio_card.dart';
import 'project_details_screen.dart';

class PortfolioGridScreen extends StatelessWidget {
  final List<PortfolioItem> portfolioItems = [
    PortfolioItem(imageUrl: 'https://via.placeholder.com/300x200', title: 'Project 1'),
    PortfolioItem(imageUrl: 'https://via.placeholder.com/300x400', title: 'Project 2'),
    PortfolioItem(imageUrl: 'https://via.placeholder.com/300x300', title: 'Project 3'),
    PortfolioItem(imageUrl: 'https://via.placeholder.com/300x250', title: 'Project 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: portfolioItems.length,
        itemBuilder: (BuildContext context, int index) => PortfolioCard(
          item: portfolioItems[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjectDetailsScreen(item: portfolioItems[index]),
              ),
            );
          },
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.5 : 1.5),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class PortfolioItem {
  final String imageUrl;
  final String title;

  PortfolioItem({required this.imageUrl, required this.title});
}
