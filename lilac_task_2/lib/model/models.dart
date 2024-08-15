class CategoryModel {
    bool status;
    int errorCode;
    String message;
    Data data;

    CategoryModel({
        required this.status,
        required this.errorCode,
        required this.message,
        required this.data,
    });

}

class Data {
    User user;
    Auth auth;

    Data({
        required this.user,
        required this.auth,
    });

}

class Auth {
    String tokenType;
    int expiresIn;
    String accessToken;
    String refreshToken;

    Auth({
        required this.tokenType,
        required this.expiresIn,
        required this.accessToken,
        required this.refreshToken,
    });

}

class User {
    int id;
    String name;
    String email;
    dynamic imgUrl;
    String mobileNumber;
    dynamic countryCode;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.imgUrl,
        required this.mobileNumber,
        required this.countryCode,
    });

}
