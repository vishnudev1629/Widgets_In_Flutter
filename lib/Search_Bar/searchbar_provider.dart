import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: MaterialApp(
        home: SearchScreen(),
      ),
    );
  }
}

class SearchProvider extends ChangeNotifier {
  String _searchQuery = '';
  List<String> _items = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Pineapple',
    // Add more items here
  ];

  String get searchQuery => _searchQuery;

  List<String> get items => _items;

  void updateSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  List<String> getFilteredItems() {
    if (_searchQuery.isEmpty) {
      return _items;
    } else {
      return _items
          .where((item) => item.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Search with Provider'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                searchProvider.updateSearchQuery(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: Consumer<SearchProvider>(
              builder: (context, provider, _) {
                List<String> filteredItems = provider.getFilteredItems();

                return ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(filteredItems[index]),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
