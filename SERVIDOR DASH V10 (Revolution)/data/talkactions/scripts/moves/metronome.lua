function onSay(cid)
local spell = {[1]="eletricstorm", [2]="leafstorm", [3]="magmastorm", [4]="hydropump", [5]="fallingrocks"}
  doCreatureExecuteTalkAction(cid, spell[math.random(1, 5)],1)
end