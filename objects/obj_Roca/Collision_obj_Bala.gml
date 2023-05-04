/// @description Colisión con proyectil.

// Primero, destruimos la instancia del proyectil:
instance_destroy(other);

// Segundo, creamos el efecto de humo por la colisión.
// Este efecto se crea en la misma posición del asteroide.
// Definimos: tipoDeEfecto, Pos_x, Pos_y, tamaño, color
effect_create_above(ef_explosion, x, y, 3, c_white);

// Tercero, emulamos un cambio de dirección por el choque:
direction = random(360); // Aleatorio entre 0 y 359

// Ahora, aplicamos la siguiente lógica:
if (sprite_index == spr_rock_big) {
	// Si SpriteActual = SpriteRocaBig entonces:
	// Reemplaza RocaBig por RocaSmall
	sprite_index = spr_rock_small;
	// Y crea otra instancia similar
	instance_copy(true); // Para emular que se partió en dos
	obj_Game.puntos += 50;
} else if (instance_number(obj_Roca) <= 12) {
	// Sino, si numInstanciasRocas < 12 entonces:
	// Reemplaza rocaActual por RocaBig, 
	// ya que rocaActual es RocaSmall.
	sprite_index = spr_rock_big;
	// Y lo posiciona 100px a la izquieda del origen
	x = -100; // Así reaparecera por la función move_wrap()
	obj_Game.puntos += 20;
} else {
	// De lo contrario, destruye la instancia:
	instance_destroy();
	// Ya que no es una roca grande y 
	// puede haber más de 12 instancias de estas.
}

// Aumentamos la variable de puntos por cada vez
// que se activa el evento de colisión:
//obj_Game.puntos += 50;