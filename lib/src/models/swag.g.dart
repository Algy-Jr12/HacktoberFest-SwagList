// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SwagList _$$_SwagListFromJson(Map<String, dynamic> json) => _$_SwagList(
      status: json['status'] as bool,
      list: (json['list'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => SwagElement.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_SwagListToJson(_$_SwagList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };

_$_SwagElement _$$_SwagElementFromJson(Map<String, dynamic> json) =>
    _$_SwagElement(
      organization: json['organization'] as String,
      org_url: json['org_url'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      no_of_prs: json['no_of_prs'] as int,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_SwagElementToJson(_$_SwagElement instance) =>
    <String, dynamic>{
      'organization': instance.organization,
      'org_url': instance.org_url,
      'tags': instance.tags,
      'description': instance.description,
      'no_of_prs': instance.no_of_prs,
      'link': instance.link,
    };
