// CMakeProject2.cpp : アプリケーションのエントリ ポイントを定義します。
//

#include "EnbeddedClangSample.h"

int main()
{
	fprintf(stdout, "Hello EnbeddedClangSample");

	char* str;
	str = (char*)malloc(sizeof(char) * 100);
	memset(str, 0 ,100);
	
	return 0;
}
