
#include <iostream>
#include <fstream>
#include <iomanip>
#include <vector>
#include <stdlib.h>
#include <string>

using namespace std;

struct Mem {
	vector<int> v;
	int & operator[](int i) {
		if( i<0 ) throw "Access violation: ";
		if( i>=v.size() ) v.resize(i+1,0);
		return v[i];
	}
	int size() {
		return v.size();
	}
};
Mem mem;
int ip=0;
bool loadfrom(istream &in) {
	while(1) {
		string s;
		in>>s;
		if( !in || (s.size() < 1)) break;
		mem[ip++] = atoi(s.c_str());
	}
	return true;
}
bool load(const char *f) {
	ifstream in(f);
	if( !in ) {
		cout<<"Cannot open "<<f<<"\n";
		return false;
	}
	return loadfrom(in);
}
void usage() {
	cout<<"Usage: sqrun [-stdin] [-outname=OUT] [-outaddr=-1] "
	    "[-inname=IN] [-inaddr=-1] [-iotype=c|i] file1 file2 file3 ...\n";
}
int main(int ac, char *av[]) {
	if( ac < 2 ) {
		usage();
		return 0;
	}
	for( int i=1; i<ac; i++ ) {
		if( av[i][0] != '-' ) continue;
	}
	for( int i=1; i<ac; i++ ) if( av[i][0] != '-' ) if( !load(av[i]) ) return 1;
	ip=0;
	try {
		while(1) {
			if( ip>=mem.size() ) break;
			int a = mem[ip++];
			int b = mem[ip++];
			if( ip>=mem.size() ) {
				cerr<<"Incomplete instruction\n";
				break;
			}
			int c = mem[ip++];
			if( a == -1 && b==-1 ) {
				int x=0;
				char c;
				cin.get(c);
				x = (unsigned char)c;
				if(cin) cout<<c<<flush;
			} else if( a == -1 ) {
				int x=0;
				char c;
				cin.get(c);
				x = (unsigned char)c;
				if(cin)
					mem[b] += x;
				else
					mem[b] -= 1;
				if( mem[b]<=0 ) ip=c;
			} else if( b==-1 ) {
				cout<<(unsigned char)(mem[a])<<flush;
			} else {
				int ma = mem[a];
				mem[b] -= ma;
				if( mem[b]<=0 ) ip=c;
			}
			if( ip<0 ) break;

		}
	} catch(const char *s) {}
}
