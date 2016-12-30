#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
   int n;
    cin >> n;
    vector<int> a(n);
    for(int a_i = 0;a_i < n;a_i++){
       cin >> a[a_i];
    }
  
  bool sorted = false;
  int cnt = 0;
  while(!sorted) {
    sorted = true;
    for(int i = 0; i < n - 1; i++) {
      if(a[i] > a[i+1]){
        cnt++;
        a[i+1] ^= a[i];
        a[i] ^= a[i+1];
        a[i+1] ^= a[i]; //its not really hmm safe imo
        sorted=false;
      }
    }
  }
  
  cout << "Array is sorted in "<< cnt << " swaps." <<endl;
  cout << "First Element: " << a[0] << endl;
  cout << "Last Element: " << a[n-1] << endl;
  
  return 0;
}
