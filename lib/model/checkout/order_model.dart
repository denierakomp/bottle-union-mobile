class OrderModel {
  bool? status;
  String? message;
  List<Data>? data;

  OrderModel({this.status, this.message, this.data});

  OrderModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? idOrder;
  int? idUser;
  int? idShipment;
  String? statusMessage;
  String? statusPayment;
  int? amount;
  String? paymentMethod;
  String? paymentType;
  String? expiredAt;
  String? courierName;
  String? courierDesc;
  String? courierEtd;
  int? courierCost;
  String? transactionTime;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  User? user;
  List<Order>? order;

  Data(
      {this.id,
        this.idOrder,
        this.idUser,
        this.idShipment,
        this.statusMessage,
        this.statusPayment,
        this.amount,
        this.paymentMethod,
        this.paymentType,
        this.expiredAt,
        this.courierName,
        this.courierDesc,
        this.courierEtd,
        this.courierCost,
        this.transactionTime,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.user,
        this.order});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idOrder = json['id_order'];
    idUser = json['id_user'];
    idShipment = json['id_shipment'];
    statusMessage = json['status_message'];
    statusPayment = json['status_payment'];
    amount = json['amount'];
    paymentMethod = json['payment_method'];
    paymentType = json['payment_type'];
    expiredAt = json['expired_at'];
    courierName = json['courier_name'];
    courierDesc = json['courier_desc'];
    courierEtd = json['courier_etd'];
    courierCost = json['courier_cost'];
    transactionTime = json['transaction_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['order'] != null) {
      order = <Order>[];
      json['order'].forEach((v) {
        order!.add(new Order.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_order'] = this.idOrder;
    data['id_user'] = this.idUser;
    data['id_shipment'] = this.idShipment;
    data['status_message'] = this.statusMessage;
    data['status_payment'] = this.statusPayment;
    data['amount'] = this.amount;
    data['payment_method'] = this.paymentMethod;
    data['payment_type'] = this.paymentType;
    data['expired_at'] = this.expiredAt;
    data['courier_name'] = this.courierName;
    data['courier_desc'] = this.courierDesc;
    data['courier_etd'] = this.courierEtd;
    data['courier_cost'] = this.courierCost;
    data['transaction_time'] = this.transactionTime;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.order != null) {
      data['order'] = this.order!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  int? idRegion;
  String? providerUid;
  String? providerId;
  String? fullname;
  String? email;
  String? emailVerifiedAt;
  String? avatar;
  String? dateOfBirth;
  String? phone;
  String? gender;
  int? isAdmin;
  int? isVerified;
  String? fcmToken;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  User(
      {this.id,
        this.idRegion,
        this.providerUid,
        this.providerId,
        this.fullname,
        this.email,
        this.emailVerifiedAt,
        this.avatar,
        this.dateOfBirth,
        this.phone,
        this.gender,
        this.isAdmin,
        this.isVerified,
        this.fcmToken,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idRegion = json['id_region'];
    providerUid = json['provider_uid'];
    providerId = json['provider_id'];
    fullname = json['fullname'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    avatar = json['avatar'];
    dateOfBirth = json['date_of_birth'];
    phone = json['phone'];
    gender = json['gender'];
    isAdmin = json['is_admin'];
    isVerified = json['is_verified'];
    fcmToken = json['fcm_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_region'] = this.idRegion;
    data['provider_uid'] = this.providerUid;
    data['provider_id'] = this.providerId;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['avatar'] = this.avatar;
    data['date_of_birth'] = this.dateOfBirth;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['is_admin'] = this.isAdmin;
    data['is_verified'] = this.isVerified;
    data['fcm_token'] = this.fcmToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class Order {
  int? id;
  int? idShipping;
  int? idUser;
  int? idProduct;
  int? qty;
  int? price;
  String? codeTransaction;
  int? statusPaid;
  String? voucherCode;
  double? voucherAmount;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  Product? product;
  Shipment? shipment;

  Order(
      {this.id,
        this.idShipping,
        this.idUser,
        this.idProduct,
        this.qty,
        this.price,
        this.codeTransaction,
        this.statusPaid,
        this.voucherCode,
        this.voucherAmount,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.product,
        this.shipment});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idShipping = json['id_shipping'];
    idUser = json['id_user'];
    idProduct = json['id_product'];
    qty = json['qty'];
    price = json['price'];
    codeTransaction = json['code_transaction'];
    statusPaid = json['status_paid'];
    voucherCode = json['voucher_code'];
    voucherAmount = json['voucher_amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    product =
    json['product'] != null ? new Product.fromJson(json['product']) : null;
    shipment = json['shipment'] != null
        ? new Shipment.fromJson(json['shipment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_shipping'] = this.idShipping;
    data['id_user'] = this.idUser;
    data['id_product'] = this.idProduct;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['code_transaction'] = this.codeTransaction;
    data['status_paid'] = this.statusPaid;
    data['voucher_code'] = this.voucherCode;
    data['voucher_amount'] = this.voucherAmount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    if (this.shipment != null) {
      data['shipment'] = this.shipment!.toJson();
    }
    return data;
  }
}

class Product {
  int? id;
  int? idBrand;
  int? idCategory;
  String? manufactureCountry;
  String? originCountry;
  String? year;
  String? name;
  int? price;
  int? regularPrice;
  int? salePrice;
  String? description;
  int? weight;
  int? publish;
  bool? isPopular;
  String? image1;
  String? image2;
  String? image3;
  String? image4;
  String? image5;
  int? stock;
  int? width;
  int? height;
  String? rating;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Product(
      {this.id,
        this.idBrand,
        this.idCategory,
        this.manufactureCountry,
        this.originCountry,
        this.year,
        this.name,
        this.price,
        this.regularPrice,
        this.salePrice,
        this.description,
        this.weight,
        this.publish,
        this.isPopular,
        this.image1,
        this.image2,
        this.image3,
        this.image4,
        this.image5,
        this.stock,
        this.width,
        this.height,
        this.rating,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idBrand = json['id_brand'];
    idCategory = json['id_category'];
    manufactureCountry = json['manufacture_country'];
    originCountry = json['origin_country'];
    year = json['year'];
    name = json['name'];
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    description = json['description'];
    weight = json['weight'];
    publish = json['publish'];
    isPopular = json['is_popular'];
    image1 = json['image_1'];
    image2 = json['image_2'];
    image3 = json['image_3'];
    image4 = json['image_4'];
    image5 = json['image_5'];
    stock = json['stock'];
    width = json['width'];
    height = json['height'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_brand'] = this.idBrand;
    data['id_category'] = this.idCategory;
    data['manufacture_country'] = this.manufactureCountry;
    data['origin_country'] = this.originCountry;
    data['year'] = this.year;
    data['name'] = this.name;
    data['price'] = this.price;
    data['regular_price'] = this.regularPrice;
    data['sale_price'] = this.salePrice;
    data['description'] = this.description;
    data['weight'] = this.weight;
    data['publish'] = this.publish;
    data['is_popular'] = this.isPopular;
    data['image_1'] = this.image1;
    data['image_2'] = this.image2;
    data['image_3'] = this.image3;
    data['image_4'] = this.image4;
    data['image_5'] = this.image5;
    data['stock'] = this.stock;
    data['width'] = this.width;
    data['height'] = this.height;
    data['rating'] = this.rating;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class Shipment {
  int? id;
  String? idOrder;
  int? idAddress;
  String? receiver;
  String? phone;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  Address? address;

  Shipment(
      {this.id,
        this.idOrder,
        this.idAddress,
        this.receiver,
        this.phone,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.address});

  Shipment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idOrder = json['id_order'];
    idAddress = json['id_address'];
    receiver = json['receiver'];
    phone = json['phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_order'] = this.idOrder;
    data['id_address'] = this.idAddress;
    data['receiver'] = this.receiver;
    data['phone'] = this.phone;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class Address {
  int? id;
  int? idUser;
  String? receiver;
  String? phone;
  String? address;
  String? detailNote;
  int? provinceCode;
  String? provinceName;
  int? cityCode;
  String? cityName;
  String? postCode;
  String? label;
  String? latitude;
  String? longitude;
  int? isChoosed;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Address(
      {this.id,
        this.idUser,
        this.receiver,
        this.phone,
        this.address,
        this.detailNote,
        this.provinceCode,
        this.provinceName,
        this.cityCode,
        this.cityName,
        this.postCode,
        this.label,
        this.latitude,
        this.longitude,
        this.isChoosed,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUser = json['id_user'];
    receiver = json['receiver'];
    phone = json['phone'];
    address = json['address'];
    detailNote = json['detail_note'];
    provinceCode = json['province_code'];
    provinceName = json['province_name'];
    cityCode = json['city_code'];
    cityName = json['city_name'];
    postCode = json['post_code'];
    label = json['label'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    isChoosed = json['is_choosed'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_user'] = this.idUser;
    data['receiver'] = this.receiver;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['detail_note'] = this.detailNote;
    data['province_code'] = this.provinceCode;
    data['province_name'] = this.provinceName;
    data['city_code'] = this.cityCode;
    data['city_name'] = this.cityName;
    data['post_code'] = this.postCode;
    data['label'] = this.label;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['is_choosed'] = this.isChoosed;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}