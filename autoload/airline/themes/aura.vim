let g:airline#themes#aura#palette = {}

function! airline#themes#aura#refresh()
    " normal
    let g:airline#themes#aura#palette.normal = airline#themes#generate_color_map(
                \ [ "#15141b", "#61ffca", 236, 120 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#61ffca", "#15141b", 120, 236 ]
                \ )
    let g:airline#themes#aura#palette.normal_modified = {
                \ "airline_c": [ "#61ffca", "#15141b", 120, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#aura#palette.insert = airline#themes#generate_color_map(
                \ [ "#15141b", "#6cb2c7", 236, 63 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#6cb2c7", "#15141b", 63, 236 ]
                \ ) 
    let g:airline#themes#aura#palette.insert_modified = {
                \ "airline_c": [ "#6cb2c7", "#15141b", 63, 236, "bold" ],
                \ }
    let g:airline#themes#aura#palette.insert_paste = {
                \ "airline_a": [ "#15141b", "#6cb2c7", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#aura#palette.terminal = airline#themes#generate_color_map(
                \ [ "#15141b", "#6cb2c7", 236, 63 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#6cb2c7", "#15141b", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#aura#palette.replace = airline#themes#generate_color_map(
                \ [ "#15141b", "#82e2ff", 236, 38 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#82e2ff", "#15141b", 38, 236 ]
                \ )
    let g:airline#themes#aura#palette.replace_modified = {
                \ "airline_c": [ "#82e2ff", "#15141b", 38, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#aura#palette.visual = airline#themes#generate_color_map(
                \ [ "#15141b", "#a277ff", 236, 140 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#a277ff", "#15141b", 140, 236 ]
                \ ) 
    let g:airline#themes#aura#palette.visual_modified = {
                \ "airline_c": [ "#a277ff", "#15141b", 140, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#aura#palette.inactive = airline#themes#generate_color_map(
                \ [ "#15141b", "#edecee", 236, 254 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#15141b", "#edecee", 236, 254 ]
                \ ) 
    let g:airline#themes#aura#palette.inactive_modified = {
                \ "airline_c": [ "#edecee", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#aura#palette.commandline = airline#themes#generate_color_map(
                \ [ "#15141b", "#f694ff", 120, 120 ],
                \ [ "#edecee", "#3d3d3d", 254, 240 ],
                \ [ "#f694ff", "#15141b", 120, 236 ]
                \ ) 

    " accents
    let g:airline#themes#aura#palette.accents = {
                \ "red": [ "#82e2ff", "", 38, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#aura#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#edecee", "#a277ff", 254, 140, "bold" ],
                    \ [ "#edecee", "#3d3d3d", 254, 240, "bold" ],
                    \ [ "#a277ff", "#edecee", 140, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#aura#refresh()
