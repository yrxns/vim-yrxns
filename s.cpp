#include <iostream>

int main() {
  int s = 3;
  int assssss = 4;
  int ss = 5;
  float d = 1;
  std::cout << "..." << std::endl;

  int aaaaaaaaaaaaa;
  int aa;
  double c;

  struct test demo[] = {
      {56,    23, "hello"},
      {-1, 93463, "world"},
      { 7,     5,    "!!"}
  };

  while (true) {}
  while (true) { continue; }

  class Foo {
    void f() { foo(); }
  };
  void f() { foo(); }
  void f() {}

  auto lambda = [](int x, int y) {
    int a;
    int b;
    int c = a + b;
    return x < y;
  };
  sort(a.begin(), a.end(), [](int x, int y) { return x < y; });

  void f() {
    f(aaaaaaaaaaaaaaaaaaaa, aaaaaaaaaaaaaaaaaaaa,
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa);
  }

  if (foo()) {
  } else {
  }
  for (int i = 0; i < 10; ++i) {}

  template <typename T>
  concept C =
  ...;

  template <typename T>
  int foo(T s) {
    int a;
    int b;
  }

  class Foo : Base1, Base2 {};

  vector<int> x{1, 2, 3, 4};
  vector<T> x{{}, {}, {}, {}};
  f(MyMap[{composite, key}]);
  new int[3]{1, 2, 3};

  someMethod([](SomeReallyLongLambdaSignatureArgument foo) { return; });

  someMethod(someOtherMethod(
      [](SomeReallyLongLambdaSignatureArgument foo) { return; }));

  int* a;

  int const a;
  int const* a;

  const int a;
  const int b;

  int& a;

  int foo() { int a; };

  (int)i;
}
