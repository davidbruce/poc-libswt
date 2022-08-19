 {.deadCodeElim: on.}
import graal_isolate

when defined(windows):
  const
    swt* = "swt.dll"
elif defined(macosx):
  const
    swt* = "libswt.dylib"
else:
  const
    swt* = "libswt.so"
proc new_armevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_armevent", dynlib: swt.}
proc create_arm_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_arm_listener", dynlib: swt.}
proc new_borderdata*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_borderdata", dynlib: swt.}
proc new_borderdata_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_borderdata_2", dynlib: swt.}
proc new_borderdata_3*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_borderdata_3", dynlib: swt.}
proc borderdata_h_hint*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderdata_h_hint", dynlib: swt.}
proc borderdata_assign_h_hint*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "borderdata_assign_h_hint", dynlib: swt.}
proc borderdata_w_hint*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderdata_w_hint", dynlib: swt.}
proc borderdata_assign_w_hint*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "borderdata_assign_w_hint", dynlib: swt.}
proc borderdata_region*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderdata_region", dynlib: swt.}
proc borderdata_assign_region*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "borderdata_assign_region", dynlib: swt.}
proc borderdata_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "borderdata_to_string", dynlib: swt.}
proc borderlayout_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderlayout_type", dynlib: swt.}
proc borderlayout_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "borderlayout_assign_type", dynlib: swt.}
proc borderlayout_margin_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderlayout_margin_width", dynlib: swt.}
proc borderlayout_assign_margin_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "borderlayout_assign_margin_width", dynlib: swt.}
proc borderlayout_margin_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderlayout_margin_height", dynlib: swt.}
proc borderlayout_assign_margin_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "borderlayout_assign_margin_height", dynlib: swt.}
proc borderlayout_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderlayout_spacing", dynlib: swt.}
proc borderlayout_assign_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "borderlayout_assign_spacing", dynlib: swt.}
proc borderlayout_control_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "borderlayout_control_spacing", dynlib: swt.}
proc borderlayout_assign_control_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "borderlayout_assign_control_spacing", dynlib: swt.}
proc borderlayout_width_distribution_factor*(a1: ptr IsolateThread; a2: pointer): cdouble {.
    cdecl, importc: "borderlayout_width_distribution_factor", dynlib: swt.}
proc borderlayout_assign_width_distribution_factor*(a1: ptr IsolateThread;
    a2: pointer; a3: cdouble) {.cdecl, importc: "borderlayout_assign_width_distribution_factor",
                            dynlib: swt.}
proc borderlayout_height_distribution_factor*(a1: ptr IsolateThread; a2: pointer): cdouble {.
    cdecl, importc: "borderlayout_height_distribution_factor", dynlib: swt.}
proc borderlayout_assign_height_distribution_factor*(a1: ptr IsolateThread;
    a2: pointer; a3: cdouble) {.cdecl, importc: "borderlayout_assign_height_distribution_factor",
                            dynlib: swt.}
proc borderlayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "borderlayout_to_string", dynlib: swt.}
proc new_button*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_button", dynlib: swt.}
proc button_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "button_add_selection_listener", dynlib: swt.}
proc button_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "button_compute_size", dynlib: swt.}
proc button_get_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "button_get_alignment", dynlib: swt.}
proc button_get_grayed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "button_get_grayed", dynlib: swt.}
proc button_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "button_get_image", dynlib: swt.}
proc button_get_selection*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "button_get_selection", dynlib: swt.}
proc button_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "button_get_text", dynlib: swt.}
proc button_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "button_remove_selection_listener", dynlib: swt.}
proc button_set_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "button_set_alignment", dynlib: swt.}
proc button_set_grayed*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "button_set_grayed", dynlib: swt.}
proc button_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "button_set_image", dynlib: swt.}
proc button_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "button_set_selection", dynlib: swt.}
proc button_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "button_set_text", dynlib: swt.}
proc new_canvas*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_canvas", dynlib: swt.}
proc canvas_draw_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint;
                            a5: cint; a6: cint; a7: cint) {.cdecl,
    importc: "canvas_draw_background", dynlib: swt.}
proc canvas_get_caret*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "canvas_get_caret", dynlib: swt.}
proc canvas_get_i_m_e*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "canvas_get_i_m_e", dynlib: swt.}
proc canvas_scroll*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                   a6: cint; a7: cint; a8: cint; a9: cint) {.cdecl,
    importc: "canvas_scroll", dynlib: swt.}
proc canvas_set_caret*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "canvas_set_caret", dynlib: swt.}
proc canvas_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "canvas_set_font", dynlib: swt.}
proc canvas_set_i_m_e*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "canvas_set_i_m_e", dynlib: swt.}
proc new_caret*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_caret", dynlib: swt.}
proc caret_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_bounds", dynlib: swt.}
proc caret_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_font", dynlib: swt.}
proc caret_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_image", dynlib: swt.}
proc caret_get_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_location", dynlib: swt.}
proc caret_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_parent", dynlib: swt.}
proc caret_get_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "caret_get_size", dynlib: swt.}
proc caret_get_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "caret_get_visible", dynlib: swt.}
proc caret_is_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "caret_is_visible", dynlib: swt.}
proc caret_set_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                      a6: cint) {.cdecl, importc: "caret_set_bounds", dynlib: swt.}
proc caret_set_bounds_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "caret_set_bounds_2", dynlib: swt.}
proc caret_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "caret_set_font", dynlib: swt.}
proc caret_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "caret_set_image", dynlib: swt.}
proc caret_set_location*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "caret_set_location", dynlib: swt.}
proc caret_set_location_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "caret_set_location_2", dynlib: swt.}
proc caret_set_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "caret_set_size", dynlib: swt.}
proc caret_set_size_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "caret_set_size_2", dynlib: swt.}
proc caret_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "caret_set_visible", dynlib: swt.}
proc new_colordialog*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_colordialog", dynlib: swt.}
proc new_colordialog_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_colordialog_2", dynlib: swt.}
proc colordialog_get_r_g_b*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "colordialog_get_r_g_b", dynlib: swt.}
proc colordialog_get_r_g_bs*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "colordialog_get_r_g_bs", dynlib: swt.}
proc colordialog_open*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "colordialog_open", dynlib: swt.}
proc colordialog_set_r_g_b*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "colordialog_set_r_g_b", dynlib: swt.}
proc colordialog_set_r_g_bs*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "colordialog_set_r_g_bs", dynlib: swt.}
proc new_color*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_color", dynlib: swt.}
proc new_color_2*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.cdecl,
    importc: "new_color_2", dynlib: swt.}
proc new_color_3*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint; a6: cint): pointer {.
    cdecl, importc: "new_color_3", dynlib: swt.}
proc new_color_4*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_color_4", dynlib: swt.}
proc new_color_5*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_color_5", dynlib: swt.}
proc new_color_6*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_color_6", dynlib: swt.}
proc new_color_7*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_color_7", dynlib: swt.}
proc new_color_8*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_color_8", dynlib: swt.}
proc new_color_9*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint): pointer {.
    cdecl, importc: "new_color_9", dynlib: swt.}
proc new_color_10*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_color_10", dynlib: swt.}
proc color_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "color_handle", dynlib: swt.}
proc color_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "color_assign_handle", dynlib: swt.}
proc color_dispose*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "color_dispose", dynlib: swt.}
proc color_get_device*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "color_get_device", dynlib: swt.}
proc color_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "color_equals", dynlib: swt.}
proc color_get_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "color_get_alpha", dynlib: swt.}
proc color_get_blue*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "color_get_blue", dynlib: swt.}
proc color_get_green*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "color_get_green", dynlib: swt.}
proc color_get_red*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "color_get_red", dynlib: swt.}
proc color_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "color_hash_code", dynlib: swt.}
proc color_get_r_g_b*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "color_get_r_g_b", dynlib: swt.}
proc color_get_r_g_b_a*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "color_get_r_g_b_a", dynlib: swt.}
proc color_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "color_is_disposed", dynlib: swt.}
proc color_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "color_to_string", dynlib: swt.}
proc new_combo*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_combo", dynlib: swt.}
proc combo_add*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "combo_add", dynlib: swt.}
proc combo_add_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint) {.cdecl,
    importc: "combo_add_2", dynlib: swt.}
proc combo_add_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_add_modify_listener", dynlib: swt.}
proc combo_add_segment_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_add_segment_listener", dynlib: swt.}
proc combo_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_add_selection_listener", dynlib: swt.}
proc combo_add_verify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_add_verify_listener", dynlib: swt.}
proc combo_clear_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "combo_clear_selection", dynlib: swt.}
proc combo_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "combo_compute_size", dynlib: swt.}
proc combo_copy*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "combo_copy",
    dynlib: swt.}
proc combo_cut*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "combo_cut",
    dynlib: swt.}
proc combo_deselect*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_deselect", dynlib: swt.}
proc combo_deselect_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "combo_deselect_all", dynlib: swt.}
proc combo_get_caret_position*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_caret_position", dynlib: swt.}
proc combo_get_caret_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "combo_get_caret_location", dynlib: swt.}
proc combo_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): cstring {.cdecl,
    importc: "combo_get_item", dynlib: swt.}
proc combo_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_item_count", dynlib: swt.}
proc combo_get_item_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_item_height", dynlib: swt.}
proc combo_get_items*(a1: ptr IsolateThread; a2: pointer): cstringArray {.cdecl,
    importc: "combo_get_items", dynlib: swt.}
proc combo_get_list_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "combo_get_list_visible", dynlib: swt.}
proc combo_get_orientation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_orientation", dynlib: swt.}
proc combo_get_selection*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "combo_get_selection", dynlib: swt.}
proc combo_get_selection_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_selection_index", dynlib: swt.}
proc combo_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "combo_get_text", dynlib: swt.}
proc combo_get_text_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_text_height", dynlib: swt.}
proc combo_get_text_limit*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_text_limit", dynlib: swt.}
proc combo_get_visible_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "combo_get_visible_item_count", dynlib: swt.}
proc combo_index_of*(a1: ptr IsolateThread; a2: pointer; a3: cstring): cint {.cdecl,
    importc: "combo_index_of", dynlib: swt.}
proc combo_index_of_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint): cint {.
    cdecl, importc: "combo_index_of_2", dynlib: swt.}
proc combo_paste*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "combo_paste",
    dynlib: swt.}
proc combo_remove*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_remove", dynlib: swt.}
proc combo_remove_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "combo_remove_2", dynlib: swt.}
proc combo_remove_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "combo_remove_3", dynlib: swt.}
proc combo_remove_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "combo_remove_all", dynlib: swt.}
proc combo_remove_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_remove_modify_listener", dynlib: swt.}
proc combo_remove_segment_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_remove_segment_listener", dynlib: swt.}
proc combo_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_remove_selection_listener", dynlib: swt.}
proc combo_remove_verify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "combo_remove_verify_listener", dynlib: swt.}
proc combo_select*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_select", dynlib: swt.}
proc combo_set_item*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cstring) {.cdecl,
    importc: "combo_set_item", dynlib: swt.}
proc combo_set_items*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "combo_set_items", dynlib: swt.}
proc combo_set_list_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_set_list_visible", dynlib: swt.}
proc combo_set_orientation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_set_orientation", dynlib: swt.}
proc combo_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "combo_set_selection", dynlib: swt.}
proc combo_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "combo_set_text", dynlib: swt.}
proc combo_set_text_limit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "combo_set_text_limit", dynlib: swt.}
proc combo_set_visible_item_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "combo_set_visible_item_count", dynlib: swt.}
proc new_composite*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_composite", dynlib: swt.}
proc composite_changed*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "composite_changed", dynlib: swt.}
proc composite_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint): pointer {.cdecl,
    importc: "composite_compute_size", dynlib: swt.}
proc composite_draw_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer;
                               a4: cint; a5: cint; a6: cint; a7: cint; a8: cint; a9: cint) {.
    cdecl, importc: "composite_draw_background", dynlib: swt.}
proc composite_get_background_mode*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "composite_get_background_mode", dynlib: swt.}
proc composite_get_children*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "composite_get_children", dynlib: swt.}
proc composite_get_layout*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "composite_get_layout", dynlib: swt.}
proc composite_get_layout_deferred*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "composite_get_layout_deferred", dynlib: swt.}
proc composite_get_tab_list*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "composite_get_tab_list", dynlib: swt.}
proc composite_is_layout_deferred*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "composite_is_layout_deferred", dynlib: swt.}
proc composite_layout*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "composite_layout", dynlib: swt.}
proc composite_layout_2*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "composite_layout_2", dynlib: swt.}
proc composite_layout_3*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "composite_layout_3", dynlib: swt.}
proc composite_layout_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "composite_layout_4", dynlib: swt.}
proc composite_layout_5*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint) {.
    cdecl, importc: "composite_layout_5", dynlib: swt.}
proc composite_redraw*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                      a6: cint; a7: cint) {.cdecl, importc: "composite_redraw",
                                        dynlib: swt.}
proc composite_set_background_mode*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "composite_set_background_mode", dynlib: swt.}
proc composite_set_focus*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "composite_set_focus", dynlib: swt.}
proc composite_set_layout*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "composite_set_layout", dynlib: swt.}
proc composite_set_layout_deferred*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "composite_set_layout_deferred", dynlib: swt.}
proc composite_set_tab_list*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "composite_set_tab_list", dynlib: swt.}
proc composite_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "composite_to_string", dynlib: swt.}
proc controladapter_control_moved*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "controladapter_control_moved", dynlib: swt.}
proc controladapter_control_resized*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "controladapter_control_resized", dynlib: swt.}
proc new_controlevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_controlevent", dynlib: swt.}
proc control_view*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_view", dynlib: swt.}
proc control_assign_view*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_assign_view", dynlib: swt.}
proc control_add_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_control_listener", dynlib: swt.}
proc control_add_drag_detect_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_drag_detect_listener", dynlib: swt.}
proc control_add_focus_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_focus_listener", dynlib: swt.}
proc control_add_gesture_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_gesture_listener", dynlib: swt.}
proc control_add_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_help_listener", dynlib: swt.}
proc control_add_key_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_add_key_listener", dynlib: swt.}
proc control_add_menu_detect_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_menu_detect_listener", dynlib: swt.}
proc control_add_mouse_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_mouse_listener", dynlib: swt.}
proc control_add_mouse_track_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_mouse_track_listener", dynlib: swt.}
proc control_add_mouse_move_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_mouse_move_listener", dynlib: swt.}
proc control_add_mouse_wheel_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_mouse_wheel_listener", dynlib: swt.}
proc control_add_paint_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_paint_listener", dynlib: swt.}
proc control_add_touch_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_touch_listener", dynlib: swt.}
proc control_add_traverse_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_add_traverse_listener", dynlib: swt.}
proc control_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "control_compute_size", dynlib: swt.}
proc control_compute_size_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint): pointer {.cdecl,
    importc: "control_compute_size_2", dynlib: swt.}
proc control_drag_detect*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "control_drag_detect", dynlib: swt.}
proc control_drag_detect_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.
    cdecl, importc: "control_drag_detect_2", dynlib: swt.}
proc control_force_focus*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_force_focus", dynlib: swt.}
proc control_get_accessible*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_accessible", dynlib: swt.}
proc control_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_background", dynlib: swt.}
proc control_get_background_image*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "control_get_background_image", dynlib: swt.}
proc control_get_border_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "control_get_border_width", dynlib: swt.}
proc control_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_bounds", dynlib: swt.}
proc control_get_drag_detect*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_get_drag_detect", dynlib: swt.}
proc control_get_cursor*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_cursor", dynlib: swt.}
proc control_get_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_get_enabled", dynlib: swt.}
proc control_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_font", dynlib: swt.}
proc control_get_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_foreground", dynlib: swt.}
proc control_get_layout_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_layout_data", dynlib: swt.}
proc control_get_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_location", dynlib: swt.}
proc control_get_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_menu", dynlib: swt.}
proc control_get_monitor*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_monitor", dynlib: swt.}
proc control_get_orientation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "control_get_orientation", dynlib: swt.}
proc control_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_parent", dynlib: swt.}
proc control_get_region*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_region", dynlib: swt.}
proc control_get_shell*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_shell", dynlib: swt.}
proc control_get_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "control_get_size", dynlib: swt.}
proc control_get_text_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "control_get_text_direction", dynlib: swt.}
proc control_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "control_get_tool_tip_text", dynlib: swt.}
proc control_get_touch_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_get_touch_enabled", dynlib: swt.}
proc control_get_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_get_visible", dynlib: swt.}
proc control_internal_new_g_c*(a1: ptr IsolateThread; a2: pointer; a3: pointer): clonglong {.
    cdecl, importc: "control_internal_new__g_c", dynlib: swt.}
proc control_internal_dispose_g_c*(a1: ptr IsolateThread; a2: pointer; a3: clonglong;
                                   a4: pointer) {.cdecl,
    importc: "control_internal_dispose__g_c", dynlib: swt.}
proc control_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_is_enabled", dynlib: swt.}
proc control_is_focus_control*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_is_focus_control", dynlib: swt.}
proc control_is_reparentable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_is_reparentable", dynlib: swt.}
proc control_is_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_is_visible", dynlib: swt.}
proc control_move_above*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_move_above", dynlib: swt.}
proc control_move_below*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_move_below", dynlib: swt.}
proc control_pack*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "control_pack", dynlib: swt.}
proc control_pack_2*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_pack_2", dynlib: swt.}
proc control_print*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "control_print", dynlib: swt.}
proc control_request_layout*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "control_request_layout", dynlib: swt.}
proc control_redraw*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "control_redraw", dynlib: swt.}
proc control_redraw_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                      a6: cint; a7: cint) {.cdecl, importc: "control_redraw_2",
                                        dynlib: swt.}
proc control_remove_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_control_listener", dynlib: swt.}
proc control_remove_drag_detect_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "control_remove_drag_detect_listener", dynlib: swt.}
proc control_remove_focus_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_focus_listener", dynlib: swt.}
proc control_remove_gesture_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_gesture_listener", dynlib: swt.}
proc control_remove_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_help_listener", dynlib: swt.}
proc control_remove_key_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_key_listener", dynlib: swt.}
proc control_remove_menu_detect_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "control_remove_menu_detect_listener", dynlib: swt.}
proc control_remove_mouse_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_mouse_listener", dynlib: swt.}
proc control_remove_mouse_move_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "control_remove_mouse_move_listener", dynlib: swt.}
proc control_remove_mouse_track_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "control_remove_mouse_track_listener", dynlib: swt.}
proc control_remove_mouse_wheel_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "control_remove_mouse_wheel_listener", dynlib: swt.}
proc control_remove_paint_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_paint_listener", dynlib: swt.}
proc control_remove_touch_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_touch_listener", dynlib: swt.}
proc control_remove_traverse_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_remove_traverse_listener", dynlib: swt.}
proc control_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_background", dynlib: swt.}
proc control_set_background_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "control_set_background_image", dynlib: swt.}
proc control_set_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                        a6: cint) {.cdecl, importc: "control_set_bounds", dynlib: swt.}
proc control_set_bounds_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_bounds_2", dynlib: swt.}
proc control_set_capture*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_capture", dynlib: swt.}
proc control_set_cursor*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_cursor", dynlib: swt.}
proc control_set_drag_detect*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_drag_detect", dynlib: swt.}
proc control_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_enabled", dynlib: swt.}
proc control_set_focus*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "control_set_focus", dynlib: swt.}
proc control_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_font", dynlib: swt.}
proc control_set_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_foreground", dynlib: swt.}
proc control_set_layout_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_layout_data", dynlib: swt.}
proc control_set_location*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "control_set_location", dynlib: swt.}
proc control_set_location_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_location_2", dynlib: swt.}
proc control_set_menu*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_menu", dynlib: swt.}
proc control_set_orientation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_orientation", dynlib: swt.}
proc control_set_parent*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "control_set_parent", dynlib: swt.}
proc control_set_redraw*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_redraw", dynlib: swt.}
proc control_set_region*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_region", dynlib: swt.}
proc control_set_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "control_set_size", dynlib: swt.}
proc control_set_size_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "control_set_size_2", dynlib: swt.}
proc control_set_text_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_text_direction", dynlib: swt.}
proc control_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "control_set_tool_tip_text", dynlib: swt.}
proc control_set_touch_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_touch_enabled", dynlib: swt.}
proc control_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "control_set_visible", dynlib: swt.}
proc control_to_control*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "control_to_control", dynlib: swt.}
proc control_to_control_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "control_to_control_2", dynlib: swt.}
proc control_to_display*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "control_to_display", dynlib: swt.}
proc control_to_display_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "control_to_display_2", dynlib: swt.}
proc control_traverse*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer): char {.
    cdecl, importc: "control_traverse", dynlib: swt.}
proc control_traverse_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer): char {.
    cdecl, importc: "control_traverse_2", dynlib: swt.}
proc control_traverse_3*(a1: ptr IsolateThread; a2: pointer; a3: cint): char {.cdecl,
    importc: "control_traverse_3", dynlib: swt.}
proc control_update*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "control_update", dynlib: swt.}
proc new_cursor*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_cursor", dynlib: swt.}
proc new_cursor_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer; a5: cint;
                  a6: cint): pointer {.cdecl, importc: "new_cursor_2", dynlib: swt.}
proc new_cursor_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_cursor_3", dynlib: swt.}
proc cursor_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "cursor_handle", dynlib: swt.}
proc cursor_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "cursor_assign_handle", dynlib: swt.}
proc cursor_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "cursor_equals", dynlib: swt.}
proc cursor_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "cursor_hash_code", dynlib: swt.}
proc cursor_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "cursor_is_disposed", dynlib: swt.}
proc cursor_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "cursor_to_string", dynlib: swt.}
proc new_datetime*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_datetime", dynlib: swt.}
proc datetime_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "datetime_add_selection_listener", dynlib: swt.}
proc datetime_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                           a5: cint): pointer {.cdecl,
    importc: "datetime_compute_size", dynlib: swt.}
