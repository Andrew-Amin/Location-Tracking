import 'dart:convert';

class UserModel {
  final String lastLocation;
  final String userID;
  final String userName;
  UserModel({
    this.lastLocation,
    this.userID,
    this.userName,
  });

  UserModel copyWith({
    String lastLocation,
    String userID,
    String userName,
  }) {
    return UserModel(
      lastLocation: lastLocation ?? this.lastLocation,
      userID: userID ?? this.userID,
      userName: userName ?? this.userName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lastLocation': lastLocation,
      'userID': userID,
      'userName': userName,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      lastLocation: map['lastLocation'],
      userID: map['userID'],
      userName: map['userName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserModel(lastLocation: $lastLocation, userID: $userID, userName: $userName)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserModel &&
        o.lastLocation == lastLocation &&
        o.userID == userID &&
        o.userName == userName;
  }

  @override
  int get hashCode =>
      lastLocation.hashCode ^ userID.hashCode ^ userName.hashCode;
}
