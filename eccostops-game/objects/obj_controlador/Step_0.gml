// === SPAWNAR RESÍDUOS DO CÉU ===
timer_spawn++;
if (timer_spawn >= intervalo_spawn) {
    timer_spawn = 0;
    
    // Escolher resíduo aleatório
    var indice = irandom(array_length(lista_residuos) - 1);
    var obj_escolhido = lista_residuos[indice];
    
    // Posição horizontal aleatória
    var pos_x = 80 + irandom(room_width - 160);
    
    // Criar acima da tela
    instance_create_layer(pos_x, -80, "Instances", obj_escolhido);
}

// Contador do feedback
if (timer_feedback > 0) {
    timer_feedback--;
}
