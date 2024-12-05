import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:favourite_places/screens/places.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  background: const Color.fromARGB(255, 56, 49, 66),
);

final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Filter List by Category'),
//         ),
//         body: FilteredList(),
//       ),
//     );
//   }
// }

// class FilteredList extends StatefulWidget {
//   @override
//   _FilteredListState createState() => _FilteredListState();
// }

// class _FilteredListState extends State<FilteredList> {
//   // List of items with categories
//   List<Map<String, String>> items = [
//     {'name': 'Shirt', 'category': 'Cloths'},
//     {'name': 'Hammer', 'category': 'Tools'},
//     {'name': 'Necklace', 'category': 'Accessories'},
//     {'name': 'Jeans', 'category': 'Cloths'},
//     {'name': 'Screwdriver', 'category': 'Tools'},
//     {'name': 'Earrings', 'category': 'Accessories'},
//   ];

//   // Categories including "All"
//   List<String> categories = ['All', 'Cloths', 'Tools', 'Accessories'];

//   // Currently selected category
//   String selectedCategory = 'All';

//   // Function to filter the items by category
//   List<Map<String, String>> filterItemsByCategory(String category) {
//     if (category == 'All') {
//       return items;
//     }
//     return items.where((item) => item['category'] == category).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ToggleButtons(
//           children: categories.map((category) => Text(category)).toList(),
//           isSelected: categories
//               .map((category) => category == selectedCategory)
//               .toList(),
//           onPressed: (int index) {
//             setState(() {
//               // Update the selected category
//               selectedCategory = categories[index];
//             });
//           },
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: filterItemsByCategory(selectedCategory).length,
//             itemBuilder: (BuildContext context, int index) {
//               final filteredItems = filterItemsByCategory(selectedCategory);
//               return ListTile(
//                 title: Text(filteredItems[index]['name'] ?? ''),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
