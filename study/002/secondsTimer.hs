import Control.Concurrent

main :: IO ()
main = do
  putStrLn "How long seconds? :"
  num :: Int <- readLn
  threadDelay (num * 1000 * 1000)
  putStrLn "Hello 🖐️！"