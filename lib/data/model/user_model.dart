class UserModel {
  int id;
  String userName;
  String userEmail;
  String userPassword;
  String userToken;

  UserModel({
    int id,
    String userName,
    String userEmail,
    String userPassword,
    String userToken,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userName = json['userName'],
        userEmail = json['userEmail'],
        userPassword = json['userPassword'],
        userToken = json['userToken'];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "userName": userName,
      "userEmail": userEmail,
      "userPassword": userPassword,
      "userToken": userToken,
    };
  }
}
