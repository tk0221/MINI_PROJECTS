
using namespace std;

int lonely_integer(vector < int > a) {
    
  int n = 0;
  for (int i = 0; i < a.size(); i++){
    n ^= a[i];
  }
  return n;
}

int main(){
    int n;
    cin >> n;
    vector<int> a(n);
    for(int a_i = 0;a_i < n;a_i++){
       cin >> a[a_i];
    }
    cout << lonely_integer(a) << endl;
    return 0;
}
