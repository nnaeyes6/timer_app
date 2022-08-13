class Ticker {
  const Ticker();

  // create a stream  <int> function tick; that requires int ticks
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
// All our Ticker class does is expose a tick function,
//which takes the number of ticks (seconds)we want
// and returns a stream which emits the remaining seconds every second.