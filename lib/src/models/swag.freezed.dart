// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwagList _$SwagListFromJson(Map<String, dynamic> json) {
  return _SwagList.fromJson(json);
}

/// @nodoc
class _$SwagListTearOff {
  const _$SwagListTearOff();

  _SwagList call(
      {required bool status, required Map<String, List<SwagElement>> list}) {
    return _SwagList(
      status: status,
      list: list,
    );
  }

  SwagList fromJson(Map<String, Object> json) {
    return SwagList.fromJson(json);
  }
}

/// @nodoc
const $SwagList = _$SwagListTearOff();

/// @nodoc
mixin _$SwagList {
  bool get status => throw _privateConstructorUsedError;
  Map<String, List<SwagElement>> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwagListCopyWith<SwagList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwagListCopyWith<$Res> {
  factory $SwagListCopyWith(SwagList value, $Res Function(SwagList) then) =
      _$SwagListCopyWithImpl<$Res>;
  $Res call({bool status, Map<String, List<SwagElement>> list});
}

/// @nodoc
class _$SwagListCopyWithImpl<$Res> implements $SwagListCopyWith<$Res> {
  _$SwagListCopyWithImpl(this._value, this._then);

  final SwagList _value;
  // ignore: unused_field
  final $Res Function(SwagList) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SwagElement>>,
    ));
  }
}

/// @nodoc
abstract class _$SwagListCopyWith<$Res> implements $SwagListCopyWith<$Res> {
  factory _$SwagListCopyWith(_SwagList value, $Res Function(_SwagList) then) =
      __$SwagListCopyWithImpl<$Res>;
  @override
  $Res call({bool status, Map<String, List<SwagElement>> list});
}

