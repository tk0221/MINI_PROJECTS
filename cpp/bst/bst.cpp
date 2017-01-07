#include <iostream>
#include <queue>
using namespace std;

struct Node {
  int data;
  Node* left;
  Node* right;
};

Node* Insert(Node* root, int data) {
  if(root == NULL) {
    root = new Node();
    root->data = data;
    root->left = root->right = NULL;
    return root;
  } else if (data <= root->data) {
    root->left = Insert(root->left, data);
  } else {
    root->right = Insert(root->right, data);
  }
  return root; // -_-
}
/* print_v1
print all data in BT.

*/
void printer_v1(Node* root) {
  cout << root->data <<endl;
  if(root->left) printer_v1(root->left);
  if(root->right) printer_v1(root->right);
}

void printer_v2(Node* root) {
  if(!root) return;
  queue<Node*> nQueue;
  int current = 1;
  int next = 0;
  nQueue.push(root);
  while(!nQueue.empty()) {
    Node *currentNode = nQueue.front();
    nQueue.pop();
    current--;
    if(currentNode) {
      cout << currentNode->data << "\t";
      nQueue.push(currentNode->left);
      nQueue.push(currentNode->right);
      next+=2;
    }
    if(current == 0) {
      cout << endl;
      current = next;
      next = 0;
    }
  }

}

int main() {
  Node* root = NULL;
  root = Insert(root, 50);
  root = Insert(root, 100);
  root = Insert(root, 40);
  root = Insert(root, 30);
  root = Insert(root, 60);
  root = Insert(root, 70);

  printer_v1(root);
  cout << endl << "V2" << endl;
  printer_v2(root);
  return 0;
}
