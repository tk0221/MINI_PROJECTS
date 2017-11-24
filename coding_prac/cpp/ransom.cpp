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

using namespace std;

bool ransom_note(vector<string> magazine, vector<string> ransom) {
    int size_m = magazine.size();
    int size_r = ransom.size();
    
    if (size_m < size_r) return false;
    int cnt = 0;
  
    sort(magazine.begin(), magazine.end());
    sort(ransom.begin(), ransom.end());
  
    //run r*m ~= O(n^2) ?
   
    for(auto const& r: ransom) { 
    auto it = find(magazine.begin(), magazine.end(), r);
      if(it != magazine.end()) {
        magazine.erase(it);
        cnt++;
      }else{
        return false; // without this it will timeout 
      }
    }
    if (cnt == ransom.size()) return true;
    return false;
}

int main(){
    int m;
    int n;
    cin >> m >> n;
    vector<string> magazine(m);
    for(int magazine_i = 0;magazine_i < m;magazine_i++){
       cin >> magazine[magazine_i];
    }
    vector<string> ransom(n);
    for(int ransom_i = 0;ransom_i < n;ransom_i++){
       cin >> ransom[ransom_i];
    }
    if(ransom_note(magazine, ransom))
        cout << "Yes\n";
    else
        cout << "No\n";
    return 0;
}
