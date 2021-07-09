import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.ip,
    this.version,
    this.city,
    this.region,
    this.regionCode,
    this.country,
    this.countryName,
    this.countryCode,
    this.countryCodeIso3,
    this.countryCapital,
    this.countryTld,
    this.continentCode,
    this.inEu,
    this.postal,
    this.latitude,
    this.longitude,
    this.timezone,
    this.utcOffset,
    this.countryCallingCode,
    this.currency,
    this.currencyName,
    this.languages,
    this.countryArea,
    this.countryPopulation,
    this.asn,
    this.org,
  });

  String ip;
  String version;
  String city;
  String region;
  String regionCode;
  String country;
  String countryName;
  String countryCode;
  String countryCodeIso3;
  String countryCapital;
  String countryTld;
  String continentCode;
  bool inEu;
  String postal;
  double latitude;
  double longitude;
  String timezone;
  String utcOffset;
  String countryCallingCode;
  String currency;
  String currencyName;
  String languages;
  double countryArea;
  double countryPopulation;
  String asn;
  String org;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    ip: json["ip"],
    version: json["version"],
    city: json["city"],
    region: json["region"],
    regionCode: json["region_code"],
    country: json["country"],
    countryName: json["country_name"],
    countryCode: json["country_code"],
    countryCodeIso3: json["country_code_iso3"],
    countryCapital: json["country_capital"],
    countryTld: json["country_tld"],
    continentCode: json["continent_code"],
    inEu: json["in_eu"],
    postal: json["postal"],
    latitude: json["latitude"].toDouble(),
    longitude: json["longitude"].toDouble(),
    timezone: json["timezone"],
    utcOffset: json["utc_offset"],
    countryCallingCode: json["country_calling_code"],
    currency: json["currency"],
    currencyName: json["currency_name"],
    languages: json["languages"],
    countryArea: json["country_area"],
    countryPopulation: json["country_population"],
    asn: json["asn"],
    org: json["org"],
  );

  Map<String, dynamic> toJson() => {
    "ip": ip,
    "version": version,
    "city": city,
    "region": region,
    "region_code": regionCode,
    "country": country,
    "country_name": countryName,
    "country_code": countryCode,
    "country_code_iso3": countryCodeIso3,
    "country_capital": countryCapital,
    "country_tld": countryTld,
    "continent_code": continentCode,
    "in_eu": inEu,
    "postal": postal,
    "latitude": latitude,
    "longitude": longitude,
    "timezone": timezone,
    "utc_offset": utcOffset,
    "country_calling_code": countryCallingCode,
    "currency": currency,
    "currency_name": currencyName,
    "languages": languages,
    "country_area": countryArea,
    "country_population": countryPopulation,
    "asn": asn,
    "org": org,
  };
}
