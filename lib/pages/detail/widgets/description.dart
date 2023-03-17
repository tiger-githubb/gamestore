import 'package:flutter/material.dart';
import 'package:tigergamestore/models/game.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  final Game game;
  const DescriptionSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          ReadMoreText(
            game.description,
            trimLines: 2,
            colorClickableText: const Color(0xFF5F67EA),
            trimMode: TrimMode.Line,
            trimCollapsedText: 'plus',
            trimExpandedText: ' reduire',
            style: TextStyle(
              color: Colors.grey.withOpacity(0.7),
              fontSize: 17,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
