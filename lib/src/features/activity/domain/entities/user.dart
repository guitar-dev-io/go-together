import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({required this.name, required this.profileImage, this.isSuperUser});
  final String name;
  final String profileImage;
  final bool? isSuperUser;

  @override
  List<Object?> get props => [name, profileImage, isSuperUser];
}
