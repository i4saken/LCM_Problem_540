int lcm(int x, int y) {
  int greater;
  if (x>y) greater=x;
  else greater=y;

  while (true) {
    if ((greater%x==0)&&(greater%y==0)) {
      return greater;
    }
    greater++;
  }
}

void setup() {
  int count=0;
  for (int i=1; i<=540; i++) {
    for (int a=i; a<=540; a++) {
      if (lcm(i, a)==540) {
        println(i+","+a);
        count++;
      }
    }
  }
  println(count);
}