proc datetime_get_children*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "datetime_get_children", dynlib: swt.}
proc datetime_get_day*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_day", dynlib: swt.}
proc datetime_get_hours*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_hours", dynlib: swt.}
proc datetime_get_minutes*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_minutes", dynlib: swt.}
proc datetime_get_month*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_month", dynlib: swt.}
proc datetime_get_seconds*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_seconds", dynlib: swt.}
proc datetime_get_year*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "datetime_get_year", dynlib: swt.}
proc datetime_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "datetime_remove_selection_listener", dynlib: swt.}
proc datetime_set_date*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint) {.
    cdecl, importc: "datetime_set_date", dynlib: swt.}
proc datetime_set_day*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_day", dynlib: swt.}
proc datetime_set_hours*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_hours", dynlib: swt.}
proc datetime_set_minutes*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_minutes", dynlib: swt.}
proc datetime_set_month*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_month", dynlib: swt.}
proc datetime_set_seconds*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_seconds", dynlib: swt.}
proc datetime_set_time*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint) {.
    cdecl, importc: "datetime_set_time", dynlib: swt.}
proc datetime_set_year*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "datetime_set_year", dynlib: swt.}
proc new_decorations*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_decorations", dynlib: swt.}
proc decorations_get_default_button*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "decorations_get_default_button", dynlib: swt.}
proc decorations_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "decorations_get_image", dynlib: swt.}
proc decorations_get_images*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "decorations_get_images", dynlib: swt.}
proc decorations_get_maximized*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "decorations_get_maximized", dynlib: swt.}
proc decorations_get_menu_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "decorations_get_menu_bar", dynlib: swt.}
proc decorations_get_minimized*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "decorations_get_minimized", dynlib: swt.}
proc decorations_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "decorations_get_text", dynlib: swt.}
proc decorations_is_reparentable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "decorations_is_reparentable", dynlib: swt.}
proc decorations_set_default_button*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "decorations_set_default_button", dynlib: swt.}
proc decorations_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "decorations_set_image", dynlib: swt.}
proc decorations_set_images*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "decorations_set_images", dynlib: swt.}
proc decorations_set_maximized*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "decorations_set_maximized", dynlib: swt.}
proc decorations_set_menu_bar*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "decorations_set_menu_bar", dynlib: swt.}
proc decorations_set_minimized*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "decorations_set_minimized", dynlib: swt.}
proc decorations_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "decorations_set_text", dynlib: swt.}
proc devicedata_debug*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "devicedata_debug", dynlib: swt.}
proc devicedata_assign_debug*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "devicedata_assign_debug", dynlib: swt.}
proc devicedata_tracking*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "devicedata_tracking", dynlib: swt.}
proc devicedata_assign_tracking*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "devicedata_assign_tracking", dynlib: swt.}
proc devicedata_errors*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "devicedata_errors", dynlib: swt.}
proc devicedata_assign_errors*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "devicedata_assign_errors", dynlib: swt.}
proc devicedata_objects*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "devicedata_objects", dynlib: swt.}
proc devicedata_assign_objects*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "devicedata_assign_objects", dynlib: swt.}
proc device_is_tracking*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "device_is_tracking", dynlib: swt.}
proc device_set_tracking*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "device_set_tracking", dynlib: swt.}
proc device_dispose*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "device_dispose", dynlib: swt.}
proc device_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "device_get_bounds", dynlib: swt.}
proc device_get_device_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "device_get_device_data", dynlib: swt.}
proc device_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "device_get_client_area", dynlib: swt.}
proc device_get_depth*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "device_get_depth", dynlib: swt.}
proc device_get_d_p_i*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "device_get_d_p_i", dynlib: swt.}
proc device_get_font_list*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint): pointer {.
    cdecl, importc: "device_get_font_list", dynlib: swt.}
proc device_get_system_color*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "device_get_system_color", dynlib: swt.}
proc device_get_system_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "device_get_system_font", dynlib: swt.}
proc device_get_warnings*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "device_get_warnings", dynlib: swt.}
proc device_internal_new_g_c*(a1: ptr IsolateThread; a2: pointer; a3: pointer): clonglong {.
    cdecl, importc: "device_internal_new__g_c", dynlib: swt.}
proc device_internal_dispose_g_c*(a1: ptr IsolateThread; a2: pointer; a3: clonglong;
                                  a4: pointer) {.cdecl,
    importc: "device_internal_dispose__g_c", dynlib: swt.}
proc device_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "device_is_disposed", dynlib: swt.}
proc device_load_font*(a1: ptr IsolateThread; a2: pointer; a3: cstring): char {.cdecl,
    importc: "device_load_font", dynlib: swt.}
proc device_set_warnings*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "device_set_warnings", dynlib: swt.}
proc dialog_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "dialog_get_parent", dynlib: swt.}
proc dialog_get_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "dialog_get_style", dynlib: swt.}
proc dialog_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "dialog_get_text", dynlib: swt.}
proc dialog_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "dialog_set_text", dynlib: swt.}
proc new_directorydialog*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_directorydialog", dynlib: swt.}
proc new_directorydialog_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "new_directorydialog_2", dynlib: swt.}
proc directorydialog_get_filter_path*(a1: ptr IsolateThread; a2: pointer): cstring {.
    cdecl, importc: "directorydialog_get_filter_path", dynlib: swt.}
proc directorydialog_get_message*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "directorydialog_get_message", dynlib: swt.}
proc directorydialog_open*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "directorydialog_open", dynlib: swt.}
proc directorydialog_set_message*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "directorydialog_set_message", dynlib: swt.}
proc directorydialog_set_filter_path*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "directorydialog_set_filter_path", dynlib: swt.}
proc new_display*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_display",
    dynlib: swt.}
proc new_display_2*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_display_2", dynlib: swt.}
proc display_add_filter*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "display_add_filter", dynlib: swt.}
proc display_add_listener*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "display_add_listener", dynlib: swt.}
proc display_async_exec*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "display_async_exec", dynlib: swt.}
proc display_beep*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "display_beep", dynlib: swt.}
proc display_close*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "display_close", dynlib: swt.}
proc display_dispose_exec*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "display_dispose_exec", dynlib: swt.}
proc display_find_widget*(a1: ptr IsolateThread; a2: pointer; a3: clonglong): pointer {.
    cdecl, importc: "display_find_widget", dynlib: swt.}
proc display_find_widget_2*(a1: ptr IsolateThread; a2: pointer; a3: clonglong;
                           a4: clonglong): pointer {.cdecl,
    importc: "display_find_widget_2", dynlib: swt.}
proc display_find_widget_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer;
                           a4: clonglong): pointer {.cdecl,
    importc: "display_find_widget_3", dynlib: swt.}
proc display_get_active_shell*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_active_shell", dynlib: swt.}
proc display_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_bounds", dynlib: swt.}
proc display_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_client_area", dynlib: swt.}
proc display_get_cursor_control*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_cursor_control", dynlib: swt.}
proc display_get_cursor_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_cursor_location", dynlib: swt.}
proc display_get_cursor_sizes*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_cursor_sizes", dynlib: swt.}
proc display_get_data*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.cdecl,
    importc: "display_get_data", dynlib: swt.}
proc display_get_data_2*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_data_2", dynlib: swt.}
proc display_get_dismissal_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "display_get_dismissal_alignment", dynlib: swt.}
proc display_get_double_click_time*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "display_get_double_click_time", dynlib: swt.}
proc display_get_focus_control*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_focus_control", dynlib: swt.}
proc display_get_high_contrast*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "display_get_high_contrast", dynlib: swt.}
proc display_get_icon_depth*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "display_get_icon_depth", dynlib: swt.}
proc display_get_icon_sizes*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_icon_sizes", dynlib: swt.}
proc display_get_monitors*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_monitors", dynlib: swt.}
proc display_get_primary_monitor*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_primary_monitor", dynlib: swt.}
proc display_get_shells*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_shells", dynlib: swt.}
proc display_get_synchronizer*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_synchronizer", dynlib: swt.}
proc display_get_sync_thread*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_sync_thread", dynlib: swt.}
proc display_get_system_color*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "display_get_system_color", dynlib: swt.}
proc display_get_system_cursor*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "display_get_system_cursor", dynlib: swt.}
proc display_get_system_image*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "display_get_system_image", dynlib: swt.}
proc display_get_menu_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_menu_bar", dynlib: swt.}
proc display_get_system_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_system_menu", dynlib: swt.}
proc display_get_system_tray*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_system_tray", dynlib: swt.}
proc display_get_system_task_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_system_task_bar", dynlib: swt.}
proc display_get_thread*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_thread", dynlib: swt.}
proc display_get_touch_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "display_get_touch_enabled", dynlib: swt.}
proc display_internal_new_g_c*(a1: ptr IsolateThread; a2: pointer; a3: pointer): clonglong {.
    cdecl, importc: "display_internal_new__g_c", dynlib: swt.}
proc display_internal_dispose_g_c*(a1: ptr IsolateThread; a2: pointer; a3: clonglong;
                                   a4: pointer) {.cdecl,
    importc: "display_internal_dispose__g_c", dynlib: swt.}
proc display_post*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "display_post", dynlib: swt.}
proc display_map*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer;
                 a5: pointer): pointer {.cdecl, importc: "display_map", dynlib: swt.}
proc display_map_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer;
                   a5: cint; a6: cint): pointer {.cdecl, importc: "display_map_2",
    dynlib: swt.}
proc display_map_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer;
                   a5: pointer): pointer {.cdecl, importc: "display_map_3",
                                        dynlib: swt.}
proc display_map_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer;
                   a5: cint; a6: cint; a7: cint; a8: cint): pointer {.cdecl,
    importc: "display_map_4", dynlib: swt.}
proc display_read_and_dispatch*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "display_read_and_dispatch", dynlib: swt.}
proc display_remove_filter*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "display_remove_filter", dynlib: swt.}
proc display_remove_listener*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "display_remove_listener", dynlib: swt.}
proc display_send_pre_external_event_dispatch_event*(a1: ptr IsolateThread;
    a2: pointer) {.cdecl,
                 importc: "display_send_pre_external_event_dispatch_event",
                 dynlib: swt.}
proc display_send_post_external_event_dispatch_event*(a1: ptr IsolateThread;
    a2: pointer) {.cdecl,
                 importc: "display_send_post_external_event_dispatch_event",
                 dynlib: swt.}
proc display_set_cursor_location*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "display_set_cursor_location", dynlib: swt.}
proc display_set_cursor_location_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "display_set_cursor_location_2", dynlib: swt.}
proc display_set_data*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: pointer) {.
    cdecl, importc: "display_set_data", dynlib: swt.}
proc display_set_data_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "display_set_data_2", dynlib: swt.}
proc display_set_synchronizer*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "display_set_synchronizer", dynlib: swt.}
proc display_set_runtime_exception_handler*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "display_set_runtime_exception_handler",
                 dynlib: swt.}
proc display_get_runtime_exception_handler*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "display_get_runtime_exception_handler", dynlib: swt.}
proc display_set_error_handler*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "display_set_error_handler", dynlib: swt.}
proc display_get_error_handler*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "display_get_error_handler", dynlib: swt.}
proc display_sleep*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "display_sleep", dynlib: swt.}
proc display_sync_exec*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "display_sync_exec", dynlib: swt.}
proc display_timer_exec*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "display_timer_exec", dynlib: swt.}
proc display_update*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "display_update", dynlib: swt.}
proc display_wake*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "display_wake", dynlib: swt.}
proc new_disposeevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_disposeevent", dynlib: swt.}
proc create_dispose_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_dispose_listener", dynlib: swt.}
proc new_dragdetectevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_dragdetectevent", dynlib: swt.}
proc create_drag_detect_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_drag_detect_listener", dynlib: swt.}
proc event_display*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_display", dynlib: swt.}
proc event_assign_display*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_display", dynlib: swt.}
proc event_widget*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_widget", dynlib: swt.}
proc event_assign_widget*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_widget", dynlib: swt.}
proc event_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_type", dynlib: swt.}
proc event_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_type", dynlib: swt.}
proc event_detail*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_detail", dynlib: swt.}
proc event_assign_detail*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_detail", dynlib: swt.}
proc event_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_item", dynlib: swt.}
proc event_assign_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_item", dynlib: swt.}
proc event_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_index", dynlib: swt.}
proc event_assign_index*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_index", dynlib: swt.}
proc event_gc*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_gc", dynlib: swt.}
proc event_assign_gc*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_gc", dynlib: swt.}
proc event_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "event_x",
    dynlib: swt.}
proc event_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_x", dynlib: swt.}
proc event_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "event_y",
    dynlib: swt.}
proc event_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_y", dynlib: swt.}
proc event_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_width", dynlib: swt.}
proc event_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_width", dynlib: swt.}
proc event_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_height", dynlib: swt.}
proc event_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_height", dynlib: swt.}
proc event_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_count", dynlib: swt.}
proc event_assign_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_count", dynlib: swt.}
proc event_time*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_time", dynlib: swt.}
proc event_assign_time*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_time", dynlib: swt.}
proc event_button*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_button", dynlib: swt.}
proc event_assign_button*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_button", dynlib: swt.}
proc event_character*(a1: ptr IsolateThread; a2: pointer): cshort {.cdecl,
    importc: "event_character", dynlib: swt.}
proc event_assign_character*(a1: ptr IsolateThread; a2: pointer; a3: cshort) {.cdecl,
    importc: "event_assign_character", dynlib: swt.}
proc event_key_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_key_code", dynlib: swt.}
proc event_assign_key_code*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_key_code", dynlib: swt.}
proc event_key_location*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_key_location", dynlib: swt.}
proc event_assign_key_location*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_key_location", dynlib: swt.}
proc event_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_state_mask", dynlib: swt.}
proc event_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_state_mask", dynlib: swt.}
proc event_start*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_start", dynlib: swt.}
proc event_assign_start*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_start", dynlib: swt.}
proc event_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "event_text", dynlib: swt.}
proc event_assign_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "event_assign_text", dynlib: swt.}
proc event_segments*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_segments", dynlib: swt.}
proc event_assign_segments*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_segments", dynlib: swt.}
proc event_segments_chars*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_segments_chars", dynlib: swt.}
proc event_assign_segments_chars*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "event_assign_segments_chars", dynlib: swt.}
proc event_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "event_doit", dynlib: swt.}
proc event_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_doit", dynlib: swt.}
proc event_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_data", dynlib: swt.}
proc event_assign_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_data", dynlib: swt.}
proc event_touches*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_touches", dynlib: swt.}
proc event_assign_touches*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_assign_touches", dynlib: swt.}
proc event_x_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_x_direction", dynlib: swt.}
proc event_assign_x_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_x_direction", dynlib: swt.}
proc event_y_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "event_y_direction", dynlib: swt.}
proc event_assign_y_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "event_assign_y_direction", dynlib: swt.}
proc event_magnification*(a1: ptr IsolateThread; a2: pointer): cdouble {.cdecl,
    importc: "event_magnification", dynlib: swt.}
proc event_assign_magnification*(a1: ptr IsolateThread; a2: pointer; a3: cdouble) {.
    cdecl, importc: "event_assign_magnification", dynlib: swt.}
proc event_rotation*(a1: ptr IsolateThread; a2: pointer): cdouble {.cdecl,
    importc: "event_rotation", dynlib: swt.}
proc event_assign_rotation*(a1: ptr IsolateThread; a2: pointer; a3: cdouble) {.cdecl,
    importc: "event_assign_rotation", dynlib: swt.}
proc event_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "event_get_bounds", dynlib: swt.}
proc event_set_bounds*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "event_set_bounds", dynlib: swt.}
proc event_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "event_to_string", dynlib: swt.}
proc expandadapter_item_collapsed*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "expandadapter_item_collapsed", dynlib: swt.}
proc expandadapter_item_expanded*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "expandadapter_item_expanded", dynlib: swt.}
proc new_expandevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_expandevent", dynlib: swt.}
proc new_filedialog*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_filedialog", dynlib: swt.}
proc new_filedialog_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_filedialog_2", dynlib: swt.}
proc filedialog_get_file_name*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "filedialog_get_file_name", dynlib: swt.}
proc filedialog_get_file_names*(a1: ptr IsolateThread; a2: pointer): cstringArray {.
    cdecl, importc: "filedialog_get_file_names", dynlib: swt.}
proc filedialog_get_filter_extensions*(a1: ptr IsolateThread; a2: pointer): cstringArray {.
    cdecl, importc: "filedialog_get_filter_extensions", dynlib: swt.}
proc filedialog_get_filter_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "filedialog_get_filter_index", dynlib: swt.}
proc filedialog_get_filter_names*(a1: ptr IsolateThread; a2: pointer): cstringArray {.
    cdecl, importc: "filedialog_get_filter_names", dynlib: swt.}
proc filedialog_get_filter_path*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "filedialog_get_filter_path", dynlib: swt.}
proc filedialog_get_overwrite*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "filedialog_get_overwrite", dynlib: swt.}
proc filedialog_open*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "filedialog_open", dynlib: swt.}
proc filedialog_set_file_name*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "filedialog_set_file_name", dynlib: swt.}
proc filedialog_set_filter_extensions*(a1: ptr IsolateThread; a2: pointer;
                                      a3: cstringArray; a4: cint) {.cdecl,
    importc: "filedialog_set_filter_extensions", dynlib: swt.}
proc filedialog_set_filter_index*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "filedialog_set_filter_index", dynlib: swt.}
proc filedialog_set_filter_names*(a1: ptr IsolateThread; a2: pointer;
                                 a3: cstringArray; a4: cint) {.cdecl,
    importc: "filedialog_set_filter_names", dynlib: swt.}
proc filedialog_set_filter_path*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "filedialog_set_filter_path", dynlib: swt.}
proc filedialog_set_overwrite*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "filedialog_set_overwrite", dynlib: swt.}
proc new_filllayout*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_filllayout", dynlib: swt.}
proc new_filllayout_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_filllayout_2", dynlib: swt.}
proc filllayout_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "filllayout_type", dynlib: swt.}
proc filllayout_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "filllayout_assign_type", dynlib: swt.}
proc filllayout_margin_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "filllayout_margin_width", dynlib: swt.}
proc filllayout_assign_margin_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "filllayout_assign_margin_width", dynlib: swt.}
proc filllayout_margin_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "filllayout_margin_height", dynlib: swt.}
proc filllayout_assign_margin_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "filllayout_assign_margin_height", dynlib: swt.}
proc filllayout_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "filllayout_spacing", dynlib: swt.}
proc filllayout_assign_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "filllayout_assign_spacing", dynlib: swt.}
proc filllayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "filllayout_to_string", dynlib: swt.}
proc focusadapter_focus_gained*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "focusadapter_focus_gained", dynlib: swt.}
proc focusadapter_focus_lost*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "focusadapter_focus_lost", dynlib: swt.}
proc new_focusevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_focusevent", dynlib: swt.}
proc new_fontdata*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_fontdata",
    dynlib: swt.}
proc new_fontdata_2*(a1: ptr IsolateThread; a2: cstring): pointer {.cdecl,
    importc: "new_fontdata_2", dynlib: swt.}
proc new_fontdata_3*(a1: ptr IsolateThread; a2: cstring; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_fontdata_3", dynlib: swt.}
proc fontdata_name*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontdata_name", dynlib: swt.}
proc fontdata_assign_name*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "fontdata_assign_name", dynlib: swt.}
proc fontdata_height*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "fontdata_height", dynlib: swt.}
proc fontdata_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.cdecl,
    importc: "fontdata_assign_height", dynlib: swt.}
proc fontdata_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontdata_style", dynlib: swt.}
proc fontdata_assign_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "fontdata_assign_style", dynlib: swt.}
proc fontdata_ns_name*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontdata_ns_name", dynlib: swt.}
proc fontdata_assign_ns_name*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "fontdata_assign_ns_name", dynlib: swt.}
proc fontdata_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "fontdata_equals", dynlib: swt.}
proc fontdata_get_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontdata_get_height", dynlib: swt.}
proc fontdata_get_locale*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontdata_get_locale", dynlib: swt.}
proc fontdata_get_name*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontdata_get_name", dynlib: swt.}
proc fontdata_get_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontdata_get_style", dynlib: swt.}
proc fontdata_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontdata_hash_code", dynlib: swt.}
proc fontdata_set_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "fontdata_set_height", dynlib: swt.}
proc fontdata_set_locale*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "fontdata_set_locale", dynlib: swt.}
proc fontdata_set_name*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "fontdata_set_name", dynlib: swt.}
proc fontdata_set_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "fontdata_set_style", dynlib: swt.}
proc fontdata_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontdata_to_string", dynlib: swt.}
proc new_fontdialog*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_fontdialog", dynlib: swt.}
proc new_fontdialog_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_fontdialog_2", dynlib: swt.}
proc fontdialog_get_effects_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "fontdialog_get_effects_visible", dynlib: swt.}
proc fontdialog_get_font_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "fontdialog_get_font_data", dynlib: swt.}
proc fontdialog_get_font_list*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "fontdialog_get_font_list", dynlib: swt.}
proc fontdialog_get_r_g_b*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "fontdialog_get_r_g_b", dynlib: swt.}
proc fontdialog_open*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "fontdialog_open", dynlib: swt.}
proc fontdialog_set_effects_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "fontdialog_set_effects_visible", dynlib: swt.}
proc fontdialog_set_font_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "fontdialog_set_font_data", dynlib: swt.}
proc fontdialog_set_font_list*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "fontdialog_set_font_list", dynlib: swt.}
proc fontdialog_set_r_g_b*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "fontdialog_set_r_g_b", dynlib: swt.}
proc fontmetrics_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "fontmetrics_equals", dynlib: swt.}
proc fontmetrics_get_ascent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontmetrics_get_ascent", dynlib: swt.}
proc fontmetrics_get_average_character_width*(a1: ptr IsolateThread; a2: pointer): cdouble {.
    cdecl, importc: "fontmetrics_get_average_character_width", dynlib: swt.}
