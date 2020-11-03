#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;

void createOutput(vector<string> a, string filepath)
{
    ofstream fo;
    filepath += ".txt";
    fo.open(filepath);
    string newlin;
    if (fo.is_open())
    {
        for (auto &&i : a)
        {
            fo << i;
        }
    }
    fo.close();
}

int main(int argc, char const *argv[])
{
    try
    {
        fstream f;
        string filepath = "readio.sh";
        string fileline;
        f.open(filepath);
        vector<string> filetext;
        if (f.is_open())
        {
            while (getline(f, fileline))
            {
                cout << fileline << endl;
                filetext.push_back(fileline);
            }
        }
        f.close();
        createOutput(filetext, filepath);
    }
    catch (const std::exception *e)
    {
        std::cerr << e << '\n';
    }

    return 0;
}
