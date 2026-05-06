// === SOLTAR NA LIXEIRA (verificar PRIMEIRO) ===
if (sendo_arrastado && mouse_check_button_released(mb_left)) {
    sendo_arrastado = false;
    
    var lixeira = noone;
    if (lixeira == noone) lixeira = instance_place(x, y, obj_lixeira_azul);
    if (lixeira == noone) lixeira = instance_place(x, y, obj_lixeira_vermelha);
    if (lixeira == noone) lixeira = instance_place(x, y, obj_lixeira_amarela);
    if (lixeira == noone) lixeira = instance_place(x, y, obj_lixeira_verde);
    if (lixeira == noone) lixeira = instance_place(x, y, obj_lixeira_marrom);
    
    if (lixeira != noone) {
        var lixeira_certa = obter_lixeira_correta(object_index);
        if (lixeira.object_index == lixeira_certa) {
            with (obj_controlador) { pontuacao += 10; mostrar_feedback = "CORRETO! +10"; cor_feedback = c_lime; timer_feedback = 90; }
        } else {
            with (obj_controlador) { pontuacao -= 5; mostrar_feedback = "ERRADO! -5"; cor_feedback = c_red; timer_feedback = 90; }
        }
        instance_destroy();
        exit;
    }
}

// === INICIAR ARRASTO ===
if (!sendo_arrastado && mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
        sendo_arrastado = true;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
        depth = -100;
    }
}

// === MOVER COM MOUSE ===
if (sendo_arrastado) {
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}

// === QUEDA ===
if (!sendo_arrastado) {
    y += vel_queda;
    if (y > room_height + 100) {
        instance_destroy();
    }
}