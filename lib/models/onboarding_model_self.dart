class OnbordingContent {
  String? image;
  String? title;
  String? discription;

  OnbordingContent({this.image, this.title, this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      image: 'assets/images/onboarding1.png',
      title: "Discover Place Near You ",
      discription: "Based out of Southern California, "
          "our Security Consultants develop security strategies, "
          "solutions and recommendations, not just for the "
          "short term, but are ever mindful of our "
          "client’s long-term goals and concerns."),
  OnbordingContent(
      image: 'assets/images/onboarding2.png',
      title: "Order Your Favourites",
      discription: "Based out of Southern California, "
          "our Security Consultants develop security strategies, "
          "solutions and recommendations, not just for the "
          "short term, but are ever mindful of our "
          "client’s long-term goals and concerns"),
  OnbordingContent(
      image: 'assets/images/onboarding3.png',
      title: "Get Fastest Delivery",
      discription: "Based out of Southern California, "
          "our Security Consultants develop security strategies, "
          "solutions and recommendations, not just for the "
          "short term, but are ever mindful of our "
          "client’s long-term goals and concerns"),
];
