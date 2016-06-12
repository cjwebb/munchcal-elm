import Html exposing (..)
import Html.Attributes exposing (style)

main =
  div [mainDivStyle] [
    ul [ulStyle]
     [ renderDay "Mon" ["Salmon Pasta"]
     , renderDay "Tue" ["Bratwurst & Frozen Veg"]
     , renderDay "Wed" ["Casserole"]
     , renderDay "Thu" ["Faggots & Green Beans"]
     , renderDay "Fri" ["Fish Pie"]
     , renderDay "Sat" []
     , renderDay "Sun" ["Roast Beef"]
     ]
  ]

mainDivStyle : Attribute ()
mainDivStyle =
  style
    [("width","800px")
    ,("margin","0 auto")
    ,("margin-top","50px")
    ,("font-family","Helvetica Neue,Helvetica,Arial,sans-serif")
    ]

ulStyle : Attribute ()
ulStyle =
  style
    [("list-style-type", "none")
    ]

renderDay : String -> List String -> Html msg
renderDay name meals =
  li [renderDayStyle] [
    div []
      [ h2 [] [ text name ]
      , p [] [ text (Maybe.withDefault "???" (List.head meals)) ]
      ]
  ]

renderDayStyle : Attribute msg
renderDayStyle =
  style
    [("border-bottom","1px solid black")
    ]

