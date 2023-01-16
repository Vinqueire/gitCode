#include <iostream>
using namespace std;

long long factorial_recursive(int n) {
    if (n < 2) {
        return 1;
    } else {
        return factorial_recursive(n - 1) * n;
    }
}

int main() {
    int n;
    cout << "n = ";
    cin >> n;
    cout << n << "! = " << factorial_recursive(n) << endl;
    return 0;
}
