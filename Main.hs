import Data.Conduit.Shell
import Options.Applicative as OA
import Imessage

data Options = Options
               { buddy :: String
               , message :: String
               }

main :: IO ()
main = execParser opts >>= runMain
  where
    opts = OA.info (helper <*> parseOptions)
           ( fullDesc
             <> progDesc "Interact with iMessage.app"
             <> header "imessage, a cli to send messages to iMessage.app")

parseOptions :: Parser Options
parseOptions = Options
               <$> strOption
               ( short 'b'
                 <> long "buddy"
                 <> metavar "NAME"
                 <> help "Who to send a message to." )
               <*> strOption
               ( short 'm'
                 <> long "message"
                 <> metavar "CONTENT"
                 <> help "The message contents to be sent." )

runMain :: Options -> IO ()
runMain (Options b m) = (run (do echo imessageOsaScript $= osascript "-" b m))