/// @nodoc
class __$SwagListCopyWithImpl<$Res> extends _$SwagListCopyWithImpl<$Res>
    implements _$SwagListCopyWith<$Res> {
  __$SwagListCopyWithImpl(_SwagList _value, $Res Function(_SwagList) _then)
      : super(_value, (v) => _then(v as _SwagList));

  @override
  _SwagList get _value => super._value as _SwagList;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_SwagList(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as Map<String, List<SwagElement>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwagList implements _SwagList {
  const _$_SwagList({required this.status, required this.list});

  factory _$_SwagList.fromJson(Map<String, dynamic> json) =>
      _$$_SwagListFromJson(json);

  @override
  final bool status;
  @override
  final Map<String, List<SwagElement>> list;

  @override
  String toString() {
    return 'SwagList(status: $status, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwagList &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$SwagListCopyWith<_SwagList> get copyWith =>
      __$SwagListCopyWithImpl<_SwagList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwagListToJson(this);
  }
}

abstract class _SwagList implements SwagList {
  const factory _SwagList(
      {required bool status,
      required Map<String, List<SwagElement>> list}) = _$_SwagList;

  factory _SwagList.fromJson(Map<String, dynamic> json) = _$_SwagList.fromJson;

  @override
  bool get status => throw _privateConstructorUsedError;
  @override
  Map<String, List<SwagElement>> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwagListCopyWith<_SwagList> get copyWith =>
      throw _privateConstructorUsedError;
}

SwagElement _$SwagElementFromJson(Map<String, dynamic> json) {
  return _SwagElement.fromJson(json);
}

/// @nodoc
class _$SwagElementTearOff {
  const _$SwagElementTearOff();

  _SwagElement call(
      {required String organization,
      required String orgUrl,
      required List<String> tags,
      required String description,
      required int noOfPrs,
      required String link}) {
    return _SwagElement(
      organization: organization,
      orgUrl: orgUrl,
      tags: tags,
      description: description,
      noOfPrs: noOfPrs,
      link: link,
    );
  }

  SwagElement fromJson(Map<String, Object> json) {
    return SwagElement.fromJson(json);
  }
}

/// @nodoc
const $SwagElement = _$SwagElementTearOff();

/// @nodoc
mixin _$SwagElement {
  String get organization => throw _privateConstructorUsedError;
  String get orgUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get noOfPrs => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwagElementCopyWith<SwagElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwagElementCopyWith<$Res> {
  factory $SwagElementCopyWith(
          SwagElement value, $Res Function(SwagElement) then) =
      _$SwagElementCopyWithImpl<$Res>;
  $Res call(
      {String organization,
      String orgUrl,
      List<String> tags,
      String description,
      int noOfPrs,
      String link});
}

/// @nodoc
class _$SwagElementCopyWithImpl<$Res> implements $SwagElementCopyWith<$Res> {
  _$SwagElementCopyWithImpl(this._value, this._then);

  final SwagElement _value;
  // ignore: unused_field
  final $Res Function(SwagElement) _then;

  @override
  $Res call({
    Object? organization = freezed,
    Object? orgUrl = freezed,
    Object? tags = freezed,
    Object? description = freezed,
    Object? noOfPrs = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      orgUrl: orgUrl == freezed
          ? _value.orgUrl
          : orgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noOfPrs: noOfPrs == freezed
          ? _value.noOfPrs
          : noOfPrs // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SwagElementCopyWith<$Res>
    implements $SwagElementCopyWith<$Res> {
  factory _$SwagElementCopyWith(
          _SwagElement value, $Res Function(_SwagElement) then) =
      __$SwagElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String organization,
      String orgUrl,
      List<String> tags,
      String description,
      int noOfPrs,
      String link});
}

/// @nodoc
class __$SwagElementCopyWithImpl<$Res> extends _$SwagElementCopyWithImpl<$Res>
    implements _$SwagElementCopyWith<$Res> {
  __$SwagElementCopyWithImpl(
      _SwagElement _value, $Res Function(_SwagElement) _then)
      : super(_value, (v) => _then(v as _SwagElement));

  @override
  _SwagElement get _value => super._value as _SwagElement;

  @override
  $Res call({
    Object? organization = freezed,
    Object? orgUrl = freezed,
    Object? tags = freezed,
    Object? description = freezed,
    Object? noOfPrs = freezed,
    Object? link = freezed,
  }) {
    return _then(_SwagElement(
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      orgUrl: orgUrl == freezed
          ? _value.orgUrl
          : orgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      noOfPrs: noOfPrs == freezed
          ? _value.noOfPrs
          : noOfPrs // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwagElement implements _SwagElement {
  const _$_SwagElement(
      {required this.organization,
      required this.orgUrl,
      required this.tags,
      required this.description,
      required this.noOfPrs,
      required this.link});

  factory _$_SwagElement.fromJson(Map<String, dynamic> json) =>
      _$$_SwagElementFromJson(json);

  @override
  final String organization;
  @override
  final String orgUrl;
  @override
  final List<String> tags;
  @override
  final String description;
  @override
  final int noOfPrs;
  @override
  final String link;

  @override
  String toString() {
    return 'SwagElement(organization: $organization, orgUrl: $orgUrl, tags: $tags, description: $description, noOfPrs: $noOfPrs, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwagElement &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.orgUrl, orgUrl) ||
                const DeepCollectionEquality().equals(other.orgUrl, orgUrl)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.noOfPrs, noOfPrs) ||
                const DeepCollectionEquality()
                    .equals(other.noOfPrs, noOfPrs)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(orgUrl) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(noOfPrs) ^
      const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  _$SwagElementCopyWith<_SwagElement> get copyWith =>
      __$SwagElementCopyWithImpl<_SwagElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwagElementToJson(this);
  }
}

abstract class _SwagElement implements SwagElement {
  const factory _SwagElement(
      {required String organization,
      required String orgUrl,
      required List<String> tags,
      required String description,
      required int noOfPrs,
      required String link}) = _$_SwagElement;

  factory _SwagElement.fromJson(Map<String, dynamic> json) =
      _$_SwagElement.fromJson;

  @override
  String get organization => throw _privateConstructorUsedError;
  @override
  String get orgUrl => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get noOfPrs => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwagElementCopyWith<_SwagElement> get copyWith =>
      throw _privateConstructorUsedError;
}
