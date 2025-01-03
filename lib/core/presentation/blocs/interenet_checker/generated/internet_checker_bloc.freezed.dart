// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../internet_checker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetCheckerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckerEventCopyWith<$Res> {
  factory $InternetCheckerEventCopyWith(InternetCheckerEvent value,
          $Res Function(InternetCheckerEvent) then) =
      _$InternetCheckerEventCopyWithImpl<$Res, InternetCheckerEvent>;
}

/// @nodoc
class _$InternetCheckerEventCopyWithImpl<$Res,
        $Val extends InternetCheckerEvent>
    implements $InternetCheckerEventCopyWith<$Res> {
  _$InternetCheckerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$InternetCheckerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'InternetCheckerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InternetCheckerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$InternetCheckerState {
  InternetStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetCheckerStateCopyWith<InternetCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckerStateCopyWith<$Res> {
  factory $InternetCheckerStateCopyWith(InternetCheckerState value,
          $Res Function(InternetCheckerState) then) =
      _$InternetCheckerStateCopyWithImpl<$Res, InternetCheckerState>;
  @useResult
  $Res call({InternetStatus? status});
}

/// @nodoc
class _$InternetCheckerStateCopyWithImpl<$Res,
        $Val extends InternetCheckerState>
    implements $InternetCheckerStateCopyWith<$Res> {
  _$InternetCheckerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetCheckerStateImplCopyWith<$Res>
    implements $InternetCheckerStateCopyWith<$Res> {
  factory _$$InternetCheckerStateImplCopyWith(_$InternetCheckerStateImpl value,
          $Res Function(_$InternetCheckerStateImpl) then) =
      __$$InternetCheckerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InternetStatus? status});
}

/// @nodoc
class __$$InternetCheckerStateImplCopyWithImpl<$Res>
    extends _$InternetCheckerStateCopyWithImpl<$Res, _$InternetCheckerStateImpl>
    implements _$$InternetCheckerStateImplCopyWith<$Res> {
  __$$InternetCheckerStateImplCopyWithImpl(_$InternetCheckerStateImpl _value,
      $Res Function(_$InternetCheckerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$InternetCheckerStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetStatus?,
    ));
  }
}

/// @nodoc

class _$InternetCheckerStateImpl implements _InternetCheckerState {
  const _$InternetCheckerStateImpl({this.status = InternetStatus.disconnected});

  @override
  @JsonKey()
  final InternetStatus? status;

  @override
  String toString() {
    return 'InternetCheckerState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetCheckerStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetCheckerStateImplCopyWith<_$InternetCheckerStateImpl>
      get copyWith =>
          __$$InternetCheckerStateImplCopyWithImpl<_$InternetCheckerStateImpl>(
              this, _$identity);
}

abstract class _InternetCheckerState implements InternetCheckerState {
  const factory _InternetCheckerState({final InternetStatus? status}) =
      _$InternetCheckerStateImpl;

  @override
  InternetStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$InternetCheckerStateImplCopyWith<_$InternetCheckerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
