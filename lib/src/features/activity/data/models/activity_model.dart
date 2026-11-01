import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/activity.dart';
import 'user_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const ActivityModel._();

  const factory ActivityModel({
    required String id,
    required String title,
    required String description,
    @Default([]) List<String> tags,
    required String location,
    required String date,
    required String time,
    required UserModel owner,
    @Default([]) List<UserModel> joinedUsers,
    required int maxParticipants,
    required int currentParticipants,
    @Default([]) List<String> photos,
    @Default(false) bool isJoined,
    @Default(false) bool isSaved,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);

  Activity toEntity() => Activity(
        id: id,
        title: title,
        description: description,
        tags: tags,
        location: location,
        date: date,
        time: time,
        owner: owner.toEntity(),
        joinedUsers: joinedUsers.map((e) => e.toEntity()).toList(),
        maxParticipants: maxParticipants,
        currentParticipants: currentParticipants,
        photos: photos,
        isJoined: isJoined,
        isSaved: isSaved,
      );
}

extension NewActivityJson on NewActivity {
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'tags': tags,
        'location': location,
        'date': date,
        'time': time,
        'maxParticipants': maxParticipants,
        'photos': photos,
      };
}
