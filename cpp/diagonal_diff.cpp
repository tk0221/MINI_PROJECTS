#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int n;
    cin >> n;
  
    int matrix[n][n];
    int a=0, b=0;
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++){
            cin >> matrix[i][j];
            if(i == j) a += matrix[i][j];
            if(j == n - i - 1 ) b += matrix[i][j];            
        }
    }

    a = a > b ? a - b : b - a;
    cout << a << endl;
//  cout << abs(a-b) <<endl;
  
  
    return 0;
}
