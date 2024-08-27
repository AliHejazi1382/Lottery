/// Help us to add a same value n times
extension AddList<E> on List<E> {

  void addWithCount(E element, int count) {
    for (int i = 0; i < count; i++) {
      add(element);
    }
  }
}