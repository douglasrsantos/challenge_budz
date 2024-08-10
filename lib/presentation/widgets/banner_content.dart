import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:challenge_budz/domain/entities/entities.dart';

class BannerContent extends StatelessWidget {
  final BannerEntity banner;

  const BannerContent({
    super.key,
    required this.banner,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: banner.imageUrl,
          memCacheHeight: 374,
          memCacheWidth: 972,
        ),
      ),
    );
  }
}
