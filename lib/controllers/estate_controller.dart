import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';

import '../models/estate.dart';

class EstateController extends GetxController {
  List<Estate> estateList = [
    Estate(
      id: "1",
      title: "Cozy Apartment",
      description:
          "Our apartments in Evans, Colorado are setting the standard for luxury living in every way starting with brand-new smart home features, premium finishing touches, upscale community spaces, and a remarkably convenient location near west Greeley. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image1,
      bedrooms: 2,
      bathrooms: 1,
      area: 800.0,
      location: Address(
        address: "123 Main St, Cityville",
        lat: 34.0522,
        lng: -118.2437,
      ),
    ),
    Estate(
      id: "2",
      title: "Luxurious Penthouse",
      description:
          "S'PARK Apartments is a unique community that's designed to be experienced, not just lived in.Set in the new S'PARK neighborhood in Sutherland Park, S'PARK offers Boulder's newest and highest-quality rental homes all built within a setting that connects you to the incredible people and places that surround it",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image2,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "456 High St, Townsville",
        lat: 40.7128,
        lng: -74.0060,
      ),
    ),
    Estate(
      id: "3",
      title: "Luxurious Penthouse",
      description:
          "Galley Manor is centrally located off of Galley Rd. just minutes from downtown Colorado Springs and is close to shopping, dining and entertainment. Check out the Garden of the Gods, Pulpit Rock, Palmer Park hiking trails which are just minutes away. Easy commutes to I-25, Peterson Air Force Base, Memorial Hospital & Memorial Park.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image3,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "456 High St, Townsville",
        lat: 34.0522,
        lng: -118.2437,
      ),
    ),
    Estate(
      id: "4",
      title: "Dayton Station Luxury",
      description:
          "Our living spaces are thoughtfully designed with the kind of premium materials and finishes you can't find anywhere else. Bedrooms are complete with en suite luxury bathrooms and spacious closets, kitchens are ready for gourmet entertaining with stainless steel appliances and quartz countertops, and sustainable light and air systems are in place.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image4,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "456 High St, Townsville",
        lat: 51.5074,
        lng: -0.1278,
      ),
    ),
    Estate(
      id: "5",
      title: "Dayton Station Luxury",
      description:
          "Our living spaces are thoughtfully designed with the kind of premium materials and finishes you can't find anywhere else. Bedrooms are complete with en suite luxury bathrooms and spacious closets, kitchens are ready for gourmet entertaining with stainless steel appliances and quartz countertops, and sustainable light and air systems are in place.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image5,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "3899 S Dallas St, Aurora, CO 80014",
        lat: 48.8566,
        lng: 2.3522,
      ),
    ),
    Estate(
      id: "6",
      title: "The Legacy at Highlands Ranch",
      description:
          "The Legacy at Highlands Ranch Apartments is just minutes away from everything! Residents enjoy unique one and two bedroom apartment homes, in addition to exclusive amenities such as an outdoor grilling area, fitness center, and business center",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image6,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "355 W Burgundy St, Highlands Ranch, CO 80129",
        lat: -33.8688,
        lng: 151.2093,
      ),
    ),
    Estate(
      id: "7",
      title: "Turntable Studios",
      description:
          "Each studio has been redesigned with clever built-in storage, a juliet balcony, and brand new kitchenettes. Also available are a limited number of 1-br and 2-br penthouse apartments. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image7,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "1975 Mile High Stadium Cir, Denver, CO 80204",
        lat: 35.6895,
        lng: 139.6917,
      ),
    ),
    Estate(
      id: "8",
      title: "39 North",
      description:
          "Each studio has been redesigned with clever built-in storage, a juliet balcony, and brand new kitchenettes. Also available are a limited number of 1-br and 2-br penthouse apartments. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image8,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "10225 E Girard Ave, Denver, CO 80231",
        lat: 37.7749,
        lng: -122.4194,
      ),
    ),
    Estate(
      id: "9",
      title: "IMT at RidgeGate",
      description:
          " Our newly-renovated one- and two-bedroom apartment homes feature two-story buildings, beautiful wood-like flooring, and private patios or balconies. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image9,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "10225 E Girard Ave, Denver, CO 80231",
        lat: 41.9028,
        lng: 12.4964,
      ),
    ),
    Estate(
      id: "10",
      title: "The Phenix At Infinity Park",
      description:
          "Come experience the style and comfort of a completely remodeled building perfectly situated 3 minutes from Cherry Creek and close to both Downtown and the DTC. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image10,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "4701 E Mississippi Ave, Glendale, CO 80246",
        lat: -22.9068,
        lng: -43.1729,
      ),
    ),
     Estate(
      id: "11",
      title: "Chroma Apartments",
      description:
          "Illuminate your life at Chroma Apartments in Highlands Ranch, where modern spaces complement a full spectrum of amenities for active lifestyles. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image11,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "1360 Martha St, Highlands Ranch, CO 80129",
        lat: -22.9068,
        lng: -49.1729,
      ),
    ),
      Estate(
      id: "12",
      title: "AMLI Broadway Park",
      description:
          " Near the Design District, University of Denver and more, residents will enjoy a premium location near the area's main drag, along with high-end features available right at home. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image12,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "357 S Bannock St, Denver, CO 80223",
        lat: -29.9068,
        lng: -43.1729,
      ),
    ),
       Estate(
      id: "13",
      title: "Dayton Station",
      description:
          " Welcome to Dayton Station Luxury Townhomes, a premier residential community in the booming economical surrounds of DTC. ",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image13,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "3899 S Dallas St, Aurora, CO 80014",
        lat: -32.9068,
        lng: -43.1729,
      ),
    ),

    Estate(
      id: "14",
      title: "Sterling Boulder Apartments",
      description:
          "Looking for a stylish pad with incredible amenities that has the convenience of being close to campus AND won't break the bank? Sterling's got you.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image14,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "2985 E Aurora Ave, Boulder, CO 80303",
        lat: -22.9068,
        lng: -63.1729,
      ),
    ),

    Estate(
      id: "14",
      title: "Sterling Boulder Apartments",
      description:
          "Looking for a stylish pad with incredible amenities that has the convenience of being close to campus AND won't break the bank? Sterling's got you.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image14,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "2985 E Aurora Ave, Boulder, CO 80303",
        lat: -42.9068,
        lng: -13.1729,
      ),
    ),
     Estate(
      id: "15",
      title: "Gardens at Cherry Creek",
      description:
          "Our residents enjoy unparalleled access to some of the best upscale shopping and delicious dining that Denver has to offer and are easy walking distance from the vibrant cocktail bars and eclectic boutiques of Cherry Creek.",
      price: Random().nextInt(1000) + 300,
      rate: Random().nextDouble() * 5,
      isFavorite: false.obs,
      images: image15,
      bedrooms: 3,
      bathrooms: 2,
      area: 1500.0,
      location: Address(
        address: "225 S Harrison St, Denver, CO 80209",
        lat: -82.9068,
        lng: -13.1729,
      ),
    ),
  ];

  makeFavorite(int index, bool value) {
    estateList[index].isFavorite.value = value;
  }
}
