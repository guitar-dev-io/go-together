// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityModelImpl _$$ActivityModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivityModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      location: json['location'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      owner: UserModel.fromJson(json['owner'] as Map<String, dynamic>),
      joinedUsers: (json['joinedUsers'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      currentParticipants: (json['currentParticipants'] as num).toInt(),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isJoined: json['isJoined'] as bool? ?? false,
      isSaved: json['isSaved'] as bool? ?? false,
    );

Map<String, dynamic> _$$ActivityModelImplToJson(_$ActivityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'location': instance.location,
      'date': instance.date,
      'time': instance.time,
      'owner': instance.owner,
      'joinedUsers': instance.joinedUsers,
      'maxParticipants': instance.maxParticipants,
      'currentParticipants': instance.currentParticipants,
      'photos': instance.photos,
      'isJoined': instance.isJoined,
      'isSaved': instance.isSaved,
    };
