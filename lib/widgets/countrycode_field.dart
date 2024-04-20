import 'package:flutter/material.dart';
class CountryDropdown extends StatefulWidget {
  final Function(String) onChanged;

  CountryDropdown({required this.onChanged});

  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String _selectedCountry = 'EE'; 

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedCountry,
      decoration: const InputDecoration(
        labelText: 'Country of National ID code',
      ),
      items: <String>['EE', 'LV', 'LT'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedCountry = newValue!;
        });
        widget.onChanged(_selectedCountry);
      },
    );
  }
}