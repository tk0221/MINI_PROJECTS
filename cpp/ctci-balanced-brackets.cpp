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

bool func(char l, char r) {
  if ((l == '{' && r == '}') || (l == '(' && r == ')')|| (l == '[' && r == ']'))
    return true;
  return false;
}

bool is_balanced(string exp) {
  stack<char> stack;
  for (int i = 0; i < exp.length(); i++) {
    if(stack.empty()) {
      stack.push(exp[i]);
    }else if(func(stack.top(), exp[i])) {
      stack.pop();
    }else {
      stack.push(exp[i]);
    }
  }
  
  return stack.empty();
  
    
}

int main(){
    int t;
    cin >> t;
    for(int a0 = 0; a0 < t; a0++){
        string expression;
        cin >> expression;
        bool answer = is_balanced(expression);
        if(answer)
            cout << "YES\n";
        else cout << "NO\n";
    }
    return 0;
}
