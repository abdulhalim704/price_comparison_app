import '../gen/assets.gen.dart';

class DummyCategoryData {
  String? id;
  String? name;
  DummyCategoryData({required this.id, required this.name});
}

class DummySearchResult {
  String? id;
  String? productImage;
  String? title;
  String? productSubTitle;

  DummySearchResult(
      {this.id, this.productImage, this.productSubTitle, this.title});
}

List<DummyCategoryData> dummyCetegoryData = [
  DummyCategoryData(id: '1', name: 'All'),
  DummyCategoryData(id: '2', name: 'Nike'),
  DummyCategoryData(id: '3', name: 'Adidas'),
  DummyCategoryData(id: '4', name: 'Yeezy'),
  DummyCategoryData(id: '5', name: 'New Balance'),
  DummyCategoryData(id: '6', name: 'Trainer'),
  DummyCategoryData(id: '7', name: 'Puma'),
  DummyCategoryData(id: '8', name: 'Reebok'),
];

List<DummySearchResult> searchResult = [
  DummySearchResult(
      id: '1',
      productImage: Assets.images.shoes.path,
      title: 'Nike Air Jordan Low',
      productSubTitle: 'Travis Scott'),
  DummySearchResult(
      id: '2',
      productImage: Assets.images.blueShoes.path,
      title: 'Nike Dunk Low ',
      productSubTitle: 'University Blue'),
  DummySearchResult(
      id: '3',
      productImage: Assets.images.retroShoes.path,
      title: 'Nike SB Dunk Low Brazil ',
      productSubTitle: 'Retro'),
  DummySearchResult(
      id: '4',
      productImage: Assets.images.whiteMidShoes.path,
      title: 'Nike Dunk Low Summit',
      productSubTitle: 'White Mid'),
  DummySearchResult(
      id: '5',
      productImage: Assets.images.traviesScotShoes.path,
      title: 'Nike Air Jordan Low ',
      productSubTitle: 'Travis Scott'),
  DummySearchResult(
      id: '6',
      productImage: Assets.images.retroShoes.path,
      title: 'Nike SB Dunk Low Brazil',
      productSubTitle: 'Retro'),
  DummySearchResult(
      id: '7',
      productImage: Assets.images.blueShoes.path,
      title: 'Nike Dunk Low',
      productSubTitle: 'University Blue'),
  DummySearchResult(
      id: '8',
      productImage: Assets.images.shoes.path,
      title: 'Nike Air Jordan Low',
      productSubTitle: 'Travis Scott'),
  DummySearchResult(
      id: '9',
      productImage: Assets.images.whiteMidShoes.path,
      title: 'Nike Air Jordan Low',
      productSubTitle: 'Travis Scott'),
  DummySearchResult(
      id: '10',
      productImage: Assets.images.retroShoes.path,
      title: 'Nike Dunk Low Summit',
      productSubTitle: 'White Mid'),
];
