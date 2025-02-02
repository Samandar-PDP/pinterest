class PinResponse {
  String? id;
  String? slug;
  AlternativeSlugs? alternativeSlugs;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<Null>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<Null>? currentUserCollections;
  Null? sponsorship;
  TopicSubmissions? topicSubmissions;
  String? assetType;
  User? user;

  PinResponse(
      {this.id,
        this.slug,
        this.alternativeSlugs,
        this.createdAt,
        this.updatedAt,
        this.promotedAt,
        this.width,
        this.height,
        this.color,
        this.blurHash,
        this.description,
        this.altDescription,
        this.breadcrumbs,
        this.urls,
        this.links,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.sponsorship,
        this.topicSubmissions,
        this.assetType,
        this.user});

  PinResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    alternativeSlugs = json['alternative_slugs'] != null
        ? new AlternativeSlugs.fromJson(json['alternative_slugs'])
        : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    promotedAt = json['promoted_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    description = json['description'];
    altDescription = json['alt_description'];
    if (json['breadcrumbs'] != null) {
      breadcrumbs = <Null>[];
      json['breadcrumbs'].forEach((v) {
        breadcrumbs!.add(v);
      });
    }
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    if (json['current_user_collections'] != null) {
      currentUserCollections = <Null>[];
      json['current_user_collections'].forEach((v) {
        currentUserCollections!.add(v);
      });
    }
    sponsorship = json['sponsorship'];
    topicSubmissions = json['topic_submissions'] != null
        ? new TopicSubmissions.fromJson(json['topic_submissions'])
        : null;
    assetType = json['asset_type'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    if (this.alternativeSlugs != null) {
      data['alternative_slugs'] = this.alternativeSlugs!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['promoted_at'] = this.promotedAt;
    data['width'] = this.width;
    data['height'] = this.height;
    data['color'] = this.color;
    data['blur_hash'] = this.blurHash;
    data['description'] = this.description;
    data['alt_description'] = this.altDescription;
    if (this.breadcrumbs != null) {
      data['breadcrumbs'] = this.breadcrumbs!.map((v) => v).toList();
    }
    if (this.urls != null) {
      data['urls'] = this.urls!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    data['likes'] = this.likes;
    data['liked_by_user'] = this.likedByUser;
    if (this.currentUserCollections != null) {
      data['current_user_collections'] =
          this.currentUserCollections!.map((v) => v).toList();
    }
    data['sponsorship'] = this.sponsorship;
    if (this.topicSubmissions != null) {
      data['topic_submissions'] = this.topicSubmissions!.toJson();
    }
    data['asset_type'] = this.assetType;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class AlternativeSlugs {
  String? en;
  String? es;
  String? ja;
  String? fr;
  String? it;
  String? ko;
  String? de;
  String? pt;

  AlternativeSlugs(
      {this.en, this.es, this.ja, this.fr, this.it, this.ko, this.de, this.pt});

  AlternativeSlugs.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    es = json['es'];
    ja = json['ja'];
    fr = json['fr'];
    it = json['it'];
    ko = json['ko'];
    de = json['de'];
    pt = json['pt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['es'] = this.es;
    data['ja'] = this.ja;
    data['fr'] = this.fr;
    data['it'] = this.it;
    data['ko'] = this.ko;
    data['de'] = this.de;
    data['pt'] = this.pt;
    return data;
  }
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls(
      {this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
        this.smallS3});

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['full'] = this.full;
    data['regular'] = this.regular;
    data['small'] = this.small;
    data['thumb'] = this.thumb;
    data['small_s3'] = this.smallS3;
    return data;
  }
}

class TopicSubmissions {
  BusinessWork? businessWork;
  BusinessWork? blackAndWhite;
  BusinessWork? architectureInterior;

  TopicSubmissions(
      {this.businessWork, this.blackAndWhite, this.architectureInterior});

  TopicSubmissions.fromJson(Map<String, dynamic> json) {
    businessWork = json['business-work'] != null
        ? new BusinessWork.fromJson(json['business-work'])
        : null;
    blackAndWhite = json['black-and-white'] != null
        ? new BusinessWork.fromJson(json['black-and-white'])
        : null;
    architectureInterior = json['architecture-interior'] != null
        ? new BusinessWork.fromJson(json['architecture-interior'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.businessWork != null) {
      data['business-work'] = this.businessWork!.toJson();
    }
    if (this.blackAndWhite != null) {
      data['black-and-white'] = this.blackAndWhite!.toJson();
    }
    if (this.architectureInterior != null) {
      data['architecture-interior'] = this.architectureInterior!.toJson();
    }
    return data;
  }
}

class BusinessWork {
  String? status;

  BusinessWork({this.status});

  BusinessWork.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    return data;
  }
}

class User {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  Null? portfolioUrl;
  String? bio;
  String? location;
  Links? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  int? totalPromotedPhotos;
  int? totalIllustrations;
  int? totalPromotedIllustrations;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  User(
      {this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.totalPromotedPhotos,
        this.totalIllustrations,
        this.totalPromotedIllustrations,
        this.acceptedTos,
        this.forHire,
        this.social});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null
        ? new ProfileImage.fromJson(json['profile_image'])
        : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    totalPromotedPhotos = json['total_promoted_photos'];
    totalIllustrations = json['total_illustrations'];
    totalPromotedIllustrations = json['total_promoted_illustrations'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social =
    json['social'] != null ? new Social.fromJson(json['social']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['updated_at'] = this.updatedAt;
    data['username'] = this.username;
    data['name'] = this.name;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['twitter_username'] = this.twitterUsername;
    data['portfolio_url'] = this.portfolioUrl;
    data['bio'] = this.bio;
    data['location'] = this.location;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.profileImage != null) {
      data['profile_image'] = this.profileImage!.toJson();
    }
    data['instagram_username'] = this.instagramUsername;
    data['total_collections'] = this.totalCollections;
    data['total_likes'] = this.totalLikes;
    data['total_photos'] = this.totalPhotos;
    data['total_promoted_photos'] = this.totalPromotedPhotos;
    data['total_illustrations'] = this.totalIllustrations;
    data['total_promoted_illustrations'] = this.totalPromotedIllustrations;
    data['accepted_tos'] = this.acceptedTos;
    data['for_hire'] = this.forHire;
    if (this.social != null) {
      data['social'] = this.social!.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links(
      {this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
    following = json['following'];
    followers = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['html'] = this.html;
    data['photos'] = this.photos;
    data['likes'] = this.likes;
    data['portfolio'] = this.portfolio;
    data['following'] = this.following;
    data['followers'] = this.followers;
    return data;
  }
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({this.small, this.medium, this.large});

  ProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    return data;
  }
}

class Social {
  String? instagramUsername;
  Null? portfolioUrl;
  String? twitterUsername;
  Null? paypalEmail;

  Social(
      {this.instagramUsername,
        this.portfolioUrl,
        this.twitterUsername,
        this.paypalEmail});

  Social.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
    paypalEmail = json['paypal_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['instagram_username'] = this.instagramUsername;
    data['portfolio_url'] = this.portfolioUrl;
    data['twitter_username'] = this.twitterUsername;
    data['paypal_email'] = this.paypalEmail;
    return data;
  }
}