// To parse this JSON data, do
//
//     final estate = estateFromJson(jsonString);

import 'dart:convert';

Estate estateFromJson(String str) => Estate.fromJson(json.decode(str));

String estateToJson(Estate data) => json.encode(data.toJson());

class Estate {
  Country country;
  int resultCount;
  double longitude;
  AreaName areaName;
  List<Listing> listing;
  String street;
  AreaName town;
  double latitude;
  County county;
  BoundingBox boundingBox;
  String postcode;

  Estate({
    required this.country,
    required this.resultCount,
    required this.longitude,
    required this.areaName,
    required this.listing,
    required this.street,
    required this.town,
    required this.latitude,
    required this.county,
    required this.boundingBox,
    required this.postcode,
  });

  factory Estate.fromJson(Map<String, dynamic> json) => Estate(
        country: countryValues.map[json["country"]]!,
        resultCount: json["result_count"],
        longitude: json["longitude"]?.toDouble(),
        areaName: areaNameValues.map[json["area_name"]]!,
        listing:
            List<Listing>.from(json["listing"].map((x) => Listing.fromJson(x))),
        street: json["street"],
        town: areaNameValues.map[json["town"]]!,
        latitude: json["latitude"]?.toDouble(),
        county: countyValues.map[json["county"]]!,
        boundingBox: BoundingBox.fromJson(json["bounding_box"]),
        postcode: json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "country": countryValues.reverse[country],
        "result_count": resultCount,
        "longitude": longitude,
        "area_name": areaNameValues.reverse[areaName],
        "listing": List<dynamic>.from(listing.map((x) => x.toJson())),
        "street": street,
        "town": areaNameValues.reverse[town],
        "latitude": latitude,
        "county": countyValues.reverse[county],
        "bounding_box": boundingBox.toJson(),
        "postcode": postcode,
      };
}

enum AreaName { OXFORD }

final areaNameValues = EnumValues({"Oxford": AreaName.OXFORD});

class BoundingBox {
  String longitudeMin;
  String latitudeMin;
  String longitudeMax;
  String latitudeMax;

  BoundingBox({
    required this.longitudeMin,
    required this.latitudeMin,
    required this.longitudeMax,
    required this.latitudeMax,
  });

  factory BoundingBox.fromJson(Map<String, dynamic> json) => BoundingBox(
        longitudeMin: json["longitude_min"],
        latitudeMin: json["latitude_min"],
        longitudeMax: json["longitude_max"],
        latitudeMax: json["latitude_max"],
      );

  Map<String, dynamic> toJson() => {
        "longitude_min": longitudeMin,
        "latitude_min": latitudeMin,
        "longitude_max": longitudeMax,
        "latitude_max": latitudeMax,
      };
}

enum Country { ENGLAND }

final countryValues = EnumValues({"England": Country.ENGLAND});

enum County { OXFORDSHIRE }

final countyValues = EnumValues({"Oxfordshire": County.OXFORDSHIRE});

class Listing {
  RentalPrices rentalPrices;
  CountryCode countryCode;
  dynamic numFloors;
  int viewCount30Day;
  String image150113Url;
  ListingStatus listingStatus;
  dynamic numBedrooms;
  int locationIsApproximate;
  String image5038Url;
  double latitude;
  int viewCount;
  FurnishedState? furnishedState;
  String agentAddress;
  String branchId;
  Category category;
  String propertyType;
  String? lettingFees;
  List<Image> images;
  double longitude;
  DateTime listingDate;
  String thumbnailUrl;
  String description;
  String agentPostcode;
  AreaName postTown;
  String detailsUrl;
  String shortDescription;
  Outcode outcode;
  List<OtherImage> otherImage;
  String image645430Url;
  String title;
  County county;
  String price;
  int isPremiumListing;
  String availableFromDisplay;
  String listingId;
  String imageCaption;
  List<String> bullet;
  String image8060Url;
  String propertyNumber;
  Status status;
  String agentName;
  dynamic numRecepts;
  PropertyBadge propertyBadge;
  Country country;
  dynamic companyId;
  DateTime firstPublishedDate;
  String displayableAddress;
  String streetName;
  dynamic numBathrooms;
  String incode;
  FeaturedType featuredType;
  String agentLogo;
  List<PriceChange> priceChange;
  String agentPhone;
  dynamic groupId;
  String image354255Url;
  String imageUrl;
  DateTime lastPublishedDate;
  List<String> originalImage;
  DateTime? lastSaleDate;
  List<String>? epcGraph;
  int? lastSalePrice;
  int? propertyId;
  List<String>? floorPlan;
  FloorArea? floorArea;
  List<String>? brochure;
  List<String>? document;
  List<String>? virtualTour;
  List<String>? epc;

