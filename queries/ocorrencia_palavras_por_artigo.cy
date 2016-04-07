#
# Quais s�o as palavras com o maior n�mero de apari��es em artigos distintos?
#
MATCH (p:Paper)-[:CONTAINS]-(w:Word) 
RETURN w.value, COUNT(p) AS numberOfAppearances
ORDER BY numberOfAppearances DESC LIMIT 10