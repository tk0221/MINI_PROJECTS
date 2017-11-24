#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

struct Player {
    string name;
    int score;
}; 

bool operator < (Player &p1, Player &p2) {
  return p1.score != p2.score ? p1.score > p2.score : p2.name > p1.name; 
  //it will sort the other way hi-> low
}

vector<Player> comparator(vector<Player> players) {

  sort(players.begin(), players.end());
  return players;
    
}

int main() {
    
    int n;
    cin >> n;
    vector< Player > players;
    string name;
    int score;
    for(int i = 0; i < n; i++){
        cin >> name >> score;
        Player p1;
        p1.name = name, p1.score = score;
        players.push_back(p1);
    }
    
    vector<Player > answer = comparator(players);
    for(int i = 0; i < answer.size(); i++) {
        cout << answer[i].name << " " << answer[i].score << endl;
    }
    return 0;
}
