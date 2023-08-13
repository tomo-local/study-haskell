import Control.Concurrent (threadDelay)

-- recursion
countdown :: Int -> IO ()
countdown n
    | n <= 0 = putStrLn "💣 Boom! 💣"
    | otherwise = do
        print n
        threadDelay (1000 * 1000)
        countdown (n - 1)

main :: IO ()
main = do
    putStrLn "Enter a starting seconds:"
    num :: Int <- readLn

    putStrLn "Starting countdown..."
    countdown num