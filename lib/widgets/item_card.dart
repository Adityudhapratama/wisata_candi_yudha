
import 'package:flutter/material.dart';
import '../models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasikan variabel
  final Candi candi;

  const ItemCard({
    super.key,
    required this.candi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Property Card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(4),
      elevation: 1,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text pertama: Nama Candi
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 8,
            ),
            child: Text(
              candi.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Text kedua: Jenis Candi
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 8,
            ),
            child: Text(
              candi.type,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