proc fontmetrics_get_average_char_width*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "fontmetrics_get_average_char_width", dynlib: swt.}
proc fontmetrics_get_descent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontmetrics_get_descent", dynlib: swt.}
proc fontmetrics_get_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontmetrics_get_height", dynlib: swt.}
proc fontmetrics_get_leading*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontmetrics_get_leading", dynlib: swt.}
proc fontmetrics_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "fontmetrics_hash_code", dynlib: swt.}
proc fontmetrics_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "fontmetrics_to_string", dynlib: swt.}
proc new_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_font", dynlib: swt.}
proc new_font_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_font_2", dynlib: swt.}
proc new_font_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_font_3", dynlib: swt.}
proc font_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "font_handle", dynlib: swt.}
proc font_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "font_assign_handle", dynlib: swt.}
proc font_extra_traits*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "font_extra_traits", dynlib: swt.}
proc font_assign_extra_traits*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "font_assign_extra_traits", dynlib: swt.}
proc font_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "font_equals", dynlib: swt.}
proc font_get_font_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "font_get_font_data", dynlib: swt.}
proc font_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "font_hash_code", dynlib: swt.}
proc font_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "font_is_disposed", dynlib: swt.}
proc font_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "font_to_string", dynlib: swt.}
proc new_formattachment*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_formattachment", dynlib: swt.}
proc new_formattachment_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_formattachment_2", dynlib: swt.}
proc new_formattachment_3*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_formattachment_3", dynlib: swt.}
proc new_formattachment_4*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_formattachment_4", dynlib: swt.}
proc new_formattachment_5*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_formattachment_5", dynlib: swt.}
proc new_formattachment_6*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "new_formattachment_6", dynlib: swt.}
proc new_formattachment_7*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_formattachment_7", dynlib: swt.}
proc formattachment_numerator*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formattachment_numerator", dynlib: swt.}
proc formattachment_assign_numerator*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formattachment_assign_numerator", dynlib: swt.}
proc formattachment_denominator*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formattachment_denominator", dynlib: swt.}
proc formattachment_assign_denominator*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formattachment_assign_denominator", dynlib: swt.}
proc formattachment_offset*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formattachment_offset", dynlib: swt.}
proc formattachment_assign_offset*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formattachment_assign_offset", dynlib: swt.}
proc formattachment_control*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "formattachment_control", dynlib: swt.}
proc formattachment_assign_control*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "formattachment_assign_control", dynlib: swt.}
proc formattachment_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formattachment_alignment", dynlib: swt.}
proc formattachment_assign_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formattachment_assign_alignment", dynlib: swt.}
proc formattachment_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "formattachment_to_string", dynlib: swt.}
proc new_formdata*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_formdata",
    dynlib: swt.}
proc new_formdata_2*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_formdata_2", dynlib: swt.}
proc formdata_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formdata_width", dynlib: swt.}
proc formdata_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "formdata_assign_width", dynlib: swt.}
proc formdata_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formdata_height", dynlib: swt.}
proc formdata_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "formdata_assign_height", dynlib: swt.}
proc formdata_left*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "formdata_left", dynlib: swt.}
proc formdata_assign_left*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "formdata_assign_left", dynlib: swt.}
proc formdata_right*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "formdata_right", dynlib: swt.}
proc formdata_assign_right*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "formdata_assign_right", dynlib: swt.}
proc formdata_top*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "formdata_top", dynlib: swt.}
proc formdata_assign_top*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "formdata_assign_top", dynlib: swt.}
proc formdata_bottom*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "formdata_bottom", dynlib: swt.}
proc formdata_assign_bottom*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "formdata_assign_bottom", dynlib: swt.}
proc formdata_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "formdata_to_string", dynlib: swt.}
proc new_formlayout*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_formlayout", dynlib: swt.}
proc formlayout_margin_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_width", dynlib: swt.}
proc formlayout_assign_margin_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_width", dynlib: swt.}
proc formlayout_margin_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_height", dynlib: swt.}
proc formlayout_assign_margin_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_height", dynlib: swt.}
proc formlayout_margin_left*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_left", dynlib: swt.}
proc formlayout_assign_margin_left*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_left", dynlib: swt.}
proc formlayout_margin_top*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_top", dynlib: swt.}
proc formlayout_assign_margin_top*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_top", dynlib: swt.}
proc formlayout_margin_right*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_right", dynlib: swt.}
proc formlayout_assign_margin_right*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_right", dynlib: swt.}
proc formlayout_margin_bottom*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_margin_bottom", dynlib: swt.}
proc formlayout_assign_margin_bottom*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "formlayout_assign_margin_bottom", dynlib: swt.}
proc formlayout_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "formlayout_spacing", dynlib: swt.}
proc formlayout_assign_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "formlayout_assign_spacing", dynlib: swt.}
proc formlayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "formlayout_to_string", dynlib: swt.}
proc gcdata_device*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_device", dynlib: swt.}
proc gcdata_assign_device*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_device", dynlib: swt.}
proc gcdata_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_style", dynlib: swt.}
proc gcdata_assign_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_style", dynlib: swt.}
proc gcdata_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_foreground", dynlib: swt.}
proc gcdata_assign_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_foreground", dynlib: swt.}
proc gcdata_foreground_pattern*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_foreground_pattern", dynlib: swt.}
proc gcdata_assign_foreground_pattern*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_foreground_pattern", dynlib: swt.}
proc gcdata_background_pattern*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_background_pattern", dynlib: swt.}
proc gcdata_assign_background_pattern*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_background_pattern", dynlib: swt.}
proc gcdata_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_font", dynlib: swt.}
proc gcdata_assign_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_font", dynlib: swt.}
proc gcdata_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_alpha", dynlib: swt.}
proc gcdata_assign_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_alpha", dynlib: swt.}
proc gcdata_line_width*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "gcdata_line_width", dynlib: swt.}
proc gcdata_assign_line_width*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.cdecl,
    importc: "gcdata_assign_line_width", dynlib: swt.}
proc gcdata_line_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_line_style", dynlib: swt.}
proc gcdata_assign_line_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_line_style", dynlib: swt.}
proc gcdata_line_cap*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_line_cap", dynlib: swt.}
proc gcdata_assign_line_cap*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_line_cap", dynlib: swt.}
proc gcdata_line_join*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_line_join", dynlib: swt.}
proc gcdata_assign_line_join*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_line_join", dynlib: swt.}
proc gcdata_line_dashes_offset*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "gcdata_line_dashes_offset", dynlib: swt.}
proc gcdata_assign_line_dashes_offset*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.
    cdecl, importc: "gcdata_assign_line_dashes_offset", dynlib: swt.}
proc gcdata_line_dashes*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_line_dashes", dynlib: swt.}
proc gcdata_assign_line_dashes*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_line_dashes", dynlib: swt.}
proc gcdata_line_miter_limit*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "gcdata_line_miter_limit", dynlib: swt.}
proc gcdata_assign_line_miter_limit*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.
    cdecl, importc: "gcdata_assign_line_miter_limit", dynlib: swt.}
proc gcdata_xor_mode*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gcdata_xor_mode", dynlib: swt.}
proc gcdata_assign_xor_mode*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_xor_mode", dynlib: swt.}
proc gcdata_antialias*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_antialias", dynlib: swt.}
proc gcdata_assign_antialias*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_antialias", dynlib: swt.}
proc gcdata_text_antialias*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_text_antialias", dynlib: swt.}
proc gcdata_assign_text_antialias*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gcdata_assign_text_antialias", dynlib: swt.}
proc gcdata_fill_rule*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gcdata_fill_rule", dynlib: swt.}
proc gcdata_assign_fill_rule*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gcdata_assign_fill_rule", dynlib: swt.}
proc gcdata_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_image", dynlib: swt.}
proc gcdata_assign_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_image", dynlib: swt.}
proc gcdata_text_storage*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_text_storage", dynlib: swt.}
proc gcdata_assign_text_storage*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_text_storage", dynlib: swt.}
proc gcdata_layout_manager*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_layout_manager", dynlib: swt.}
proc gcdata_assign_layout_manager*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_layout_manager", dynlib: swt.}
proc gcdata_text_container*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_text_container", dynlib: swt.}
proc gcdata_assign_text_container*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_text_container", dynlib: swt.}
proc gcdata_fg*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_fg", dynlib: swt.}
proc gcdata_assign_fg*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_fg", dynlib: swt.}
proc gcdata_draw_x_offset*(a1: ptr IsolateThread; a2: pointer): cdouble {.cdecl,
    importc: "gcdata_draw_x_offset", dynlib: swt.}
proc gcdata_assign_draw_x_offset*(a1: ptr IsolateThread; a2: pointer; a3: cdouble) {.
    cdecl, importc: "gcdata_assign_draw_x_offset", dynlib: swt.}
proc gcdata_paint_rect*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_paint_rect", dynlib: swt.}
proc gcdata_assign_paint_rect*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_paint_rect", dynlib: swt.}
proc gcdata_path*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_path", dynlib: swt.}
proc gcdata_assign_path*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_path", dynlib: swt.}
proc gcdata_transform*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_transform", dynlib: swt.}
proc gcdata_assign_transform*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_transform", dynlib: swt.}
proc gcdata_clip_path*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_clip_path", dynlib: swt.}
proc gcdata_assign_clip_path*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_clip_path", dynlib: swt.}
proc gcdata_visible_rgn*(a1: ptr IsolateThread; a2: pointer): clonglong {.cdecl,
    importc: "gcdata_visible_rgn", dynlib: swt.}
proc gcdata_assign_visible_rgn*(a1: ptr IsolateThread; a2: pointer; a3: clonglong) {.
    cdecl, importc: "gcdata_assign_visible_rgn", dynlib: swt.}
proc gcdata_view*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_view", dynlib: swt.}
proc gcdata_assign_view*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_view", dynlib: swt.}
proc gcdata_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_size", dynlib: swt.}
proc gcdata_assign_size*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_size", dynlib: swt.}
proc gcdata_thread*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_thread", dynlib: swt.}
proc gcdata_assign_thread*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gcdata_assign_thread", dynlib: swt.}
proc gcdata_flipped_context*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gcdata_flipped_context", dynlib: swt.}
proc gcdata_assign_flipped_context*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gcdata_assign_flipped_context", dynlib: swt.}
proc gcdata_restore_context*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gcdata_restore_context", dynlib: swt.}
proc gcdata_assign_restore_context*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gcdata_assign_restore_context", dynlib: swt.}
proc new_gc*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl, importc: "new_gc",
    dynlib: swt.}
proc new_gc_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_gc_2", dynlib: swt.}
proc gc_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_handle", dynlib: swt.}
proc gc_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_assign_handle", dynlib: swt.}
proc gc_copy_area*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint; a5: cint) {.
    cdecl, importc: "gc_copy_area", dynlib: swt.}
proc gc_copy_area_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                    a6: cint; a7: cint; a8: cint) {.cdecl, importc: "gc_copy_area_2",
    dynlib: swt.}
proc gc_copy_area_3*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                    a6: cint; a7: cint; a8: cint; a9: cint) {.cdecl,
    importc: "gc_copy_area_3", dynlib: swt.}
proc gc_draw_arc*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                 a6: cint; a7: cint; a8: cint) {.cdecl, importc: "gc_draw_arc",
    dynlib: swt.}
proc gc_draw_focus*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                   a6: cint) {.cdecl, importc: "gc_draw_focus", dynlib: swt.}
proc gc_draw_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint; a5: cint) {.
    cdecl, importc: "gc_draw_image", dynlib: swt.}
proc gc_draw_image_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint; a5: cint;
                     a6: cint; a7: cint; a8: cint; a9: cint; a10: cint; a11: cint) {.cdecl,
    importc: "gc_draw_image_2", dynlib: swt.}
proc gc_draw_line*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                  a6: cint) {.cdecl, importc: "gc_draw_line", dynlib: swt.}
proc gc_draw_oval*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                  a6: cint) {.cdecl, importc: "gc_draw_oval", dynlib: swt.}
proc gc_draw_path*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_draw_path", dynlib: swt.}
proc gc_draw_point*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "gc_draw_point", dynlib: swt.}
proc gc_draw_polygon*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_draw_polygon", dynlib: swt.}
proc gc_draw_polyline*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_draw_polyline", dynlib: swt.}
proc gc_draw_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint) {.cdecl, importc: "gc_draw_rectangle", dynlib: swt.}
proc gc_draw_rectangle_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_draw_rectangle_2", dynlib: swt.}
proc gc_draw_round_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                             a5: cint; a6: cint; a7: cint; a8: cint) {.cdecl,
    importc: "gc_draw_round_rectangle", dynlib: swt.}
proc gc_draw_string*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint; a5: cint) {.
    cdecl, importc: "gc_draw_string", dynlib: swt.}
proc gc_draw_string_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint;
                      a5: cint; a6: cint) {.cdecl, importc: "gc_draw_string_2",
                                        dynlib: swt.}
proc gc_draw_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint; a5: cint) {.
    cdecl, importc: "gc_draw_text", dynlib: swt.}
proc gc_draw_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint; a5: cint;
                    a6: cint) {.cdecl, importc: "gc_draw_text_2", dynlib: swt.}
proc gc_draw_text_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint; a5: cint;
                    a6: cint) {.cdecl, importc: "gc_draw_text_3", dynlib: swt.}
proc gc_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "gc_equals", dynlib: swt.}
proc gc_fill_arc*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                 a6: cint; a7: cint; a8: cint) {.cdecl, importc: "gc_fill_arc",
    dynlib: swt.}
proc gc_fill_gradient_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                                a5: cint; a6: cint; a7: cint) {.cdecl,
    importc: "gc_fill_gradient_rectangle", dynlib: swt.}
proc gc_fill_oval*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                  a6: cint) {.cdecl, importc: "gc_fill_oval", dynlib: swt.}
proc gc_fill_path*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_fill_path", dynlib: swt.}
proc gc_fill_polygon*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_fill_polygon", dynlib: swt.}
proc gc_fill_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint) {.cdecl, importc: "gc_fill_rectangle", dynlib: swt.}
proc gc_fill_rectangle_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_fill_rectangle_2", dynlib: swt.}
proc gc_fill_round_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                             a5: cint; a6: cint; a7: cint; a8: cint) {.cdecl,
    importc: "gc_fill_round_rectangle", dynlib: swt.}
proc gc_get_advance_width*(a1: ptr IsolateThread; a2: pointer; a3: cshort): cint {.cdecl,
    importc: "gc_get_advance_width", dynlib: swt.}
proc gc_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_background", dynlib: swt.}
proc gc_get_background_pattern*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_background_pattern", dynlib: swt.}
proc gc_get_advanced*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gc_get_advanced", dynlib: swt.}
proc gc_get_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_alpha", dynlib: swt.}
proc gc_get_antialias*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_antialias", dynlib: swt.}
proc gc_get_char_width*(a1: ptr IsolateThread; a2: pointer; a3: cshort): cint {.cdecl,
    importc: "gc_get_char_width", dynlib: swt.}
proc gc_get_clipping*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_clipping", dynlib: swt.}
proc gc_get_clipping_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_get_clipping_2", dynlib: swt.}
proc gc_get_fill_rule*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_fill_rule", dynlib: swt.}
proc gc_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_font", dynlib: swt.}
proc gc_get_font_metrics*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_font_metrics", dynlib: swt.}
proc gc_get_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_foreground", dynlib: swt.}
proc gc_get_foreground_pattern*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_foreground_pattern", dynlib: swt.}
proc gc_get_g_c_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_g_c_data", dynlib: swt.}
proc gc_get_interpolation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_interpolation", dynlib: swt.}
proc gc_get_line_attributes*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_line_attributes", dynlib: swt.}
proc gc_get_line_cap*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_line_cap", dynlib: swt.}
proc gc_get_line_dash*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "gc_get_line_dash", dynlib: swt.}
proc gc_get_line_join*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_line_join", dynlib: swt.}
proc gc_get_line_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_line_style", dynlib: swt.}
proc gc_get_line_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_line_width", dynlib: swt.}
proc gc_get_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_style", dynlib: swt.}
proc gc_get_text_antialias*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_get_text_antialias", dynlib: swt.}
proc gc_get_transform*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_get_transform", dynlib: swt.}
proc gc_get_x_o_r_mode*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gc_get_x_o_r_mode", dynlib: swt.}
proc gc_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gc_hash_code", dynlib: swt.}
proc gc_is_clipped*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gc_is_clipped", dynlib: swt.}
proc gc_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gc_is_disposed", dynlib: swt.}
proc gc_set_advanced*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_advanced", dynlib: swt.}
proc gc_set_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_alpha", dynlib: swt.}
proc gc_set_antialias*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_antialias", dynlib: swt.}
proc gc_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_background", dynlib: swt.}
proc gc_set_background_pattern*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gc_set_background_pattern", dynlib: swt.}
proc gc_set_clipping*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                     a6: cint) {.cdecl, importc: "gc_set_clipping", dynlib: swt.}
proc gc_set_clipping_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_clipping_2", dynlib: swt.}
proc gc_set_clipping_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_clipping_3", dynlib: swt.}
proc gc_set_clipping_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_clipping_4", dynlib: swt.}
proc gc_set_fill_rule*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_fill_rule", dynlib: swt.}
proc gc_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_font", dynlib: swt.}
proc gc_set_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_foreground", dynlib: swt.}
proc gc_set_foreground_pattern*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "gc_set_foreground_pattern", dynlib: swt.}
proc gc_set_interpolation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_interpolation", dynlib: swt.}
proc gc_set_line_attributes*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_line_attributes", dynlib: swt.}
proc gc_set_line_cap*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_line_cap", dynlib: swt.}
proc gc_set_line_dash*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_line_dash", dynlib: swt.}
proc gc_set_line_join*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_line_join", dynlib: swt.}
proc gc_set_line_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_line_style", dynlib: swt.}
proc gc_set_line_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_line_width", dynlib: swt.}
proc gc_set_x_o_r_mode*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_x_o_r_mode", dynlib: swt.}
proc gc_set_text_antialias*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gc_set_text_antialias", dynlib: swt.}
proc gc_set_transform*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "gc_set_transform", dynlib: swt.}
proc gc_string_extent*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.cdecl,
    importc: "gc_string_extent", dynlib: swt.}
proc gc_text_extent*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.cdecl,
    importc: "gc_text_extent", dynlib: swt.}
proc gc_text_extent_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint): pointer {.
    cdecl, importc: "gc_text_extent_2", dynlib: swt.}
proc gc_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "gc_to_string", dynlib: swt.}
proc new_gestureevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_gestureevent", dynlib: swt.}
proc gestureevent_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_state_mask", dynlib: swt.}
proc gestureevent_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gestureevent_assign_state_mask", dynlib: swt.}
proc gestureevent_detail*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_detail", dynlib: swt.}
proc gestureevent_assign_detail*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gestureevent_assign_detail", dynlib: swt.}
proc gestureevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_x", dynlib: swt.}
proc gestureevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gestureevent_assign_x", dynlib: swt.}
proc gestureevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_y", dynlib: swt.}
proc gestureevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gestureevent_assign_y", dynlib: swt.}
proc gestureevent_rotation*(a1: ptr IsolateThread; a2: pointer): cdouble {.cdecl,
    importc: "gestureevent_rotation", dynlib: swt.}
proc gestureevent_assign_rotation*(a1: ptr IsolateThread; a2: pointer; a3: cdouble) {.
    cdecl, importc: "gestureevent_assign_rotation", dynlib: swt.}
proc gestureevent_x_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_x_direction", dynlib: swt.}
proc gestureevent_assign_x_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gestureevent_assign_x_direction", dynlib: swt.}
proc gestureevent_y_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gestureevent_y_direction", dynlib: swt.}
proc gestureevent_assign_y_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gestureevent_assign_y_direction", dynlib: swt.}
proc gestureevent_magnification*(a1: ptr IsolateThread; a2: pointer): cdouble {.cdecl,
    importc: "gestureevent_magnification", dynlib: swt.}
proc gestureevent_assign_magnification*(a1: ptr IsolateThread; a2: pointer;
                                       a3: cdouble) {.cdecl,
    importc: "gestureevent_assign_magnification", dynlib: swt.}
proc gestureevent_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "gestureevent_doit", dynlib: swt.}
proc gestureevent_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "gestureevent_assign_doit", dynlib: swt.}
proc gestureevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "gestureevent_to_string", dynlib: swt.}
proc create_gesture_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_gesture_listener", dynlib: swt.}
proc new_glyphmetrics*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_glyphmetrics", dynlib: swt.}
proc glyphmetrics_ascent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "glyphmetrics_ascent", dynlib: swt.}
proc glyphmetrics_assign_ascent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "glyphmetrics_assign_ascent", dynlib: swt.}
proc glyphmetrics_descent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "glyphmetrics_descent", dynlib: swt.}
proc glyphmetrics_assign_descent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "glyphmetrics_assign_descent", dynlib: swt.}
proc glyphmetrics_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "glyphmetrics_width", dynlib: swt.}
proc glyphmetrics_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "glyphmetrics_assign_width", dynlib: swt.}
proc glyphmetrics_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "glyphmetrics_equals", dynlib: swt.}
proc glyphmetrics_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "glyphmetrics_hash_code", dynlib: swt.}
proc glyphmetrics_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "glyphmetrics_to_string", dynlib: swt.}
proc new_griddata*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_griddata",
    dynlib: swt.}
proc new_griddata_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_griddata_2", dynlib: swt.}
proc new_griddata_3*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_griddata_3", dynlib: swt.}
proc new_griddata_4*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: cint;
                    a6: cint; a7: cint): pointer {.cdecl, importc: "new_griddata_4",
    dynlib: swt.}