  Listing({
    required this.rentalPrices,
    required this.countryCode,
    required this.numFloors,
    required this.viewCount30Day,
    required this.image150113Url,
    required this.listingStatus,
    required this.numBedrooms,
    required this.locationIsApproximate,
    required this.image5038Url,
    required this.latitude,
    required this.viewCount,
    required this.furnishedState,
    required this.agentAddress,
    required this.branchId,
    required this.category,
    required this.propertyType,
    this.lettingFees,
    required this.images,
    required this.longitude,
    required this.listingDate,
    required this.thumbnailUrl,
    required this.description,
    required this.agentPostcode,
    required this.postTown,
    required this.detailsUrl,
    required this.shortDescription,
    required this.outcode,
    required this.otherImage,
    required this.image645430Url,
    required this.title,
    required this.county,
    required this.price,
    required this.isPremiumListing,
    required this.availableFromDisplay,
    required this.listingId,
    required this.imageCaption,
    required this.bullet,
    required this.image8060Url,
    required this.propertyNumber,
    required this.status,
    required this.agentName,
    required this.numRecepts,
    required this.propertyBadge,
    required this.country,
    required this.companyId,
    required this.firstPublishedDate,
    required this.displayableAddress,
    required this.streetName,
    required this.numBathrooms,
    required this.incode,
    required this.featuredType,
    required this.agentLogo,
    required this.priceChange,
    required this.agentPhone,
    required this.groupId,
    required this.image354255Url,
    required this.imageUrl,
    required this.lastPublishedDate,
    required this.originalImage,
    this.lastSaleDate,
    this.epcGraph,
    this.lastSalePrice,
    this.propertyId,
    this.floorPlan,
    this.floorArea,
    this.brochure,
    this.document,
    this.virtualTour,
    this.epc,
  });

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        rentalPrices: RentalPrices.fromJson(json["rental_prices"]),
        countryCode: countryCodeValues.map[json["country_code"]]!,
        numFloors: json["num_floors"],
        viewCount30Day: json["view_count_30day"],
        image150113Url: json["image_150_113_url"],
        listingStatus: listingStatusValues.map[json["listing_status"]]!,
        numBedrooms: json["num_bedrooms"],
        locationIsApproximate: json["location_is_approximate"],
        image5038Url: json["image_50_38_url"],
        latitude: json["latitude"]?.toDouble(),
        viewCount: json["view_count"],
        furnishedState: furnishedStateValues.map[json["furnished_state"]]!,
        agentAddress: json["agent_address"],
        branchId: json["branch_id"],
        category: categoryValues.map[json["category"]]!,
        propertyType: json["property_type"],
        lettingFees: json["letting_fees"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        longitude: json["longitude"]?.toDouble(),
        listingDate: DateTime.parse(json["listing_date"]),
        thumbnailUrl: json["thumbnail_url"],
        description: json["description"],
        agentPostcode: json["agent_postcode"],
        postTown: areaNameValues.map[json["post_town"]]!,
        detailsUrl: json["details_url"],
        shortDescription: json["short_description"],
        outcode: outcodeValues.map[json["outcode"]]!,
        otherImage: List<OtherImage>.from(
            json["other_image"].map((x) => OtherImage.fromJson(x))),
        image645430Url: json["image_645_430_url"],
        title: json["title"],
        county: countyValues.map[json["county"]]!,
        price: json["price"],
        isPremiumListing: json["is_premium_listing"],
        availableFromDisplay: json["available_from_display"],
        listingId: json["listing_id"],
        imageCaption: json["image_caption"],
        bullet: List<String>.from(json["bullet"].map((x) => x)),
        image8060Url: json["image_80_60_url"],
        propertyNumber: json["property_number"],
        status: statusValues.map[json["status"]]!,
        agentName: json["agent_name"],
        numRecepts: json["num_recepts"],
        propertyBadge: propertyBadgeValues.map[json["property_badge"]]!,
        country: countryValues.map[json["country"]]!,
        companyId: json["company_id"],
        firstPublishedDate: DateTime.parse(json["first_published_date"]),
        displayableAddress: json["displayable_address"],
        streetName: json["street_name"],
        numBathrooms: json["num_bathrooms"],
        incode: json["incode"],
        featuredType: featuredTypeValues.map[json["featured_type"]]!,
        agentLogo: json["agent_logo"],
        priceChange: List<PriceChange>.from(
            json["price_change"].map((x) => PriceChange.fromJson(x))),
        agentPhone: json["agent_phone"],
        groupId: json["group_id"],
        image354255Url: json["image_354_255_url"],
        imageUrl: json["image_url"],
        lastPublishedDate: DateTime.parse(json["last_published_date"]),
        originalImage: List<String>.from(json["original_image"].map((x) => x)),
        lastSaleDate: json["last_sale_date"] == null
            ? null
            : DateTime.parse(json["last_sale_date"]),
        epcGraph: json["epc_graph"] == null
            ? []
            : List<String>.from(json["epc_graph"]!.map((x) => x)),
        lastSalePrice: json["last_sale_price"],
        propertyId: json["property_id"],
        floorPlan: json["floor_plan"] == null
            ? []
            : List<String>.from(json["floor_plan"]!.map((x) => x)),
        floorArea: json["floor_area"] == null
            ? null
            : FloorArea.fromJson(json["floor_area"]),
        brochure: json["brochure"] == null
            ? []
            : List<String>.from(json["brochure"]!.map((x) => x)),
        document: json["document"] == null
            ? []
            : List<String>.from(json["document"]!.map((x) => x)),
        virtualTour: json["virtual_tour"] == null
            ? []
            : List<String>.from(json["virtual_tour"]!.map((x) => x)),
        epc: json["epc"] == null
            ? []
            : List<String>.from(json["epc"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "rental_prices": rentalPrices.toJson(),
        "country_code": countryCodeValues.reverse[countryCode],
        "num_floors": numFloors,
        "view_count_30day": viewCount30Day,
        "image_150_113_url": image150113Url,
        "listing_status": listingStatusValues.reverse[listingStatus],
        "num_bedrooms": numBedrooms,
        "location_is_approximate": locationIsApproximate,
        "image_50_38_url": image5038Url,
        "latitude": latitude,
        "view_count": viewCount,
        "furnished_state": furnishedStateValues.reverse[furnishedState],
        "agent_address": agentAddress,
        "branch_id": branchId,
        "category": categoryValues.reverse[category],
        "property_type": propertyType,
        "letting_fees": lettingFees,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "longitude": longitude,
        "listing_date": listingDate.toIso8601String(),
        "thumbnail_url": thumbnailUrl,
        "description": description,
        "agent_postcode": agentPostcode,
        "post_town": areaNameValues.reverse[postTown],
        "details_url": detailsUrl,
        "short_description": shortDescription,
        "outcode": outcodeValues.reverse[outcode],
        "other_image": List<dynamic>.from(otherImage.map((x) => x.toJson())),
        "image_645_430_url": image645430Url,
        "title": title,
        "county": countyValues.reverse[county],
        "price": price,
        "is_premium_listing": isPremiumListing,
        "available_from_display": availableFromDisplay,
        "listing_id": listingId,
        "image_caption": imageCaption,
        "bullet": List<dynamic>.from(bullet.map((x) => x)),
        "image_80_60_url": image8060Url,
        "property_number": propertyNumber,
        "status": statusValues.reverse[status],
        "agent_name": agentName,
        "num_recepts": numRecepts,
        "property_badge": propertyBadgeValues.reverse[propertyBadge],
        "country": countryValues.reverse[country],
        "company_id": companyId,
        "first_published_date": firstPublishedDate.toIso8601String(),
        "displayable_address": displayableAddress,
        "street_name": streetName,
        "num_bathrooms": numBathrooms,
        "incode": incode,
        "featured_type": featuredTypeValues.reverse[featuredType],
        "agent_logo": agentLogo,
        "price_change": List<dynamic>.from(priceChange.map((x) => x.toJson())),
        "agent_phone": agentPhone,
        "group_id": groupId,
        "image_354_255_url": image354255Url,
        "image_url": imageUrl,
        "last_published_date": lastPublishedDate.toIso8601String(),
        "original_image": List<dynamic>.from(originalImage.map((x) => x)),
        "last_sale_date":
            "${lastSaleDate!.year.toString().padLeft(4, '0')}-${lastSaleDate!.month.toString().padLeft(2, '0')}-${lastSaleDate!.day.toString().padLeft(2, '0')}",
        "epc_graph":
            epcGraph == null ? [] : List<dynamic>.from(epcGraph!.map((x) => x)),
        "last_sale_price": lastSalePrice,
        "property_id": propertyId,
        "floor_plan": floorPlan == null
            ? []
            : List<dynamic>.from(floorPlan!.map((x) => x)),
        "floor_area": floorArea?.toJson(),
        "brochure":
            brochure == null ? [] : List<dynamic>.from(brochure!.map((x) => x)),
        "document":
            document == null ? [] : List<dynamic>.from(document!.map((x) => x)),
        "virtual_tour": virtualTour == null
            ? []
            : List<dynamic>.from(virtualTour!.map((x) => x)),
        "epc": epc == null ? [] : List<dynamic>.from(epc!.map((x) => x)),
      };
}

enum Category { RESIDENTIAL }

final categoryValues = EnumValues({"Residential": Category.RESIDENTIAL});

enum CountryCode { GB }

final countryCodeValues = EnumValues({"gb": CountryCode.GB});

enum FeaturedType { S }

final featuredTypeValues = EnumValues({"S": FeaturedType.S});

class FloorArea {
  MaxFloorArea maxFloorArea;

  FloorArea({
    required this.maxFloorArea,
  });

  factory FloorArea.fromJson(Map<String, dynamic> json) => FloorArea(
        maxFloorArea: MaxFloorArea.fromJson(json["max_floor_area"]),
      );

  Map<String, dynamic> toJson() => {
        "max_floor_area": maxFloorArea.toJson(),
      };
}

class MaxFloorArea {
  dynamic value;
  String units;

  MaxFloorArea({
    required this.value,
    required this.units,
  });

  factory MaxFloorArea.fromJson(Map<String, dynamic> json) => MaxFloorArea(
        value: json["value"],
        units: json["units"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "units": units,
      };
}

enum FurnishedState { FURNISHED, PART_FURNISHED, UNFURNISHED }

final furnishedStateValues = EnumValues({
  "furnished": FurnishedState.FURNISHED,
  "part_furnished": FurnishedState.PART_FURNISHED,
  "unfurnished": FurnishedState.UNFURNISHED
});

class Image {
  String original;
  String the480X360;
  String the354X255;
  String the645X430;
  String the80X60;
  String the768X576;
  String the150X113;
  String the1024X768;
  String caption;
  String the50X38;
  String the240X180;

  Image({
    required this.original,
    required this.the480X360,
    required this.the354X255,
    required this.the645X430,
    required this.the80X60,
    required this.the768X576,
    required this.the150X113,
    required this.the1024X768,
    required this.caption,
    required this.the50X38,
    required this.the240X180,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        original: json["original"],
        the480X360: json["480x360"],
        the354X255: json["354x255"],
        the645X430: json["645x430"],
        the80X60: json["80x60"],
        the768X576: json["768x576"],
        the150X113: json["150x113"],
        the1024X768: json["1024x768"],
        caption: json["caption"],
        the50X38: json["50x38"],
        the240X180: json["240x180"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "480x360": the480X360,
        "354x255": the354X255,
        "645x430": the645X430,
        "80x60": the80X60,
        "768x576": the768X576,
        "150x113": the150X113,
        "1024x768": the1024X768,
        "caption": caption,
        "50x38": the50X38,
        "240x180": the240X180,
      };
}

enum ListingStatus { RENT }

final listingStatusValues = EnumValues({"rent": ListingStatus.RENT});

class OtherImage {
  String url;
  String description;

  OtherImage({
    required this.url,
    required this.description,
  });

  factory OtherImage.fromJson(Map<String, dynamic> json) => OtherImage(
        url: json["url"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "description": description,
      };
}

enum Outcode { OX1, OX2, OX3, OX4 }

final outcodeValues = EnumValues({
  "OX1": Outcode.OX1,
  "OX2": Outcode.OX2,
  "OX3": Outcode.OX3,
  "OX4": Outcode.OX4
});

class PriceChange {
  String direction;
  DateTime date;
  Percent percent;
  dynamic price;

  PriceChange({
    required this.direction,
    required this.date,
    required this.percent,
    required this.price,
  });

  factory PriceChange.fromJson(Map<String, dynamic> json) => PriceChange(
        direction: json["direction"],
        date: DateTime.parse(json["date"]),
        percent: percentValues.map[json["percent"]]!,
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "direction": direction,
        "date": date.toIso8601String(),
        "percent": percentValues.reverse[percent],
        "price": price,
      };
}

enum Percent { THE_0 }

final percentValues = EnumValues({"0%": Percent.THE_0});

enum PropertyBadge { EMPTY, JUST_ADDED, STUDENT_FRIENDLY }

final propertyBadgeValues = EnumValues({
  "": PropertyBadge.EMPTY,
  "Just added": PropertyBadge.JUST_ADDED,
  "Student friendly": PropertyBadge.STUDENT_FRIENDLY
});

class RentalPrices {
  SharedOccupancy sharedOccupancy;
  int perWeek;
  Accurate accurate;
  int perMonth;

  RentalPrices({
    required this.sharedOccupancy,
    required this.perWeek,
    required this.accurate,
    required this.perMonth,
  });

  factory RentalPrices.fromJson(Map<String, dynamic> json) => RentalPrices(
        sharedOccupancy: sharedOccupancyValues.map[json["shared_occupancy"]]!,
        perWeek: json["per_week"],
        accurate: accurateValues.map[json["accurate"]]!,
        perMonth: json["per_month"],
      );

  Map<String, dynamic> toJson() => {
        "shared_occupancy": sharedOccupancyValues.reverse[sharedOccupancy],
        "per_week": perWeek,
        "accurate": accurateValues.reverse[accurate],
        "per_month": perMonth,
      };
}

enum Accurate { PER_MONTH }

final accurateValues = EnumValues({"per_month": Accurate.PER_MONTH});

enum SharedOccupancy { N }

final sharedOccupancyValues = EnumValues({"N": SharedOccupancy.N});

enum Status { TO_RENT }

final statusValues = EnumValues({"to_rent": Status.TO_RENT});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
