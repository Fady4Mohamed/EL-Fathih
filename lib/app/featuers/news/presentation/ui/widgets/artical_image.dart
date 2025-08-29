

import 'package:flutter/material.dart';

class ArticalImage extends StatelessWidget {
  const ArticalImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          'https://images.unsplash.com/photo-1551632811-561732d1e306?w=800&h=400&fit=crop',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
