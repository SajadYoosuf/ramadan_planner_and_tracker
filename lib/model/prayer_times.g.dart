// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'prayer_times.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class PrayerTimeAdapter extends TypeAdapter<PrayerTime> {
//   @override
//   final int typeId = 0;

//   @override
//   PrayerTime read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return PrayerTime(
//       title: fields[0] as String,
//       query: fields[1] as String,
//       prayerTimeFor: fields[2] as String,
//       method: fields[3] as int,
//       prayerMethodName: fields[4] as String,
//       daylight: fields[5] as String,
//       timezone: fields[6] as String,
//       mapImage: fields[7] as String,
//       sealevel: fields[8] as String,
//       todayWeather: fields[9] as TodayWeather,
//       link: fields[10] as String,
//       qiblaDirection: fields[11] as String,
//       latitude: fields[12] as String,
//       longitude: fields[13] as String,
//       address: fields[14] as String,
//       city: fields[15] as String,
//       state: fields[16] as String,
//       postalCode: fields[17] as String,
//       country: fields[18] as String,
//       countryCode: fields[19] as String,
//       items: (fields[20] as List).cast<Item>(),
//       statusValid: fields[21] as int,
//       statusCode: fields[22] as int,
//       statusDescription: fields[23] as String,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, PrayerTime obj) {
//     writer
//       ..writeByte(24)
//       ..writeByte(0)
//       ..write(obj.title)
//       ..writeByte(1)
//       ..write(obj.query)
//       ..writeByte(2)
//       ..write(obj.prayerTimeFor)
//       ..writeByte(3)
//       ..write(obj.method)
//       ..writeByte(4)
//       ..write(obj.prayerMethodName)
//       ..writeByte(5)
//       ..write(obj.daylight)
//       ..writeByte(6)
//       ..write(obj.timezone)
//       ..writeByte(7)
//       ..write(obj.mapImage)
//       ..writeByte(8)
//       ..write(obj.sealevel)
//       ..writeByte(9)
//       ..write(obj.todayWeather)
//       ..writeByte(10)
//       ..write(obj.link)
//       ..writeByte(11)
//       ..write(obj.qiblaDirection)
//       ..writeByte(12)
//       ..write(obj.latitude)
//       ..writeByte(13)
//       ..write(obj.longitude)
//       ..writeByte(14)
//       ..write(obj.address)
//       ..writeByte(15)
//       ..write(obj.city)
//       ..writeByte(16)
//       ..write(obj.state)
//       ..writeByte(17)
//       ..write(obj.postalCode)
//       ..writeByte(18)
//       ..write(obj.country)
//       ..writeByte(19)
//       ..write(obj.countryCode)
//       ..writeByte(20)
//       ..write(obj.items)
//       ..writeByte(21)
//       ..write(obj.statusValid)
//       ..writeByte(22)
//       ..write(obj.statusCode)
//       ..writeByte(23)
//       ..write(obj.statusDescription);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is PrayerTimeAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }

// class ItemAdapter extends TypeAdapter<Item> {
//   @override
//   final int typeId = 1;

//   @override
//   Item read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return Item(
//       dateFor: fields[0] as String,
//       fajr: fields[1] as String,
//       shurooq: fields[2] as String,
//       dhuhr: fields[3] as String,
//       asr: fields[4] as String,
//       maghrib: fields[5] as String,
//       isha: fields[6] as String,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, Item obj) {
//     writer
//       ..writeByte(7)
//       ..writeByte(0)
//       ..write(obj.dateFor)
//       ..writeByte(1)
//       ..write(obj.fajr)
//       ..writeByte(2)
//       ..write(obj.shurooq)
//       ..writeByte(3)
//       ..write(obj.dhuhr)
//       ..writeByte(4)
//       ..write(obj.asr)
//       ..writeByte(5)
//       ..write(obj.maghrib)
//       ..writeByte(6)
//       ..write(obj.isha);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ItemAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }

// class TodayWeatherAdapter extends TypeAdapter<TodayWeather> {
//   @override
//   final int typeId = 2;

//   @override
//   TodayWeather read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return TodayWeather(
//       pressure: fields[0] as String,
//       temperature: fields[1] as String,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, TodayWeather obj) {
//     writer
//       ..writeByte(2)
//       ..writeByte(0)
//       ..write(obj.pressure)
//       ..writeByte(1)
//       ..write(obj.temperature);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is TodayWeatherAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