proc new_griddata_5*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_griddata_5", dynlib: swt.}
proc griddata_vertical_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_vertical_alignment", dynlib: swt.}
proc griddata_assign_vertical_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_vertical_alignment", dynlib: swt.}
proc griddata_horizontal_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_horizontal_alignment", dynlib: swt.}
proc griddata_assign_horizontal_alignment*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "griddata_assign_horizontal_alignment", dynlib: swt.}
proc griddata_width_hint*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_width_hint", dynlib: swt.}
proc griddata_assign_width_hint*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "griddata_assign_width_hint", dynlib: swt.}
proc griddata_height_hint*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_height_hint", dynlib: swt.}
proc griddata_assign_height_hint*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "griddata_assign_height_hint", dynlib: swt.}
proc griddata_horizontal_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_horizontal_indent", dynlib: swt.}
proc griddata_assign_horizontal_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_horizontal_indent", dynlib: swt.}
proc griddata_vertical_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_vertical_indent", dynlib: swt.}
proc griddata_assign_vertical_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_vertical_indent", dynlib: swt.}
proc griddata_horizontal_span*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_horizontal_span", dynlib: swt.}
proc griddata_assign_horizontal_span*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_horizontal_span", dynlib: swt.}
proc griddata_vertical_span*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_vertical_span", dynlib: swt.}
proc griddata_assign_vertical_span*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_vertical_span", dynlib: swt.}
proc griddata_grab_excess_horizontal_space*(a1: ptr IsolateThread; a2: pointer): char {.
    cdecl, importc: "griddata_grab_excess_horizontal_space", dynlib: swt.}
proc griddata_assign_grab_excess_horizontal_space*(a1: ptr IsolateThread;
    a2: pointer; a3: cint) {.cdecl, importc: "griddata_assign_grab_excess_horizontal_space",
                         dynlib: swt.}
proc griddata_grab_excess_vertical_space*(a1: ptr IsolateThread; a2: pointer): char {.
    cdecl, importc: "griddata_grab_excess_vertical_space", dynlib: swt.}
proc griddata_assign_grab_excess_vertical_space*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "griddata_assign_grab_excess_vertical_space",
              dynlib: swt.}
proc griddata_minimum_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_minimum_width", dynlib: swt.}
proc griddata_assign_minimum_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_minimum_width", dynlib: swt.}
proc griddata_minimum_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "griddata_minimum_height", dynlib: swt.}
proc griddata_assign_minimum_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "griddata_assign_minimum_height", dynlib: swt.}
proc griddata_exclude*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "griddata_exclude", dynlib: swt.}
proc griddata_assign_exclude*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "griddata_assign_exclude", dynlib: swt.}
proc griddata_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "griddata_to_string", dynlib: swt.}
proc new_gridlayout*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_gridlayout", dynlib: swt.}
proc new_gridlayout_2*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_gridlayout_2", dynlib: swt.}
proc gridlayout_num_columns*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_num_columns", dynlib: swt.}
proc gridlayout_assign_num_columns*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_num_columns", dynlib: swt.}
proc gridlayout_make_columns_equal_width*(a1: ptr IsolateThread; a2: pointer): char {.
    cdecl, importc: "gridlayout_make_columns_equal_width", dynlib: swt.}
proc gridlayout_assign_make_columns_equal_width*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "gridlayout_assign_make_columns_equal_width",
              dynlib: swt.}
proc gridlayout_margin_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_width", dynlib: swt.}
proc gridlayout_assign_margin_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_width", dynlib: swt.}
proc gridlayout_margin_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_height", dynlib: swt.}
proc gridlayout_assign_margin_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_height", dynlib: swt.}
proc gridlayout_margin_left*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_left", dynlib: swt.}
proc gridlayout_assign_margin_left*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_left", dynlib: swt.}
proc gridlayout_margin_top*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_top", dynlib: swt.}
proc gridlayout_assign_margin_top*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_top", dynlib: swt.}
proc gridlayout_margin_right*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_right", dynlib: swt.}
proc gridlayout_assign_margin_right*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_right", dynlib: swt.}
proc gridlayout_margin_bottom*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_margin_bottom", dynlib: swt.}
proc gridlayout_assign_margin_bottom*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_margin_bottom", dynlib: swt.}
proc gridlayout_horizontal_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_horizontal_spacing", dynlib: swt.}
proc gridlayout_assign_horizontal_spacing*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "gridlayout_assign_horizontal_spacing", dynlib: swt.}
proc gridlayout_vertical_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "gridlayout_vertical_spacing", dynlib: swt.}
proc gridlayout_assign_vertical_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "gridlayout_assign_vertical_spacing", dynlib: swt.}
proc gridlayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "gridlayout_to_string", dynlib: swt.}
proc new_group*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_group", dynlib: swt.}
proc group_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                        a6: cint): pointer {.cdecl, importc: "group_compute_trim",
    dynlib: swt.}
proc group_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "group_get_client_area", dynlib: swt.}
proc group_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "group_get_text", dynlib: swt.}
proc group_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "group_set_text", dynlib: swt.}
proc new_helpevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_helpevent", dynlib: swt.}
proc create_help_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_help_listener", dynlib: swt.}
proc new_ime*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_ime", dynlib: swt.}
proc ime_get_caret_offset*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "ime_get_caret_offset", dynlib: swt.}
proc ime_get_commit_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "ime_get_commit_count", dynlib: swt.}
proc ime_get_composition_offset*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "ime_get_composition_offset", dynlib: swt.}
proc ime_get_ranges*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "ime_get_ranges", dynlib: swt.}
proc ime_get_styles*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "ime_get_styles", dynlib: swt.}
proc ime_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "ime_get_text", dynlib: swt.}
proc ime_get_wide_caret*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "ime_get_wide_caret", dynlib: swt.}
proc ime_set_composition_offset*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "ime_set_composition_offset", dynlib: swt.}
proc new_imagedata*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: pointer): pointer {.
    cdecl, importc: "new_imagedata", dynlib: swt.}
proc new_imagedata_2*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: pointer;
                     a6: cint; a7: pointer): pointer {.cdecl,
    importc: "new_imagedata_2", dynlib: swt.}
proc new_imagedata_3*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_imagedata_3", dynlib: swt.}
proc new_imagedata_4*(a1: ptr IsolateThread; a2: cstring): pointer {.cdecl,
    importc: "new_imagedata_4", dynlib: swt.}
proc imagedata_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_width", dynlib: swt.}
proc imagedata_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_width", dynlib: swt.}
proc imagedata_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_height", dynlib: swt.}
proc imagedata_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_height", dynlib: swt.}
proc imagedata_depth*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_depth", dynlib: swt.}
proc imagedata_assign_depth*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_depth", dynlib: swt.}
proc imagedata_scanline_pad*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_scanline_pad", dynlib: swt.}
proc imagedata_assign_scanline_pad*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imagedata_assign_scanline_pad", dynlib: swt.}
proc imagedata_bytes_per_line*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_bytes_per_line", dynlib: swt.}
proc imagedata_assign_bytes_per_line*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imagedata_assign_bytes_per_line", dynlib: swt.}
proc imagedata_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_data", dynlib: swt.}
proc imagedata_assign_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "imagedata_assign_data", dynlib: swt.}
proc imagedata_palette*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_palette", dynlib: swt.}
proc imagedata_assign_palette*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "imagedata_assign_palette", dynlib: swt.}
proc imagedata_transparent_pixel*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_transparent_pixel", dynlib: swt.}
proc imagedata_assign_transparent_pixel*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imagedata_assign_transparent_pixel", dynlib: swt.}
proc imagedata_mask_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_mask_data", dynlib: swt.}
proc imagedata_assign_mask_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "imagedata_assign_mask_data", dynlib: swt.}
proc imagedata_mask_pad*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_mask_pad", dynlib: swt.}
proc imagedata_assign_mask_pad*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_mask_pad", dynlib: swt.}
proc imagedata_alpha_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_alpha_data", dynlib: swt.}
proc imagedata_assign_alpha_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "imagedata_assign_alpha_data", dynlib: swt.}
proc imagedata_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_alpha", dynlib: swt.}
proc imagedata_assign_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_alpha", dynlib: swt.}
proc imagedata_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_type", dynlib: swt.}
proc imagedata_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_type", dynlib: swt.}
proc imagedata_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_x", dynlib: swt.}
proc imagedata_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_x", dynlib: swt.}
proc imagedata_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_y", dynlib: swt.}
proc imagedata_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_y", dynlib: swt.}
proc imagedata_disposal_method*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_disposal_method", dynlib: swt.}
proc imagedata_assign_disposal_method*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imagedata_assign_disposal_method", dynlib: swt.}
proc imagedata_delay_time*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imagedata_delay_time", dynlib: swt.}
proc imagedata_assign_delay_time*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "imagedata_assign_delay_time", dynlib: swt.}
proc imagedata_clone*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_clone", dynlib: swt.}
proc imagedata_get_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): cint {.
    cdecl, importc: "imagedata_get_alpha", dynlib: swt.}
proc imagedata_get_alphas*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_get_alphas", dynlib: swt.}
proc imagedata_get_pixel*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): cint {.
    cdecl, importc: "imagedata_get_pixel", dynlib: swt.}
proc imagedata_get_pixels*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_get_pixels", dynlib: swt.}
proc imagedata_get_pixels_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_get_pixels_2", dynlib: swt.}
proc imagedata_get_r_g_bs*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imagedata_get_r_g_bs", dynlib: swt.}
proc imagedata_get_transparency_mask*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "imagedata_get_transparency_mask", dynlib: swt.}
proc imagedata_get_transparency_type*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "imagedata_get_transparency_type", dynlib: swt.}
proc imagedata_scaled_to*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "imagedata_scaled_to", dynlib: swt.}
proc imagedata_set_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint) {.
    cdecl, importc: "imagedata_set_alpha", dynlib: swt.}
proc imagedata_set_alphas*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_set_alphas", dynlib: swt.}
proc imagedata_set_pixel*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint) {.
    cdecl, importc: "imagedata_set_pixel", dynlib: swt.}
proc imagedata_set_pixels*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_set_pixels", dynlib: swt.}
proc imagedata_set_pixels_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint; a6: pointer; a7: cint) {.cdecl,
    importc: "imagedata_set_pixels_2", dynlib: swt.}
proc new_imageloaderevent*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint;
                          a5: cint): pointer {.cdecl,
    importc: "new_imageloaderevent", dynlib: swt.}
proc imageloaderevent_image_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imageloaderevent_image_data", dynlib: swt.}
proc imageloaderevent_assign_image_data*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "imageloaderevent_assign_image_data", dynlib: swt.}
proc imageloaderevent_increment_count*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "imageloaderevent_increment_count", dynlib: swt.}
proc imageloaderevent_assign_increment_count*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "imageloaderevent_assign_increment_count",
              dynlib: swt.}
proc imageloaderevent_end_of_image*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "imageloaderevent_end_of_image", dynlib: swt.}
proc imageloaderevent_assign_end_of_image*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "imageloaderevent_assign_end_of_image", dynlib: swt.}
proc imageloaderevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "imageloaderevent_to_string", dynlib: swt.}
proc create_image_loader_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "create_image_loader_listener", dynlib: swt.}
proc new_imageloader*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_imageloader", dynlib: swt.}
proc imageloader_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "imageloader_data", dynlib: swt.}
proc imageloader_assign_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "imageloader_assign_data", dynlib: swt.}
proc imageloader_logical_screen_width*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "imageloader_logical_screen_width", dynlib: swt.}
proc imageloader_assign_logical_screen_width*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "imageloader_assign_logical_screen_width",
              dynlib: swt.}
proc imageloader_logical_screen_height*(a1: ptr IsolateThread; a2: pointer): cint {.
    cdecl, importc: "imageloader_logical_screen_height", dynlib: swt.}
proc imageloader_assign_logical_screen_height*(a1: ptr IsolateThread; a2: pointer;
    a3: cint) {.cdecl, importc: "imageloader_assign_logical_screen_height",
              dynlib: swt.}
proc imageloader_background_pixel*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imageloader_background_pixel", dynlib: swt.}
proc imageloader_assign_background_pixel*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imageloader_assign_background_pixel", dynlib: swt.}
proc imageloader_repeat_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imageloader_repeat_count", dynlib: swt.}
proc imageloader_assign_repeat_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imageloader_assign_repeat_count", dynlib: swt.}
proc imageloader_compression*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "imageloader_compression", dynlib: swt.}
proc imageloader_assign_compression*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "imageloader_assign_compression", dynlib: swt.}
proc imageloader_load*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "imageloader_load", dynlib: swt.}
proc imageloader_load_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.
    cdecl, importc: "imageloader_load_2", dynlib: swt.}
proc imageloader_save*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint) {.cdecl,
    importc: "imageloader_save", dynlib: swt.}
proc imageloader_save_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint) {.
    cdecl, importc: "imageloader_save_2", dynlib: swt.}
proc imageloader_add_image_loader_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "imageloader_add_image_loader_listener",
                 dynlib: swt.}
proc imageloader_remove_image_loader_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "imageloader_remove_image_loader_listener",
                 dynlib: swt.}
proc imageloader_has_listeners*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "imageloader_has_listeners", dynlib: swt.}
proc imageloader_notify_listeners*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "imageloader_notify_listeners", dynlib: swt.}
proc new_image*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.cdecl,
    importc: "new_image", dynlib: swt.}
proc new_image_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint): pointer {.
    cdecl, importc: "new_image_2", dynlib: swt.}
proc new_image_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_image_3", dynlib: swt.}
proc new_image_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_image_4", dynlib: swt.}
proc new_image_5*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer): pointer {.
    cdecl, importc: "new_image_5", dynlib: swt.}
proc new_image_6*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_image_6", dynlib: swt.}
proc new_image_7*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.cdecl,
    importc: "new_image_7", dynlib: swt.}
proc new_image_8*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_image_8", dynlib: swt.}
proc new_image_9*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_image_9", dynlib: swt.}
proc image_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "image_type", dynlib: swt.}
proc image_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "image_assign_type", dynlib: swt.}
proc image_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "image_handle", dynlib: swt.}
proc image_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "image_assign_handle", dynlib: swt.}
proc image_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "image_equals", dynlib: swt.}
proc image_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "image_get_background", dynlib: swt.}
proc image_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "image_get_bounds", dynlib: swt.}
proc image_get_bounds_in_pixels*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "image_get_bounds_in_pixels", dynlib: swt.}
proc image_get_image_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "image_get_image_data", dynlib: swt.}
proc image_get_image_data_at_current_zoom*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "image_get_image_data_at_current_zoom", dynlib: swt.}
proc image_get_image_data_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "image_get_image_data_2", dynlib: swt.}
proc image_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "image_hash_code", dynlib: swt.}
proc image_internal_new_g_c*(a1: ptr IsolateThread; a2: pointer; a3: pointer): clonglong {.
    cdecl, importc: "image_internal_new__g_c", dynlib: swt.}
proc image_internal_dispose_g_c*(a1: ptr IsolateThread; a2: pointer; a3: clonglong;
                                 a4: pointer) {.cdecl,
    importc: "image_internal_dispose__g_c", dynlib: swt.}
proc image_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "image_is_disposed", dynlib: swt.}
proc image_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "image_set_background", dynlib: swt.}
proc image_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "image_to_string", dynlib: swt.}
proc item_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "item_get_image", dynlib: swt.}
proc item_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "item_get_text", dynlib: swt.}
proc item_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "item_set_image", dynlib: swt.}
proc item_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "item_set_text", dynlib: swt.}
proc keyadapter_key_pressed*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "keyadapter_key_pressed", dynlib: swt.}
proc keyadapter_key_released*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "keyadapter_key_released", dynlib: swt.}
proc new_keyevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_keyevent", dynlib: swt.}
proc keyevent_character*(a1: ptr IsolateThread; a2: pointer): cshort {.cdecl,
    importc: "keyevent_character", dynlib: swt.}
proc keyevent_assign_character*(a1: ptr IsolateThread; a2: pointer; a3: cshort) {.cdecl,
    importc: "keyevent_assign_character", dynlib: swt.}
proc keyevent_key_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "keyevent_key_code", dynlib: swt.}
proc keyevent_assign_key_code*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "keyevent_assign_key_code", dynlib: swt.}
proc keyevent_key_location*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "keyevent_key_location", dynlib: swt.}
proc keyevent_assign_key_location*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "keyevent_assign_key_location", dynlib: swt.}
proc keyevent_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "keyevent_state_mask", dynlib: swt.}
proc keyevent_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "keyevent_assign_state_mask", dynlib: swt.}
proc keyevent_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "keyevent_doit", dynlib: swt.}
proc keyevent_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "keyevent_assign_doit", dynlib: swt.}
proc keyevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "keyevent_to_string", dynlib: swt.}
proc new_label*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_label", dynlib: swt.}
proc label_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "label_compute_size", dynlib: swt.}
proc label_get_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "label_get_alignment", dynlib: swt.}
proc label_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "label_get_image", dynlib: swt.}
proc label_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "label_get_text", dynlib: swt.}
proc label_set_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "label_set_alignment", dynlib: swt.}
proc label_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "label_set_image", dynlib: swt.}
proc label_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "label_set_text", dynlib: swt.}
proc new_lineattributes*(a1: ptr IsolateThread; a2: cfloat): pointer {.cdecl,
    importc: "new_lineattributes", dynlib: swt.}
proc new_lineattributes_2*(a1: ptr IsolateThread; a2: cfloat; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_lineattributes_2", dynlib: swt.}
proc new_lineattributes_3*(a1: ptr IsolateThread; a2: cfloat; a3: cint; a4: cint;
                          a5: cint; a6: pointer; a7: cfloat; a8: cfloat): pointer {.
    cdecl, importc: "new_lineattributes_3", dynlib: swt.}
proc lineattributes_width*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "lineattributes_width", dynlib: swt.}
proc lineattributes_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.
    cdecl, importc: "lineattributes_assign_width", dynlib: swt.}
proc lineattributes_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "lineattributes_style", dynlib: swt.}
proc lineattributes_assign_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "lineattributes_assign_style", dynlib: swt.}
proc lineattributes_cap*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "lineattributes_cap", dynlib: swt.}
proc lineattributes_assign_cap*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "lineattributes_assign_cap", dynlib: swt.}
proc lineattributes_join*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "lineattributes_join", dynlib: swt.}
proc lineattributes_assign_join*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "lineattributes_assign_join", dynlib: swt.}
proc lineattributes_dash*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "lineattributes_dash", dynlib: swt.}
proc lineattributes_assign_dash*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "lineattributes_assign_dash", dynlib: swt.}
proc lineattributes_dash_offset*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "lineattributes_dash_offset", dynlib: swt.}
proc lineattributes_assign_dash_offset*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.
    cdecl, importc: "lineattributes_assign_dash_offset", dynlib: swt.}
proc lineattributes_miter_limit*(a1: ptr IsolateThread; a2: pointer): cfloat {.cdecl,
    importc: "lineattributes_miter_limit", dynlib: swt.}
proc lineattributes_assign_miter_limit*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.
    cdecl, importc: "lineattributes_assign_miter_limit", dynlib: swt.}
proc lineattributes_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.
    cdecl, importc: "lineattributes_equals", dynlib: swt.}
proc lineattributes_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "lineattributes_hash_code", dynlib: swt.}
proc new_link*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_link", dynlib: swt.}
proc link_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "link_add_selection_listener", dynlib: swt.}
proc link_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "link_compute_size", dynlib: swt.}
proc link_get_link_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "link_get_link_foreground", dynlib: swt.}
proc link_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "link_get_text", dynlib: swt.}
proc link_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "link_remove_selection_listener", dynlib: swt.}
proc link_set_link_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "link_set_link_foreground", dynlib: swt.}
proc link_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "link_set_text", dynlib: swt.}
proc new_list*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_list", dynlib: swt.}
proc list_add*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "list_add", dynlib: swt.}
proc list_add_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint) {.cdecl,
    importc: "list_add_2", dynlib: swt.}
proc list_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "list_add_selection_listener", dynlib: swt.}
proc list_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "list_compute_size", dynlib: swt.}
proc list_deselect*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "list_deselect", dynlib: swt.}
proc list_deselect_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "list_deselect_2", dynlib: swt.}
proc list_deselect_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "list_deselect_3", dynlib: swt.}
proc list_deselect_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "list_deselect_all", dynlib: swt.}
proc list_get_focus_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_focus_index", dynlib: swt.}
proc list_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): cstring {.cdecl,
    importc: "list_get_item", dynlib: swt.}
proc list_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_item_count", dynlib: swt.}
proc list_get_item_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_item_height", dynlib: swt.}
proc list_get_items*(a1: ptr IsolateThread; a2: pointer): cstringArray {.cdecl,
    importc: "list_get_items", dynlib: swt.}
proc list_get_selection*(a1: ptr IsolateThread; a2: pointer): cstringArray {.cdecl,
    importc: "list_get_selection", dynlib: swt.}
proc list_get_selection_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_selection_count", dynlib: swt.}
proc list_get_selection_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_selection_index", dynlib: swt.}
proc list_get_selection_indices*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "list_get_selection_indices", dynlib: swt.}
proc list_get_top_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "list_get_top_index", dynlib: swt.}
proc list_index_of*(a1: ptr IsolateThread; a2: pointer; a3: cstring): cint {.cdecl,
    importc: "list_index_of", dynlib: swt.}
proc list_index_of_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cint): cint {.
    cdecl, importc: "list_index_of_2", dynlib: swt.}
proc list_is_selected*(a1: ptr IsolateThread; a2: pointer; a3: cint): char {.cdecl,
    importc: "list_is_selected", dynlib: swt.}
proc list_remove*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "list_remove", dynlib: swt.}
proc list_remove_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "list_remove_2", dynlib: swt.}
proc list_remove_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "list_remove_3", dynlib: swt.}
proc list_remove_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "list_remove_4", dynlib: swt.}
proc list_remove_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "list_remove_all", dynlib: swt.}
proc list_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "list_remove_selection_listener", dynlib: swt.}
proc list_select*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "list_select", dynlib: swt.}
proc list_select_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "list_select_2", dynlib: swt.}
proc list_select_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "list_select_3", dynlib: swt.}
proc list_select_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "list_select_all", dynlib: swt.}
proc list_set_item*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cstring) {.cdecl,
    importc: "list_set_item", dynlib: swt.}
