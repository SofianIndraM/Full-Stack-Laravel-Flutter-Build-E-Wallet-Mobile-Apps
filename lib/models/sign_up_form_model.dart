import 'dart:math';

class SignUpFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? profilePicture;
  final String? ktp;

  SignUpFormModel({
    this.email,
    this.ktp,
    this.name,
    this.password,
    this.pin,
    this.profilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'profile_picture': profilePicture,
      'pin': pin,
      'ktp': ktp,
    };
  }

  SignUpFormModel copyWith({
    String? ktp,
    String? pin,
    String? profile_picture,
  }) =>
      SignUpFormModel(
        name: name,
        email: email,
        password: password,
        profilePicture: profilePicture ?? this.profilePicture,
        pin: pin ?? this.pin,
        ktp: ktp ?? this.ktp,
      );
}
