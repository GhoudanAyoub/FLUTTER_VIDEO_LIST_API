class VideoClip {
  final String fileName;
  final String thumbName;
  final String title;
  final String parent;
  int runningTime;

  VideoClip(
      this.title, this.fileName, this.thumbName, this.runningTime, this.parent);

  String videoPath() {
    return "$parent/$fileName";
  }

  String thumbPath() {
    return "$parent/$thumbName";
  }

  static List<VideoClip> localClips = [
    VideoClip("Small", "small.mp4", "small.png", 6, "embed"),
    VideoClip("Earth", "earth.mp4", "earth.png", 13, "embed"),
    VideoClip("Giraffe", "giraffe.mp4", "giraffe.png", 18, "embed"),
    VideoClip("Particle", "particle.mp4", "particle.png", 11, "embed"),
    VideoClip("Summer", "summer.mp4", "summer.png", 8, "embed")
  ];

  static List<VideoClip> remoteClips = [
    VideoClip(
        "Morgan freeman",
        "ForBiggerFun.mp4",
        "images/ForBiggerFun.jpg",
        0,
        "https://firebasestorage.googleapis.com/v0/b/pfe12-381d2.appspot.com/o/videos%2Ff6526c44-f1fa-494b-a5b6-cde084ed9a59.mp4?alt=media&token=b5fb6529-3197-4575-ad29-bc438b168758"),
    VideoClip(
        "Elephant Dream",
        "ElephantsDream.mp4",
        "images/ForBiggerBlazes.jpg",
        0,
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample"),
    VideoClip("BigBuckBunny", "BigBuckBunny.mp4", "images/BigBuckBunny.jpg", 0,
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample"),
  ];
}
