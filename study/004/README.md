# Haskell 超入門

## このフォルダーについて

[Haskell 超入門](https://qiita.com/7shi/items/145f1234f8ec2af923ef)
[Haskell の環境構築 2023](https://zenn.dev/mod_poppo/articles/haskell-setup-2023)

## GHC について

GHC は Glasgow Haskell Compiler の略で、Haskell のコンパイラです。
Haskell のコードをコンパイルして実行ファイルを生成することができます。

### インストール

macOS で GHC をインストールする場合、Homebrew を使うと簡単です。

```sh
brew install ghc
```

## Haskell の ファイルを実行する方法

Haskell のファイルを実行するには、まず GHC でコンパイルします。

```sh
ghc hello.hs
```

すると、`hello` という実行ファイルが生成されます。
（他にもいくつかのファイルが生成されますが、hello.hi, hello.o など）

生成された実行ファイルを実行します。

```sh
./hello
```

すると、`Hello, World!` と表示されるはずです。



## パターンマッチとガードの使いわけ

パターンマッチとガードは、どちらも条件分岐を行うための構文ですが、使いわけがあります。

### パターンマッチ


```hs
fact 0 = 1
fact n = n * fact (n - 1)
```

パターンマッチは、引数のパターンによって処理を分岐する構文です。

上記の例では、`fact 0 = 1` というパターンが先に評価され、`n` が `0` の場合は `1` を返します。

`fact n = n * fact (n - 1)` というパターンは、`n` が `0` でない場合に評価されます。

### ガード

```hs
fact n
  | n == 0 = 1
  | otherwise = n * fact (n - 1)
```

ガードは、`|` で区切られた条件によって処理を分岐する構文です。

上記の例では、`n == 0` の場合は `1` を返し、それ以外の場合は `n * fact (n - 1)` を返します。

パターンマッチとガードは、どちらも条件分岐を行うための構文ですが、使いわけがあります。

パターンマッチは、引数のパターンによって処理を分岐するのに対して、ガードは条件によって処理を分岐します。


