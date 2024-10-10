-- SPDX-License-Identifier: MPL-2.0

-- | https://github.com/sayo-hs/heftia/tree/v0.3.0?tab=readme-ov-file#two-interpretations-of-the-censor-effect-for-writer
module Main where

import Control.Monad.Hefty (liftIO, runEff, type (<:), type (<<:))
import Control.Monad.Hefty.Writer (runTell, runWriterHPost, runWriterHPre)
import Data.Effect.Writer (Tell, WriterH, censor, tell)

hello :: (Tell String <: m, Monad m) => m ()
hello = do
    tell "Hello"
    tell " world!"

censorHello :: (Tell String <: m, WriterH String <<: m, Monad m) => m ()
censorHello =
    censor
        ( \s ->
            if s == "Hello"
                then "Goodbye"
                else
                    if s == "Hello world!"
                        then "Hello world!!"
                        else s
        )
        hello

main :: IO ()
main = runEff do
    (sPre, _) <-
        runTell
            . runWriterHPre @String
            $ censorHello

    (sPost, _) <-
        runTell
            . runWriterHPost @String
            $ censorHello

    liftIO $ putStrLn $ "Pre-applying: " <> sPre
    liftIO $ putStrLn $ "Post-applying: " <> sPost

{-
Pre-applying: Goodbye world!
Post-applying: Hello world!!
-}
