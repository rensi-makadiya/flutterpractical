import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      debugShowCheckedModeBanner: false,
      home: const ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  final List<String> items = const [
    'Apple',
    'Banana',
    'Cherry',
    'Mango',
    'Pineapple',
    'Orange',
    'Grapes',
    'Watermelon',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(items[index][0]),
              ),
              title: Text(items[index]),
              onTap: () {
                // Show simple dialog on tap
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Selected'),
                    content: Text('You selected ${items[index]}'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
