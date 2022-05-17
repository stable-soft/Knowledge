# 組み込みプログラムについて

- 「組込みソフトウェア開発向けコーディング作法ガイド［C言語版］ESCR」- <https://www.ipa.go.jp/sec/reports/20180215.html>
  - 改訂版  組込みソフトウェア開発向け コーディング作法ガイド［C言語版］ESCR Ver.3.0 - <https://www.ipa.go.jp/files/000064005.pdf>
  - ESCR C・C++/MISRA C・C++/CERT C・C++/CWE 対応表 PDF文書 - <https://www.ipa.go.jp/files/000065350.pdf>

- JIS X 25010 日本産業規格のソフトウェア品質に関する4つの特性 
- ![img](img/20220515_091741.png)
- システム及びソフトウェア製品の品質要求及び評価（ＳＱｕａＲＥ）－システム及びソフトウェア品質モデル - <https://www.jisc.go.jp/app/jis/general/GnrJISNumberNameSearchList?toGnrJISStandardDetailList>
  - 閲覧するためには、JISCのユーザ登録が必要です。

---

## 作法ガイドの用語

- ![img](img/20220515_091634.png)

## 補足

- `トライグラフ` → 使われているところを見たことがない。
- `型修飾子`  
  - `const` -  ミュータブル（不変）な変数を宣言するときに使用する
  - `restrict` - ※使っているところを見たことがない
  - `volatile` - ※たまに出現する

> 参考資料  
> 変数のスワップとrestrict修飾子 - <https://kunukunu.hatenablog.com/entry/2019/03/21/180004>

- `記憶クラス指定子`
  - `static`
  - `auto`
  - `extern`
  - `register`
