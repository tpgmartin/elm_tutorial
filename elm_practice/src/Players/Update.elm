module Players.Update exposing (..)

import Navigation
import Players.Messages exposing (Msg(..))
import Players.Models exposing (Player)

update : Msg -> List Player -> ( List Player, Cmd Msg )
update message players =
  case message of
    FetchAllDone newPlayers ->
      ( newPlayers, Cmd.none )
    
    FetchAllFail error ->
      ( players, Cmd.none )

    ShowPlayers ->
      ( players, Navigation.newUrl "#players" )
    
    ShowPlayer id ->
      ( players, Navigation.newUrl ("#players" ++ (toString id)) )
