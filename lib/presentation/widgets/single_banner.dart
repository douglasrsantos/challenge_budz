import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SingleBanner extends StatelessWidget {
  final String singleBannerUrl;

  const SingleBanner({
    super.key,
    required this.singleBannerUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: SizedBox(
        width: double.maxFinite,
        height: 136,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: singleBannerUrl,
            memCacheWidth: 992,
            memCacheHeight: 374,
          ),
        ),
      ),
    );
  }
}
