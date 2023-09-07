import Data.List (intercalate)
import System.Directory
  ( createDirectory,
    getCurrentDirectory,
    getDirectoryContents,
    setCurrentDirectory,
  )
import System.Environment (getArgs)

filterNonSpecial :: [String] -> [String]
filterNonSpecial = filter (\x -> x /= "." && x /= "..")

main = do
  args <- getArgs
  currentPath <- getCurrentDirectory
  currentContents <- getDirectoryContents currentPath
  let filteredContents =
        {-
          TODO:　-Aの場合を実装する
          -Aの場合は、. と .. を除いた、すべてのファイルを出力する 下記のURLに使用がある。
          https://atmarkit.itmedia.co.jp/ait/articles/1606/27/news018.html
        -}
        if "-a" `elem` args
          then currentContents
          else filterNonSpecial currentContents
      contentsText = unwords filteredContents

  putStrLn contentsText
