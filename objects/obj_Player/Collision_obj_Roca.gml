/// @description Colisión con Roca.

// Cuando colisione con la roca:
// Se verá un efecto de firework en la posición de la nave
// Definimos: tipoDeEfecto, Pos_x, Pos_y, tamaño, color
effect_create_above(ef_firework, x, y, 2, c_orange);

// Y destruimos la instancia de la nave:
instance_destroy();

// Cuando colisiono, la sala se reiniciará 120 frames después:
obj_Game.alarm[0] = 120;