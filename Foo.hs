{-# LANGUAGE ForeignFunctionInterface, OverloadedStrings #-}
module Foo where

import qualified Data.Text as T

foreign export ccall foo :: Int -> IO Int

foo :: Int -> IO Int
foo n = return $ n + 1

-- UNCOMMENT the below to break it...
foreign export ccall bar :: Int -> IO ()
bar :: Int -> IO ()
bar n = putStrLn $ T.unpack $ T.concat $ ["." :: T.Text | _ <- [1..n]]
