#include <iostream>
using namespace std;

long long factorial_iterative(int n) {
    long long factorial = 1;
    for (int i = 1; i <= n; i++) {
        factorial *= i;
    }
    return factorial;
}

int main() {
    int n;
    cout << "n = ";
    cin >> n;
    cout << n << "! = " << factorial_iterative(n) << endl;
    return 0;
}
