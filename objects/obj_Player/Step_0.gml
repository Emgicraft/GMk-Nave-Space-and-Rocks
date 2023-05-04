/// @description	Control de movimiento de la nave.

// Si se sale de la pantalla, reaparece por el otro lado.
// Se le define 60px de margen ya que es el tamaño de la nave.
move_wrap(true, true, 60);

// Dependiendo de que tecla presionemos,
// hará una cosa u otra:
if (keyboard_check(vk_up)) {
	// Se mueve hacia adelante
	motion_add(image_angle, 0.2);
	// Esta función, de manera muy simnplificada,
	// hace algo como esto:
	//direction = image_angle;
	//speed += 0.1;
}

if (keyboard_check(vk_down)) {
	// Se mueve hacia atrás
	motion_add(image_angle, -0.2);
}

if (keyboard_check(vk_left)) {
	// Rota hacia la izquierda
	image_angle += 4;
}

if (keyboard_check(vk_right)) {
	// Rota hacia la derecha
	image_angle -= 4;
}

if (keyboard_check_pressed(vk_space)) {
	// Instancia el proyectil
	instance_create_layer(x, y, "Instances", obj_Bala);
}