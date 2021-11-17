class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  String imagePlaceHolder = 'https://picsum.photos/200';

  ImageConstants._init();
}
