// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class Loading {
  static Widget setLoading({Color? color}) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation(color ?? AppColors.highlightedTexts),
      ),
    );
  }
}
