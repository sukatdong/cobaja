import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:nyobadulu/detail.dart';

class ListMakananPage extends StatefulWidget {
  final String category;

  ListMakananPage({required this.category});

  @override
  _ListMakananPageState createState() => _ListMakananPageState();
}

class _ListMakananPageState extends State<ListMakananPage> {
  List<String> foods = [];

  @override
  void initState() {
    super.initState();
    fetchFoods();
  }

  void fetchFoods() async {
    final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=${widget.category}'));
    final data = json.decode(response.body);
    setState(() {
      foods = List<String>.from(data['meals'].map((food) => food['strMeal']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman List Makanan'),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(foods[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMakananPage(food: foods[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
