#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <bits/stdc++.h>

using namespace std;

string removeSpaces(string str)
{
    stringstream ss;
    string temp;

    // Storing the whole string
    // into string stream
    ss << str;

    // Making the string empty
    str = "";

    // Running loop till end of stream
    while (!ss.eof())
    {

        // Extracting word by word from stream
        ss >> temp;

        // Concatenating in the string to be
        // returned
        str = str + temp;
    }
    return str;
}

int main(int argc, char const *argv[])
{
    fstream f;
    string filenam = "conditional/backup.sh";
    string line;
    string fileline;
    vector<string> filetext;
    cout << "File handler\n";
    cout << "Today : " << __DATE__ << "\tTime : " << __TIME__;
    f.open(filenam);
    if (f.is_open())
    {
        while (getline(f, line))
        {
            //cout << line << endl;
            fileline += line;
            filetext.push_back(line);
        }
    }
    cout << removeSpaces(fileline) << endl;
    line = removeSpaces(fileline);
    for (auto &&i : line)
    {
        cout << i << endl;
    }

    /*
    cout << endl
         << "Printing the saved array :\n";
    for (auto &&i : filetext) // Memory address of vector will return the initial vector variable and itiration will result in
    // Iterating through the components since they are like arrays where memory values are stored together
    {
        cout << i << endl;
    }*/

    return 0;
}
