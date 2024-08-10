// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: 'HomeStoreBase.hasError'))
      .value;
  Computed<bool>? _$hasSuccessComputed;

  @override
  bool get hasSuccess =>
      (_$hasSuccessComputed ??= Computed<bool>(() => super.hasSuccess,
              name: 'HomeStoreBase.hasSuccess'))
          .value;

  late final _$infoErrorMessageAtom =
      Atom(name: 'HomeStoreBase.infoErrorMessage', context: context);

  @override
  String? get infoErrorMessage {
    _$infoErrorMessageAtom.reportRead();
    return super.infoErrorMessage;
  }

  @override
  set infoErrorMessage(String? value) {
    _$infoErrorMessageAtom.reportWrite(value, super.infoErrorMessage, () {
      super.infoErrorMessage = value;
    });
  }

  late final _$infoSuccessMessageAtom =
      Atom(name: 'HomeStoreBase.infoSuccessMessage', context: context);

  @override
  String? get infoSuccessMessage {
    _$infoSuccessMessageAtom.reportRead();
    return super.infoSuccessMessage;
  }

  @override
  set infoSuccessMessage(String? value) {
    _$infoSuccessMessageAtom.reportWrite(value, super.infoSuccessMessage, () {
      super.infoSuccessMessage = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomeStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$articlesAtom =
      Atom(name: 'HomeStoreBase.articles', context: context);

  @override
  List<ArticleEntity>? get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(List<ArticleEntity>? value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  late final _$categoriesAtom =
      Atom(name: 'HomeStoreBase.categories', context: context);

  @override
  List<CategoryEntity>? get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<CategoryEntity>? value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$bannersAtom =
      Atom(name: 'HomeStoreBase.banners', context: context);

  @override
  List<BannerEntity>? get banners {
    _$bannersAtom.reportRead();
    return super.banners;
  }

  @override
  set banners(List<BannerEntity>? value) {
    _$bannersAtom.reportWrite(value, super.banners, () {
      super.banners = value;
    });
  }

  late final _$singleBannerAtom =
      Atom(name: 'HomeStoreBase.singleBanner', context: context);

  @override
  SingleBannerEntity? get singleBanner {
    _$singleBannerAtom.reportRead();
    return super.singleBanner;
  }

  @override
  set singleBanner(SingleBannerEntity? value) {
    _$singleBannerAtom.reportWrite(value, super.singleBanner, () {
      super.singleBanner = value;
    });
  }

  late final _$bannerIndicatorIndexAtom =
      Atom(name: 'HomeStoreBase.bannerIndicatorIndex', context: context);

  @override
  int get bannerIndicatorIndex {
    _$bannerIndicatorIndexAtom.reportRead();
    return super.bannerIndicatorIndex;
  }

  @override
  set bannerIndicatorIndex(int value) {
    _$bannerIndicatorIndexAtom.reportWrite(value, super.bannerIndicatorIndex,
        () {
      super.bannerIndicatorIndex = value;
    });
  }

  late final _$getArticlesAsyncAction =
      AsyncAction('HomeStoreBase.getArticles', context: context);

  @override
  Future<void> getArticles() {
    return _$getArticlesAsyncAction.run(() => super.getArticles());
  }

  late final _$getCategoriesAsyncAction =
      AsyncAction('HomeStoreBase.getCategories', context: context);

  @override
  Future<void> getCategories() {
    return _$getCategoriesAsyncAction.run(() => super.getCategories());
  }

  late final _$getBannersAsyncAction =
      AsyncAction('HomeStoreBase.getBanners', context: context);

  @override
  Future<void> getBanners() {
    return _$getBannersAsyncAction.run(() => super.getBanners());
  }

  late final _$getSingleBannerAsyncAction =
      AsyncAction('HomeStoreBase.getSingleBanner', context: context);

  @override
  Future<void> getSingleBanner() {
    return _$getSingleBannerAsyncAction.run(() => super.getSingleBanner());
  }

  @override
  String toString() {
    return '''
infoErrorMessage: ${infoErrorMessage},
infoSuccessMessage: ${infoSuccessMessage},
isLoading: ${isLoading},
articles: ${articles},
categories: ${categories},
banners: ${banners},
singleBanner: ${singleBanner},
bannerIndicatorIndex: ${bannerIndicatorIndex},
hasError: ${hasError},
hasSuccess: ${hasSuccess}
    ''';
  }
}
