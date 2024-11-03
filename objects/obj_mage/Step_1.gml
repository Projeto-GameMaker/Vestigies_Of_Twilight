// Variável de movimentação
var move_speed = 1; // Velocidade de movimentação

// Variável para controlar a direção do movimento
var move_direction_x = 0; // 1 = direita, -1 = esquerda
var move_direction_y = 0; // 1 = baixo, -1 = cima

// Movimentação horizontal
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    move_direction_x = 1; // Define a direção para direita
} 
else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    move_direction_x = -1; // Define a direção para esquerda
} 
else {
    move_direction_x = 0; // Sem movimento horizontal
}

// Movimentação vertical
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    move_direction_y = -1; // Move para cima
} 
else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    move_direction_y = 1; // Move para baixo
} 
else {
    move_direction_y = 0; // Sem movimento vertical
}

// Movimentação e colisão horizontal
if (move_direction_x != 0) {
    if (!place_meeting(x + move_direction_x * move_speed, y, obj_obstaculo)) {
        x += move_direction_x * move_speed;
        image_xscale = (move_direction_x == 1) ? 1 : -1; // Atualiza direção da imagem
    }
}

// Movimentação e colisão vertical
if (move_direction_y != 0) {
    if (!place_meeting(x, y + move_direction_y * move_speed, obj_obstaculo)) {
        y += move_direction_y * move_speed;
    }
}


