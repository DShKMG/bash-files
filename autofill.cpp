#include <iostream>
#include <fstream>

using namespace std;

int main(int argc, char const *argv[])
{
    ofstream f;
    string fname, fpath, exts;
    exts = ".py";
    fpath = "piton/";
    cout << "Filename : " << endl;
    cin >> fname;
    f.open(fpath + fname + exts);
    try
    {
        if (f.is_open())
        {
            char c;
            f << "#" << __DATE__ << endl
              << "#"
              << __TIME__ << endl
              << "#"
              << __cplusplus << endl
              << "#" << __FILE__;
            f << endl;
            cout << "Semi colomn to end the file" << endl;
            do
            {

                cin >> c;
                if (c != ';')
                {
                    f << c;
                }
            } while (c != ';');
            f.close();
        }
        else
        {
            throw f;
        }
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
    }

    return 0;
}
