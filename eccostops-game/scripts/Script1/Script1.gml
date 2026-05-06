/// @function obter_lixeira_correta(objeto)
/// @description Retorna o tipo de lixeira correta para cada resíduo
/// Azul     = papel e papelão
/// Vermelha = plástico (garrafa, saco)
/// Amarela  = metal (lata)
/// Verde    = rejeito (balde, caixa, colher)
/// Marrom   = orgânico (carne, frango, maçã, peixe)

function obter_lixeira_correta(obj) {
    switch (obj) {
        case obj_papel:
        case obj_papelao:
            return obj_lixeira_azul;
        
        case obj_garrafa_agua:
        case obj_saco:
            return obj_lixeira_vermelha;
        
        case obj_lata:
        case obj_lata_vermelha:
            return obj_lixeira_amarela;
        
        case obj_carne:
        case obj_frango:
        case obj_maca:
        case obj_peixe:
            return obj_lixeira_marrom;
        
        case obj_balde:
        case obj_caixa:
        case obj_colher:
            return obj_lixeira_verde;
        
        default:
            return obj_lixeira_verde;
    }
}