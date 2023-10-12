-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: drunkgames
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bebidas`
--

DROP TABLE IF EXISTS `bebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bebidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `ingredientes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebidas`
--

LOCK TABLES `bebidas` WRITE;
/*!40000 ALTER TABLE `bebidas` DISABLE KEYS */;
INSERT INTO `bebidas` VALUES (1,'Roncola','Ron y Coca-cola'),(2,'Mojito','Ron, Menta, Azúcar y 7UP'),(3,'Piña Colada','Ron, Leche de coco y Zumo de piña'),(4,'Caipirinha','Cachaça, Zumo de limón y Azúcar'),(5,'Cubalibre','Ron, Coca-cola y Zumo de limó'),(6,'Margarita','Tequila, Triple seco, Zumo de limón y Sal'),(7,'Gin Tonic','Ginebra, Tónica y Zumo de limón'),(8,'Sex on the Beach','Vodka, Licor de melocotón, Zumo de arándano y Zumo de naranja'),(9,'Daiquiri','Ron, Azúcar y Zumo de limón'),(10,'Pisco Sour','Pisco, Lima, Azúcar y Clara de huevo'),(11,'Whisky Sour','Whisky, Azúcar y Zumo de limón'),(12,'Tequila Sunrise','Tequila, Zumo de naranja y Grenadina'),(13,'Amaretto Sour','Amaretto, Zumo de limón y Azúcar'),(14,'Bloody Mary','Vodka, Zumo de tomate, Salsa picante, Sal y Pimienta'),(15,'Paloma','Tequila, Zumo de naraja, Limón y Sal (para el borde del vaso)'),(16,'Fresa colada','Ron, Fresas y Leche de coco'),(17,'Vodkacola','Vodka y Coca-Cola'),(18,'Manhattan','Whisky y Vermut rojo'),(19,'Negroni','Ginebra y Campari'),(20,'Roy Rogers','Schweppes ginger ale, Zumo de limón y Coca-Cola');
/*!40000 ALTER TABLE `bebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drunkwebpage`
--

DROP TABLE IF EXISTS `drunkwebpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drunkwebpage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_min_jugadores` int DEFAULT NULL,
  `numero_max_jugadores` int DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` longtext,
  `imagen` varchar(255) DEFAULT NULL,
  `utiles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drunkwebpage`
--

LOCK TABLES `drunkwebpage` WRITE;
/*!40000 ALTER TABLE `drunkwebpage` DISABLE KEYS */;
INSERT INTO `drunkwebpage` VALUES (1,4,20,'Moneda extrema','Los jugadores se reúnen en círculo para empezar el juego. Uno es seleccionado al azar para formular la primera pregunta en secreto a su vecino de la derecha, sobre quién es más probable que realice cierta acción, como emborracharse más. La respuesta a la pregunta debe ser otro jugador, elegido por quien formuló la pregunta. Posteriormente, el jugador que hizo la pregunta esconde una moneda en una de sus manos y le pregunta a la persona seleccionada en qué mano está la moneda. Si acierta la ubicación de la moneda, la persona elegida revela la pregunta y debe beber. Si se equivoca, el jugador que formuló la pregunta en esa ronda debe beber. Después de cada ronda, la persona elegida como respuesta recibe la moneda y el jugador que formuló la pregunta en la ronda anterior inicia el proceso para la siguiente ronda del juego.','coin','Una moneda'),(2,2,10,'Cadena vocal','En este juego ingenioso, todos los participantes reúnen sus energías para sortear, de forma completamente aleatoria, quién será el líder de la ronda. El líder asume un papel esencial, ya que debe elegir una vocal y dar inicio a la cadena. La diversión comienza cuando el jugador seleccionado inicia la ronda y todos los demás deben seguir su ejemplo.Cada jugador, en su turno, debe repetir las palabras que han sido pronunciadas por los demás jugadores en la ronda, pero aquí está la trampa: deben sustituir todas las vocales de esas palabras por la vocal elegida por el líder al comienzo de la ronda. Esto significa que cada palabra se modifica de acuerdo a la elección de la vocal inicial. Este proceso se repite turno tras turno, y la tensión aumenta a medida que los participantes se esfuerzan por mantener el ritmo y la creatividad.Sin embargo, en algún momento, alguien inevitablemente cometerá un error. Cuando eso sucede, el jugador en falta enfrenta una crucial elección. Tiene la opción de redimirse, aceptando el castigo de beber dos tragos como consecuencia de su error, o si se siente valiente, puede intentarlo nuevamente. Pero, en caso de fallar en ese segundo intento, el castigo se vuelve más severo y debe beber cinco tragos.Un ejemplo de cómo funciona esto sería si, por ejemplo, la frase inicial es \'La casa de mi hijo es marrón,\' y el líder elige la vocal \'i\' al principio de la ronda. En este caso, el siguiente jugador tendría que añadir una palabra a la cadena, siguiendo la pauta establecida, por ejemplo, \'Li cisi di mi hiji is mirrin.\' El juego es un reto tanto para la memoria como para la pronunciación, lo que lo convierte en una experiencia entretenida y llena de emoción para todos los participantes.','chain','Ninguno'),(3,2,15,'Vaso royale','Cada jugador pone un vaso de plástico vacío boca abajo en el filo de la mesa. El jugador se pone detrás del vaso por donde la parte del filo y, dando un golpe al vaso por la zona que queda colgando del filo, tiene que intentar ponerlo de pie. El primero que lo consiga reparte 4 tragos entre los que aún no lo han conseguido (estos tragos se reparten mientras el juego aún sigue). Finalmente, el último que lo consiga o que no lo consiga, bebe 2 tragos','cupflip','Un baso de plástico'),(4,4,8,'Endiablado','Se coge una baraja y se eliminan todas las cartas con un valor superior a 10. Luego se barajan las cartas y se reparte a cada jugador 2 cartas. Cada jugador puede reemplazar una carta de su mano, por una del mazo, pero solo una vez. Cuando todos los jugadores estén listos y nadie más quiera reemplazar una carta, se muestran las cartas. Los jugadores cuyas cartas sumadas de un número par, son los castigados. Los jugadores cuyas cartas sumadas sean un número impar son los castigadores. Si alguno de los jugadores tiene como una de las cartas el 6, se convierte en el diablo. El diablo escoge un número entre el 2 y el 4, que serán el número de cartas que cada castigador tendrá que sacar de la baraja.','devil','Una baraja de cartas'),(5,3,8,'Beber bebiendo','Se coge un dado y se lanza, y cada vez que caiga en un número que aún no haya salido, el jugador establece una nueva regla para ese número (por ejemplo, todos los jugadores con el pelo corto beben). Este proceso se repite para todos los números, excluyendo el 1 y el 6. Si el jugador obtiene un 1, puede modificar una regla existente para cualquier otro número o mantenerla y pasar el turno. En caso de sacar un 6, todos los jugadores deben beber.','dice','Un dado'),(6,2,2,'Jack borracho','Hablemos del Drunkjack, un juego donde te enfrentas a alguien más y el que gana sale ileso, pero el que pierde tiene que beber. Si no sabes mucho de esto, no te preocupes, es como el blackjack, te explico en palabras simples. La idea es simple: cada uno recibe dos cartas al comienzo. El objetivo es lograr un total de 21 en la mano, o acercarse lo más posible sin pasarse. Cada carta tiene su propio valor, así que tenéis que sumarlas con cuidado para llegar al número ideal. Tienes la opción de pedir más cartas si quieres mejorar tu mano y acercarte al codiciado 21. Pero ojo, si te pasas de 21, has perdido automáticamente. La decisión es tuya, ¿pedir otra y arriesgarte a pasarte, o quedarte con lo que tienes y cruzar los dedos para ganar? Es tu decisión, pero también hay un toque de suerte en todo esto. Y aquí está la cosa especial de este duelo: si ambos terminan con más de 21, la penalización se duplica y a los dos os toca beber. Es decir, en este juego, el empate no es un alivio. Prepárate para este desafío de habilidad, estrategia y suerte. Cada ronda es una oportunidad de esquivar el temido trago. Que las cartas te jueguen a favor y que la victoria venga con un festejo sobre tu rival en este juego de cartas lleno de adrenalina. ¡A jugar!','drunkjack','Una baraja de cartas'),(7,2,4,'Caballo ebrio','En este juego, se coloca una fila vertical de 6 cartas boca abajo. Cada jugador elige un palo, ya sea diamantes, picas, tréboles o corazones, u otros como oros, copas, bastos o espadas. Luego, se busca el número 11 de cada palo en la baraja y se colocan en horizontal al lado de la fila vertical, en uno de los extremos. Una vez que el juego está preparado, la baraja se coloca en otro lugar de la mesa y se van levantando las cartas de la baraja una a una. Al levantar una carta, el caballo de ese palo avanza una posición verticalmente.Cuando en una de las cartas verticales de abajo no quede ningún caballo porque todos han pasado por ella, se da vuelta esa carta y el palo correspondiente debe retroceder un puesto. Este proceso continúa hasta que todos los caballos completen la carrera. El primer caballo en llegar permite al jugador elegir y repartir 2 tragos o chupitos entre otros jugadores. El último caballo en llegar tiene la penalidad de beber 2 tragos.','horserace','Una baraja de cartas'),(8,3,10,'Medusa','En este divertido juego, la camaradería se une al suspenso. Todos se acomodan en un círculo y se ajusta el temporizador a 20 segundos. Con los ojos cerrados, aguardan el sonido de la alarma. Una vez transcurrido el tiempo, los jugadores señalan a otro compañero. Aquel con más señalamientos debe disfrutar de dos tragos. Por su parte, quienes no fueron señalados tendrán la oportunidad de repartir un trago a quien deseen, añadiendo un toque de emoción y camaradería al juego','jelly','Ninguno'),(9,2,6,'Mayor o menor','En este juego con cartas, se forma una hilera con 6 cartas y se da la vuelta a la primera de los dos extremos. El desafío recae en un único jugador por turno, quien debe intentar predecir si la siguiente carta será mayor o menor que la que está a la vista.La emoción crece mientras el jugador trata de adivinar acertadamente la secuencia de cartas. Si falla en la primera carta, deberá beber 5 tragos; si falla en la segunda, serán 4 tragos, y así sucesivamente. No obstante, si logra completar todo el desafío sin cometer ningún error, obtendrá el privilegio de repartir 3 tragos a los demás jugadores.Este juego simple pero emocionante garantiza risas y competitividad, y es perfecto para añadir diversión a la reunión con amigos.','moreless','Una baraja de cartas'),(10,3,25,'Picante borracho','Un divertido juego en el que los participantes forman un círculo y siguen el sentido de las agujas del reloj. En cada turno, a un jugador le toca hacer una pregunta un poco atrevida o comprometedora a cualquier otro jugador del grupo.Ahora bien, la persona que recibe la pregunta tiene dos opciones. Puede responder a la pregunta y hacer que el que preguntó tome un trago como consecuencia, o puede optar por no responder y tomar dos tragos. Las preguntas pueden ser sobre cualquier tema, lo que le añade un toque emocionante al juego.Eso sí, hay una regla importante: no se permite hacer la misma pregunta dos veces al mismo jugador, incluso si proviene de personas diferentes. Esto asegura que las preguntas sean siempre frescas y novedosas, agregando diversión y un toque de imprevisibilidad a cada ronda del juego.','spicy','Ninguno'),(11,3,15,'Tic-tac','Los jugadores se colocan en un círculo y comienza el juego. En cada turno, deben decir \"tic\" para continuar en el mismo sentido o \"tac\" para cambiarlo. Si alguien menciona \"tic\" o \"tac\" fuera de su turno, por no estar atento al cambio de sentido, incurre en una penalidad: debe beber y queda eliminado hasta la siguiente ronda. Cuando quedan solo 2 jugadores, estos se consideran ganadores y tienen la responsabilidad de repartir 3 tragos o chupitos a quienes deseen, incluyendo al otro ganador si así lo deciden. Este juego fomenta la atención y rapidez de reacción, manteniendo un ambiente de competencia y emoción hasta que se coronan los vencedores. ¡Que el desafío comience y que los \"tic\" y \"tac\" marquen el ritmo hacia la victoria! ','tictac','Ninguno'),(12,2,15,'Titanic','Necesitaréis un vaso grande y otro más pequeño tipo chupito. El vaso grande se llena hasta la mitad con una mezcla de alcohol, y luego se coloca dentro el vaso de chupito. Cada turno, los jugadores deben verter un poco de mezcla o alcohol (según la intensidad deseada) en el vaso de chupito. La tensión aumenta mientras el contenido del vaso de chupito se va acumulando. En el instante en que este contenido se vierte dentro del vaso grande, el jugador responsable de este movimiento debe beber todo el contenido del vaso grande de un solo trago. ¡Así de simple! Este juego es una mezcla perfecta de suspense y emoción que puede llevar la diversión a otro nivel.','titanic','Un baso grande, un baso de chupito');
/*!40000 ALTER TABLE `drunkwebpage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 23:23:00
