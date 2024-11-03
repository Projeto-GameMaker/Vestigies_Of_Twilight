/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criar uma câmera que seguirá o jogador

// Criar uma câmera que seguirá o jogador
var cam_width = 320;  // Largura da área visível pela câmera
var cam_height = 180; // Altura da área visível pela câmera

camera = camera_create_view(0, 0, cam_width, cam_height, 0, self, cam_width / 2, cam_height / 2, -1, -1);
view_set_camera(0, camera);
