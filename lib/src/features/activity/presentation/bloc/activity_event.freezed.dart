// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res, ActivityEvent>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res, $Val extends ActivityEvent>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchActivitiesImplCopyWith<$Res> {
  factory _$$FetchActivitiesImplCopyWith(_$FetchActivitiesImpl value,
          $Res Function(_$FetchActivitiesImpl) then) =
      __$$FetchActivitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchActivitiesImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$FetchActivitiesImpl>
    implements _$$FetchActivitiesImplCopyWith<$Res> {
  __$$FetchActivitiesImplCopyWithImpl(
      _$FetchActivitiesImpl _value, $Res Function(_$FetchActivitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchActivitiesImpl implements FetchActivities {
  const _$FetchActivitiesImpl();

  @override
  String toString() {
    return 'ActivityEvent.fetchActivities()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchActivitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return fetchActivities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return fetchActivities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (fetchActivities != null) {
      return fetchActivities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return fetchActivities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return fetchActivities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (fetchActivities != null) {
      return fetchActivities(this);
    }
    return orElse();
  }
}

abstract class FetchActivities implements ActivityEvent {
  const factory FetchActivities() = _$FetchActivitiesImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Activity activity});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
  }) {
    return _then(_$SelectedImpl(
      null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements Selected {
  const _$SelectedImpl(this.activity);

  @override
  final Activity activity;

  @override
  String toString() {
    return 'ActivityEvent.selected(activity: $activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return selected(activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return selected?.call(activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class Selected implements ActivityEvent {
  const factory Selected(final Activity activity) = _$SelectedImpl;

  Activity get activity;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements Search {
  const _$SearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ActivityEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements ActivityEvent {
  const factory Search(final String query) = _$SearchImpl;

  String get query;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTagImplCopyWith<$Res> {
  factory _$$FilterTagImplCopyWith(
          _$FilterTagImpl value, $Res Function(_$FilterTagImpl) then) =
      __$$FilterTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? tag});
}

/// @nodoc
class __$$FilterTagImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$FilterTagImpl>
    implements _$$FilterTagImplCopyWith<$Res> {
  __$$FilterTagImplCopyWithImpl(
      _$FilterTagImpl _value, $Res Function(_$FilterTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$FilterTagImpl(
      freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterTagImpl implements FilterTag {
  const _$FilterTagImpl(this.tag);

  @override
  final String? tag;

  @override
  String toString() {
    return 'ActivityEvent.filterTag(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTagImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTagImplCopyWith<_$FilterTagImpl> get copyWith =>
      __$$FilterTagImplCopyWithImpl<_$FilterTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return filterTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return filterTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (filterTag != null) {
      return filterTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return filterTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return filterTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (filterTag != null) {
      return filterTag(this);
    }
    return orElse();
  }
}

abstract class FilterTag implements ActivityEvent {
  const factory FilterTag(final String? tag) = _$FilterTagImpl;

  String? get tag;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterTagImplCopyWith<_$FilterTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSavedImplCopyWith<$Res> {
  factory _$$ToggleSavedImplCopyWith(
          _$ToggleSavedImpl value, $Res Function(_$ToggleSavedImpl) then) =
      __$$ToggleSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ToggleSavedImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$ToggleSavedImpl>
    implements _$$ToggleSavedImplCopyWith<$Res> {
  __$$ToggleSavedImplCopyWithImpl(
      _$ToggleSavedImpl _value, $Res Function(_$ToggleSavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleSavedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleSavedImpl implements ToggleSaved {
  const _$ToggleSavedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ActivityEvent.toggleSaved(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSavedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSavedImplCopyWith<_$ToggleSavedImpl> get copyWith =>
      __$$ToggleSavedImplCopyWithImpl<_$ToggleSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return toggleSaved(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return toggleSaved?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (toggleSaved != null) {
      return toggleSaved(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return toggleSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return toggleSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (toggleSaved != null) {
      return toggleSaved(this);
    }
    return orElse();
  }
}

abstract class ToggleSaved implements ActivityEvent {
  const factory ToggleSaved(final String id) = _$ToggleSavedImpl;

  String get id;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleSavedImplCopyWith<_$ToggleSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleJoinImplCopyWith<$Res> {
  factory _$$ToggleJoinImplCopyWith(
          _$ToggleJoinImpl value, $Res Function(_$ToggleJoinImpl) then) =
      __$$ToggleJoinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ToggleJoinImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$ToggleJoinImpl>
    implements _$$ToggleJoinImplCopyWith<$Res> {
  __$$ToggleJoinImplCopyWithImpl(
      _$ToggleJoinImpl _value, $Res Function(_$ToggleJoinImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleJoinImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleJoinImpl implements ToggleJoin {
  const _$ToggleJoinImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ActivityEvent.toggleJoin(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleJoinImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleJoinImplCopyWith<_$ToggleJoinImpl> get copyWith =>
      __$$ToggleJoinImplCopyWithImpl<_$ToggleJoinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return toggleJoin(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return toggleJoin?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (toggleJoin != null) {
      return toggleJoin(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return toggleJoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return toggleJoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (toggleJoin != null) {
      return toggleJoin(this);
    }
    return orElse();
  }
}

abstract class ToggleJoin implements ActivityEvent {
  const factory ToggleJoin(final String id) = _$ToggleJoinImpl;

  String get id;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleJoinImplCopyWith<_$ToggleJoinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewActivity activity});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
  }) {
    return _then(_$CreateImpl(
      null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as NewActivity,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements Create {
  const _$CreateImpl(this.activity);

  @override
  final NewActivity activity;

  @override
  String toString() {
    return 'ActivityEvent.create(activity: $activity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return create(activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return create?.call(activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements ActivityEvent {
  const factory Create(final NewActivity activity) = _$CreateImpl;

  NewActivity get activity;

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearNoticeImplCopyWith<$Res> {
  factory _$$ClearNoticeImplCopyWith(
          _$ClearNoticeImpl value, $Res Function(_$ClearNoticeImpl) then) =
      __$$ClearNoticeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearNoticeImplCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$ClearNoticeImpl>
    implements _$$ClearNoticeImplCopyWith<$Res> {
  __$$ClearNoticeImplCopyWithImpl(
      _$ClearNoticeImpl _value, $Res Function(_$ClearNoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearNoticeImpl implements ClearNotice {
  const _$ClearNoticeImpl();

  @override
  String toString() {
    return 'ActivityEvent.clearNotice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearNoticeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchActivities,
    required TResult Function(Activity activity) selected,
    required TResult Function(String query) search,
    required TResult Function(String? tag) filterTag,
    required TResult Function(String id) toggleSaved,
    required TResult Function(String id) toggleJoin,
    required TResult Function(NewActivity activity) create,
    required TResult Function() clearNotice,
  }) {
    return clearNotice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchActivities,
    TResult? Function(Activity activity)? selected,
    TResult? Function(String query)? search,
    TResult? Function(String? tag)? filterTag,
    TResult? Function(String id)? toggleSaved,
    TResult? Function(String id)? toggleJoin,
    TResult? Function(NewActivity activity)? create,
    TResult? Function()? clearNotice,
  }) {
    return clearNotice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchActivities,
    TResult Function(Activity activity)? selected,
    TResult Function(String query)? search,
    TResult Function(String? tag)? filterTag,
    TResult Function(String id)? toggleSaved,
    TResult Function(String id)? toggleJoin,
    TResult Function(NewActivity activity)? create,
    TResult Function()? clearNotice,
    required TResult orElse(),
  }) {
    if (clearNotice != null) {
      return clearNotice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchActivities value) fetchActivities,
    required TResult Function(Selected value) selected,
    required TResult Function(Search value) search,
    required TResult Function(FilterTag value) filterTag,
    required TResult Function(ToggleSaved value) toggleSaved,
    required TResult Function(ToggleJoin value) toggleJoin,
    required TResult Function(Create value) create,
    required TResult Function(ClearNotice value) clearNotice,
  }) {
    return clearNotice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchActivities value)? fetchActivities,
    TResult? Function(Selected value)? selected,
    TResult? Function(Search value)? search,
    TResult? Function(FilterTag value)? filterTag,
    TResult? Function(ToggleSaved value)? toggleSaved,
    TResult? Function(ToggleJoin value)? toggleJoin,
    TResult? Function(Create value)? create,
    TResult? Function(ClearNotice value)? clearNotice,
  }) {
    return clearNotice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchActivities value)? fetchActivities,
    TResult Function(Selected value)? selected,
    TResult Function(Search value)? search,
    TResult Function(FilterTag value)? filterTag,
    TResult Function(ToggleSaved value)? toggleSaved,
    TResult Function(ToggleJoin value)? toggleJoin,
    TResult Function(Create value)? create,
    TResult Function(ClearNotice value)? clearNotice,
    required TResult orElse(),
  }) {
    if (clearNotice != null) {
      return clearNotice(this);
    }
    return orElse();
  }
}

abstract class ClearNotice implements ActivityEvent {
  const factory ClearNotice() = _$ClearNoticeImpl;
}
