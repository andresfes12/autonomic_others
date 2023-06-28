functor
import Application argv

fun {RoundNumber Number}
   if Number >= 0 then
      {Float.round Number+0.5}
   else
      {Float.round Number-0.5}
   end
end

fun {SolveCases Cases}
   for {Record.case Index Value} in Cases do
      Result = {RoundNumber Value.1/Value.2}
      {System.showInfo Result}
   end
end

proc {Main Args}
   Cases = Args.1
   {SolveCases Cases}
end

{Main {Application.getArgs argv}}

