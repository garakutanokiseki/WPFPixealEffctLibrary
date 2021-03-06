# [WPF]Windows Presentation Foundation Pixel Shader Effects Library

WPFで表示している画像にエフェクトをかける必要がありCPUへの負荷が低い方法を探していました。  

CodePlexで公開されている[http://wpffx.codeplex.com/:Windows Presentation Foundation Pixel Shader Effects Library]はPixeal Shaderを使用しており低負荷な動作が期待できます。  

サンプルの動作確認時にコンパイルが通らず困ったので、対処方法を含め導入方法を記載します。  

## 1.)コンパイル環境の準備  
　以下のツールが必要になりますので、入手しインストールします。  

　[Shader Effects BuildTask and Templates.zip:http://wpf.codeplex.com/downloads/get/40167]  
　※CodePlex内のWPF Futuresのページに掲載されています。  
　
　[Direct X SDK:http://www.microsoft.com/en-us/download/details.aspx?id=6812]  
　※2010/6/7版でコンパイルすることができました。  
　
## 2.)コンパイル  
　WPF版をコンパイルすると以下のエラーが発生します。  
　
```
Error    1    error X5608: Compiled shader code uses too many arithmetic instruction slots (65). Max. allowed by the target (ps_2_0) is 64.
```

このエラーは以下のフォーラムで改善方法が掲載されています。  

[https://wpffx.codeplex.com/discussions/73720:https://wpffx.codeplex.com/discussions/73720]  

この記事によるとripple.fxの38行目を以下のように修正を行えば解決できます。  

```
//float falloff = saturate(1-distance);  
float falloff = 1-distance;
```
