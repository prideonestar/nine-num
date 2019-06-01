#include "stdafx.h"
#include<iostream>
#include<string>
using namespace std;
int judge(char a[], int n)
{
	int i, j,flag=0;
	for (i = 0; i < n; i++)
	{
		
		for (j = 0; j < n; j++)
		{
			if (a[i] == a[j] && i != j)
			{
				flag = 1;
				return 0;
			}
		}
	}
	if (flag == 0)
		return 1;
	return 0;
}
int main()
{
	int n, squ;
	char n_char[9], squ_char[9];
	for (n = 100; n<1000; n++)
	{
		squ = n * n;
		if (squ >= 100000 && squ<1000000)
		{
			_itoa_s(n, n_char, 10);
			_itoa_s(squ, squ_char, 10);
			strcat_s(squ_char, n_char);
			/*for (i=0; i < 10; i++)
			{
				for (j=0; j < 10; j++)
				{
					if (squ_char[i] == squ_char[j] && i != j)
					{
						flag = 1;
						goto here;
					}
				}
			}
		here:
			if (flag == 0)
			{
				for (a = 0; a < 9; a++) 
				{
					cout << n_char[a];
				}
				cout << endl;
			}*/
			if (judge(squ_char, 9))
			{
				for (int a = 0; a < 9; a++)
				{
					cout << n_char[a];
				}
				cout << endl;
			}
		}
	}
	return 0;
}
