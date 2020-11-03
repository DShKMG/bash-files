#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main(int argc, char const *argv[])
{
    ofstream f;
    string filepath, fname;
    cout << "Enter a filename : " << endl;
    cin >> fname;
    filepath = "piton/" + fname + ".txt";
    f.open(filepath);
    try
    {
        if (f.is_open())
        {
            // File handling process starts here
            f << ""
                 ""
                 ""; // Starts as comments
            f << "#This file created by file handling process via C++\n";
            f << "#Original file : " << __FILE__ << endl
              << "#Compiled with " << __cplusplus << endl;
            f << "#Date : " << __DATE__ << "\tTime : " << __TIME__ << endl;
            f << ""
                 ""
                 ""; // Ends as comments
            cout << "Please enter your input below and press enter to skip to the next line\n";
            cout << "If you want to terminate it use semi-colomn Suppresor then press enter\n";
            char inputC;
            do
            {
                cin >> inputC;
                f << inputC;
            } while (inputC != ';');
        }
        else
        {
            cout << "File cannot be opened!\n";
            throw f;
        }
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
    }

    return 0;
}
