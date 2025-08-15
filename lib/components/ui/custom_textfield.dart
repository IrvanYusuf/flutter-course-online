import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController fieldController;
  final IconData? icon;
  final String? placeholder;
  const CustomTextfield({
    super.key,
    required this.fieldController,
    this.icon = Icons.search,
    this.placeholder = "Cari...",
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: fieldController,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.grey[300], // Ubah warna sesuai kebutuhan
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none, // Menghilangkan border
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 16.0,
        ),
      ),
      onChanged: (value) {
        // Anda bisa menambahkan logika filter di sini
        // Contoh: memfilter daftar _recommendationsSearch
      },
    );
  }
}
