main(List<String> args) {
  Base b = EntityA();
  Base c = EntityB();
  b('3');
  c.call('4');
  Map<String, Type> map = {'a': EntityA};
  (map['a'] as EntityA).call('s');
}

class Base {
  call(String num) {
    print('num=$num');
  }
}

class EntityA extends Base {
  call(String num) {
    print('numEntityA=$num');
  }
}

class EntityB extends Base {
  call(String num) {
    print('numEntityB=$num');
  }
}
