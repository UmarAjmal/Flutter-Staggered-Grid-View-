import 'package:flutter/material.dart';
import 'portfolio_grid_screen.dart';  // Import PortfolioItem class

class ProjectDetailsScreen extends StatelessWidget {
  final PortfolioItem item;

  const ProjectDetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            item.imageUrl,
            height: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Project Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'This is the detailed view of ${item.title}. Here, you can describe the project in more detail, including the technologies used, client details, and the outcome of the project.',
            ),
          ),
        ],
      ),
    );
  }
}
