import 'package:flutter/material.dart';
class SearchbarDemo extends StatefulWidget {
  const SearchbarDemo({super.key});

  @override
  State<SearchbarDemo> createState() => _SearchbarDemoState();
}

class _SearchbarDemoState extends State<SearchbarDemo> {
  TextEditingController _searchController = TextEditingController();
  List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Pineapple',
    // Add more items here
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    filteredItems.addAll(items);
    super.initState();
  }

  void filterSearchResults(String query) {
    filteredItems.clear();
    if (query.isNotEmpty) {
      items.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredItems.add(item);
        }
      });
    } else {
      filteredItems.addAll(items);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

