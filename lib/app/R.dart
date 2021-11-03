
///assets names and paths, similar ton Android R file.
///

class R {

  static const String _ASSETS = "assets/";
  static const String _IMAGES = "images/";
  static const String _ICONS = "icons";
  static const String _ASSETS_IMAGES = _ASSETS + _IMAGES;
  static const String _ASSETS_ICONS = _ASSETS + _ICONS;

  //assets
  static const String ic_person = _ASSETS_IMAGES + "ic_person.png";
  static const String ic_play = _ASSETS_IMAGES + "ic_play2.png";
  static const String ic_app_icon = "ic_app_icon.png";
  static const String ic_app_icon_only_transparent_bg = "ic_app_icon_only_transparent_bg.png";
  static const String ic_app_icon_only_purple_bg = "ic_app_icon_only_purple_bg.png";

  //Network
  static const String _image_base_url_highQ = "https://image.tmdb.org/t/p/original";
  static const String _image_base_url_lowQ = "https://image.tmdb.org/t/p/w185";

  ///returns the path for this image from network
  ///optional parameter to request high resolution
  static String getNetworkImagePath(String subPath, {bool highQuality = false}){
    return highQuality ? "${_image_base_url_highQ + subPath}": "${_image_base_url_lowQ + subPath}";
  }

  ///returns the path for this image from assets
  static String getAssetImagePath(String assetName){
    return "$_ASSETS_IMAGES$assetName";
  }
}