proc list_set_items*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "list_set_items", dynlib: swt.}
proc list_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "list_set_selection", dynlib: swt.}
proc list_set_selection_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "list_set_selection_2", dynlib: swt.}
proc list_set_selection_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "list_set_selection_3", dynlib: swt.}
proc list_set_selection_4*(a1: ptr IsolateThread; a2: pointer; a3: cstringArray;
                          a4: cint) {.cdecl, importc: "list_set_selection_4",
                                    dynlib: swt.}
proc list_set_top_index*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "list_set_top_index", dynlib: swt.}
proc list_show_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "list_show_selection", dynlib: swt.}
proc create_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_listener", dynlib: swt.}
proc menuadapter_menu_hidden*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menuadapter_menu_hidden", dynlib: swt.}
proc menuadapter_menu_shown*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menuadapter_menu_shown", dynlib: swt.}
proc new_menudetectevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_menudetectevent", dynlib: swt.}
proc menudetectevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menudetectevent_x", dynlib: swt.}
proc menudetectevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menudetectevent_assign_x", dynlib: swt.}
proc menudetectevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menudetectevent_y", dynlib: swt.}
proc menudetectevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menudetectevent_assign_y", dynlib: swt.}
proc menudetectevent_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menudetectevent_doit", dynlib: swt.}
proc menudetectevent_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menudetectevent_assign_doit", dynlib: swt.}
proc menudetectevent_detail*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menudetectevent_detail", dynlib: swt.}
proc menudetectevent_assign_detail*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "menudetectevent_assign_detail", dynlib: swt.}
proc menudetectevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "menudetectevent_to_string", dynlib: swt.}
proc create_menu_detect_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_menu_detect_listener", dynlib: swt.}
proc new_menuevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_menuevent", dynlib: swt.}
proc new_menuitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_menuitem", dynlib: swt.}
proc new_menuitem_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_menuitem_2", dynlib: swt.}
proc menuitem_add_arm_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menuitem_add_arm_listener", dynlib: swt.}
proc menuitem_add_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menuitem_add_help_listener", dynlib: swt.}
proc menuitem_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menuitem_add_selection_listener", dynlib: swt.}
proc menuitem_get_accelerator*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menuitem_get_accelerator", dynlib: swt.}
proc menuitem_get_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menuitem_get_enabled", dynlib: swt.}
proc menuitem_get_i_d*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menuitem_get_i_d", dynlib: swt.}
proc menuitem_get_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menuitem_get_menu", dynlib: swt.}
proc menuitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menuitem_get_parent", dynlib: swt.}
proc menuitem_get_selection*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menuitem_get_selection", dynlib: swt.}
proc menuitem_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "menuitem_get_tool_tip_text", dynlib: swt.}
proc menuitem_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menuitem_is_enabled", dynlib: swt.}
proc menuitem_remove_arm_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menuitem_remove_arm_listener", dynlib: swt.}
proc menuitem_remove_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menuitem_remove_help_listener", dynlib: swt.}
proc menuitem_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "menuitem_remove_selection_listener", dynlib: swt.}
proc menuitem_set_accelerator*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menuitem_set_accelerator", dynlib: swt.}
proc menuitem_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menuitem_set_enabled", dynlib: swt.}
proc menuitem_set_i_d*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menuitem_set_i_d", dynlib: swt.}
proc menuitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menuitem_set_image", dynlib: swt.}
proc menuitem_set_menu*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menuitem_set_menu", dynlib: swt.}
proc menuitem_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menuitem_set_selection", dynlib: swt.}
proc menuitem_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "menuitem_set_text", dynlib: swt.}
proc menuitem_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "menuitem_set_tool_tip_text", dynlib: swt.}
proc new_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_menu", dynlib: swt.}
proc new_menu_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_menu_2", dynlib: swt.}
proc new_menu_3*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_menu_3", dynlib: swt.}
proc new_menu_4*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_menu_4", dynlib: swt.}
proc menu_add_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menu_add_help_listener", dynlib: swt.}
proc menu_add_menu_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menu_add_menu_listener", dynlib: swt.}
proc menu_get_default_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_default_item", dynlib: swt.}
proc menu_get_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menu_get_enabled", dynlib: swt.}
proc menu_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "menu_get_item", dynlib: swt.}
proc menu_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menu_get_item_count", dynlib: swt.}
proc menu_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_items", dynlib: swt.}
proc menu_get_orientation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "menu_get_orientation", dynlib: swt.}
proc menu_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_parent", dynlib: swt.}
proc menu_get_parent_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_parent_item", dynlib: swt.}
proc menu_get_parent_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_parent_menu", dynlib: swt.}
proc menu_get_shell*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "menu_get_shell", dynlib: swt.}
proc menu_get_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menu_get_visible", dynlib: swt.}
proc menu_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "menu_index_of", dynlib: swt.}
proc menu_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menu_is_enabled", dynlib: swt.}
proc menu_is_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "menu_is_visible", dynlib: swt.}
proc menu_remove_help_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menu_remove_help_listener", dynlib: swt.}
proc menu_remove_menu_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "menu_remove_menu_listener", dynlib: swt.}
proc menu_set_default_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menu_set_default_item", dynlib: swt.}
proc menu_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menu_set_enabled", dynlib: swt.}
proc menu_set_location*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "menu_set_location", dynlib: swt.}
proc menu_set_location_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "menu_set_location_2", dynlib: swt.}
proc menu_set_orientation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menu_set_orientation", dynlib: swt.}
proc menu_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "menu_set_visible", dynlib: swt.}
proc new_messagebox*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_messagebox", dynlib: swt.}
proc new_messagebox_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_messagebox_2", dynlib: swt.}
proc messagebox_get_message*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "messagebox_get_message", dynlib: swt.}
proc messagebox_open*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "messagebox_open", dynlib: swt.}
proc messagebox_set_message*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "messagebox_set_message", dynlib: swt.}
proc new_modifyevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_modifyevent", dynlib: swt.}
proc create_modify_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_modify_listener", dynlib: swt.}
proc monitor_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "monitor_equals", dynlib: swt.}
proc monitor_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "monitor_get_bounds", dynlib: swt.}
proc monitor_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "monitor_get_client_area", dynlib: swt.}
proc monitor_get_zoom*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "monitor_get_zoom", dynlib: swt.}
proc monitor_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "monitor_hash_code", dynlib: swt.}
proc mouseadapter_mouse_double_click*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "mouseadapter_mouse_double_click", dynlib: swt.}
proc mouseadapter_mouse_down*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "mouseadapter_mouse_down", dynlib: swt.}
proc mouseadapter_mouse_up*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "mouseadapter_mouse_up", dynlib: swt.}
proc new_mouseevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_mouseevent", dynlib: swt.}
proc mouseevent_button*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "mouseevent_button", dynlib: swt.}
proc mouseevent_assign_button*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "mouseevent_assign_button", dynlib: swt.}
proc mouseevent_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "mouseevent_state_mask", dynlib: swt.}
proc mouseevent_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "mouseevent_assign_state_mask", dynlib: swt.}
proc mouseevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "mouseevent_x", dynlib: swt.}
proc mouseevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "mouseevent_assign_x", dynlib: swt.}
proc mouseevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "mouseevent_y", dynlib: swt.}
proc mouseevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "mouseevent_assign_y", dynlib: swt.}
proc mouseevent_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "mouseevent_count", dynlib: swt.}
proc mouseevent_assign_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "mouseevent_assign_count", dynlib: swt.}
proc mouseevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "mouseevent_to_string", dynlib: swt.}
proc create_mouse_move_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_mouse_move_listener", dynlib: swt.}
proc mousetrackadapter_mouse_enter*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "mousetrackadapter_mouse_enter", dynlib: swt.}
proc mousetrackadapter_mouse_exit*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "mousetrackadapter_mouse_exit", dynlib: swt.}
proc mousetrackadapter_mouse_hover*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "mousetrackadapter_mouse_hover", dynlib: swt.}
proc create_mouse_wheel_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_mouse_wheel_listener", dynlib: swt.}
proc new_paintevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_paintevent", dynlib: swt.}
proc paintevent_gc*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "paintevent_gc", dynlib: swt.}
proc paintevent_assign_gc*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "paintevent_assign_gc", dynlib: swt.}
proc paintevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "paintevent_x", dynlib: swt.}
proc paintevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "paintevent_assign_x", dynlib: swt.}
proc paintevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "paintevent_y", dynlib: swt.}
proc paintevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "paintevent_assign_y", dynlib: swt.}
proc paintevent_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "paintevent_width", dynlib: swt.}
proc paintevent_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "paintevent_assign_width", dynlib: swt.}
proc paintevent_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "paintevent_height", dynlib: swt.}
proc paintevent_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "paintevent_assign_height", dynlib: swt.}
proc paintevent_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "paintevent_count", dynlib: swt.}
proc paintevent_assign_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "paintevent_assign_count", dynlib: swt.}
proc paintevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "paintevent_to_string", dynlib: swt.}
proc create_paint_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_paint_listener", dynlib: swt.}
proc new_palettedata*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_palettedata", dynlib: swt.}
proc new_palettedata_2*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_palettedata_2", dynlib: swt.}
proc palettedata_is_direct*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "palettedata_is_direct", dynlib: swt.}
proc palettedata_assign_is_direct*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_is_direct", dynlib: swt.}
proc palettedata_colors*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "palettedata_colors", dynlib: swt.}
proc palettedata_assign_colors*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "palettedata_assign_colors", dynlib: swt.}
proc palettedata_red_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_red_mask", dynlib: swt.}
proc palettedata_assign_red_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "palettedata_assign_red_mask", dynlib: swt.}
proc palettedata_green_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_green_mask", dynlib: swt.}
proc palettedata_assign_green_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_green_mask", dynlib: swt.}
proc palettedata_blue_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_blue_mask", dynlib: swt.}
proc palettedata_assign_blue_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_blue_mask", dynlib: swt.}
proc palettedata_red_shift*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_red_shift", dynlib: swt.}
proc palettedata_assign_red_shift*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_red_shift", dynlib: swt.}
proc palettedata_green_shift*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_green_shift", dynlib: swt.}
proc palettedata_assign_green_shift*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_green_shift", dynlib: swt.}
proc palettedata_blue_shift*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "palettedata_blue_shift", dynlib: swt.}
proc palettedata_assign_blue_shift*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "palettedata_assign_blue_shift", dynlib: swt.}
proc palettedata_get_pixel*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.
    cdecl, importc: "palettedata_get_pixel", dynlib: swt.}
proc palettedata_get_r_g_b*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "palettedata_get_r_g_b", dynlib: swt.}
proc palettedata_get_r_g_bs*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "palettedata_get_r_g_bs", dynlib: swt.}
proc pathdata_types*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "pathdata_types", dynlib: swt.}
proc pathdata_assign_types*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "pathdata_assign_types", dynlib: swt.}
proc pathdata_points*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "pathdata_points", dynlib: swt.}
proc pathdata_assign_points*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "pathdata_assign_points", dynlib: swt.}
proc new_path*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_path", dynlib: swt.}
proc new_path_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cfloat): pointer {.
    cdecl, importc: "new_path_2", dynlib: swt.}
proc new_path_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_path_3", dynlib: swt.}
proc path_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "path_handle", dynlib: swt.}
proc path_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "path_assign_handle", dynlib: swt.}
proc path_add_arc*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat; a5: cfloat;
                  a6: cfloat; a7: cfloat; a8: cfloat) {.cdecl, importc: "path_add_arc",
    dynlib: swt.}
proc path_add_path*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "path_add_path", dynlib: swt.}
proc path_add_rectangle*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                        a5: cfloat; a6: cfloat) {.cdecl,
    importc: "path_add_rectangle", dynlib: swt.}
proc path_add_string*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: cfloat;
                     a5: cfloat; a6: pointer) {.cdecl, importc: "path_add_string",
    dynlib: swt.}
proc path_close*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "path_close",
    dynlib: swt.}
proc path_contains*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                   a5: pointer; a6: cint): char {.cdecl, importc: "path_contains",
    dynlib: swt.}
proc path_cubic_to*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                   a5: cfloat; a6: cfloat; a7: cfloat; a8: cfloat) {.cdecl,
    importc: "path_cubic_to", dynlib: swt.}
proc path_get_bounds*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "path_get_bounds", dynlib: swt.}
proc path_get_current_point*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "path_get_current_point", dynlib: swt.}
proc path_get_path_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "path_get_path_data", dynlib: swt.}
proc path_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "path_is_disposed", dynlib: swt.}
proc path_line_to*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat) {.cdecl,
    importc: "path_line_to", dynlib: swt.}
proc path_move_to*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat) {.cdecl,
    importc: "path_move_to", dynlib: swt.}
proc path_quad_to*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat; a5: cfloat;
                  a6: cfloat) {.cdecl, importc: "path_quad_to", dynlib: swt.}
proc path_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "path_to_string", dynlib: swt.}
proc new_pattern*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_pattern", dynlib: swt.}
proc new_pattern_2*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                   a5: cfloat; a6: cfloat; a7: pointer; a8: pointer): pointer {.cdecl,
    importc: "new_pattern_2", dynlib: swt.}
proc new_pattern_3*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                   a5: cfloat; a6: cfloat; a7: pointer; a8: cint; a9: pointer; a10: cint): pointer {.
    cdecl, importc: "new_pattern_3", dynlib: swt.}
proc pattern_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "pattern_is_disposed", dynlib: swt.}
proc pattern_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "pattern_to_string", dynlib: swt.}
proc new_point*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_point", dynlib: swt.}
proc point_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "point_x",
    dynlib: swt.}
proc point_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "point_assign_x", dynlib: swt.}
proc point_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "point_y",
    dynlib: swt.}
proc point_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "point_assign_y", dynlib: swt.}
proc point_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "point_equals", dynlib: swt.}
proc point_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "point_hash_code", dynlib: swt.}
proc point_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "point_to_string", dynlib: swt.}
proc new_progressbar*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_progressbar", dynlib: swt.}
proc progressbar_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                              a5: cint): pointer {.cdecl,
    importc: "progressbar_compute_size", dynlib: swt.}
proc progressbar_get_maximum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "progressbar_get_maximum", dynlib: swt.}
proc progressbar_get_minimum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "progressbar_get_minimum", dynlib: swt.}
proc progressbar_get_selection*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "progressbar_get_selection", dynlib: swt.}
proc progressbar_get_state*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "progressbar_get_state", dynlib: swt.}
proc progressbar_set_maximum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "progressbar_set_maximum", dynlib: swt.}
proc progressbar_set_minimum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "progressbar_set_minimum", dynlib: swt.}
proc progressbar_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "progressbar_set_selection", dynlib: swt.}
proc progressbar_set_state*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "progressbar_set_state", dynlib: swt.}
proc new_rgba*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_rgba", dynlib: swt.}
proc new_rgba_2*(a1: ptr IsolateThread; a2: cfloat; a3: cfloat; a4: cfloat; a5: cfloat): pointer {.
    cdecl, importc: "new_rgba_2", dynlib: swt.}
proc rgba_rgb*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "rgba_rgb", dynlib: swt.}
proc rgba_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rgba_alpha", dynlib: swt.}
proc rgba_assign_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rgba_assign_alpha", dynlib: swt.}
proc rgba_get_h_s_b_a*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "rgba_get_h_s_b_a", dynlib: swt.}
proc rgba_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "rgba_equals", dynlib: swt.}
proc rgba_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rgba_hash_code", dynlib: swt.}
proc rgba_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "rgba_to_string", dynlib: swt.}
proc new_rgb*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint): pointer {.cdecl,
    importc: "new_rgb", dynlib: swt.}
proc new_rgb_2*(a1: ptr IsolateThread; a2: cfloat; a3: cfloat; a4: cfloat): pointer {.
    cdecl, importc: "new_rgb_2", dynlib: swt.}
proc rgb_red*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "rgb_red",
    dynlib: swt.}
proc rgb_assign_red*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rgb_assign_red", dynlib: swt.}
proc rgb_green*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "rgb_green",
    dynlib: swt.}
proc rgb_assign_green*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rgb_assign_green", dynlib: swt.}
proc rgb_blue*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "rgb_blue",
    dynlib: swt.}
proc rgb_assign_blue*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rgb_assign_blue", dynlib: swt.}
proc rgb_get_h_s_b*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "rgb_get_h_s_b", dynlib: swt.}
proc rgb_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "rgb_equals", dynlib: swt.}
proc rgb_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rgb_hash_code", dynlib: swt.}
proc rgb_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "rgb_to_string", dynlib: swt.}
proc new_rectangle*(a1: ptr IsolateThread; a2: cint; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "new_rectangle", dynlib: swt.}
proc rectangle_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rectangle_x", dynlib: swt.}
proc rectangle_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rectangle_assign_x", dynlib: swt.}
proc rectangle_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rectangle_y", dynlib: swt.}
proc rectangle_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rectangle_assign_y", dynlib: swt.}
proc rectangle_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rectangle_width", dynlib: swt.}
proc rectangle_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rectangle_assign_width", dynlib: swt.}
proc rectangle_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rectangle_height", dynlib: swt.}
proc rectangle_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rectangle_assign_height", dynlib: swt.}
proc rectangle_add*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "rectangle_add", dynlib: swt.}
proc rectangle_contains*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): char {.
    cdecl, importc: "rectangle_contains", dynlib: swt.}
proc rectangle_contains_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.
    cdecl, importc: "rectangle_contains_2", dynlib: swt.}
proc rectangle_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "rectangle_equals", dynlib: swt.}
proc rectangle_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rectangle_hash_code", dynlib: swt.}
proc rectangle_intersect*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "rectangle_intersect", dynlib: swt.}
proc rectangle_intersection*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "rectangle_intersection", dynlib: swt.}
proc rectangle_intersects*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: cint): char {.cdecl,
    importc: "rectangle_intersects", dynlib: swt.}
proc rectangle_intersects_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.
    cdecl, importc: "rectangle_intersects_2", dynlib: swt.}
proc rectangle_is_empty*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rectangle_is_empty", dynlib: swt.}
proc rectangle_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "rectangle_to_string", dynlib: swt.}
proc rectangle_union*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "rectangle_union", dynlib: swt.}
proc new_region*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_region",
    dynlib: swt.}
proc new_region_2*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_region_2", dynlib: swt.}
proc region_handle*(a1: ptr IsolateThread; a2: pointer): clonglong {.cdecl,
    importc: "region_handle", dynlib: swt.}
proc region_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: clonglong) {.cdecl,
    importc: "region_assign_handle", dynlib: swt.}
proc region_add*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_add", dynlib: swt.}
proc region_add_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_add_2", dynlib: swt.}
proc region_add_3*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                  a6: cint) {.cdecl, importc: "region_add_3", dynlib: swt.}
proc region_add_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_add_4", dynlib: swt.}
proc region_contains*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): char {.
    cdecl, importc: "region_contains", dynlib: swt.}
proc region_contains_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "region_contains_2", dynlib: swt.}
proc region_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "region_equals", dynlib: swt.}
proc region_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "region_get_bounds", dynlib: swt.}
proc region_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "region_hash_code", dynlib: swt.}
proc region_intersect*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_intersect", dynlib: swt.}
proc region_intersect_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                        a6: cint) {.cdecl, importc: "region_intersect_2", dynlib: swt.}
proc region_intersect_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_intersect_3", dynlib: swt.}
proc region_intersects*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint): char {.cdecl, importc: "region_intersects",
                                      dynlib: swt.}
proc region_intersects_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "region_intersects_2", dynlib: swt.}
proc region_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "region_is_disposed", dynlib: swt.}
proc region_is_empty*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "region_is_empty", dynlib: swt.}
proc region_subtract*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_subtract", dynlib: swt.}
proc region_subtract_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_subtract_2", dynlib: swt.}
proc region_subtract_3*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint) {.cdecl, importc: "region_subtract_3", dynlib: swt.}
proc region_subtract_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_subtract_4", dynlib: swt.}
proc region_translate*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "region_translate", dynlib: swt.}
proc region_translate_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "region_translate_2", dynlib: swt.}
proc region_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "region_to_string", dynlib: swt.}
proc resource_dispose*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "resource_dispose", dynlib: swt.}
proc resource_get_device*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "resource_get_device", dynlib: swt.}
proc resource_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "resource_is_disposed", dynlib: swt.}
proc new_rowdata*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_rowdata",
    dynlib: swt.}
proc new_rowdata_2*(a1: ptr IsolateThread; a2: cint; a3: cint): pointer {.cdecl,
    importc: "new_rowdata_2", dynlib: swt.}
proc new_rowdata_3*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_rowdata_3", dynlib: swt.}
proc rowdata_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowdata_width", dynlib: swt.}
proc rowdata_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowdata_assign_width", dynlib: swt.}
proc rowdata_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowdata_height", dynlib: swt.}
proc rowdata_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowdata_assign_height", dynlib: swt.}
proc rowdata_exclude*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowdata_exclude", dynlib: swt.}
proc rowdata_assign_exclude*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowdata_assign_exclude", dynlib: swt.}
proc rowdata_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "rowdata_to_string", dynlib: swt.}
proc new_rowlayout*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_rowlayout",
    dynlib: swt.}
