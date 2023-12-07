// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshUserEventImplCopyWith<$Res> {
  factory _$$RefreshUserEventImplCopyWith(_$RefreshUserEventImpl value,
          $Res Function(_$RefreshUserEventImpl) then) =
      __$$RefreshUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshUserEventImpl>
    implements _$$RefreshUserEventImplCopyWith<$Res> {
  __$$RefreshUserEventImplCopyWithImpl(_$RefreshUserEventImpl _value,
      $Res Function(_$RefreshUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshUserEventImpl implements RefreshUserEvent {
  const _$RefreshUserEventImpl();

  @override
  String toString() {
    return 'UserEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshUserEvent implements UserEvent {
  const factory RefreshUserEvent() = _$RefreshUserEventImpl;
}

/// @nodoc
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> newUser});
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUser = null,
  }) {
    return _then(_$InitEventImpl(
      null == newUser
          ? _value._newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$InitEventImpl implements InitEvent {
  const _$InitEventImpl(final List<Map<String, dynamic>> newUser)
      : _newUser = newUser;

  final List<Map<String, dynamic>> _newUser;
  @override
  List<Map<String, dynamic>> get newUser {
    if (_newUser is EqualUnmodifiableListView) return _newUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newUser);
  }

  @override
  String toString() {
    return 'UserEvent.init(newUser: $newUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEventImpl &&
            const DeepCollectionEquality().equals(other._newUser, _newUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEventImplCopyWith<_$InitEventImpl> get copyWith =>
      __$$InitEventImplCopyWithImpl<_$InitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return init(newUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return init?.call(newUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(newUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements UserEvent {
  const factory InitEvent(final List<Map<String, dynamic>> newUser) =
      _$InitEventImpl;

  List<Map<String, dynamic>> get newUser;
  @JsonKey(ignore: true)
  _$$InitEventImplCopyWith<_$InitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserEventImplCopyWith<$Res> {
  factory _$$CreateUserEventImplCopyWith(_$CreateUserEventImpl value,
          $Res Function(_$CreateUserEventImpl) then) =
      __$$CreateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> newUser});
}

/// @nodoc
class __$$CreateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$CreateUserEventImpl>
    implements _$$CreateUserEventImplCopyWith<$Res> {
  __$$CreateUserEventImplCopyWithImpl(
      _$CreateUserEventImpl _value, $Res Function(_$CreateUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUser = null,
  }) {
    return _then(_$CreateUserEventImpl(
      null == newUser
          ? _value._newUser
          : newUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateUserEventImpl implements CreateUserEvent {
  const _$CreateUserEventImpl(final Map<String, dynamic> newUser)
      : _newUser = newUser;

  final Map<String, dynamic> _newUser;
  @override
  Map<String, dynamic> get newUser {
    if (_newUser is EqualUnmodifiableMapView) return _newUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_newUser);
  }

  @override
  String toString() {
    return 'UserEvent.create(newUser: $newUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEventImpl &&
            const DeepCollectionEquality().equals(other._newUser, _newUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      __$$CreateUserEventImplCopyWithImpl<_$CreateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return create(newUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return create?.call(newUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(newUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent implements UserEvent {
  const factory CreateUserEvent(final Map<String, dynamic> newUser) =
      _$CreateUserEventImpl;

  Map<String, dynamic> get newUser;
  @JsonKey(ignore: true)
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserEventImplCopyWith<$Res> {
  factory _$$UpdateUserEventImplCopyWith(_$UpdateUserEventImpl value,
          $Res Function(_$UpdateUserEventImpl) then) =
      __$$UpdateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key, Map<String, dynamic> updatedUser});
}

/// @nodoc
class __$$UpdateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserEventImpl>
    implements _$$UpdateUserEventImplCopyWith<$Res> {
  __$$UpdateUserEventImplCopyWithImpl(
      _$UpdateUserEventImpl _value, $Res Function(_$UpdateUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? updatedUser = null,
  }) {
    return _then(_$UpdateUserEventImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      null == updatedUser
          ? _value._updatedUser
          : updatedUser // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateUserEventImpl implements UpdateUserEvent {
  const _$UpdateUserEventImpl(this.key, final Map<String, dynamic> updatedUser)
      : _updatedUser = updatedUser;

  @override
  final int key;
  final Map<String, dynamic> _updatedUser;
  @override
  Map<String, dynamic> get updatedUser {
    if (_updatedUser is EqualUnmodifiableMapView) return _updatedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_updatedUser);
  }

  @override
  String toString() {
    return 'UserEvent.update(key: $key, updatedUser: $updatedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality()
                .equals(other._updatedUser, _updatedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_updatedUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      __$$UpdateUserEventImplCopyWithImpl<_$UpdateUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return update(key, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return update?.call(key, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(key, updatedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent implements UserEvent {
  const factory UpdateUserEvent(
          final int key, final Map<String, dynamic> updatedUser) =
      _$UpdateUserEventImpl;

  int get key;
  Map<String, dynamic> get updatedUser;
  @JsonKey(ignore: true)
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserEventImplCopyWith<$Res> {
  factory _$$DeleteUserEventImplCopyWith(_$DeleteUserEventImpl value,
          $Res Function(_$DeleteUserEventImpl) then) =
      __$$DeleteUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int key});
}

/// @nodoc
class __$$DeleteUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserEventImpl>
    implements _$$DeleteUserEventImplCopyWith<$Res> {
  __$$DeleteUserEventImplCopyWithImpl(
      _$DeleteUserEventImpl _value, $Res Function(_$DeleteUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$DeleteUserEventImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUserEventImpl implements DeleteUserEvent {
  const _$DeleteUserEventImpl(this.key);

  @override
  final int key;

  @override
  String toString() {
    return 'UserEvent.delete(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserEventImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      __$$DeleteUserEventImplCopyWithImpl<_$DeleteUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return delete(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return delete?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteUserEvent implements UserEvent {
  const factory DeleteUserEvent(final int key) = _$DeleteUserEventImpl;

  int get key;
  @JsonKey(ignore: true)
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorEventRequestedByUserImplCopyWith<$Res> {
  factory _$$ChangeColorEventRequestedByUserImplCopyWith(
          _$ChangeColorEventRequestedByUserImpl value,
          $Res Function(_$ChangeColorEventRequestedByUserImpl) then) =
      __$$ChangeColorEventRequestedByUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color Color});
}

/// @nodoc
class __$$ChangeColorEventRequestedByUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChangeColorEventRequestedByUserImpl>
    implements _$$ChangeColorEventRequestedByUserImplCopyWith<$Res> {
  __$$ChangeColorEventRequestedByUserImplCopyWithImpl(
      _$ChangeColorEventRequestedByUserImpl _value,
      $Res Function(_$ChangeColorEventRequestedByUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Color = null,
  }) {
    return _then(_$ChangeColorEventRequestedByUserImpl(
      null == Color
          ? _value.Color
          : Color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeColorEventRequestedByUserImpl
    implements ChangeColorEventRequestedByUser {
  const _$ChangeColorEventRequestedByUserImpl(this.Color);

  @override
  final Color Color;

  @override
  String toString() {
    return 'UserEvent.colorChangeByUser(Color: $Color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorEventRequestedByUserImpl &&
            (identical(other.Color, Color) || other.Color == Color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorEventRequestedByUserImplCopyWith<
          _$ChangeColorEventRequestedByUserImpl>
      get copyWith => __$$ChangeColorEventRequestedByUserImplCopyWithImpl<
          _$ChangeColorEventRequestedByUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return colorChangeByUser(Color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return colorChangeByUser?.call(Color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (colorChangeByUser != null) {
      return colorChangeByUser(Color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return colorChangeByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return colorChangeByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (colorChangeByUser != null) {
      return colorChangeByUser(this);
    }
    return orElse();
  }
}

abstract class ChangeColorEventRequestedByUser implements UserEvent {
  const factory ChangeColorEventRequestedByUser(final Color Color) =
      _$ChangeColorEventRequestedByUserImpl;

  Color get Color;
  @JsonKey(ignore: true)
  _$$ChangeColorEventRequestedByUserImplCopyWith<
          _$ChangeColorEventRequestedByUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorEventChangedFromStreamImplCopyWith<$Res> {
  factory _$$ChangeColorEventChangedFromStreamImplCopyWith(
          _$ChangeColorEventChangedFromStreamImpl value,
          $Res Function(_$ChangeColorEventChangedFromStreamImpl) then) =
      __$$ChangeColorEventChangedFromStreamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color Color});
}

/// @nodoc
class __$$ChangeColorEventChangedFromStreamImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res,
        _$ChangeColorEventChangedFromStreamImpl>
    implements _$$ChangeColorEventChangedFromStreamImplCopyWith<$Res> {
  __$$ChangeColorEventChangedFromStreamImplCopyWithImpl(
      _$ChangeColorEventChangedFromStreamImpl _value,
      $Res Function(_$ChangeColorEventChangedFromStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Color = null,
  }) {
    return _then(_$ChangeColorEventChangedFromStreamImpl(
      null == Color
          ? _value.Color
          : Color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeColorEventChangedFromStreamImpl
    implements ChangeColorEventChangedFromStream {
  const _$ChangeColorEventChangedFromStreamImpl(this.Color);

  @override
  final Color Color;

  @override
  String toString() {
    return 'UserEvent.colorChangeFromStream(Color: $Color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorEventChangedFromStreamImpl &&
            (identical(other.Color, Color) || other.Color == Color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorEventChangedFromStreamImplCopyWith<
          _$ChangeColorEventChangedFromStreamImpl>
      get copyWith => __$$ChangeColorEventChangedFromStreamImplCopyWithImpl<
          _$ChangeColorEventChangedFromStreamImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(List<Map<String, dynamic>> newUser) init,
    required TResult Function(Map<String, dynamic> newUser) create,
    required TResult Function(int key, Map<String, dynamic> updatedUser) update,
    required TResult Function(int key) delete,
    required TResult Function(Color Color) colorChangeByUser,
    required TResult Function(Color Color) colorChangeFromStream,
  }) {
    return colorChangeFromStream(Color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(List<Map<String, dynamic>> newUser)? init,
    TResult? Function(Map<String, dynamic> newUser)? create,
    TResult? Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult? Function(int key)? delete,
    TResult? Function(Color Color)? colorChangeByUser,
    TResult? Function(Color Color)? colorChangeFromStream,
  }) {
    return colorChangeFromStream?.call(Color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(List<Map<String, dynamic>> newUser)? init,
    TResult Function(Map<String, dynamic> newUser)? create,
    TResult Function(int key, Map<String, dynamic> updatedUser)? update,
    TResult Function(int key)? delete,
    TResult Function(Color Color)? colorChangeByUser,
    TResult Function(Color Color)? colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (colorChangeFromStream != null) {
      return colorChangeFromStream(Color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshUserEvent value) refresh,
    required TResult Function(InitEvent value) init,
    required TResult Function(CreateUserEvent value) create,
    required TResult Function(UpdateUserEvent value) update,
    required TResult Function(DeleteUserEvent value) delete,
    required TResult Function(ChangeColorEventRequestedByUser value)
        colorChangeByUser,
    required TResult Function(ChangeColorEventChangedFromStream value)
        colorChangeFromStream,
  }) {
    return colorChangeFromStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshUserEvent value)? refresh,
    TResult? Function(InitEvent value)? init,
    TResult? Function(CreateUserEvent value)? create,
    TResult? Function(UpdateUserEvent value)? update,
    TResult? Function(DeleteUserEvent value)? delete,
    TResult? Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult? Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
  }) {
    return colorChangeFromStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshUserEvent value)? refresh,
    TResult Function(InitEvent value)? init,
    TResult Function(CreateUserEvent value)? create,
    TResult Function(UpdateUserEvent value)? update,
    TResult Function(DeleteUserEvent value)? delete,
    TResult Function(ChangeColorEventRequestedByUser value)? colorChangeByUser,
    TResult Function(ChangeColorEventChangedFromStream value)?
        colorChangeFromStream,
    required TResult orElse(),
  }) {
    if (colorChangeFromStream != null) {
      return colorChangeFromStream(this);
    }
    return orElse();
  }
}

abstract class ChangeColorEventChangedFromStream implements UserEvent {
  const factory ChangeColorEventChangedFromStream(final Color Color) =
      _$ChangeColorEventChangedFromStreamImpl;

  Color get Color;
  @JsonKey(ignore: true)
  _$$ChangeColorEventChangedFromStreamImplCopyWith<
          _$ChangeColorEventChangedFromStreamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitStateImplCopyWith<$Res> {
  factory _$$UserInitStateImplCopyWith(
          _$UserInitStateImpl value, $Res Function(_$UserInitStateImpl) then) =
      __$$UserInitStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> users});
}

/// @nodoc
class __$$UserInitStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitStateImpl>
    implements _$$UserInitStateImplCopyWith<$Res> {
  __$$UserInitStateImplCopyWithImpl(
      _$UserInitStateImpl _value, $Res Function(_$UserInitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserInitStateImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$UserInitStateImpl implements UserInitState {
  const _$UserInitStateImpl(final List<Map<String, dynamic>> users)
      : _users = users;

  final List<Map<String, dynamic>> _users;
  @override
  List<Map<String, dynamic>> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.init(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInitStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInitStateImplCopyWith<_$UserInitStateImpl> get copyWith =>
      __$$UserInitStateImplCopyWithImpl<_$UserInitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) {
    return init(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) {
    return init?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserInitState implements UserState {
  const factory UserInitState(final List<Map<String, dynamic>> users) =
      _$UserInitStateImpl;

  List<Map<String, dynamic>> get users;
  @JsonKey(ignore: true)
  _$$UserInitStateImplCopyWith<_$UserInitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCreatingStateImplCopyWith<$Res> {
  factory _$$UserCreatingStateImplCopyWith(_$UserCreatingStateImpl value,
          $Res Function(_$UserCreatingStateImpl) then) =
      __$$UserCreatingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> users});
}

/// @nodoc
class __$$UserCreatingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserCreatingStateImpl>
    implements _$$UserCreatingStateImplCopyWith<$Res> {
  __$$UserCreatingStateImplCopyWithImpl(_$UserCreatingStateImpl _value,
      $Res Function(_$UserCreatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserCreatingStateImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$UserCreatingStateImpl implements UserCreatingState {
  const _$UserCreatingStateImpl(final List<Map<String, dynamic>> users)
      : _users = users;

  final List<Map<String, dynamic>> _users;
  @override
  List<Map<String, dynamic>> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.create(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreatingStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreatingStateImplCopyWith<_$UserCreatingStateImpl> get copyWith =>
      __$$UserCreatingStateImplCopyWithImpl<_$UserCreatingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) {
    return create(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) {
    return create?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class UserCreatingState implements UserState {
  const factory UserCreatingState(final List<Map<String, dynamic>> users) =
      _$UserCreatingStateImpl;

  List<Map<String, dynamic>> get users;
  @JsonKey(ignore: true)
  _$$UserCreatingStateImplCopyWith<_$UserCreatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdatingStateImplCopyWith<$Res> {
  factory _$$UserUpdatingStateImplCopyWith(_$UserUpdatingStateImpl value,
          $Res Function(_$UserUpdatingStateImpl) then) =
      __$$UserUpdatingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> users});
}

/// @nodoc
class __$$UserUpdatingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserUpdatingStateImpl>
    implements _$$UserUpdatingStateImplCopyWith<$Res> {
  __$$UserUpdatingStateImplCopyWithImpl(_$UserUpdatingStateImpl _value,
      $Res Function(_$UserUpdatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserUpdatingStateImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$UserUpdatingStateImpl implements UserUpdatingState {
  const _$UserUpdatingStateImpl(final List<Map<String, dynamic>> users)
      : _users = users;

  final List<Map<String, dynamic>> _users;
  @override
  List<Map<String, dynamic>> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.update(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatingStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatingStateImplCopyWith<_$UserUpdatingStateImpl> get copyWith =>
      __$$UserUpdatingStateImplCopyWithImpl<_$UserUpdatingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) {
    return update(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) {
    return update?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UserUpdatingState implements UserState {
  const factory UserUpdatingState(final List<Map<String, dynamic>> users) =
      _$UserUpdatingStateImpl;

  List<Map<String, dynamic>> get users;
  @JsonKey(ignore: true)
  _$$UserUpdatingStateImplCopyWith<_$UserUpdatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDeletingStateImplCopyWith<$Res> {
  factory _$$UserDeletingStateImplCopyWith(_$UserDeletingStateImpl value,
          $Res Function(_$UserDeletingStateImpl) then) =
      __$$UserDeletingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> users});
}

/// @nodoc
class __$$UserDeletingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDeletingStateImpl>
    implements _$$UserDeletingStateImplCopyWith<$Res> {
  __$$UserDeletingStateImplCopyWithImpl(_$UserDeletingStateImpl _value,
      $Res Function(_$UserDeletingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserDeletingStateImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$UserDeletingStateImpl implements UserDeletingState {
  const _$UserDeletingStateImpl(final List<Map<String, dynamic>> users)
      : _users = users;

  final List<Map<String, dynamic>> _users;
  @override
  List<Map<String, dynamic>> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.delete(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeletingStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeletingStateImplCopyWith<_$UserDeletingStateImpl> get copyWith =>
      __$$UserDeletingStateImplCopyWithImpl<_$UserDeletingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) {
    return delete(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) {
    return delete?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class UserDeletingState implements UserState {
  const factory UserDeletingState(final List<Map<String, dynamic>> users) =
      _$UserDeletingStateImpl;

  List<Map<String, dynamic>> get users;
  @JsonKey(ignore: true)
  _$$UserDeletingStateImplCopyWith<_$UserDeletingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangingStateImplCopyWith<$Res> {
  factory _$$ColorChangingStateImplCopyWith(_$ColorChangingStateImpl value,
          $Res Function(_$ColorChangingStateImpl) then) =
      __$$ColorChangingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color Color});
}

/// @nodoc
class __$$ColorChangingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ColorChangingStateImpl>
    implements _$$ColorChangingStateImplCopyWith<$Res> {
  __$$ColorChangingStateImplCopyWithImpl(_$ColorChangingStateImpl _value,
      $Res Function(_$ColorChangingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Color = null,
  }) {
    return _then(_$ColorChangingStateImpl(
      null == Color
          ? _value.Color
          : Color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChangingStateImpl implements ColorChangingState {
  const _$ColorChangingStateImpl(this.Color);

  @override
  final Color Color;

  @override
  String toString() {
    return 'UserState.colorChange(Color: $Color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChangingStateImpl &&
            (identical(other.Color, Color) || other.Color == Color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorChangingStateImplCopyWith<_$ColorChangingStateImpl> get copyWith =>
      __$$ColorChangingStateImplCopyWithImpl<_$ColorChangingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) init,
    required TResult Function(List<Map<String, dynamic>> users) create,
    required TResult Function(List<Map<String, dynamic>> users) update,
    required TResult Function(List<Map<String, dynamic>> users) delete,
    required TResult Function(Color Color) colorChange,
  }) {
    return colorChange(Color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? init,
    TResult? Function(List<Map<String, dynamic>> users)? create,
    TResult? Function(List<Map<String, dynamic>> users)? update,
    TResult? Function(List<Map<String, dynamic>> users)? delete,
    TResult? Function(Color Color)? colorChange,
  }) {
    return colorChange?.call(Color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? init,
    TResult Function(List<Map<String, dynamic>> users)? create,
    TResult Function(List<Map<String, dynamic>> users)? update,
    TResult Function(List<Map<String, dynamic>> users)? delete,
    TResult Function(Color Color)? colorChange,
    required TResult orElse(),
  }) {
    if (colorChange != null) {
      return colorChange(Color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitState value) init,
    required TResult Function(UserCreatingState value) create,
    required TResult Function(UserUpdatingState value) update,
    required TResult Function(UserDeletingState value) delete,
    required TResult Function(ColorChangingState value) colorChange,
  }) {
    return colorChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitState value)? init,
    TResult? Function(UserCreatingState value)? create,
    TResult? Function(UserUpdatingState value)? update,
    TResult? Function(UserDeletingState value)? delete,
    TResult? Function(ColorChangingState value)? colorChange,
  }) {
    return colorChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitState value)? init,
    TResult Function(UserCreatingState value)? create,
    TResult Function(UserUpdatingState value)? update,
    TResult Function(UserDeletingState value)? delete,
    TResult Function(ColorChangingState value)? colorChange,
    required TResult orElse(),
  }) {
    if (colorChange != null) {
      return colorChange(this);
    }
    return orElse();
  }
}

abstract class ColorChangingState implements UserState {
  const factory ColorChangingState(final Color Color) =
      _$ColorChangingStateImpl;

  Color get Color;
  @JsonKey(ignore: true)
  _$$ColorChangingStateImplCopyWith<_$ColorChangingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
