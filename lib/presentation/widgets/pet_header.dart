import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:challenge_budz/core/ui/ui.dart';
import 'package:challenge_budz/domain/entities/pet_entity.dart';

class PetHeader extends StatelessWidget {
  final PetEntity pet;

  const PetHeader({
    super.key,
    required this.pet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: pet.photoUrl,
                fit: BoxFit.fill,
                memCacheHeight: 220,
                memCacheWidth: 220,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    Text(
                      pet.name,
                      style: AppFonts.largeTitle,
                    ),
                    Icon(
                      pet.gender == 'male' ? Icons.male : Icons.female,
                      size: 24,
                      color: Colors.cyan,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 24,
                      color: AppColors.highlightedTexts,
                    ),
                  ],
                ),
              ),
              Text(
                pet.breed,
                style: AppFonts.subtitle,
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            iconSize: 24,
            icon: Icon(
              Icons.edit_outlined,
              color: AppColors.highlightedTexts,
            ),
          ),
        ],
      ),
    );
  }
}
