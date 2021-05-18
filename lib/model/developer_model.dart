// To parse this JSON data, do
//
//     final developerModel = developerModelFromJson(jsonString);

import 'dart:convert';

DeveloperModel developerModelFromJson(String str) =>
    DeveloperModel.fromJson(json.decode(str));

String developerModelToJson(DeveloperModel data) => json.encode(data.toJson());

class DeveloperModel {
  DeveloperModel({
    this.nameDev,
    this.positionDev,
    this.emailDev,
    this.addressDev,
    this.phoneDev,
    this.photoDev,
    this.aboutDev,
    this.skillDev,
    this.experienceDev,
    this.portfolio,
  });

  String nameDev;
  String positionDev;
  String emailDev;
  String addressDev;
  String phoneDev;
  String photoDev;
  String aboutDev;
  List<String> skillDev;
  ExperienceDev experienceDev;
  List<Portfolio> portfolio;

  factory DeveloperModel.fromJson(Map<String, dynamic> json) => DeveloperModel(
        nameDev: json["name_dev"] == null ? null : json["name_dev"],
        positionDev: json["position_dev"] == null ? null : json["position_dev"],
        emailDev: json["email_dev"] == null ? null : json["email_dev"],
        addressDev: json["address_dev"] == null ? null : json["address_dev"],
        phoneDev: json["phone_dev"] == null ? null : json["phone_dev"],
        photoDev: json["photo_dev"] == null ? null : json["photo_dev"],
        aboutDev: json["about_dev"] == null ? null : json["about_dev"],
        skillDev: json["skill_dev"] == null
            ? null
            : List<String>.from(json["skill_dev"].map((x) => x)),
        experienceDev: json["experience_dev"] == null
            ? null
            : ExperienceDev.fromJson(json["experience_dev"]),
        portfolio: json["portfolio"] == null
            ? null
            : List<Portfolio>.from(
                json["portfolio"].map((x) => Portfolio.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name_dev": nameDev == null ? null : nameDev,
        "position_dev": positionDev == null ? null : positionDev,
        "email_dev": emailDev == null ? null : emailDev,
        "address_dev": addressDev == null ? null : addressDev,
        "phone_dev": phoneDev == null ? null : phoneDev,
        "photo_dev": photoDev == null ? null : photoDev,
        "about_dev": aboutDev == null ? null : aboutDev,
        "skill_dev": skillDev == null
            ? null
            : List<dynamic>.from(skillDev.map((x) => x)),
        "experience_dev": experienceDev == null ? null : experienceDev.toJson(),
        "portfolio": portfolio == null
            ? null
            : List<dynamic>.from(portfolio.map((x) => x.toJson())),
      };
}

class ExperienceDev {
  ExperienceDev({
    this.education,
    this.work,
  });

  List<Education> education;
  List<Work> work;

  factory ExperienceDev.fromJson(Map<String, dynamic> json) => ExperienceDev(
        education: json["education"] == null
            ? null
            : List<Education>.from(
                json["education"].map((x) => Education.fromJson(x))),
        work: json["work"] == null
            ? null
            : List<Work>.from(json["work"].map((x) => Work.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "education": education == null
            ? null
            : List<dynamic>.from(education.map((x) => x.toJson())),
        "work": work == null
            ? null
            : List<dynamic>.from(work.map((x) => x.toJson())),
      };
}

class Education {
  Education({
    this.majors,
    this.schoolName,
    this.years,
    this.desc,
  });

  String majors;
  String schoolName;
  String years;
  String desc;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        majors: json["majors"] == null ? null : json["majors"],
        schoolName: json["school_name"] == null ? null : json["school_name"],
        years: json["years"] == null ? null : json["years"],
        desc: json["desc"] == null ? null : json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "majors": majors == null ? null : majors,
        "school_name": schoolName == null ? null : schoolName,
        "years": years == null ? null : years,
        "desc": desc == null ? null : desc,
      };
}

class Work {
  Work({
    this.companyName,
    this.position,
    this.expired,
    this.jobdesk,
  });

  String companyName;
  String position;
  String expired;
  List<String> jobdesk;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        companyName: json["company_name"] == null ? null : json["company_name"],
        position: json["position"] == null ? null : json["position"],
        expired: json["expired"] == null ? null : json["expired"],
        jobdesk: json["jobdesk"] == null
            ? null
            : List<String>.from(json["jobdesk"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "company_name": companyName == null ? null : companyName,
        "position": position == null ? null : position,
        "expired": expired == null ? null : expired,
        "jobdesk":
            jobdesk == null ? null : List<dynamic>.from(jobdesk.map((x) => x)),
      };
}

class Portfolio {
  Portfolio({
    this.nameProject,
    this.categoryProject,
    this.descProject,
    this.stackTechno,
    this.linkPlay,
    this.linkApps,
    this.imgUrl,
  });

  String nameProject;
  String categoryProject;
  String descProject;
  List<String> stackTechno;
  String linkPlay;
  String linkApps;
  String imgUrl;

  factory Portfolio.fromJson(Map<String, dynamic> json) => Portfolio(
        nameProject: json["name_project"] == null ? null : json["name_project"],
        categoryProject:
            json["category_project"] == null ? null : json["category_project"],
        descProject: json["desc_project"] == null ? null : json["desc_project"],
        stackTechno: json["stack_techno"] == null
            ? null
            : List<String>.from(json["stack_techno"].map((x) => x)),
        linkPlay: json["link_play"] == null ? null : json["link_play"],
        linkApps: json["link_apps"] == null ? null : json["link_apps"],
        imgUrl: json["img_url"] == null ? null : json["img_url"],
      );

  Map<String, dynamic> toJson() => {
        "name_project": nameProject == null ? null : nameProject,
        "category_project": categoryProject == null ? null : categoryProject,
        "desc_project": descProject == null ? null : descProject,
        "stack_techno": stackTechno == null
            ? null
            : List<dynamic>.from(stackTechno.map((x) => x)),
        "link_play": linkPlay == null ? null : linkPlay,
        "link_apps": linkApps == null ? null : linkApps,
        "img_url": imgUrl == null ? null : imgUrl,
      };
}
