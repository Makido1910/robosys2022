# 計算プログラム

* plus mul loc 3つのプログラムのダウンロードと実行の方法
  * plus:入力された数字をすべて足す
  * mul:入力された数字をすべて掛ける
  * loc:三角形の三辺をa,b,cとしたとき、cの対角のcosの値を求める(余弦定理)
 
![test](https://github.com/Makido1910/robosys2022/actions/workflows/test.yml/badge.svg)

# ダウンロード、プログラム実行方法

* ダウンロード方法

```
$ git clone https://github.com/Makido1910/robosys2022
```

* robosys2022ディレクトリに移動する

```
$ cd robosys2022/
```

* plusを実行する

```
$ echo 1 2 3 4 5 > numA               #echoの後に入力した数列をnumAというファイルに代入する

$ cat numA                            #横一列の数列になっていることを確認
1 2 3 4 5

$ cat numA |tr ' ' '\n'               #numAに代入された数列を縦一列にする
1
2
3
4
5

$ cat numA |tr ' ' '\n' | ./plus      #コマンドの実行
15

##または##

$ seq 5 | ./plus                      #1からnまでの値をすべて足す
15
```

* mulを実行する

```
$ echo 1 2 3 4 5 > numB               #plusと同様

$ cat numB |tr ' ' '\n'
1
2
3
4
5

$ cat numB |tr ' ' '\n' | ./mul
120

##または##

$ seq n | ./mul                       #1からnまでの値をすべて掛ける
120
```

* locを実行する

```
$ echo 5 4 3 > numC                   #plusと同様(3つの数字のみ)

$ cat numC
5 4 3

$ cat numC |tr ' ' '\n'
5
4
3

$ cat numC |tr ' ' '\n' | ./loc
0.8
```

# テスト環境
* Ubuntu 22.04
* python
  * テスト済: 3.7～3.10

# ライセンス
* このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されます。
* © 2022 Makido1910
