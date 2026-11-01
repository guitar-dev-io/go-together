// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityState _$ActivityStateFromJson(Map<String, dynamic> json) {
  return _ActivityState.fromJson(json);
}

/// @nodoc
mixin _$ActivityState {
  List<Activity> get activities => throw _privateConstructorUsedError;
  Activity? get selected => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  List<String> get savedIds => throw _privateConstructorUsedError;
  List<String> get joinedIds => throw _privateConstructorUsedError;

  /// Serializes this ActivityState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {List<Activity> activities,
      Activity? selected,
      bool isLoading,
      String? error,
      String query,
      String? tag,
      List<String> savedIds,
      List<String> joinedIds});

  $ActivityCopyWith<$Res>? get selected;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? selected = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? query = null,
    Object? tag = freezed,
    Object? savedIds = null,
    Object? joinedIds = null,
  }) {
    return _then(_value.copyWith(
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Activity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      savedIds: null == savedIds
          ? _value.savedIds
          : savedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      joinedIds: null == joinedIds
          ? _value.joinedIds
          : joinedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $ActivityCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Activity> activities,
      Activity? selected,
      bool isLoading,
      String? error,
      String query,
      String? tag,
      List<String> savedIds,
      List<String> joinedIds});

  @override
  $ActivityCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? selected = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? query = null,
    Object? tag = freezed,
    Object? savedIds = null,
    Object? joinedIds = null,
  }) {
    return _then(_$ActivityStateImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Activity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      savedIds: null == savedIds
          ? _value._savedIds
          : savedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      joinedIds: null == joinedIds
          ? _value._joinedIds
          : joinedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {final List<Activity> activities = const [],
      this.selected,
      this.isLoading = false,
      this.error,
      this.query = '',
      this.tag,
      final List<String> savedIds = const [],
      final List<String> joinedIds = const []})
      : _activities = activities,
        _savedIds = savedIds,
        _joinedIds = joinedIds;

  factory _$ActivityStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityStateImplFromJson(json);

  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  final Activity? selected;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final String query;
  @override
  final String? tag;
  final List<String> _savedIds;
  @override
  @JsonKey()
  List<String> get savedIds {
    if (_savedIds is EqualUnmodifiableListView) return _savedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedIds);
  }

  final List<String> _joinedIds;
  @override
  @JsonKey()
  List<String> get joinedIds {
    if (_joinedIds is EqualUnmodifiableListView) return _joinedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinedIds);
  }

  @override
  String toString() {
    return 'ActivityState(activities: $activities, selected: $selected, isLoading: $isLoading, error: $error, query: $query, tag: $tag, savedIds: $savedIds, joinedIds: $joinedIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality().equals(other._savedIds, _savedIds) &&
            const DeepCollectionEquality()
                .equals(other._joinedIds, _joinedIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      selected,
      isLoading,
      error,
      query,
      tag,
      const DeepCollectionEquality().hash(_savedIds),
      const DeepCollectionEquality().hash(_joinedIds));

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityStateImplToJson(
      this,
    );
  }
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {final List<Activity> activities,
      final Activity? selected,
      final bool isLoading,
      final String? error,
      final String query,
      final String? tag,
      final List<String> savedIds,
      final List<String> joinedIds}) = _$ActivityStateImpl;

  factory _ActivityState.fromJson(Map<String, dynamic> json) =
      _$ActivityStateImpl.fromJson;

  @override
  List<Activity> get activities;
  @override
  Activity? get selected;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String get query;
  @override
  String? get tag;
  @override
  List<String> get savedIds;
  @override
  List<String> get joinedIds;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
