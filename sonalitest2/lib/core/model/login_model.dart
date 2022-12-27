
class LoginResponse {
  int? response;
  String? fname;
  String? lname;
  String? empid;
  String? geofencerestriction;
  String? attImage;
  String? attSelfie;
  String? qrkioskPin;
  String? timeZoneCountry;
  String? areaIds;
  String? polyField;
  String? multipletimeStatus;
  String? usrpwd;
  String? shiftType;
  String? timeZone;
  String? deviceverificationaddon;
  String? deviceverificationSetting;
  String? addonLivelocationtracking;
  String? addonGeoFence;
  String? addonQrAttendance;
  String? trackLocationEnabled;
  String? persistedface;
  String? device;
  String? deviceandroidid;
  String? status;
  String? orgid;
  String? sstatus;
  String? orgPerm;
  String? imgstatus;
  String? orgName;
  String? orgmail;
  String? orgcountry;
  String? trialstatus;
  String? buysts;
  String? desination;
  String? desinationId;
  String? profile;
  String? store;

  LoginResponse(
      {this.response,
        this.fname,
        this.lname,
        this.empid,
        this.geofencerestriction,
        this.attImage,
        this.attSelfie,
        this.qrkioskPin,
        this.timeZoneCountry,
        this.areaIds,
        this.polyField,
        this.multipletimeStatus,
        this.usrpwd,
        this.shiftType,
        this.timeZone,
        this.deviceverificationaddon,
        this.deviceverificationSetting,
        this.addonLivelocationtracking,
        this.addonGeoFence,
        this.addonQrAttendance,
        this.trackLocationEnabled,
        this.persistedface,
        this.device,
        this.deviceandroidid,
        this.status,
        this.orgid,
        this.sstatus,
        this.orgPerm,
        this.imgstatus,
        this.orgName,
        this.orgmail,
        this.orgcountry,
        this.trialstatus,
        this.buysts,
        this.desination,
        this.desinationId,
        this.profile,
        this.store});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    fname = json['fname'];
    lname = json['lname'];
    empid = json['empid'];
    geofencerestriction = json['geofencerestriction'];
    attImage = json['attImage'];
    attSelfie = json['attSelfie'];
    qrkioskPin = json['qrkioskPin'];
    timeZoneCountry = json['timeZoneCountry'];
    areaIds = json['areaIds'];
    polyField = json['polyField'];
    multipletimeStatus = json['MultipletimeStatus'];
    usrpwd = json['usrpwd'];
    shiftType = json['ShiftType'];
    timeZone = json['timeZone'];
    deviceverificationaddon = json['deviceverificationaddon'];
    deviceverificationSetting = json['deviceverification_setting'];
    addonLivelocationtracking = json['addon_livelocationtracking'];
    addonGeoFence = json['addonGeoFence'];
    addonQrAttendance = json['addon_qrAttendance'];
    trackLocationEnabled = json['TrackLocationEnabled'];
    persistedface = json['persistedface'];
    device = json['device'];
    deviceandroidid = json['deviceandroidid'];
    status = json['status'];
    orgid = json['orgid'];
    sstatus = json['sstatus'];
    orgPerm = json['org_perm'];
    imgstatus = json['imgstatus'];
    orgName = json['org_name'];
    orgmail = json['orgmail'];
    orgcountry = json['orgcountry'];
    trialstatus = json['trialstatus'];
    buysts = json['buysts'];
    desination = json['desination'];
    desinationId = json['desinationId'];
    profile = json['profile'];
    store = json['store'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['empid'] = this.empid;
    data['geofencerestriction'] = this.geofencerestriction;
    data['attImage'] = this.attImage;
    data['attSelfie'] = this.attSelfie;
    data['qrkioskPin'] = this.qrkioskPin;
    data['timeZoneCountry'] = this.timeZoneCountry;
    data['areaIds'] = this.areaIds;
    data['polyField'] = this.polyField;
    data['MultipletimeStatus'] = this.multipletimeStatus;
    data['usrpwd'] = this.usrpwd;
    data['ShiftType'] = this.shiftType;
    data['timeZone'] = this.timeZone;
    data['deviceverificationaddon'] = this.deviceverificationaddon;
    data['deviceverification_setting'] = this.deviceverificationSetting;
    data['addon_livelocationtracking'] = this.addonLivelocationtracking;
    data['addonGeoFence'] = this.addonGeoFence;
    data['addon_qrAttendance'] = this.addonQrAttendance;
    data['TrackLocationEnabled'] = this.trackLocationEnabled;
    data['persistedface'] = this.persistedface;
    data['device'] = this.device;
    data['deviceandroidid'] = this.deviceandroidid;
    data['status'] = this.status;
    data['orgid'] = this.orgid;
    data['sstatus'] = this.sstatus;
    data['org_perm'] = this.orgPerm;
    data['imgstatus'] = this.imgstatus;
    data['org_name'] = this.orgName;
    data['orgmail'] = this.orgmail;
    data['orgcountry'] = this.orgcountry;
    data['trialstatus'] = this.trialstatus;
    data['buysts'] = this.buysts;
    data['desination'] = this.desination;
    data['desinationId'] = this.desinationId;
    data['profile'] = this.profile;
    data['store'] = this.store;
    return data;
  }
}
