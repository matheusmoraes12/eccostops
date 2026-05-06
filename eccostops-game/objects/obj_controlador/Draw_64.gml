// === DESENHAR HUD ===
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Fundo semitransparente do HUD
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(10, 10, 220, 50, false);
draw_set_alpha(1);

// Pontuação
draw_set_color(c_yellow);
draw_text_transformed(20, 18, "Pontuação: " + string(pontuacao), 1.4, 1.4, 0);

// Feedback (acertou/errou)
if (timer_feedback > 0) {
    var alpha_feedback = timer_feedback / 90;
    draw_set_alpha(alpha_feedback);
    draw_set_color(cor_feedback);
    draw_set_halign(fa_center);
    draw_text_transformed(room_width / 2, 80, mostrar_feedback, 2, 2, 0);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
}

// Instrução na primeira vez
if (pontuacao == 0 && timer_feedback == 0) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_alpha(0.8);
    draw_text_transformed(room_width / 2, 30, "Arraste os itens para a lixeira correta!", 1.2, 1.2, 0);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
}
