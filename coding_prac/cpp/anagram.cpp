#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>
//why they provide this much header whywhy idk
using namespace std;

int number_needed(string a, string b) {
  int n = 0;  
  string aa = a, bb = b;
  sort(aa.begin(), aa.end());
  sort(bb.begin(), bb.end());
  
  int i = 0, j = 0;
  
  while(i < a.length() && j < b.length()) {
    if(aa[i] == bb[j]) {
      i++;
      j++;
    } else if(aa[i] - '0' > bb[j] - '0') {
      j++;
      n++;
    } else {
      i++;
      n++;
    }
  }
  //cout << "DEBUG 1 :" << i <<" " <<j <<endl;
  n += a.length() + b.length() - i - j ;
    
  return n;
}

int main(){
    string a;
    cin >> a;
    string b;
    cin >> b;
    cout << number_needed(a, b) << endl;
    return 0;
}
