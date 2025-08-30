// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BlogDataAdapter extends TypeAdapter<BlogData> {
  @override
  final int typeId = 2;

  @override
  BlogData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BlogData(
      blogs: (fields[0] as List).cast<Blog>(),
    );
  }

  @override
  void write(BinaryWriter writer, BlogData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.blogs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlogDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
