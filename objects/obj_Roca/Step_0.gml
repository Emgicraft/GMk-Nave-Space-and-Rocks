/// @description Movimiento del asteroide.

// Si se sale de la pantalla, reaparece por el otro lado.
// Se define 100px de margen por el tamaño aprox. de la roca.
move_wrap(true, true, 100);

// Por cada paso se rotará la roca una cantidad determinada:
image_angle += cntRotacion;