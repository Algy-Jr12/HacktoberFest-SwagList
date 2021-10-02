import 'package:freezed_annotation/freezed_annotation.dart';

part 'swag.freezed.dart';
part 'swag.g.dart';

@freezed
class SwagList with _$SwagList {
  const factory SwagList({
    required bool status,
    required Map<String, List<SwagElement?>> list,
  }) = _SwagList;

  factory SwagList.fromJson(Map<String, dynamic> json) =>
      _$SwagListFromJson(json);
}

@freezed
class SwagElement with _$SwagElement {
  const factory SwagElement({
    required String organization,
    required String org_url,
    required List<String> tags,
    required String description,
    required int no_of_prs,
    required String link,
  }) = _SwagElement;

  factory SwagElement.fromJson(Map<String, dynamic> json) =>
      _$SwagElementFromJson(json);
}
