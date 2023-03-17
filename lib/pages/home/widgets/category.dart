import 'package:flutter/material.dart';
import 'package:tigergamestore/pages/home/widgets/newest.dart';
import 'package:tigergamestore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Course'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategie'
    },
    {
      'icon': Icons.auto_stories,
      'color': const Color.fromARGB(255, 242, 113, 236),
      'title': 'Educatif'
    },
    {
      'icon': Icons.flash_on,
      'color': const Color.fromARGB(255, 242, 113, 113),
      'title': 'Action'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182f2),
      'title': 'Plus'
    },
    {
      'icon': Icons.music_note_outlined,
      'color': const Color(0xFFC27CFF),
      'title': 'Musique'
    },
    {
      'icon': Icons.movie_outlined,
      'color': const Color(0xFFFFB74D),
      'title': 'Cinéma'
    },
    {
      'icon': Icons.pets_outlined,
      'color': const Color(0xFF8BC34A),
      'title': 'Animaux'
    },
    {
      'icon': Icons.book_outlined,
      'color': const Color(0xFF4FC3F7),
      'title': 'Lecture'
    },
    {
      'icon': Icons.brush_outlined,
      'color': const Color(0xFFE57373),
      'title': 'Art'
    },
    {
      'icon': Icons.account_balance_outlined,
      'color': const Color(0xFF4DB6AC),
      'title': 'Finance'
    },
    {
      'icon': Icons.airplanemode_active_outlined,
      'color': const Color(0xFF9575CD),
      'title': 'Voyages'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Column(
                    children: [
                      const SizedBox(height: 25),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: categories[index]['color'] as Color),
                        child: Icon(
                          categories[index]['icon'] as IconData,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        categories[index]['title'] as String,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  )),
              separatorBuilder: ((context, index) => const SizedBox(width: 33)),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              'Jeux populaires',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              'Nouveaux Jeux',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
