// CMakeProject2.cpp : アプリケーションのエントリ ポイントを定義します。
//

#include "EnbeddedClangSample.h"


/**
 * @fn
 * メイン関数
 * @brief callocを用いたexample
 * @detail 詳細な説明
 */
int main()
{
	fprintf(stdout, "Hello EnbeddedClangSample");
    example_calloc();
}

void example_calloc(void)
{
    int* ptr;
    int* p;
    int i;

    /* 500個のintサイズのメモリを確保 */
    ptr = (int*)calloc(500, sizeof(int));
    if (ptr == NULL) { // メモリが確保できない場合はNULLで返却される
        printf("メモリが確保できません\n");
        exit(EXIT_FAILURE);
    }

    p = ptr;
    for (i = 0; i < 500; i++) {
        *p = i;
        printf("%d ", *p);
        p++;
    }

    /* メモリの開放 */
    free(ptr);

    return;
}