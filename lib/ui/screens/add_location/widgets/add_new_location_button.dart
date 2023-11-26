import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewLocationButton extends StatelessWidget {
  const AddNewLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onTap: () {
        showCountryPicker(
          context: context,
          onSelect: (Country country) {
            print('Select country: ${country.name}');
          },
          countryListTheme: CountryListThemeData(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            textStyle: const TextStyle(color: Colors.black),
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
            searchTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.zero,
        color: const Color(0x66AAA5A5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_outline,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                'Add new',
                style: GoogleFonts.poppins().copyWith(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
