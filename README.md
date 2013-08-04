# Rock-Paper-Scissors

This web application allows users to play rock-paper-scissors, view the overall results and lifetime stats of anyone who has ever played.
It uses a front end framework, jqPlot, and connects to three routes.

* Ruby version: 2.0.0p247

* Rails version: 4.0.0


## Front End Framework
[Zurb Foundation] (http://foundation.zurb.com/), this responsive framework allowed for quick front end design.

## jqPlot
[jqPlot] (http://www.jqplot.com/), a javascript graphing library was used to display overall wins, losses and ties.

## Routes

| Verb | Path   | Params |
|------|--------|--------|
| GET  | /      | -      |
| GET  | /throws| -      |
| POST | /throw | :sign  |
