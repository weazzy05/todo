part of 'navigation_cubit.dart';

class NavigationStack {
  final List<PageConfig> _stack;

  const NavigationStack(this._stack);

  List<CustomPageParent> get pages =>
      List.unmodifiable(_stack.map((e) => e.page));

  List<PageConfig> get configs => _stack;

  int get length => _stack.length;

  PageConfig get first => _stack.first;

  PageConfig get last => _stack.last;

  void clear() {
    _stack.removeRange(0, _stack.length - 2);
  }

  bool canPop() {
    return _stack.length > 1;
  }

  NavigationStack pop() {
    if (canPop()) _stack.remove(_stack.last);
    return NavigationStack(_stack);
  }

  NavigationStack pushBeneathCurrent(PageConfig config) {
    _stack.insert(_stack.length - 1, config);
    return NavigationStack(_stack);
  }

  NavigationStack push(PageConfig config) {
    final stackCopy = _stack.toList();
    if (_stack.last != config) {
      stackCopy.add(config);
    }
    return NavigationStack(stackCopy);
  }

  NavigationStack replace(PageConfig config) {
    if (canPop()) {
      _stack.removeLast();
      push(config);
    } else {
      _stack.insert(0, config);
      _stack.removeLast();
    }
    return NavigationStack(_stack);
  }

  NavigationStack clearAndPush(PageConfig config) {
    _stack.clear();
    _stack.add(config);
    return NavigationStack(_stack);
  }

  NavigationStack clearAndPushAll(List<PageConfig> configs) {
    _stack.clear();
    _stack.addAll(configs);
    return NavigationStack(_stack);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other);
  }

  @override
  String toString() {
    return _stack.toString();
  }

  @override
  int get hashCode => _stack.hashCode;
}
