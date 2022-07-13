# Visual Studio Tools for Office (VSTO)について

Microsoftの各Officeアプリの拡張機能がVSTO

## 開発方法としては2種

- C#や、VBを用いたadd-inの開発
- javascriptを用いたadd-inの開発 → VSTO web

- それぞれ開発方法としては、Visual Studio 20xx や vscodeでの開発などがある。

### メリットとして

- VBAより拡張性豊か。外部サービスとの連携がいろいろできる。
  - 例えば、ASP.coreを使用してデータベースから取得した情報をExcelにプロットしたりとかできる。  
- C#はofficeとの相性がいい ※どちらもMicrosoft製なので

- マイナー開発方法だけど。。。
  - 業務でExcelやWordを使わない日はないのでアドオン一つ作ることができると仕事の効率が良くなると思う。

## 参考

- 【公式サイト】Visual Studio を使用して Office 用 VSTO アドインを作成する - <https://docs.microsoft.com/ja-jp/visualstudio/vsto/create-vsto-add-ins-for-office-by-using-visual-studio?view=vs-2022>
- <https://docs.microsoft.com/ja-jp/office/dev/add-ins/reference/overview/excel-add-ins-reference-overview>
