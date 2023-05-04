/// @description Estado inicial aleatorio.

// Defino valores iniciales:
speed = random(1.2)+0.1; // Rapidez inicial entre 0.1 y 1.29
direction = random(360); //Dirección inicial de traslación
image_angle = random(360); //Orientación inicial

// Defino una variable para determinar cuanto rotará
// en el transcurso de la ejecución:
cntRotacion = random_range(0.5, 3)*(power(-1, round(random(2.1))));
// Y este valor, será aleatorio tanto en signo como en valor.