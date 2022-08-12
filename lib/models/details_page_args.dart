class DetailsPageArgs {
  final int index;
  final String placeName;
  final List<String> imagePaths;
  final String location;
  final String price;
  final String distance;
  final String ratings;
  final String description;
  DetailsPageArgs(this.index, this.placeName, this.imagePaths, this.location,
      this.price, this.distance, this.ratings, this.description);
}
