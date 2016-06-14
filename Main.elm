import Html exposing (..)
import Html.Attributes exposing (..)

type alias Meal =
  { date : String
  , name : String
  }

initialMeals : List Meal
initialMeals =
  [{ date = "Mon", name = "Salmon Pasta" }
  ,{ date = "Tue", name = "Bratwurst & Frozen Veg" }
  ,{ date = "Wed", name = "Casserole" }
  ,{ date = "Thu", name = "Faggots & Green Beans" }
  ,{ date = "Fri", name = "Fish Pie" }
  ,{ date = "Sat", name = "???" }
  ,{ date = "Sun", name = "Roast Beef" }
  ]

main =
  div [mainDivStyle]
    [ p [titleStyle] [ text "For the week beginning 13th June" ]
    , ul [ulStyle] (List.map renderDay initialMeals)
    ]

titleStyle : Attribute ()
titleStyle =
  style
    [("margin-left", "40px")
    ,("font-size", "14px")
    ]

mainDivStyle : Attribute ()
mainDivStyle =
  style
    [("margin","0 auto")
    ,("margin-top","50px")
    ,("font-family","Helvetica Neue,Helvetica,Arial,sans-serif")
    ,("color", "#333")
    ]

ulStyle : Attribute ()
ulStyle =
  style
    [("list-style-type", "none")
    ]

renderDay : Meal -> Html msg
renderDay meal =
  li [] [
    div []
      [ h2 [] [ text meal.date ]
      , p [] [ text meal.name ]
      ]
  ]

