import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Estate {
  String id;
  String title;
  String description;
  double price;
  List<String> images;
  int bedrooms;
  int bathrooms;
  double rate;
  double area;
  Address location;
RxBool isFavorite;
  Estate({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.isFavorite,

    required this.rate,
    required this.images,
    required this.bedrooms,
    required this.bathrooms,
    required this.area,
    required this.location,
  });
}

class Address {
  double lat, lng;
  String address;
  Address({
    required this.address,
    required this.lat,
    required this.lng,
  });
}

List<String> image1 = [
  'https://photos.zillowstatic.com/fp/fe2a03d524c3251d89c1e8bd54e31a51-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/b95700b3766dde3c9cdd3cf328fb383a-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/5b239bccd2568411e1e35cbc9a618044-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/dd291576b3cb0b3ae92814956b457cea-cc_ft_768.webp'
];
List<String> image2 = [
  'https://photos.zillowstatic.com/fp/e86ffee48d2e819b170c73f9a059307c-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/48efe1448c0d1c184ba5c80b8222b664-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/78513a1bc884d530605170766e862ba1-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/d653fe5fd8be39960e444f5bff43947b-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/bad88450d71854657f564974c1e0f4ec-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/ef70ef4db6bc13d21b226e5522ffb165-cc_ft_768.webp'
];

List<String> image3 = [
  'https://photos.zillowstatic.com/fp/f74d90d82e666fae0ba6c61affe2a4c9-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/5fa3390241fd1e2c2f65c643546c21e2-cc_ft_768.webp'
];

List<String> image4 = [
  'https://photos.zillowstatic.com/fp/ed36fbc76211ba521638a86534787d74-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/3fc9419eba6c6751218b6586281e2f68-cc_ft_768.webp'
      'https://photos.zillowstatic.com/fp/527d0f7748f5331fe463ae0e04801f9c-cc_ft_768.webp',
];

List<String> image5 = [
  'https://photos.zillowstatic.com/fp/692d02d8a701e9f693d5daab88f47a09-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/cf890e0197145c21eba70fe5dd2e2230-cc_ft_768.webp'
      'https://photos.zillowstatic.com/fp/53d805650d8b5f32ca79220ef09826d0-cc_ft_768.webp'
      'https://photos.zillowstatic.com/fp/b4d810b9f26f143c9b160c943ae1ff6f-cc_ft_768.webp'
      'https://photos.zillowstatic.com/fp/25c5a3b7c5649b8aa938d56223907f62-cc_ft_768.webp'
];

List<String> image6 = [
  'https://photos.zillowstatic.com/fp/9ad812fb60723795f90c74af5c39853c-p_e.webp',
  'https://photos.zillowstatic.com/fp/390e81799e134d0db0f2dc86c5c7bf55-cc_ft_1536.webp',
  'https://photos.zillowstatic.com/fp/c811fece4f77b84fbcc116247ac25dd1-cc_ft_768.webp'
];

List<String> image7 = [
  'https://photos.zillowstatic.com/fp/06a88eb75f86c81a55071f8e03a9a627-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/ecdbc5460d285aae9363cc4b1c6c812a-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/1cc4c42725c8d54a7339b7a067656948-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/3d75d293165218335bb290812f59df3d-cc_ft_768.webp'
];

List<String> image8 = [
  'https://photos.zillowstatic.com/fp/114bff2266d16b31f26ed32d3d5930e0-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/549aecde73788f42bf528861f956657b-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/8a77552aa8e9296538d4880fa53ffa0c-cc_ft_768.webp'
];

List<String> image9 = [
  'https://photos.zillowstatic.com/fp/5eb5b5c53e1f33ca93ef5d2ed248e879-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/0c47a859a987431333c5d616e133c8ec-cc_ft_768.webp'
      'https://photos.zillowstatic.com/fp/d75a076d953fce34202081a4c1015d9d-cc_ft_768.webp',
];

List<String> image10 = [
  'https://photos.zillowstatic.com/fp/b50057922a1ae4df6c9a71504501129b-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/576326f73e05067a109fc9d633f5f958-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/981dd7dd0c12bb9ac26018ab26b072d0-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/34e4e385bb47411b91bb7d8ac2a7f197-cc_ft_768.webp'
];

List<String> image11 = [
  'https://photos.zillowstatic.com/fp/106f936351a23fd8047cd6053dbec844-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/bce05ba609748715baf45f78a6880ea7-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/9d780586202436d33d11bb08901d40ce-cc_ft_768.webp'
];

List<String> image12 = [
  'https://photos.zillowstatic.com/fp/4f586b029d2bb7976f11abe555e9fc5f-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/786a7500a5a6253a01129ca263196a43-cc_ft_768.webp'
];

List<String> image13 = [
  'https://photos.zillowstatic.com/fp/4e5cde6af4599c04e17b5b79774ee3ad-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/300a44c10441ffb1f3e5ef5fc550227e-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/2ca5158d9086856fe09065b3198a89e5-cc_ft_768.webp',
  'https://photos.zillowstatic.com/fp/d217a4fe9b815353e4855f6783501e29-cc_ft_768.webp',
];
