// country_selection_page.dart
import 'package:flutter/material.dart';

class CountrySelectionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countries = [
      'Argentina', 'Aruba', 'Austria', 'Azerbaijan', 'Bahrain',
      'Belgium', 'Brazil', 'Brunei', 'Bulgaria', 'Chile', 'English', 'Thailand'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select region', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.separated(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              countries[index],
              style: const TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.pop(context, countries[index]);
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ),
    );
  }
}