proc new_rowlayout_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_rowlayout_2", dynlib: swt.}
proc rowlayout_type*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_type", dynlib: swt.}
proc rowlayout_assign_type*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_type", dynlib: swt.}
proc rowlayout_margin_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_width", dynlib: swt.}
proc rowlayout_assign_margin_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "rowlayout_assign_margin_width", dynlib: swt.}
proc rowlayout_margin_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_height", dynlib: swt.}
proc rowlayout_assign_margin_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "rowlayout_assign_margin_height", dynlib: swt.}
proc rowlayout_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_spacing", dynlib: swt.}
proc rowlayout_assign_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_spacing", dynlib: swt.}
proc rowlayout_wrap*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowlayout_wrap", dynlib: swt.}
proc rowlayout_assign_wrap*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_wrap", dynlib: swt.}
proc rowlayout_pack*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowlayout_pack", dynlib: swt.}
proc rowlayout_assign_pack*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_pack", dynlib: swt.}
proc rowlayout_fill*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowlayout_fill", dynlib: swt.}
proc rowlayout_assign_fill*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_fill", dynlib: swt.}
proc rowlayout_center*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowlayout_center", dynlib: swt.}
proc rowlayout_assign_center*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_center", dynlib: swt.}
proc rowlayout_justify*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "rowlayout_justify", dynlib: swt.}
proc rowlayout_assign_justify*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_justify", dynlib: swt.}
proc rowlayout_margin_left*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_left", dynlib: swt.}
proc rowlayout_assign_margin_left*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "rowlayout_assign_margin_left", dynlib: swt.}
proc rowlayout_margin_top*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_top", dynlib: swt.}
proc rowlayout_assign_margin_top*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "rowlayout_assign_margin_top", dynlib: swt.}
proc rowlayout_margin_right*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_right", dynlib: swt.}
proc rowlayout_assign_margin_right*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "rowlayout_assign_margin_right", dynlib: swt.}
proc rowlayout_margin_bottom*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "rowlayout_margin_bottom", dynlib: swt.}
proc rowlayout_assign_margin_bottom*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "rowlayout_assign_margin_bottom", dynlib: swt.}
proc rowlayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "rowlayout_to_string", dynlib: swt.}
proc create_runnable*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_runnable", dynlib: swt.}
proc new_swterror*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_swterror",
    dynlib: swt.}
proc new_swterror_2*(a1: ptr IsolateThread; a2: cstring): pointer {.cdecl,
    importc: "new_swterror_2", dynlib: swt.}
proc new_swterror_3*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_swterror_3", dynlib: swt.}
proc new_swterror_4*(a1: ptr IsolateThread; a2: cint; a3: cstring): pointer {.cdecl,
    importc: "new_swterror_4", dynlib: swt.}
proc swterror_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "swterror_code", dynlib: swt.}
proc swterror_assign_code*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "swterror_assign_code", dynlib: swt.}
proc swterror_throwable*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "swterror_throwable", dynlib: swt.}
proc swterror_assign_throwable*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "swterror_assign_throwable", dynlib: swt.}
proc swterror_get_cause*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "swterror_get_cause", dynlib: swt.}
proc swterror_get_message*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "swterror_get_message", dynlib: swt.}
proc swterror_print_stack_trace*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "swterror_print_stack_trace", dynlib: swt.}
proc new_swtexception*(a1: ptr IsolateThread): pointer {.cdecl,
    importc: "new_swtexception", dynlib: swt.}
proc new_swtexception_2*(a1: ptr IsolateThread; a2: cstring): pointer {.cdecl,
    importc: "new_swtexception_2", dynlib: swt.}
proc new_swtexception_3*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_swtexception_3", dynlib: swt.}
proc new_swtexception_4*(a1: ptr IsolateThread; a2: cint; a3: cstring): pointer {.cdecl,
    importc: "new_swtexception_4", dynlib: swt.}
proc swtexception_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "swtexception_code", dynlib: swt.}
proc swtexception_assign_code*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "swtexception_assign_code", dynlib: swt.}
proc swtexception_throwable*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "swtexception_throwable", dynlib: swt.}
proc swtexception_assign_throwable*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "swtexception_assign_throwable", dynlib: swt.}
proc swtexception_get_cause*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "swtexception_get_cause", dynlib: swt.}
proc swtexception_get_message*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "swtexception_get_message", dynlib: swt.}
proc swtexception_print_stack_trace*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "swtexception_print_stack_trace", dynlib: swt.}
proc new_sash*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_sash", dynlib: swt.}
proc sash_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "sash_add_selection_listener", dynlib: swt.}
proc sash_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "sash_compute_size", dynlib: swt.}
proc sash_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "sash_remove_selection_listener", dynlib: swt.}
proc new_scale*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_scale", dynlib: swt.}
proc scale_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "scale_add_selection_listener", dynlib: swt.}
proc scale_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "scale_compute_size", dynlib: swt.}
proc scale_get_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scale_get_increment", dynlib: swt.}
proc scale_get_maximum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scale_get_maximum", dynlib: swt.}
proc scale_get_minimum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scale_get_minimum", dynlib: swt.}
proc scale_get_page_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scale_get_page_increment", dynlib: swt.}
proc scale_get_selection*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scale_get_selection", dynlib: swt.}
proc scale_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "scale_remove_selection_listener", dynlib: swt.}
proc scale_set_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scale_set_increment", dynlib: swt.}
proc scale_set_maximum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scale_set_maximum", dynlib: swt.}
proc scale_set_minimum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scale_set_minimum", dynlib: swt.}
proc scale_set_page_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scale_set_page_increment", dynlib: swt.}
proc scale_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scale_set_selection", dynlib: swt.}
proc scrollbar_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "scrollbar_add_selection_listener", dynlib: swt.}
proc scrollbar_get_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "scrollbar_get_enabled", dynlib: swt.}
proc scrollbar_get_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_increment", dynlib: swt.}
proc scrollbar_get_maximum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_maximum", dynlib: swt.}
proc scrollbar_get_minimum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_minimum", dynlib: swt.}
proc scrollbar_get_page_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_page_increment", dynlib: swt.}
proc scrollbar_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "scrollbar_get_parent", dynlib: swt.}
proc scrollbar_get_selection*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_selection", dynlib: swt.}
proc scrollbar_get_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "scrollbar_get_size", dynlib: swt.}
proc scrollbar_get_thumb*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollbar_get_thumb", dynlib: swt.}
proc scrollbar_get_thumb_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "scrollbar_get_thumb_bounds", dynlib: swt.}
proc scrollbar_get_thumb_track_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "scrollbar_get_thumb_track_bounds", dynlib: swt.}
proc scrollbar_get_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "scrollbar_get_visible", dynlib: swt.}
proc scrollbar_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "scrollbar_is_enabled", dynlib: swt.}
proc scrollbar_is_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "scrollbar_is_visible", dynlib: swt.}
proc scrollbar_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "scrollbar_remove_selection_listener", dynlib: swt.}
proc scrollbar_set_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_increment", dynlib: swt.}
proc scrollbar_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_enabled", dynlib: swt.}
proc scrollbar_set_maximum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_maximum", dynlib: swt.}
proc scrollbar_set_minimum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_minimum", dynlib: swt.}
proc scrollbar_set_page_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "scrollbar_set_page_increment", dynlib: swt.}
proc scrollbar_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_selection", dynlib: swt.}
proc scrollbar_set_thumb*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_thumb", dynlib: swt.}
proc scrollbar_set_values*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: cint; a7: cint; a8: cint) {.cdecl,
    importc: "scrollbar_set_values", dynlib: swt.}
proc scrollbar_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "scrollbar_set_visible", dynlib: swt.}
proc scrollable_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                             a5: cint; a6: cint): pointer {.cdecl,
    importc: "scrollable_compute_trim", dynlib: swt.}
proc scrollable_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "scrollable_get_client_area", dynlib: swt.}
proc scrollable_get_horizontal_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "scrollable_get_horizontal_bar", dynlib: swt.}
proc scrollable_get_scrollbars_mode*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "scrollable_get_scrollbars_mode", dynlib: swt.}
proc scrollable_get_vertical_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "scrollable_get_vertical_bar", dynlib: swt.}
proc new_segmentevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_segmentevent", dynlib: swt.}
proc segmentevent_line_offset*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "segmentevent_line_offset", dynlib: swt.}
proc segmentevent_assign_line_offset*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "segmentevent_assign_line_offset", dynlib: swt.}
proc segmentevent_line_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "segmentevent_line_text", dynlib: swt.}
proc segmentevent_assign_line_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "segmentevent_assign_line_text", dynlib: swt.}
proc segmentevent_segments*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "segmentevent_segments", dynlib: swt.}
proc segmentevent_assign_segments*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "segmentevent_assign_segments", dynlib: swt.}
proc segmentevent_segments_chars*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "segmentevent_segments_chars", dynlib: swt.}
proc segmentevent_assign_segments_chars*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "segmentevent_assign_segments_chars", dynlib: swt.}
proc create_segment_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_segment_listener", dynlib: swt.}
proc selectionadapter_widget_selected*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "selectionadapter_widget_selected", dynlib: swt.}
proc selectionadapter_widget_default_selected*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "selectionadapter_widget_default_selected",
                 dynlib: swt.}
proc new_selectionevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_selectionevent", dynlib: swt.}
proc selectionevent_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "selectionevent_item", dynlib: swt.}
proc selectionevent_assign_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "selectionevent_assign_item", dynlib: swt.}
proc selectionevent_detail*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_detail", dynlib: swt.}
proc selectionevent_assign_detail*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "selectionevent_assign_detail", dynlib: swt.}
proc selectionevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_x", dynlib: swt.}
proc selectionevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "selectionevent_assign_x", dynlib: swt.}
proc selectionevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_y", dynlib: swt.}
proc selectionevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "selectionevent_assign_y", dynlib: swt.}
proc selectionevent_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_width", dynlib: swt.}
proc selectionevent_assign_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "selectionevent_assign_width", dynlib: swt.}
proc selectionevent_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_height", dynlib: swt.}
proc selectionevent_assign_height*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "selectionevent_assign_height", dynlib: swt.}
proc selectionevent_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "selectionevent_state_mask", dynlib: swt.}
proc selectionevent_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "selectionevent_assign_state_mask", dynlib: swt.}
proc selectionevent_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "selectionevent_text", dynlib: swt.}
proc selectionevent_assign_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "selectionevent_assign_text", dynlib: swt.}
proc selectionevent_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "selectionevent_doit", dynlib: swt.}
proc selectionevent_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "selectionevent_assign_doit", dynlib: swt.}
proc selectionevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "selectionevent_to_string", dynlib: swt.}
proc shelladapter_shell_activated*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shelladapter_shell_activated", dynlib: swt.}
proc shelladapter_shell_closed*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shelladapter_shell_closed", dynlib: swt.}
proc shelladapter_shell_deactivated*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shelladapter_shell_deactivated", dynlib: swt.}
proc shelladapter_shell_deiconified*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shelladapter_shell_deiconified", dynlib: swt.}
proc shelladapter_shell_iconified*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shelladapter_shell_iconified", dynlib: swt.}
proc new_shellevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_shellevent", dynlib: swt.}
proc shellevent_doit*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shellevent_doit", dynlib: swt.}
proc shellevent_assign_doit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shellevent_assign_doit", dynlib: swt.}
proc shellevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "shellevent_to_string", dynlib: swt.}
proc new_shell*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_shell",
    dynlib: swt.}
proc new_shell_2*(a1: ptr IsolateThread; a2: cint): pointer {.cdecl,
    importc: "new_shell_2", dynlib: swt.}
proc new_shell_3*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_shell_3", dynlib: swt.}
proc new_shell_4*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_shell_4", dynlib: swt.}
proc new_shell_5*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_shell_5", dynlib: swt.}
proc new_shell_6*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_shell_6", dynlib: swt.}
proc shell_add_shell_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "shell_add_shell_listener", dynlib: swt.}
proc shell_close*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "shell_close",
    dynlib: swt.}
proc shell_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "shell_compute_size", dynlib: swt.}
proc shell_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                        a6: cint): pointer {.cdecl, importc: "shell_compute_trim",
    dynlib: swt.}
proc shell_force_active*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "shell_force_active", dynlib: swt.}
proc shell_get_alpha*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "shell_get_alpha", dynlib: swt.}
proc shell_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_bounds", dynlib: swt.}
proc shell_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_client_area", dynlib: swt.}
proc shell_get_full_screen*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_get_full_screen", dynlib: swt.}
proc shell_get_ime_input_mode*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "shell_get_ime_input_mode", dynlib: swt.}
proc shell_get_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_location", dynlib: swt.}
proc shell_get_maximized*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_get_maximized", dynlib: swt.}
proc shell_get_modified*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_get_modified", dynlib: swt.}
proc shell_get_minimized*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_get_minimized", dynlib: swt.}
proc shell_get_maximum_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_maximum_size", dynlib: swt.}
proc shell_get_minimum_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_minimum_size", dynlib: swt.}
proc shell_get_region*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_region", dynlib: swt.}
proc shell_get_shell*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_shell", dynlib: swt.}
proc shell_get_shells*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_shells", dynlib: swt.}
proc shell_get_size*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_size", dynlib: swt.}
proc shell_get_tool_bar*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "shell_get_tool_bar", dynlib: swt.}
proc shell_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_is_enabled", dynlib: swt.}
proc shell_is_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "shell_is_visible", dynlib: swt.}
proc shell_open*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "shell_open",
    dynlib: swt.}
proc shell_print*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "shell_print", dynlib: swt.}
proc shell_remove_shell_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "shell_remove_shell_listener", dynlib: swt.}
proc shell_request_layout*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "shell_request_layout", dynlib: swt.}
proc shell_set_active*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "shell_set_active", dynlib: swt.}
proc shell_set_alpha*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_alpha", dynlib: swt.}
proc shell_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_enabled", dynlib: swt.}
proc shell_set_full_screen*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_full_screen", dynlib: swt.}
proc shell_set_menu_bar*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "shell_set_menu_bar", dynlib: swt.}
proc shell_set_ime_input_mode*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_ime_input_mode", dynlib: swt.}
proc shell_set_maximized*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_maximized", dynlib: swt.}
proc shell_set_maximum_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "shell_set_maximum_size", dynlib: swt.}
proc shell_set_maximum_size_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "shell_set_maximum_size_2", dynlib: swt.}
proc shell_set_minimized*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_minimized", dynlib: swt.}
proc shell_set_minimum_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "shell_set_minimum_size", dynlib: swt.}
proc shell_set_minimum_size_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "shell_set_minimum_size_2", dynlib: swt.}
proc shell_set_modified*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_modified", dynlib: swt.}
proc shell_set_region*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "shell_set_region", dynlib: swt.}
proc shell_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "shell_set_text", dynlib: swt.}
proc shell_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "shell_set_visible", dynlib: swt.}
proc new_slider*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_slider", dynlib: swt.}
proc slider_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "slider_add_selection_listener", dynlib: swt.}
proc slider_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "slider_compute_size", dynlib: swt.}
proc slider_get_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_increment", dynlib: swt.}
proc slider_get_maximum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_maximum", dynlib: swt.}
proc slider_get_minimum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_minimum", dynlib: swt.}
proc slider_get_page_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_page_increment", dynlib: swt.}
proc slider_get_selection*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_selection", dynlib: swt.}
proc slider_get_thumb*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "slider_get_thumb", dynlib: swt.}
proc slider_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "slider_remove_selection_listener", dynlib: swt.}
proc slider_set_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_increment", dynlib: swt.}
proc slider_set_maximum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_maximum", dynlib: swt.}
proc slider_set_minimum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_minimum", dynlib: swt.}
proc slider_set_page_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_page_increment", dynlib: swt.}
proc slider_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_selection", dynlib: swt.}
proc slider_set_thumb*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "slider_set_thumb", dynlib: swt.}
proc slider_set_values*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint; a7: cint; a8: cint) {.cdecl,
    importc: "slider_set_values", dynlib: swt.}
proc new_spinner*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_spinner", dynlib: swt.}
proc spinner_add_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "spinner_add_modify_listener", dynlib: swt.}
proc spinner_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "spinner_add_selection_listener", dynlib: swt.}
proc spinner_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint): pointer {.cdecl,
    importc: "spinner_compute_size", dynlib: swt.}
proc spinner_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: cint): pointer {.cdecl,
    importc: "spinner_compute_trim", dynlib: swt.}
proc spinner_copy*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "spinner_copy", dynlib: swt.}
proc spinner_cut*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "spinner_cut",
    dynlib: swt.}
proc spinner_get_digits*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_digits", dynlib: swt.}
proc spinner_get_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_increment", dynlib: swt.}
proc spinner_get_maximum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_maximum", dynlib: swt.}
proc spinner_get_minimum*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_minimum", dynlib: swt.}
proc spinner_get_page_increment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_page_increment", dynlib: swt.}
proc spinner_get_selection*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_selection", dynlib: swt.}
proc spinner_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "spinner_get_text", dynlib: swt.}
proc spinner_get_text_limit*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "spinner_get_text_limit", dynlib: swt.}
proc spinner_paste*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "spinner_paste", dynlib: swt.}
proc spinner_remove_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "spinner_remove_modify_listener", dynlib: swt.}
proc spinner_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                       a3: pointer) {.cdecl,
    importc: "spinner_remove_selection_listener", dynlib: swt.}
proc spinner_set_digits*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_digits", dynlib: swt.}
proc spinner_set_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_increment", dynlib: swt.}
proc spinner_set_maximum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_maximum", dynlib: swt.}
proc spinner_set_minimum*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_minimum", dynlib: swt.}
proc spinner_set_page_increment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_page_increment", dynlib: swt.}
proc spinner_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_selection", dynlib: swt.}
proc spinner_set_text_limit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "spinner_set_text_limit", dynlib: swt.}
proc spinner_set_values*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                        a6: cint; a7: cint; a8: cint) {.cdecl,
    importc: "spinner_set_values", dynlib: swt.}
proc new_synchronizer*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_synchronizer", dynlib: swt.}
proc new_tabfolder*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tabfolder", dynlib: swt.}
proc tabfolder_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tabfolder_add_selection_listener", dynlib: swt.}
proc tabfolder_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint): pointer {.cdecl,
    importc: "tabfolder_compute_size", dynlib: swt.}
proc tabfolder_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                            a5: cint; a6: cint): pointer {.cdecl,
    importc: "tabfolder_compute_trim", dynlib: swt.}
proc tabfolder_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabfolder_get_client_area", dynlib: swt.}
proc tabfolder_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "tabfolder_get_item", dynlib: swt.}
proc tabfolder_get_item_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "tabfolder_get_item_2", dynlib: swt.}
proc tabfolder_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tabfolder_get_item_count", dynlib: swt.}
proc tabfolder_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabfolder_get_items", dynlib: swt.}
proc tabfolder_get_selection*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabfolder_get_selection", dynlib: swt.}
proc tabfolder_get_selection_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tabfolder_get_selection_index", dynlib: swt.}
proc tabfolder_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "tabfolder_index_of", dynlib: swt.}
proc tabfolder_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "tabfolder_remove_selection_listener", dynlib: swt.}
proc tabfolder_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tabfolder_set_selection", dynlib: swt.}
proc tabfolder_set_selection_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tabfolder_set_selection_2", dynlib: swt.}
proc tabfolder_set_selection_3*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tabfolder_set_selection_3", dynlib: swt.}
proc new_tabitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tabitem", dynlib: swt.}
proc new_tabitem_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_tabitem_2", dynlib: swt.}
proc tabitem_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabitem_get_bounds", dynlib: swt.}
proc tabitem_get_control*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabitem_get_control", dynlib: swt.}
proc tabitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tabitem_get_parent", dynlib: swt.}
proc tabitem_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "tabitem_get_tool_tip_text", dynlib: swt.}
proc tabitem_set_control*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tabitem_set_control", dynlib: swt.}
proc tabitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tabitem_set_image", dynlib: swt.}
proc tabitem_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "tabitem_set_text", dynlib: swt.}
proc tabitem_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "tabitem_set_tool_tip_text", dynlib: swt.}
proc new_tablecolumn*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tablecolumn", dynlib: swt.}
proc new_tablecolumn_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_tablecolumn_2", dynlib: swt.}
proc tablecolumn_add_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tablecolumn_add_control_listener", dynlib: swt.}
proc tablecolumn_add_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "tablecolumn_add_selection_listener", dynlib: swt.}
proc tablecolumn_get_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tablecolumn_get_alignment", dynlib: swt.}
proc tablecolumn_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tablecolumn_get_parent", dynlib: swt.}
proc tablecolumn_get_moveable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tablecolumn_get_moveable", dynlib: swt.}
proc tablecolumn_get_resizable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tablecolumn_get_resizable", dynlib: swt.}
proc tablecolumn_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.
    cdecl, importc: "tablecolumn_get_tool_tip_text", dynlib: swt.}
proc tablecolumn_get_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tablecolumn_get_width", dynlib: swt.}
proc tablecolumn_pack*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tablecolumn_pack", dynlib: swt.}
proc tablecolumn_remove_control_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "tablecolumn_remove_control_listener", dynlib: swt.}
proc tablecolumn_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "tablecolumn_remove_selection_listener",
                 dynlib: swt.}
proc tablecolumn_set_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tablecolumn_set_alignment", dynlib: swt.}
proc tablecolumn_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tablecolumn_set_image", dynlib: swt.}
proc tablecolumn_set_moveable*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tablecolumn_set_moveable", dynlib: swt.}
proc tablecolumn_set_resizable*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tablecolumn_set_resizable", dynlib: swt.}
proc tablecolumn_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "tablecolumn_set_text", dynlib: swt.}
proc tablecolumn_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "tablecolumn_set_tool_tip_text", dynlib: swt.}
proc tablecolumn_set_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tablecolumn_set_width", dynlib: swt.}
proc new_tableitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tableitem", dynlib: swt.}
proc new_tableitem_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_tableitem_2", dynlib: swt.}
proc tableitem_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_background", dynlib: swt.}
proc tableitem_get_background_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_background_2", dynlib: swt.}
proc tableitem_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_bounds", dynlib: swt.}
proc tableitem_get_bounds_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_bounds_2", dynlib: swt.}
proc tableitem_get_checked*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tableitem_get_checked", dynlib: swt.}
proc tableitem_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_font", dynlib: swt.}
proc tableitem_get_font_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_font_2", dynlib: swt.}
proc tableitem_get_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_foreground", dynlib: swt.}
proc tableitem_get_foreground_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_foreground_2", dynlib: swt.}
proc tableitem_get_grayed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tableitem_get_grayed", dynlib: swt.}
proc tableitem_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_image", dynlib: swt.}
proc tableitem_get_image_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_image_2", dynlib: swt.}
proc tableitem_get_image_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_image_bounds", dynlib: swt.}
proc tableitem_get_image_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tableitem_get_image_indent", dynlib: swt.}
proc tableitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tableitem_get_parent", dynlib: swt.}
proc tableitem_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "tableitem_get_text", dynlib: swt.}
proc tableitem_get_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): cstring {.
    cdecl, importc: "tableitem_get_text_2", dynlib: swt.}
