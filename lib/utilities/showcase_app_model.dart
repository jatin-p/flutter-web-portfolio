// A model that represents portfolio apps on landing page.
class ShowcaseAppModel {
  final String name;
  final String? appStoreURL;
  final String? playStoreURL;
  final String? githubURL;
  final String image;
  final String topic;

  const ShowcaseAppModel.withNetworkAsset({
    required this.name,
    this.appStoreURL,
    this.playStoreURL,
    this.githubURL,
    required this.image,
    required this.topic,
  }) : _isNetworkImage = true;

  const ShowcaseAppModel.withLocalAsset({
    required this.name,
    this.appStoreURL,
    this.playStoreURL,
    this.githubURL,
    required this.image,
    required this.topic,
  }) : _isNetworkImage = true;

  final bool _isNetworkImage;
  bool get isNetworkImage => _isNetworkImage;
}

// List of apps that will be listed on landing page.
const apps = [
  // ShowcaseAppModel.withNetworkAsset(
  //   name: 'This website',
  //   image:
  //       'https://s3.ca-central-1.amazonaws.com/jatinp.com/img/app/jpNotes/banner.png',
  //   githubURL: 'https://github.com/jatin-p/jpNotes',
  //   topic: 'Productivity',
  // ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'lemmy.pictures',
    image:
        'https://s3.ca-central-1.amazonaws.com/jatinp.com/img/lemmy.pictures.png',
    //playStoreURL: 'www.play.google.com',
    githubURL: 'https://github.com/jatin-p/lemmy-terraform',
    topic: 'Terraform/Azure/Ansible',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'jpNotes',
    image:
        'https://s3.ca-central-1.amazonaws.com/jatinp.com/img/app/jpNotes/splash.png',
    //playStoreURL: 'www.play.google.com',
    githubURL: 'https://github.com/jatin-p/jpNotes',
    topic: 'Flutter/Firebase',
  ),
  ShowcaseAppModel.withNetworkAsset(
    name: 'Pi-Fi',
    image:
        'https://s3.ca-central-1.amazonaws.com/jatinp.com/img/app/Pi-Fi/demo.png',
    githubURL: 'https://github.com/jatin-p/Pi-Fi',
    //appStoreURL: 'https://apps.apple.com/us/app/bonpara/id1636142117',
    topic: 'Python/Linux',
  ),
];
