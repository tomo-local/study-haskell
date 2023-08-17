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
        if "-a" `elem` args
          then currentContents
          else filterNonSpecial currentContents
      contentsText = unwords filteredContents

  putStrLn contentsText