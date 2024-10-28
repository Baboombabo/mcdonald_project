// region_detail.dart
import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/country_select_detail.dart';
import 'package:mcdonald_project/screens/navbar_screen.dart';

class SelectRegionDetail extends StatefulWidget {
  const SelectRegionDetail({super.key});

  @override
  _SelectRegionDetailState createState() => _SelectRegionDetailState();
}

class _SelectRegionDetailState extends State<SelectRegionDetail> {
  String _selectedCountry = 'Thailand';
  String _selectedLanguage = 'English';

  Future<void> _navigateToCountrySelection() async {
    final selectedCountry = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CountrySelectionDetail()),
    );

    if (selectedCountry != null) {
      setState(() {
        _selectedCountry = selectedCountry;
      });
    }
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('ภาษาไทย'),
                  onTap: () {
                    setState(() {
                      _selectedLanguage = 'ภาษาไทย';
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('English'),
                  onTap: () {
                    setState(() {
                      _selectedLanguage = 'English';
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/globe.png', // Replace with your globe image path
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select your region',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.grey),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/country.png', // Replace with the flag image path
                  width: 30,
                ),
                title: Text(_selectedCountry, style: const TextStyle(fontSize: 18)),
                subtitle: const Text('Country'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: _navigateToCountrySelection,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Language',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.grey),
              ),
              child: ListTile(
                leading: const Icon(Icons.language, color: Colors.black),
                title: Text(
                  _selectedLanguage,
                  style: const TextStyle(fontSize: 18),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: _showLanguageDialog,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const NavBarScreen()),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