proc tableitem_get_text_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "tableitem_get_text_bounds", dynlib: swt.}
proc tableitem_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tableitem_set_background", dynlib: swt.}
proc tableitem_set_background_2*(a1: ptr IsolateThread; a2: pointer; a3: cint;
                                a4: pointer) {.cdecl,
    importc: "tableitem_set_background_2", dynlib: swt.}
proc tableitem_set_checked*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tableitem_set_checked", dynlib: swt.}
proc tableitem_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tableitem_set_font", dynlib: swt.}
proc tableitem_set_font_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "tableitem_set_font_2", dynlib: swt.}
proc tableitem_set_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tableitem_set_foreground", dynlib: swt.}
proc tableitem_set_foreground_2*(a1: ptr IsolateThread; a2: pointer; a3: cint;
                                a4: pointer) {.cdecl,
    importc: "tableitem_set_foreground_2", dynlib: swt.}
proc tableitem_set_grayed*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tableitem_set_grayed", dynlib: swt.}
proc tableitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tableitem_set_image", dynlib: swt.}
proc tableitem_set_image_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "tableitem_set_image_2", dynlib: swt.}
proc tableitem_set_image_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tableitem_set_image_3", dynlib: swt.}
proc tableitem_set_image_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tableitem_set_image_indent", dynlib: swt.}
proc tableitem_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstringArray; a4: cint) {.
    cdecl, importc: "tableitem_set_text", dynlib: swt.}
proc tableitem_set_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cstring) {.
    cdecl, importc: "tableitem_set_text_2", dynlib: swt.}
proc tableitem_set_text_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "tableitem_set_text_3", dynlib: swt.}
proc new_table*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_table", dynlib: swt.}
proc table_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "table_add_selection_listener", dynlib: swt.}
proc table_clear*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_clear", dynlib: swt.}
proc table_clear_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "table_clear_2", dynlib: swt.}
proc table_clear_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_clear_3", dynlib: swt.}
proc table_clear_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "table_clear_all", dynlib: swt.}
proc table_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "table_compute_size", dynlib: swt.}
proc table_deselect*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_deselect", dynlib: swt.}
proc table_deselect_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "table_deselect_2", dynlib: swt.}
proc table_deselect_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_deselect_3", dynlib: swt.}
proc table_deselect_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "table_deselect_all", dynlib: swt.}
proc table_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_client_area", dynlib: swt.}
proc table_get_column*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "table_get_column", dynlib: swt.}
proc table_get_column_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_column_count", dynlib: swt.}
proc table_get_column_order*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_column_order", dynlib: swt.}
proc table_get_columns*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_columns", dynlib: swt.}
proc table_get_grid_line_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_grid_line_width", dynlib: swt.}
proc table_get_header_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_header_background", dynlib: swt.}
proc table_get_header_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_header_foreground", dynlib: swt.}
proc table_get_header_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_header_height", dynlib: swt.}
proc table_get_header_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "table_get_header_visible", dynlib: swt.}
proc table_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "table_get_item", dynlib: swt.}
proc table_get_item_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "table_get_item_2", dynlib: swt.}
proc table_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_item_count", dynlib: swt.}
proc table_get_item_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_item_height", dynlib: swt.}
proc table_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_items", dynlib: swt.}
proc table_get_lines_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "table_get_lines_visible", dynlib: swt.}
proc table_get_selection*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_selection", dynlib: swt.}
proc table_get_selection_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_selection_count", dynlib: swt.}
proc table_get_selection_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_selection_index", dynlib: swt.}
proc table_get_selection_indices*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_selection_indices", dynlib: swt.}
proc table_get_sort_column*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "table_get_sort_column", dynlib: swt.}
proc table_get_sort_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_sort_direction", dynlib: swt.}
proc table_get_top_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "table_get_top_index", dynlib: swt.}
proc table_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "table_index_of", dynlib: swt.}
proc table_index_of_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "table_index_of_2", dynlib: swt.}
proc table_is_selected*(a1: ptr IsolateThread; a2: pointer; a3: cint): char {.cdecl,
    importc: "table_is_selected", dynlib: swt.}
proc table_remove*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_remove", dynlib: swt.}
proc table_remove_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "table_remove_2", dynlib: swt.}
proc table_remove_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_remove_3", dynlib: swt.}
proc table_remove_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "table_remove_all", dynlib: swt.}
proc table_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "table_remove_selection_listener", dynlib: swt.}
proc table_select*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_select", dynlib: swt.}
proc table_select_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "table_select_2", dynlib: swt.}
proc table_select_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_select_3", dynlib: swt.}
proc table_select_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "table_select_all", dynlib: swt.}
proc table_set_column_order*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_set_column_order", dynlib: swt.}
proc table_set_header_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "table_set_header_background", dynlib: swt.}
proc table_set_header_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "table_set_header_foreground", dynlib: swt.}
proc table_set_header_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_header_visible", dynlib: swt.}
proc table_set_item_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_item_count", dynlib: swt.}
proc table_set_redraw*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_redraw", dynlib: swt.}
proc table_set_lines_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_lines_visible", dynlib: swt.}
proc table_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_selection", dynlib: swt.}
proc table_set_selection_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "table_set_selection_2", dynlib: swt.}
proc table_set_selection_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_set_selection_3", dynlib: swt.}
proc table_set_selection_4*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_set_selection_4", dynlib: swt.}
proc table_set_selection_5*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_set_selection_5", dynlib: swt.}
proc table_set_sort_column*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_set_sort_column", dynlib: swt.}
proc table_set_sort_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_sort_direction", dynlib: swt.}
proc table_set_top_index*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "table_set_top_index", dynlib: swt.}
proc table_show_column*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_show_column", dynlib: swt.}
proc table_show_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "table_show_item", dynlib: swt.}
proc table_show_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "table_show_selection", dynlib: swt.}
proc taskbar_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "taskbar_get_item", dynlib: swt.}
proc taskbar_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "taskbar_get_item_count", dynlib: swt.}
proc taskbar_get_item_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "taskbar_get_item_2", dynlib: swt.}
proc taskbar_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "taskbar_get_items", dynlib: swt.}
proc taskitem_get_menu*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "taskitem_get_menu", dynlib: swt.}
proc taskitem_get_overlay_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "taskitem_get_overlay_image", dynlib: swt.}
proc taskitem_get_overlay_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "taskitem_get_overlay_text", dynlib: swt.}
proc taskitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "taskitem_get_parent", dynlib: swt.}
proc taskitem_get_progress*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "taskitem_get_progress", dynlib: swt.}
proc taskitem_get_progress_state*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "taskitem_get_progress_state", dynlib: swt.}
proc taskitem_set_menu*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "taskitem_set_menu", dynlib: swt.}
proc taskitem_set_overlay_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "taskitem_set_overlay_image", dynlib: swt.}
proc taskitem_set_overlay_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "taskitem_set_overlay_text", dynlib: swt.}
proc taskitem_set_progress*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "taskitem_set_progress", dynlib: swt.}
proc taskitem_set_progress_state*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "taskitem_set_progress_state", dynlib: swt.}
proc new_textlayout*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_textlayout", dynlib: swt.}
proc textlayout_draw*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint; a5: cint) {.
    cdecl, importc: "textlayout_draw", dynlib: swt.}
proc textlayout_draw_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint;
                       a5: cint; a6: cint; a7: cint; a8: pointer; a9: pointer) {.cdecl,
    importc: "textlayout_draw_2", dynlib: swt.}
proc textlayout_draw_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint;
                       a5: cint; a6: cint; a7: cint; a8: pointer; a9: pointer; a10: cint) {.
    cdecl, importc: "textlayout_draw_3", dynlib: swt.}
proc textlayout_get_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_alignment", dynlib: swt.}
proc textlayout_get_ascent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_ascent", dynlib: swt.}
proc textlayout_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_bounds", dynlib: swt.}
proc textlayout_get_bounds_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "textlayout_get_bounds_2", dynlib: swt.}
proc textlayout_get_descent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_descent", dynlib: swt.}
proc textlayout_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_font", dynlib: swt.}
proc textlayout_get_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_indent", dynlib: swt.}
proc textlayout_get_justify*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "textlayout_get_justify", dynlib: swt.}
proc textlayout_get_level*(a1: ptr IsolateThread; a2: pointer; a3: cint): cint {.cdecl,
    importc: "textlayout_get_level", dynlib: swt.}
proc textlayout_get_line_offsets*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_line_offsets", dynlib: swt.}
proc textlayout_get_line_index*(a1: ptr IsolateThread; a2: pointer; a3: cint): cint {.
    cdecl, importc: "textlayout_get_line_index", dynlib: swt.}
proc textlayout_get_line_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "textlayout_get_line_bounds", dynlib: swt.}
proc textlayout_get_line_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_line_count", dynlib: swt.}
proc textlayout_get_line_metrics*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "textlayout_get_line_metrics", dynlib: swt.}
proc textlayout_get_location*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "textlayout_get_location", dynlib: swt.}
proc textlayout_get_next_offset*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): cint {.
    cdecl, importc: "textlayout_get_next_offset", dynlib: swt.}
proc textlayout_get_offset*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer): cint {.
    cdecl, importc: "textlayout_get_offset", dynlib: swt.}
proc textlayout_get_offset_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                             a5: pointer): cint {.cdecl,
    importc: "textlayout_get_offset_2", dynlib: swt.}
proc textlayout_get_orientation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_orientation", dynlib: swt.}
proc textlayout_get_previous_offset*(a1: ptr IsolateThread; a2: pointer; a3: cint;
                                    a4: cint): cint {.cdecl,
    importc: "textlayout_get_previous_offset", dynlib: swt.}
proc textlayout_get_ranges*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_ranges", dynlib: swt.}
proc textlayout_get_segments*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_segments", dynlib: swt.}
proc textlayout_get_segments_chars*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "textlayout_get_segments_chars", dynlib: swt.}
proc textlayout_get_spacing*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_spacing", dynlib: swt.}
proc textlayout_get_vertical_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_vertical_indent", dynlib: swt.}
proc textlayout_get_style*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "textlayout_get_style", dynlib: swt.}
proc textlayout_get_styles*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_styles", dynlib: swt.}
proc textlayout_get_tabs*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textlayout_get_tabs", dynlib: swt.}
proc textlayout_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "textlayout_get_text", dynlib: swt.}
proc textlayout_get_text_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_text_direction", dynlib: swt.}
proc textlayout_get_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_width", dynlib: swt.}
proc textlayout_get_wrap_indent*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textlayout_get_wrap_indent", dynlib: swt.}
proc textlayout_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "textlayout_is_disposed", dynlib: swt.}
proc textlayout_set_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_alignment", dynlib: swt.}
proc textlayout_set_ascent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_ascent", dynlib: swt.}
proc textlayout_set_descent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_descent", dynlib: swt.}
proc textlayout_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textlayout_set_font", dynlib: swt.}
proc textlayout_set_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_indent", dynlib: swt.}
proc textlayout_set_wrap_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_wrap_indent", dynlib: swt.}
proc textlayout_set_justify*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_justify", dynlib: swt.}
proc textlayout_set_orientation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_orientation", dynlib: swt.}
proc textlayout_set_segments*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textlayout_set_segments", dynlib: swt.}
proc textlayout_set_segments_chars*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textlayout_set_segments_chars", dynlib: swt.}
proc textlayout_set_spacing*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_spacing", dynlib: swt.}
proc textlayout_set_vertical_indent*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "textlayout_set_vertical_indent", dynlib: swt.}
proc textlayout_set_style*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint;
                          a5: cint) {.cdecl, importc: "textlayout_set_style",
                                    dynlib: swt.}
proc textlayout_set_tabs*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textlayout_set_tabs", dynlib: swt.}
proc textlayout_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "textlayout_set_text", dynlib: swt.}
proc textlayout_set_text_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "textlayout_set_text_direction", dynlib: swt.}
proc textlayout_set_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textlayout_set_width", dynlib: swt.}
proc textlayout_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "textlayout_to_string", dynlib: swt.}
proc textlayout_set_default_tab_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "textlayout_set_default_tab_width", dynlib: swt.}
proc new_textstyle*(a1: ptr IsolateThread): pointer {.cdecl, importc: "new_textstyle",
    dynlib: swt.}
proc new_textstyle_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: pointer): pointer {.
    cdecl, importc: "new_textstyle_2", dynlib: swt.}
proc new_textstyle_3*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_textstyle_3", dynlib: swt.}
proc textstyle_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_font", dynlib: swt.}
proc textstyle_assign_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textstyle_assign_font", dynlib: swt.}
proc textstyle_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_foreground", dynlib: swt.}
proc textstyle_assign_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textstyle_assign_foreground", dynlib: swt.}
proc textstyle_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_background", dynlib: swt.}
proc textstyle_assign_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textstyle_assign_background", dynlib: swt.}
proc textstyle_underline*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "textstyle_underline", dynlib: swt.}
proc textstyle_assign_underline*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textstyle_assign_underline", dynlib: swt.}
proc textstyle_underline_color*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_underline_color", dynlib: swt.}
proc textstyle_assign_underline_color*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textstyle_assign_underline_color", dynlib: swt.}
proc textstyle_underline_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textstyle_underline_style", dynlib: swt.}
proc textstyle_assign_underline_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "textstyle_assign_underline_style", dynlib: swt.}
proc textstyle_strikeout*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "textstyle_strikeout", dynlib: swt.}
proc textstyle_assign_strikeout*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textstyle_assign_strikeout", dynlib: swt.}
proc textstyle_strikeout_color*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_strikeout_color", dynlib: swt.}
proc textstyle_assign_strikeout_color*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textstyle_assign_strikeout_color", dynlib: swt.}
proc textstyle_border_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textstyle_border_style", dynlib: swt.}
proc textstyle_assign_border_style*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "textstyle_assign_border_style", dynlib: swt.}
proc textstyle_border_color*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_border_color", dynlib: swt.}
proc textstyle_assign_border_color*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "textstyle_assign_border_color", dynlib: swt.}
proc textstyle_metrics*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_metrics", dynlib: swt.}
proc textstyle_assign_metrics*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textstyle_assign_metrics", dynlib: swt.}
proc textstyle_rise*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textstyle_rise", dynlib: swt.}
proc textstyle_assign_rise*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "textstyle_assign_rise", dynlib: swt.}
proc textstyle_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "textstyle_data", dynlib: swt.}
proc textstyle_assign_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "textstyle_assign_data", dynlib: swt.}
proc textstyle_equals*(a1: ptr IsolateThread; a2: pointer; a3: pointer): char {.cdecl,
    importc: "textstyle_equals", dynlib: swt.}
proc textstyle_hash_code*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "textstyle_hash_code", dynlib: swt.}
proc textstyle_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "textstyle_to_string", dynlib: swt.}
proc new_text*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_text", dynlib: swt.}
proc text_add_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "text_add_modify_listener", dynlib: swt.}
proc text_add_segment_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_add_segment_listener", dynlib: swt.}
proc text_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_add_selection_listener", dynlib: swt.}
proc text_add_verify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "text_add_verify_listener", dynlib: swt.}
proc text_append*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "text_append", dynlib: swt.}
proc text_clear_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "text_clear_selection", dynlib: swt.}
proc text_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "text_compute_size", dynlib: swt.}
proc text_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint;
                       a6: cint): pointer {.cdecl, importc: "text_compute_trim",
    dynlib: swt.}
proc text_copy*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "text_copy",
    dynlib: swt.}
proc text_cut*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "text_cut",
    dynlib: swt.}
proc text_get_caret_line_number*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_caret_line_number", dynlib: swt.}
proc text_get_caret_location*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "text_get_caret_location", dynlib: swt.}
proc text_get_caret_position*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_caret_position", dynlib: swt.}
proc text_get_char_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_char_count", dynlib: swt.}
proc text_get_double_click_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "text_get_double_click_enabled", dynlib: swt.}
proc text_get_echo_char*(a1: ptr IsolateThread; a2: pointer): cshort {.cdecl,
    importc: "text_get_echo_char", dynlib: swt.}
proc text_get_editable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "text_get_editable", dynlib: swt.}
proc text_get_line_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_line_count", dynlib: swt.}
proc text_get_line_delimiter*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "text_get_line_delimiter", dynlib: swt.}
proc text_get_line_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_line_height", dynlib: swt.}
proc text_get_orientation*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_orientation", dynlib: swt.}
proc text_get_message*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "text_get_message", dynlib: swt.}
proc text_get_selection*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "text_get_selection", dynlib: swt.}
proc text_get_selection_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_selection_count", dynlib: swt.}
proc text_get_selection_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "text_get_selection_text", dynlib: swt.}
proc text_get_tabs*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_tabs", dynlib: swt.}
proc text_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "text_get_text", dynlib: swt.}
proc text_get_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): cstring {.
    cdecl, importc: "text_get_text_2", dynlib: swt.}
proc text_get_text_chars*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "text_get_text_chars", dynlib: swt.}
proc text_get_text_limit*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_text_limit", dynlib: swt.}
proc text_get_top_index*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_top_index", dynlib: swt.}
proc text_get_top_pixel*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "text_get_top_pixel", dynlib: swt.}
proc text_insert*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "text_insert", dynlib: swt.}
proc text_paste*(a1: ptr IsolateThread; a2: pointer) {.cdecl, importc: "text_paste",
    dynlib: swt.}
proc text_remove_modify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_remove_modify_listener", dynlib: swt.}
proc text_remove_segment_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_remove_segment_listener", dynlib: swt.}
proc text_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_remove_selection_listener", dynlib: swt.}
proc text_remove_verify_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "text_remove_verify_listener", dynlib: swt.}
proc text_select_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "text_select_all", dynlib: swt.}
proc text_set_double_click_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "text_set_double_click_enabled", dynlib: swt.}
proc text_set_echo_char*(a1: ptr IsolateThread; a2: pointer; a3: cshort) {.cdecl,
    importc: "text_set_echo_char", dynlib: swt.}
proc text_set_editable*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_editable", dynlib: swt.}
proc text_set_orientation*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_orientation", dynlib: swt.}
proc text_set_message*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "text_set_message", dynlib: swt.}
proc text_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_selection", dynlib: swt.}
proc text_set_selection_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.
    cdecl, importc: "text_set_selection_2", dynlib: swt.}
proc text_set_selection_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "text_set_selection_3", dynlib: swt.}
proc text_set_tabs*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_tabs", dynlib: swt.}
proc text_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "text_set_text", dynlib: swt.}
proc text_set_text_chars*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "text_set_text_chars", dynlib: swt.}
proc text_set_text_limit*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_text_limit", dynlib: swt.}
proc text_set_top_index*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "text_set_top_index", dynlib: swt.}
proc text_show_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "text_show_selection", dynlib: swt.}
proc new_toolbar*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_toolbar", dynlib: swt.}
proc toolbar_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint): pointer {.cdecl,
    importc: "toolbar_compute_size", dynlib: swt.}
proc toolbar_compute_trim*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint;
                          a5: cint; a6: cint): pointer {.cdecl,
    importc: "toolbar_compute_trim", dynlib: swt.}
proc toolbar_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolbar_get_bounds", dynlib: swt.}
proc toolbar_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "toolbar_get_item", dynlib: swt.}
proc toolbar_get_item_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.
    cdecl, importc: "toolbar_get_item_2", dynlib: swt.}
proc toolbar_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "toolbar_get_item_count", dynlib: swt.}
proc toolbar_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolbar_get_items", dynlib: swt.}
proc toolbar_get_row_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "toolbar_get_row_count", dynlib: swt.}
proc toolbar_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "toolbar_index_of", dynlib: swt.}
proc toolbar_set_redraw*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "toolbar_set_redraw", dynlib: swt.}
proc toolbar_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "toolbar_set_visible", dynlib: swt.}
proc new_toolitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_toolitem", dynlib: swt.}
proc new_toolitem_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_toolitem_2", dynlib: swt.}
proc toolitem_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "toolitem_add_selection_listener", dynlib: swt.}
proc toolitem_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_background", dynlib: swt.}
proc toolitem_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_bounds", dynlib: swt.}
proc toolitem_get_control*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_control", dynlib: swt.}
proc toolitem_get_disabled_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_disabled_image", dynlib: swt.}
proc toolitem_get_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "toolitem_get_enabled", dynlib: swt.}
proc toolitem_get_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_foreground", dynlib: swt.}
proc toolitem_get_hot_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_hot_image", dynlib: swt.}
proc toolitem_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_image", dynlib: swt.}
proc toolitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "toolitem_get_parent", dynlib: swt.}
proc toolitem_get_selection*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "toolitem_get_selection", dynlib: swt.}
proc toolitem_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "toolitem_get_tool_tip_text", dynlib: swt.}
proc toolitem_get_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "toolitem_get_width", dynlib: swt.}
proc toolitem_is_enabled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "toolitem_is_enabled", dynlib: swt.}
proc toolitem_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "toolitem_remove_selection_listener", dynlib: swt.}
proc toolitem_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "toolitem_set_background", dynlib: swt.}
proc toolitem_set_control*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "toolitem_set_control", dynlib: swt.}
proc toolitem_set_enabled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "toolitem_set_enabled", dynlib: swt.}
proc toolitem_set_disabled_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "toolitem_set_disabled_image", dynlib: swt.}
proc toolitem_set_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "toolitem_set_foreground", dynlib: swt.}
proc toolitem_set_hot_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "toolitem_set_hot_image", dynlib: swt.}
proc toolitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "toolitem_set_image", dynlib: swt.}
proc toolitem_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "toolitem_set_selection", dynlib: swt.}
proc toolitem_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "toolitem_set_text", dynlib: swt.}
proc toolitem_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "toolitem_set_tool_tip_text", dynlib: swt.}
proc toolitem_set_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "toolitem_set_width", dynlib: swt.}
proc new_touchevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_touchevent", dynlib: swt.}
proc touchevent_touches*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "touchevent_touches", dynlib: swt.}
proc touchevent_assign_touches*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "touchevent_assign_touches", dynlib: swt.}
proc touchevent_state_mask*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "touchevent_state_mask", dynlib: swt.}
proc touchevent_assign_state_mask*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.
    cdecl, importc: "touchevent_assign_state_mask", dynlib: swt.}
