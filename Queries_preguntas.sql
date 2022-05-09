use vuelos_mexico;
-- Preg 1. ¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año?
SELECT 
	vuelos.id_aeropuerto,
	YEAR(dia) AS anio,
	nombre_aeropuerto,
	COUNT(*) AS frecuencia_uso
FROM 
	vuelos
LEFT JOIN aeropuertos ON vuelos.id_aeropuerto = aeropuertos.id_aeropuerto
GROUP BY 
	id_aeropuerto,
	anio
ORDER BY 
	frecuencia_uso DESC;
  
-- El aeropuerto Benito Juarez y La Paz son los más usados con 3 veces cada uno

-- Preg 2. ¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año?
SELECT 
	vuelos.id_aerolinea,
	YEAR(dia) AS anio,
	nombre_aerolinea, 
	COUNT(*) AS frecuencia_uso
FROM 
	vuelos
LEFT JOIN aerolineas ON vuelos.id_aerolinea = aerolineas.id_aerolinea
GROUP BY 
	id_aerolinea,
    anio
ORDER BY 
	frecuencia_uso DESC;

-- Las Aerolineas con la mayor cantidad de vuelos en el año 2021 fueron Aeromar e Interjet con 3 cada una.

-- Preg 3. ¿En qué día se han tenido mayor número de vuelos?
SELECT 
  dia, 
  count(*) AS frecuencia_uso
FROM 
  vuelos
GROUP BY 
  dia
ORDER BY 
	frecuencia_uso DESC;

-- El día con la mayor cantidad de vuelos fue el  2 de Mayo del 2021, con 6. 

-- Preg 4. ¿Cuáles son las aerolíneas que tienen mas de 2 vuelos por día?
SELECT 
	vuelos.id_aerolinea,
	nombre_aerolinea,
	dia, 
	count(*) AS frecuencia
FROM 
	vuelos
LEFT JOIN aerolineas ON vuelos.id_aerolinea = aerolineas.id_aerolinea
GROUP BY
	id_aerolinea,
    dia
HAVING 
	frecuencia > 2;
