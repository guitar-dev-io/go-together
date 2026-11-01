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

/// @nodoc
mixin _$ActivityState {
  List<Activity> get activities => throw _privateConstructorUsedError;
  Activity? get selected => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// ข้อผิดพลาดตอนโหลดรายการ
  String? get error => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  SubmitStatus get submitStatus => throw _privateConstructorUsedError;

  /// ข้อความแจ้งผู้ใช้ครั้งเดียว (snackbar) เช่น join ไม่สำเร็จ
  String? get notice => throw _privateConstructorUsedError;

  /// id ที่กำลังรอ backend ตอบ (กันกดซ้ำ)
  List<String> get busyIds => throw _privateConstructorUsedError;

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
      SubmitStatus submitStatus,
      String? notice,
      List<String> busyIds});
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
    Object? submitStatus = null,
    Object? notice = freezed,
    Object? busyIds = null,
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
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      busyIds: null == busyIds
          ? _value.busyIds
          : busyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
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
      SubmitStatus submitStatus,
      String? notice,
      List<String> busyIds});
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
    Object? submitStatus = null,
    Object? notice = freezed,
    Object? busyIds = null,
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
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
      notice: freezed == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
      busyIds: null == busyIds
          ? _value._busyIds
          : busyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ActivityStateImpl extends _ActivityState {
  const _$ActivityStateImpl(
      {final List<Activity> activities = const [],
      this.selected,
      this.isLoading = false,
      this.error,
      this.query = '',
      this.tag,
      this.submitStatus = SubmitStatus.idle,
      this.notice,
      final List<String> busyIds = const []})
      : _activities = activities,
        _busyIds = busyIds,
        super._();

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

  /// ข้อผิดพลาดตอนโหลดรายการ
  @override
  final String? error;
  @override
  @JsonKey()
  final String query;
  @override
  final String? tag;
  @override
  @JsonKey()
  final SubmitStatus submitStatus;

  /// ข้อความแจ้งผู้ใช้ครั้งเดียว (snackbar) เช่น join ไม่สำเร็จ
  @override
  final String? notice;

  /// id ที่กำลังรอ backend ตอบ (กันกดซ้ำ)
  final List<String> _busyIds;

  /// id ที่กำลังรอ backend ตอบ (กันกดซ้ำ)
  @override
  @JsonKey()
  List<String> get busyIds {
    if (_busyIds is EqualUnmodifiableListView) return _busyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_busyIds);
  }

  @override
  String toString() {
    return 'ActivityState(activities: $activities, selected: $selected, isLoading: $isLoading, error: $error, query: $query, tag: $tag, submitStatus: $submitStatus, notice: $notice, busyIds: $busyIds)';
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
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            const DeepCollectionEquality().equals(other._busyIds, _busyIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      selected,
      isLoading,
      error,
      query,
      tag,
      submitStatus,
      notice,
      const DeepCollectionEquality().hash(_busyIds));

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState extends ActivityState {
  const factory _ActivityState(
      {final List<Activity> activities,
      final Activity? selected,
      final bool isLoading,
      final String? error,
      final String query,
      final String? tag,
      final SubmitStatus submitStatus,
      final String? notice,
      final List<String> busyIds}) = _$ActivityStateImpl;
  const _ActivityState._() : super._();

  @override
  List<Activity> get activities;
  @override
  Activity? get selected;
  @override
  bool get isLoading;

  /// ข้อผิดพลาดตอนโหลดรายการ
  @override
  String? get error;
  @override
  String get query;
  @override
  String? get tag;
  @override
  SubmitStatus get submitStatus;

  /// ข้อความแจ้งผู้ใช้ครั้งเดียว (snackbar) เช่น join ไม่สำเร็จ
  @override
  String? get notice;

  /// id ที่กำลังรอ backend ตอบ (กันกดซ้ำ)
  @override
  List<String> get busyIds;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
