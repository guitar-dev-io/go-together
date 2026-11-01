import 'package:equatable/equatable.dart';
import 'user.dart';

class Activity extends Equatable {
  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.tags,
    required this.location,
    required this.date,
    required this.time,
    required this.owner,
    required this.joinedUsers,
    required this.maxParticipants,
    required this.currentParticipants,
    required this.photos,
    this.isJoined = false,
    this.isSaved = false,
  });

  final String id;
  final String title;
  final String description;
  final List<String> tags;
  final String location;
  final String date;
  final String time;
  final User owner;
  final List<User> joinedUsers;
  final int maxParticipants;
  final int currentParticipants;
  final List<String> photos;
  final bool isJoined;
  final bool isSaved;

  bool get isFull => currentParticipants >= maxParticipants;

  Activity copyWith({
    int? currentParticipants,
    List<User>? joinedUsers,
    bool? isJoined,
    bool? isSaved,
  }) =>
      Activity(
        id: id,
        title: title,
        description: description,
        tags: tags,
        location: location,
        date: date,
        time: time,
        owner: owner,
        joinedUsers: joinedUsers ?? this.joinedUsers,
        maxParticipants: maxParticipants,
        currentParticipants: currentParticipants ?? this.currentParticipants,
        photos: photos,
        isJoined: isJoined ?? this.isJoined,
        isSaved: isSaved ?? this.isSaved,
      );

  @override
  List<Object?> get props => [
        id, title, description, tags, location, date, time, owner,
        joinedUsers, maxParticipants, currentParticipants, photos,
        isJoined, isSaved,
      ];
}

/// ข้อมูลสำหรับสร้างทริปใหม่ (id/owner ให้ backend กำหนด)
class NewActivity extends Equatable {
  const NewActivity({
    required this.title,
    required this.description,
    required this.tags,
    required this.location,
    required this.date,
    required this.time,
    required this.maxParticipants,
    this.photos = const [],
  });

  final String title;
  final String description;
  final List<String> tags;
  final String location;
  final String date;
  final String time;
  final int maxParticipants;
  final List<String> photos;

  @override
  List<Object?> get props =>
      [title, description, tags, location, date, time, maxParticipants, photos];
}
