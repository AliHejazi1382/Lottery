
/// A Map that has at least 10 items.
class MinLengthMap<K, V> implements Map<K, V> {
  final Map<K, V> _map;

  MinLengthMap(Map<K, V> inputMap) : _map = inputMap {
    if (_map.length < 10) {
      throw Exception("Map must contain at least 10 elements.");
    }
  }

  @override
  V? operator [](Object? key) => _map[key];

  @override
  void operator []=(K key, V value) {
    _map[key] = value;
  }

  @override
  void addAll(Map<K, V> other) => _map.addAll(other);

  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) => _map.addEntries(newEntries);

  @override
  Map<RK, RV> cast<RK, RV>() => _map.cast<RK, RV>();

  @override
  void clear() => _map.clear();

  @override
  bool containsKey(Object? key) => _map.containsKey(key);

  @override
  bool containsValue(Object? value) => _map.containsValue(value);

  @override
  Iterable<MapEntry<K, V>> get entries => _map.entries;

  @override
  void forEach(void Function(K, V) action) => _map.forEach(action);

  @override
  bool get isEmpty => _map.isEmpty;

  @override
  bool get isNotEmpty => _map.isNotEmpty;

  @override
  Iterable<K> get keys => _map.keys;

  @override
  int get length => _map.length;

  @override
  V putIfAbsent(K key, V Function() ifAbsent) => _map.putIfAbsent(key, ifAbsent);

  @override
  V? remove(Object? key) => _map.remove(key);

  @override
  void removeWhere(bool Function(K, V) predicate) => _map.removeWhere(predicate);

  @override
  V update(K key, V Function(V) update, {V Function()? ifAbsent}) => _map.update(key, update, ifAbsent: ifAbsent);

  @override
  void updateAll(V Function(K, V) update) => _map.updateAll(update);

  @override
  Iterable<V> get values => _map.values;

  @override
  Map<RK, RV> map<RK, RV>(MapEntry<RK, RV> Function(K, V) convert) => _map.map(convert);
}