
import 'package:json_annotation/json_annotation.dart';

part 'post_data_request_body.g.dart';

@JsonSerializable()
class PostDataRequestBody {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'name')
  final String name;

  PostDataRequestBody({
    required this.email,
    required this.password,
    required this.name,
  });

  factory PostDataRequestBody.fromJson(Map<String, dynamic> json) =>
      _$PostDataRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PostDataRequestBodyToJson(this);
}
