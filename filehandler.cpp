#include <iostream>
#include <cstdio>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, char const *argv[])
{
    cout << "Try\n";
    ifstream f;
    string line;
    string filepath = "*.sh";
    f.open(filepath);
    if (f.is_open())
    {
        while (getline(f, line))
        {
            cout << line << endl;
        }
        //Erase semicolomn at the end
        f.close();
    }
    return 0;
}
