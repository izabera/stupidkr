int myputs2();
int myputs3(const char *, ...);
int myputs4(const char *);

int main() {
  myputs1("foo", 1.1, 2.2, 3.3, 4.4);
  myputs1("bar", 1. , 2  , 3  , 4.4);
  myputs1("baz");

  myputs2("foo", 1.1, 2.2, 3.3, 4.4);
  myputs2("bar", 1. , 2  , 3  , 4.4);
  myputs2("baz");

  myputs3("foo", 1.1, 2.2, 3.3, 4.4);
  myputs3("bar", 1. , 2  , 3  , 4.4);
  myputs3("baz");

/*myputs3("foo", 1.1, 2.2, 3.3, 4.4);*/
/*myputs3("bar", 1. , 2  , 3  , 4.4);*/
  myputs4("baz");
  return 13;
}
