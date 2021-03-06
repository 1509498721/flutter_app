class BankDetailedModel {
  String code;
  String result;
  String message;
  int errno;
  BankDetailedData data;

  BankDetailedModel({this.code, this.result, this.message, this.errno, this.data});

  BankDetailedModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    result = json['result'];
    message = json['message'];
    errno = json['errno'];
    data = json['data'] != null ? new BankDetailedData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['result'] = this.result;
    data['message'] = this.message;
    data['errno'] = this.errno;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class BankDetailedData {
  int total;
  List<BankDetailedRows> rows;

  BankDetailedData({this.total, this.rows});

  BankDetailedData.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['rows'] != null) {
      rows = new List<BankDetailedRows>();
      json['rows'].forEach((v) {
        rows.add(new BankDetailedRows.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    if (this.rows != null) {
      data['rows'] = this.rows.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BankDetailedRows {
  int id;
  String title;
  int cardcategoryid;
  int tagid;
  String img;
  String reviewway;
  String accountway;
  String info;
  String url;
  int status;
  String addTime;
  Null statuscode;
  int pv;
  int uv;
  String uvEarnings;
  Null adminid;
  Null click;
  Null auditfailed;
  String shorturl;
  Null welfare;

  BankDetailedRows(
      {this.id,
        this.title,
        this.cardcategoryid,
        this.tagid,
        this.img,
        this.reviewway,
        this.accountway,
        this.info,
        this.url,
        this.status,
        this.addTime,
        this.statuscode,
        this.pv,
        this.uv,
        this.uvEarnings,
        this.adminid,
        this.click,
        this.auditfailed,
        this.shorturl,
        this.welfare});

  BankDetailedRows.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    cardcategoryid = json['cardcategoryid'];
    tagid = json['tagid'];
    img = json['img'];
    reviewway = json['reviewway'];
    accountway = json['accountway'];
    info = json['info'];
    url = json['url'];
    status = json['status'];
    addTime = json['addTime'];
    statuscode = json['statuscode'];
    pv = json['pv'];
    uv = json['uv'];
    uvEarnings = json['uvEarnings'];
    adminid = json['adminid'];
    click = json['click'];
    auditfailed = json['auditfailed'];
    shorturl = json['shorturl'];
    welfare = json['welfare'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['cardcategoryid'] = this.cardcategoryid;
    data['tagid'] = this.tagid;
    data['img'] = this.img;
    data['reviewway'] = this.reviewway;
    data['accountway'] = this.accountway;
    data['info'] = this.info;
    data['url'] = this.url;
    data['status'] = this.status;
    data['addTime'] = this.addTime;
    data['statuscode'] = this.statuscode;
    data['pv'] = this.pv;
    data['uv'] = this.uv;
    data['uvEarnings'] = this.uvEarnings;
    data['adminid'] = this.adminid;
    data['click'] = this.click;
    data['auditfailed'] = this.auditfailed;
    data['shorturl'] = this.shorturl;
    data['welfare'] = this.welfare;
    return data;
  }
}