proc touchevent_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "touchevent_x", dynlib: swt.}
proc touchevent_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touchevent_assign_x", dynlib: swt.}
proc touchevent_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "touchevent_y", dynlib: swt.}
proc touchevent_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touchevent_assign_y", dynlib: swt.}
proc touchevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "touchevent_to_string", dynlib: swt.}
proc create_touch_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_touch_listener", dynlib: swt.}
proc touchsource_is_direct*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "touchsource_is_direct", dynlib: swt.}
proc touchsource_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "touchsource_get_bounds", dynlib: swt.}
proc touchsource_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "touchsource_to_string", dynlib: swt.}
proc touch_id*(a1: ptr IsolateThread; a2: pointer): clonglong {.cdecl,
    importc: "touch_id", dynlib: swt.}
proc touch_assign_id*(a1: ptr IsolateThread; a2: pointer; a3: clonglong) {.cdecl,
    importc: "touch_assign_id", dynlib: swt.}
proc touch_source*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "touch_source", dynlib: swt.}
proc touch_assign_source*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "touch_assign_source", dynlib: swt.}
proc touch_state*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "touch_state", dynlib: swt.}
proc touch_assign_state*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touch_assign_state", dynlib: swt.}
proc touch_primary*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "touch_primary", dynlib: swt.}
proc touch_assign_primary*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touch_assign_primary", dynlib: swt.}
proc touch_x*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "touch_x",
    dynlib: swt.}
proc touch_assign_x*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touch_assign_x", dynlib: swt.}
proc touch_y*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl, importc: "touch_y",
    dynlib: swt.}
proc touch_assign_y*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "touch_assign_y", dynlib: swt.}
proc touch_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "touch_to_string", dynlib: swt.}
proc new_tracker*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tracker", dynlib: swt.}
proc new_tracker_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tracker_2", dynlib: swt.}
proc tracker_add_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tracker_add_control_listener", dynlib: swt.}
proc tracker_add_key_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tracker_add_key_listener", dynlib: swt.}
proc tracker_close*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tracker_close", dynlib: swt.}
proc tracker_get_rectangles*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tracker_get_rectangles", dynlib: swt.}
proc tracker_get_stippled*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tracker_get_stippled", dynlib: swt.}
proc tracker_open*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tracker_open", dynlib: swt.}
proc tracker_remove_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tracker_remove_control_listener", dynlib: swt.}
proc tracker_remove_key_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tracker_remove_key_listener", dynlib: swt.}
proc tracker_set_cursor*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tracker_set_cursor", dynlib: swt.}
proc tracker_set_rectangles*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tracker_set_rectangles", dynlib: swt.}
proc tracker_set_stippled*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tracker_set_stippled", dynlib: swt.}
proc new_transform*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_transform", dynlib: swt.}
proc new_transform_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "new_transform_2", dynlib: swt.}
proc new_transform_3*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                     a5: cfloat; a6: cfloat; a7: cfloat; a8: cfloat): pointer {.cdecl,
    importc: "new_transform_3", dynlib: swt.}
proc transform_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "transform_handle", dynlib: swt.}
proc transform_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "transform_assign_handle", dynlib: swt.}
proc transform_get_elements*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "transform_get_elements", dynlib: swt.}
proc transform_identity*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "transform_identity", dynlib: swt.}
proc transform_invert*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "transform_invert", dynlib: swt.}
proc transform_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "transform_is_disposed", dynlib: swt.}
proc transform_is_identity*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "transform_is_identity", dynlib: swt.}
proc transform_multiply*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "transform_multiply", dynlib: swt.}
proc transform_rotate*(a1: ptr IsolateThread; a2: pointer; a3: cfloat) {.cdecl,
    importc: "transform_rotate", dynlib: swt.}
proc transform_scale*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat) {.cdecl,
    importc: "transform_scale", dynlib: swt.}
proc transform_set_elements*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat;
                            a5: cfloat; a6: cfloat; a7: cfloat; a8: cfloat) {.cdecl,
    importc: "transform_set_elements", dynlib: swt.}
proc transform_shear*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat) {.cdecl,
    importc: "transform_shear", dynlib: swt.}
proc transform_transform*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "transform_transform", dynlib: swt.}
proc transform_translate*(a1: ptr IsolateThread; a2: pointer; a3: cfloat; a4: cfloat) {.
    cdecl, importc: "transform_translate", dynlib: swt.}
proc transform_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "transform_to_string", dynlib: swt.}
proc new_traverseevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_traverseevent", dynlib: swt.}
proc traverseevent_detail*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "traverseevent_detail", dynlib: swt.}
proc traverseevent_assign_detail*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "traverseevent_assign_detail", dynlib: swt.}
proc traverseevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "traverseevent_to_string", dynlib: swt.}
proc create_traverse_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_traverse_listener", dynlib: swt.}
proc new_trayitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_trayitem", dynlib: swt.}
proc trayitem_add_menu_detect_listener*(a1: ptr IsolateThread; a2: pointer;
                                       a3: pointer) {.cdecl,
    importc: "trayitem_add_menu_detect_listener", dynlib: swt.}
proc trayitem_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "trayitem_add_selection_listener", dynlib: swt.}
proc trayitem_get_highlight_image*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "trayitem_get_highlight_image", dynlib: swt.}
proc trayitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "trayitem_get_parent", dynlib: swt.}
proc trayitem_get_tool_tip*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "trayitem_get_tool_tip", dynlib: swt.}
proc trayitem_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "trayitem_get_tool_tip_text", dynlib: swt.}
proc trayitem_get_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "trayitem_get_visible", dynlib: swt.}
proc trayitem_remove_menu_detect_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "trayitem_remove_menu_detect_listener",
                 dynlib: swt.}
proc trayitem_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "trayitem_remove_selection_listener", dynlib: swt.}
proc trayitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "trayitem_set_image", dynlib: swt.}
proc trayitem_set_highlight_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "trayitem_set_highlight_image", dynlib: swt.}
proc trayitem_set_tool_tip*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "trayitem_set_tool_tip", dynlib: swt.}
proc trayitem_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "trayitem_set_tool_tip_text", dynlib: swt.}
proc trayitem_set_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "trayitem_set_visible", dynlib: swt.}
proc tray_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "tray_get_item", dynlib: swt.}
proc tray_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tray_get_item_count", dynlib: swt.}
proc tray_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tray_get_items", dynlib: swt.}
proc treeadapter_tree_collapsed*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "treeadapter_tree_collapsed", dynlib: swt.}
proc treeadapter_tree_expanded*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "treeadapter_tree_expanded", dynlib: swt.}
proc new_treecolumn*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_treecolumn", dynlib: swt.}
proc new_treecolumn_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_treecolumn_2", dynlib: swt.}
proc treecolumn_add_control_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "treecolumn_add_control_listener", dynlib: swt.}
proc treecolumn_add_selection_listener*(a1: ptr IsolateThread; a2: pointer;
                                       a3: pointer) {.cdecl,
    importc: "treecolumn_add_selection_listener", dynlib: swt.}
proc treecolumn_get_alignment*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "treecolumn_get_alignment", dynlib: swt.}
proc treecolumn_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treecolumn_get_parent", dynlib: swt.}
proc treecolumn_get_moveable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "treecolumn_get_moveable", dynlib: swt.}
proc treecolumn_get_resizable*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "treecolumn_get_resizable", dynlib: swt.}
proc treecolumn_get_tool_tip_text*(a1: ptr IsolateThread; a2: pointer): cstring {.
    cdecl, importc: "treecolumn_get_tool_tip_text", dynlib: swt.}
proc treecolumn_get_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "treecolumn_get_width", dynlib: swt.}
proc treecolumn_pack*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "treecolumn_pack", dynlib: swt.}
proc treecolumn_remove_control_listener*(a1: ptr IsolateThread; a2: pointer;
                                        a3: pointer) {.cdecl,
    importc: "treecolumn_remove_control_listener", dynlib: swt.}
proc treecolumn_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer;
    a3: pointer) {.cdecl, importc: "treecolumn_remove_selection_listener",
                 dynlib: swt.}
proc treecolumn_set_alignment*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treecolumn_set_alignment", dynlib: swt.}
proc treecolumn_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treecolumn_set_image", dynlib: swt.}
proc treecolumn_set_moveable*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treecolumn_set_moveable", dynlib: swt.}
proc treecolumn_set_resizable*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treecolumn_set_resizable", dynlib: swt.}
proc treecolumn_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "treecolumn_set_text", dynlib: swt.}
proc treecolumn_set_tool_tip_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.
    cdecl, importc: "treecolumn_set_tool_tip_text", dynlib: swt.}
proc treecolumn_set_width*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treecolumn_set_width", dynlib: swt.}
proc new_treeevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_treeevent", dynlib: swt.}
proc new_treeitem*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_treeitem", dynlib: swt.}
proc new_treeitem_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_treeitem_2", dynlib: swt.}
proc new_treeitem_3*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_treeitem_3", dynlib: swt.}
proc new_treeitem_4*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint): pointer {.
    cdecl, importc: "new_treeitem_4", dynlib: swt.}
proc treeitem_handle*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_handle", dynlib: swt.}
proc treeitem_assign_handle*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_assign_handle", dynlib: swt.}
proc treeitem_clear*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "treeitem_clear", dynlib: swt.}
proc treeitem_clear_all*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treeitem_clear_all", dynlib: swt.}
proc treeitem_get_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_background", dynlib: swt.}
proc treeitem_get_background_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_background_2", dynlib: swt.}
proc treeitem_get_bounds*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_bounds", dynlib: swt.}
proc treeitem_get_bounds_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_bounds_2", dynlib: swt.}
proc treeitem_get_checked*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "treeitem_get_checked", dynlib: swt.}
proc treeitem_get_expanded*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "treeitem_get_expanded", dynlib: swt.}
proc treeitem_get_font*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_font", dynlib: swt.}
proc treeitem_get_font_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "treeitem_get_font_2", dynlib: swt.}
proc treeitem_get_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_foreground", dynlib: swt.}
proc treeitem_get_foreground_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_foreground_2", dynlib: swt.}
proc treeitem_get_grayed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "treeitem_get_grayed", dynlib: swt.}
proc treeitem_get_image*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_image", dynlib: swt.}
proc treeitem_get_image_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_image_2", dynlib: swt.}
proc treeitem_get_image_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_image_bounds", dynlib: swt.}
proc treeitem_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "treeitem_get_item", dynlib: swt.}
proc treeitem_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "treeitem_get_item_count", dynlib: swt.}
proc treeitem_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_items", dynlib: swt.}
proc treeitem_get_parent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_parent", dynlib: swt.}
proc treeitem_get_parent_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "treeitem_get_parent_item", dynlib: swt.}
proc treeitem_get_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "treeitem_get_text", dynlib: swt.}
proc treeitem_get_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cint): cstring {.cdecl,
    importc: "treeitem_get_text_2", dynlib: swt.}
proc treeitem_get_text_bounds*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "treeitem_get_text_bounds", dynlib: swt.}
proc treeitem_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "treeitem_index_of", dynlib: swt.}
proc treeitem_remove_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "treeitem_remove_all", dynlib: swt.}
proc treeitem_set_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_set_background", dynlib: swt.}
proc treeitem_set_background_2*(a1: ptr IsolateThread; a2: pointer; a3: cint;
                               a4: pointer) {.cdecl,
    importc: "treeitem_set_background_2", dynlib: swt.}
proc treeitem_set_checked*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treeitem_set_checked", dynlib: swt.}
proc treeitem_set_expanded*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treeitem_set_expanded", dynlib: swt.}
proc treeitem_set_font*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_set_font", dynlib: swt.}
proc treeitem_set_font_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "treeitem_set_font_2", dynlib: swt.}
proc treeitem_set_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_set_foreground", dynlib: swt.}
proc treeitem_set_foreground_2*(a1: ptr IsolateThread; a2: pointer; a3: cint;
                               a4: pointer) {.cdecl,
    importc: "treeitem_set_foreground_2", dynlib: swt.}
proc treeitem_set_grayed*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treeitem_set_grayed", dynlib: swt.}
proc treeitem_set_image*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_set_image", dynlib: swt.}
proc treeitem_set_image_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "treeitem_set_image_2", dynlib: swt.}
proc treeitem_set_image_3*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "treeitem_set_image_3", dynlib: swt.}
proc treeitem_set_item_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "treeitem_set_item_count", dynlib: swt.}
proc treeitem_set_text*(a1: ptr IsolateThread; a2: pointer; a3: cstringArray; a4: cint) {.
    cdecl, importc: "treeitem_set_text", dynlib: swt.}
proc treeitem_set_text_2*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cstring) {.
    cdecl, importc: "treeitem_set_text_2", dynlib: swt.}
proc treeitem_set_text_3*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "treeitem_set_text_3", dynlib: swt.}
proc new_tree*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "new_tree", dynlib: swt.}
proc tree_add_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tree_add_selection_listener", dynlib: swt.}
proc tree_add_tree_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_add_tree_listener", dynlib: swt.}
proc tree_clear*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint) {.cdecl,
    importc: "tree_clear", dynlib: swt.}
proc tree_clear_all*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_clear_all", dynlib: swt.}
proc tree_compute_size*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: cint; a5: cint): pointer {.
    cdecl, importc: "tree_compute_size", dynlib: swt.}
proc tree_deselect_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tree_deselect_all", dynlib: swt.}
proc tree_deselect*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_deselect", dynlib: swt.}
proc tree_get_client_area*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_client_area", dynlib: swt.}
proc tree_get_column*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "tree_get_column", dynlib: swt.}
proc tree_get_column_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_column_count", dynlib: swt.}
proc tree_get_column_order*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_column_order", dynlib: swt.}
proc tree_get_columns*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_columns", dynlib: swt.}
proc tree_get_grid_line_width*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_grid_line_width", dynlib: swt.}
proc tree_get_header_background*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_header_background", dynlib: swt.}
proc tree_get_header_foreground*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_header_foreground", dynlib: swt.}
proc tree_get_header_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_header_height", dynlib: swt.}
proc tree_get_header_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tree_get_header_visible", dynlib: swt.}
proc tree_get_item*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.cdecl,
    importc: "tree_get_item", dynlib: swt.}
proc tree_get_item_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): pointer {.cdecl,
    importc: "tree_get_item_2", dynlib: swt.}
proc tree_get_item_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_item_count", dynlib: swt.}
proc tree_get_item_height*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_item_height", dynlib: swt.}
proc tree_get_items*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_items", dynlib: swt.}
proc tree_get_lines_visible*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "tree_get_lines_visible", dynlib: swt.}
proc tree_get_parent_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_parent_item", dynlib: swt.}
proc tree_get_selection*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_selection", dynlib: swt.}
proc tree_get_selection_count*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_selection_count", dynlib: swt.}
proc tree_get_sort_column*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_sort_column", dynlib: swt.}
proc tree_get_sort_direction*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "tree_get_sort_direction", dynlib: swt.}
proc tree_get_top_item*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "tree_get_top_item", dynlib: swt.}
proc tree_index_of*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "tree_index_of", dynlib: swt.}
proc tree_index_of_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer): cint {.cdecl,
    importc: "tree_index_of_2", dynlib: swt.}
proc tree_remove_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tree_remove_all", dynlib: swt.}
proc tree_remove_selection_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tree_remove_selection_listener", dynlib: swt.}
proc tree_remove_tree_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tree_remove_tree_listener", dynlib: swt.}
proc tree_set_insert_mark*(a1: ptr IsolateThread; a2: pointer; a3: pointer; a4: cint) {.
    cdecl, importc: "tree_set_insert_mark", dynlib: swt.}
proc tree_select_all*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tree_select_all", dynlib: swt.}
proc tree_select*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_select", dynlib: swt.}
proc tree_set_column_order*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_set_column_order", dynlib: swt.}
proc tree_set_header_background*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tree_set_header_background", dynlib: swt.}
proc tree_set_header_foreground*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "tree_set_header_foreground", dynlib: swt.}
proc tree_set_header_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_set_header_visible", dynlib: swt.}
proc tree_set_item_count*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_set_item_count", dynlib: swt.}
proc tree_set_lines_visible*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_set_lines_visible", dynlib: swt.}
proc tree_set_redraw*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_set_redraw", dynlib: swt.}
proc tree_set_selection*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_set_selection", dynlib: swt.}
proc tree_set_selection_2*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_set_selection_2", dynlib: swt.}
proc tree_set_sort_column*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_set_sort_column", dynlib: swt.}
proc tree_set_sort_direction*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "tree_set_sort_direction", dynlib: swt.}
proc tree_set_top_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_set_top_item", dynlib: swt.}
proc tree_show_column*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_show_column", dynlib: swt.}
proc tree_show_item*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "tree_show_item", dynlib: swt.}
proc tree_show_selection*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "tree_show_selection", dynlib: swt.}
proc new_typedevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_typedevent", dynlib: swt.}
proc new_typedevent_2*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_typedevent_2", dynlib: swt.}
proc typedevent_display*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "typedevent_display", dynlib: swt.}
proc typedevent_assign_display*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "typedevent_assign_display", dynlib: swt.}
proc typedevent_widget*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "typedevent_widget", dynlib: swt.}
proc typedevent_assign_widget*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "typedevent_assign_widget", dynlib: swt.}
proc typedevent_time*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "typedevent_time", dynlib: swt.}
proc typedevent_assign_time*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "typedevent_assign_time", dynlib: swt.}
proc typedevent_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "typedevent_data", dynlib: swt.}
proc typedevent_assign_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "typedevent_assign_data", dynlib: swt.}
proc typedevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "typedevent_to_string", dynlib: swt.}
proc new_typedlistener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_typedlistener", dynlib: swt.}
proc typedlistener_get_event_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.
    cdecl, importc: "typedlistener_get_event_listener", dynlib: swt.}
proc typedlistener_handle_event*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "typedlistener_handle_event", dynlib: swt.}
proc new_verifyevent*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "new_verifyevent", dynlib: swt.}
proc verifyevent_start*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "verifyevent_start", dynlib: swt.}
proc verifyevent_assign_start*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "verifyevent_assign_start", dynlib: swt.}
proc verifyevent_text*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "verifyevent_text", dynlib: swt.}
proc verifyevent_assign_text*(a1: ptr IsolateThread; a2: pointer; a3: cstring) {.cdecl,
    importc: "verifyevent_assign_text", dynlib: swt.}
proc verifyevent_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "verifyevent_to_string", dynlib: swt.}
proc create_verify_listener*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "create_verify_listener", dynlib: swt.}
proc widget_reskin*(a1: ptr IsolateThread; a2: pointer; a3: cint) {.cdecl,
    importc: "widget_reskin", dynlib: swt.}
proc widget_add_listener*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "widget_add_listener", dynlib: swt.}
proc widget_add_dispose_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "widget_add_dispose_listener", dynlib: swt.}
proc widget_dispose*(a1: ptr IsolateThread; a2: pointer) {.cdecl,
    importc: "widget_dispose", dynlib: swt.}
proc widget_get_data*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "widget_get_data", dynlib: swt.}
proc widget_get_data_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring): pointer {.
    cdecl, importc: "widget_get_data_2", dynlib: swt.}
proc widget_get_display*(a1: ptr IsolateThread; a2: pointer): pointer {.cdecl,
    importc: "widget_get_display", dynlib: swt.}
proc widget_get_listeners*(a1: ptr IsolateThread; a2: pointer; a3: cint): pointer {.
    cdecl, importc: "widget_get_listeners", dynlib: swt.}
proc widget_get_style*(a1: ptr IsolateThread; a2: pointer): cint {.cdecl,
    importc: "widget_get_style", dynlib: swt.}
proc widget_is_auto_direction*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "widget_is_auto_direction", dynlib: swt.}
proc widget_is_disposed*(a1: ptr IsolateThread; a2: pointer): char {.cdecl,
    importc: "widget_is_disposed", dynlib: swt.}
proc widget_is_listening*(a1: ptr IsolateThread; a2: pointer; a3: cint): char {.cdecl,
    importc: "widget_is_listening", dynlib: swt.}
proc widget_notify_listeners*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "widget_notify_listeners", dynlib: swt.}
proc widget_remove_listener*(a1: ptr IsolateThread; a2: pointer; a3: cint; a4: pointer) {.
    cdecl, importc: "widget_remove_listener", dynlib: swt.}
proc widget_remove_dispose_listener*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.
    cdecl, importc: "widget_remove_dispose_listener", dynlib: swt.}
proc widget_set_data*(a1: ptr IsolateThread; a2: pointer; a3: pointer) {.cdecl,
    importc: "widget_set_data", dynlib: swt.}
proc widget_set_data_2*(a1: ptr IsolateThread; a2: pointer; a3: cstring; a4: pointer) {.
    cdecl, importc: "widget_set_data_2", dynlib: swt.}
proc widget_to_string*(a1: ptr IsolateThread; a2: pointer): cstring {.cdecl,
    importc: "widget_to_string", dynlib: swt.}
