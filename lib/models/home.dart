class Home {
  final String count;
  final IncrementCountFunction incrementCount;

  const Home(this.count, this.incrementCount);
}

typedef void IncrementCountFunction();
