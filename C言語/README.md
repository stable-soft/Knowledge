## C言語スニペット  

- malloc() ...指定バイト分、メモリ領域を確保する関数。  

```C
#include <stdlib.h>
void *malloc(size_t size)
[引数]
size_t size：確保したいメモリのバイトサイズ
[戻り値]
成功時：確保したメモリブロックを指すポインタ
失敗時：NULL（メモリ不足により指定サイズ分のメモリが確保できないとき）
```

- memcpy() ...nバイトメモリブロックのコピーを行う関数。  

```C
#include <string.h>
void *memcpy(void *buf1, const void *buf2, size_t n);
[引数]
void *buf1：コピー先のメモリブロック
const void *buf2：コピー元のメモリブロック
size_t n：コピーバイト数
[戻り値]
buf1の値
```

- memset()  ...nバイトメモリブロックのセットを行う関数。

```C
#include <string.h>
void *memset(void *buf, int ch, size_t n);
[引数]
void *buf：セット先のメモリブロック
int ch：セットする文字
size_t n：セットバイト数
[戻り値]
bufの値
```

- ポインタ変数 ...アドレスの値を格納するための変数。  

```C
int a;　// 変数
a = 3;  // aに3という値を設定

int *b; // ポインタ変数
b = &a; // aのアドレスをbに渡している
```

- ビット演算子 ...ビット計算する為に用いられる計算記号。（&,|,^,~)

```C
int a = 0x01;
int b = 0x11;
int c = a & b // (0x01 AND 0x11)の結果...0x01が設定される
```

- extern ...外部ファイルに（変数or関数）が定義されているときに使用する。  

```C
extern (データ型) (変数名)
```

[注意点]
externは「宣言」なので、externで定義した変数の初期化をしてはならない。  
関数の場合はexternの表記を省略することができる。  

- static ...**静的**に存在する領域にデータを保持する  
  - 静的 ...あらかじめ与えられた状態が変化しないこと  
  - 動的 ...状態や構成が状況に応じて変化すること  
