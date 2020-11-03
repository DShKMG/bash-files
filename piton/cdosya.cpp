#include <iostream>
#include <string>

using namespace std;

void swapper(int *a);

int main(int argc, char const *argv[])
{
    int a[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
    swapper(a);
    for (int i = 0; i < 10; i++)
    {
        cout << "A[] = " << a[i] << endl;
    }
    string abc = {"abcdefg"};
    abc.replace(5, 2, "A++");
    cout << abc << endl;

    return 0;
}

void swapper(int *a) // In array there is no necessity do use dereferencing since they are together and next iteration will iterate to next indices
{
    for (int i = 0; i < 10; i++)
    {
        *(a + i) = i * 5;
    }
}