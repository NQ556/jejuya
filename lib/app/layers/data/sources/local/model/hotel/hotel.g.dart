// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HotelAdapter extends TypeAdapter<Hotel> {
  @override
  final int typeId = 1;

  @override
  Hotel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hotel(
      id: fields[0] as String,
      businessNameEnglish: fields[1] as String,
      businessNameKorean: fields[2] as String,
      latitude: fields[3] as String,
      longitude: fields[4] as String,
      contact: fields[5] as String,
      noteEnglish: fields[6] as String,
      noteKorean: fields[7] as String,
      roadNameAdressEnglish: fields[8] as String,
      roadNameAdressKorean: fields[9] as String,
      numberOfRooms: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Hotel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.businessNameEnglish)
      ..writeByte(2)
      ..write(obj.businessNameKorean)
      ..writeByte(3)
      ..write(obj.latitude)
      ..writeByte(4)
      ..write(obj.longitude)
      ..writeByte(5)
      ..write(obj.contact)
      ..writeByte(6)
      ..write(obj.noteEnglish)
      ..writeByte(7)
      ..write(obj.noteKorean)
      ..writeByte(8)
      ..write(obj.roadNameAdressEnglish)
      ..writeByte(9)
      ..write(obj.roadNameAdressKorean)
      ..writeByte(10)
      ..write(obj.numberOfRooms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HotelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  try {
    var item = Hotel(
      id: json['id'] as String? ?? '',
      businessNameEnglish: json['BusinessNameEnglish'] as String? ?? '',
      businessNameKorean: json['BusinessNameKorean'] as String? ?? '',
      latitude: json['Latitude'] as String? ?? '',
      longitude: json['Longitude'] as String? ?? '',
      contact: json['Contact'] as String? ?? '',
      noteEnglish: json['NoteEnglish'] as String? ?? '',
      noteKorean: json['NoteKorean'] as String? ?? '',
      roadNameAdressEnglish: json['RoadNameAddressEnglish'] as String? ?? '',
      roadNameAdressKorean: json['RoadNameAddressKorean'] as String? ?? '',
      numberOfRooms: json['NumberOfRooms'] as String? ?? '',
    );
    return item;
  } catch (e) {
    return Hotel(
      id: '',
      businessNameEnglish: '',
      businessNameKorean: '',
      latitude: '',
      longitude: '',
      contact: '',
      noteEnglish: '',
      noteKorean: '',
      roadNameAdressEnglish: '',
      roadNameAdressKorean: '',
      numberOfRooms: '',
    );
  }
}

Map<String, dynamic> _$HotelToJson(Hotel instance) => <String, dynamic>{
      'id': instance.id,
      'businessNameEnglish': instance.businessNameEnglish,
      'businessNameKorean': instance.businessNameKorean,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'contact': instance.contact,
      'noteEnglish': instance.noteEnglish,
      'noteKorean': instance.noteKorean,
      'roadNameAdressEnglish': instance.roadNameAdressEnglish,
      'roadNameAdressKorean': instance.roadNameAdressKorean,
      'numberOfRooms': instance.numberOfRooms,
    };
