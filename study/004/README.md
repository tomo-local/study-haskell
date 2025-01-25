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

