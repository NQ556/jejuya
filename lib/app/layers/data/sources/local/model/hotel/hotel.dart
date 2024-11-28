import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel.g.dart';

@HiveType(typeId: 1) // Unique typeId for the Hotel class in Hive
@JsonSerializable(
  explicitToJson: true,
)
class Hotel {
  Hotel({
    required this.id,
    required this.businessNameEnglish,
    required this.businessNameKorean,
    required this.latitude,
    required this.longitude,
    required this.contact,
    required this.noteEnglish,
    required this.noteKorean,
    required this.roadNameAdressEnglish,
    required this.roadNameAdressKorean,
    required this.numberOfRooms,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelToJson(this);

  @HiveField(0)
  String id;

  @HiveField(1)
  String businessNameEnglish;

  @HiveField(2)
  String businessNameKorean;

  @HiveField(3)
  String latitude;

  @HiveField(4)
  String longitude;

  @HiveField(5)
  String contact;

  @HiveField(6)
  String noteEnglish;

  @HiveField(7)
  String noteKorean;

  @HiveField(8)
  String roadNameAdressEnglish;

  @HiveField(9)
  String roadNameAdressKorean;

  @HiveField(10)
  String numberOfRooms;
}
