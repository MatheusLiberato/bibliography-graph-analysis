#
# Quais s�o os dez autores com o maior n�mero de publica��es?
#
MATCH (a:Author)-[:WRITE]-(p:Paper) 
RETURN a.name, COUNT(p) AS numberOfPapers 
ORDER BY numberOfPapers, a.name DESC LIMIT 10