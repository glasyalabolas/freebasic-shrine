#pragma once
' OpenGL extensions wrangler for FreeBASIC by D.J.Peters

#include once "GL/gl.bi"
#include once "GL/glext.bi"

#ifdef __GLFW__
 #define ExtensionSupported(_str_) glfwExtensionSupported(@##_str_)
 #define GetProcPtr(_str_) glfwGetProcAddress(@##_str_)
#else
 #define ExtensionSupported(_str_) instr(glExtensions,_str_) 
 #define GetProcPtr(_str_) ScreenGLProc(_str_)
#endif

dim shared as GLboolean IS_GL_VERSION_1_2 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_1_3 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_1_4 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_1_5 = GL_FALSE

dim shared as GLboolean IS_GL_VERSION_2_0 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_2_1 = GL_FALSE

dim shared as GLboolean IS_GL_VERSION_3_0 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_3_1 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_3_2 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_3_3 = GL_FALSE

dim shared as GLboolean IS_GL_VERSION_4_0 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_4_1 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_4_2 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_4_3 = GL_FALSE
dim shared as GLboolean IS_GL_VERSION_4_4 = GL_FALSE

dim shared as GLboolean IS_GL_ARB_imaging = GL_FALSE
dim shared as GLboolean IS_GL_ARB_multitexture = GL_FALSE
dim shared as GLboolean IS_GL_ARB_transpose_matrix = GL_FALSE
dim shared as GLboolean IS_GL_ARB_multisample = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_env_add = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_cube_map = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_compression = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_border_clamp = GL_FALSE
dim shared as GLboolean IS_GL_ARB_point_parameters = GL_FALSE
dim shared as GLboolean IS_GL_ARB_vertex_blend = GL_FALSE
dim shared as GLboolean IS_GL_ARB_matrix_palette = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_env_combine = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_env_crossbar = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_env_dot3 = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_mirrored_repeat = GL_FALSE
dim shared as GLboolean IS_GL_ARB_depth_texture = GL_FALSE
dim shared as GLboolean IS_GL_ARB_shadow = GL_FALSE
dim shared as GLboolean IS_GL_ARB_shadow_ambient = GL_FALSE
dim shared as GLboolean IS_GL_ARB_window_pos = GL_FALSE
dim shared as GLboolean IS_GL_ARB_vertex_program = GL_FALSE
dim shared as GLboolean IS_GL_ARB_fragment_program = GL_FALSE
dim shared as GLboolean IS_GL_ARB_vertex_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_ARB_occlusion_query = GL_FALSE
dim shared as GLboolean IS_GL_ARB_shader_objects = GL_FALSE
dim shared as GLboolean IS_GL_ARB_vertex_shader = GL_FALSE
dim shared as GLboolean IS_GL_ARB_fragment_shader = GL_FALSE
dim shared as GLboolean IS_GL_ARB_shading_language_100 = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_non_power_of_two = GL_FALSE
dim shared as GLboolean IS_GL_ARB_point_sprite = GL_FALSE
dim shared as GLboolean IS_GL_ARB_fragment_program_shadow = GL_FALSE
dim shared as GLboolean IS_GL_ARB_draw_buffers = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_rectangle = GL_FALSE
dim shared as GLboolean IS_GL_ARB_color_buffer_float = GL_FALSE
dim shared as GLboolean IS_GL_ARB_half_float_pixel = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_float = GL_FALSE
dim shared as GLboolean IS_GL_ARB_pixel_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_ARB_depth_buffer_float = GL_FALSE
dim shared as GLboolean IS_GL_ARB_draw_instanced = GL_FALSE
dim shared as GLboolean IS_GL_ARB_framebuffer_object = GL_FALSE
dim shared as GLboolean IS_GL_ARB_framebuffer_sRGB = GL_FALSE
dim shared as GLboolean IS_GL_ARB_geometry_shader4 = GL_FALSE
dim shared as GLboolean IS_GL_ARB_half_float_vertex = GL_FALSE
dim shared as GLboolean IS_GL_ARB_instanced_arrays = GL_FALSE
dim shared as GLboolean IS_GL_ARB_map_buffer_range = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_compression_rgtc = GL_FALSE
dim shared as GLboolean IS_GL_ARB_texture_rg = GL_FALSE
dim shared as GLboolean IS_GL_ARB_vertex_array_object = GL_FALSE
dim shared as GLboolean IS_GL_EXT_abgr = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_color = GL_FALSE
dim shared as GLboolean IS_GL_EXT_polygon_offset = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture3D = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_filter4 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_subtexture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_copy_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_histogram = GL_FALSE
dim shared as GLboolean IS_GL_EXT_convolution = GL_FALSE
dim shared as GLboolean IS_GL_SGI_color_matrix = GL_FALSE
dim shared as GLboolean IS_GL_SGI_color_table = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_pixel_texture = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_pixel_texture = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture4D = GL_FALSE
dim shared as GLboolean IS_GL_SGI_texture_color_table = GL_FALSE
dim shared as GLboolean IS_GL_EXT_cmyka = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_object = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_detail_texture = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_sharpen_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_packed_pixels = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_lod = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_multisample = GL_FALSE
dim shared as GLboolean IS_GL_EXT_rescale_normal = GL_FALSE
dim shared as GLboolean IS_GL_EXT_vertex_array = GL_FALSE
dim shared as GLboolean IS_GL_EXT_misc_attribute = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_generate_mipmap = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_clipmap = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_shadow = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_edge_clamp = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_border_clamp = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_minmax = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_subtract = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_logic_op = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_interlace = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_pixel_tiles = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_select = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_sprite = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_multi_buffer = GL_FALSE
dim shared as GLboolean IS_GL_EXT_point_parameters = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_point_parameters = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_instruments = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_scale_bias = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_framezoom = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_tag_sample_buffer = GL_FALSE
dim shared as GLboolean IS_GL_FfdMaskSGIX = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_polynomial_ffd = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_reference_plane = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_flush_raster = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_depth_texture = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_fog_function = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_fog_offset = GL_FALSE
dim shared as GLboolean IS_GL_HP_image_transform = GL_FALSE
dim shared as GLboolean IS_GL_HP_convolution_border_modes = GL_FALSE
dim shared as GLboolean IS_GL_INGR_palette_buffer = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_add_env = GL_FALSE
dim shared as GLboolean IS_GL_EXT_color_subtable = GL_FALSE
dim shared as GLboolean IS_GL_PGI_vertex_hints = GL_FALSE
dim shared as GLboolean IS_GL_PGI_misc_hints = GL_FALSE
dim shared as GLboolean IS_GL_EXT_paletted_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_clip_volume_hint = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_list_priority = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_ir_instrument1 = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_calligraphic_fragment = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_lod_bias = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_shadow_ambient = GL_FALSE
dim shared as GLboolean IS_GL_EXT_index_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_index_material = GL_FALSE
dim shared as GLboolean IS_GL_EXT_index_func = GL_FALSE
dim shared as GLboolean IS_GL_EXT_index_array_formats = GL_FALSE
dim shared as GLboolean IS_GL_EXT_compiled_vertex_array = GL_FALSE
dim shared as GLboolean IS_GL_EXT_cull_vertex = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_ycrcb = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_fragment_lighting = GL_FALSE
dim shared as GLboolean IS_GL_IBM_rasterpos_clip = GL_FALSE
dim shared as GLboolean IS_GL_HP_texture_lighting = GL_FALSE
dim shared as GLboolean IS_GL_EXT_draw_range_elements = GL_FALSE
dim shared as GLboolean IS_GL_WIN_phong_shading = GL_FALSE
dim shared as GLboolean IS_GL_WIN_specular_fog = GL_FALSE
dim shared as GLboolean IS_GL_EXT_light_texture = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_blend_alpha_minmax = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_impact_pixel_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_bgra = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_async = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_async_pixel = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_async_histogram = GL_FALSE
dim shared as GLboolean IS_GL_INTEL_texture_scissor = GL_FALSE
dim shared as GLboolean IS_GL_INTEL_parallel_arrays = GL_FALSE
dim shared as GLboolean IS_GL_HP_occlusion_test = GL_FALSE
dim shared as GLboolean IS_GL_EXT_pixel_transform = GL_FALSE
dim shared as GLboolean IS_GL_EXT_pixel_transform_color_table = GL_FALSE
dim shared as GLboolean IS_GL_EXT_shared_texture_palette = GL_FALSE
dim shared as GLboolean IS_GL_EXT_separate_specular_color = GL_FALSE
dim shared as GLboolean IS_GL_EXT_secondary_color = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_perturb_normal = GL_FALSE
dim shared as GLboolean IS_GL_EXT_multi_draw_arrays = GL_FALSE
dim shared as GLboolean IS_GL_EXT_fog_coord = GL_FALSE
dim shared as GLboolean IS_GL_REND_screen_coordinates = GL_FALSE
dim shared as GLboolean IS_GL_EXT_coordinate_frame = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_env_combine = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_specular_vector = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_transform_hint = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_fog_scale = GL_FALSE
dim shared as GLboolean IS_GL_SUNX_constant_data = GL_FALSE
dim shared as GLboolean IS_GL_SUN_global_alpha = GL_FALSE
dim shared as GLboolean IS_GL_SUN_triangle_list = GL_FALSE
dim shared as GLboolean IS_GL_SUN_vertex = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_func_separate = GL_FALSE
dim shared as GLboolean IS_GL_INGR_color_clamp = GL_FALSE
dim shared as GLboolean IS_GL_INGR_interlace_read = GL_FALSE
dim shared as GLboolean IS_GL_EXT_stencil_wrap = GL_FALSE
dim shared as GLboolean IS_GL_EXT_422_pixels = GL_FALSE
dim shared as GLboolean IS_GL_NV_texgen_reflection = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_cube_map = GL_FALSE
dim shared as GLboolean IS_GL_SUN_convolution_border_modes = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_env_add = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_lod_bias = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_filter_anisotropic = GL_FALSE
dim shared as GLboolean IS_GL_EXT_vertex_weighting = GL_FALSE
dim shared as GLboolean IS_GL_NV_light_max_exponent = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_array_range = GL_FALSE
dim shared as GLboolean IS_GL_NV_register_combiners = GL_FALSE
dim shared as GLboolean IS_GL_NV_fog_distance = GL_FALSE
dim shared as GLboolean IS_GL_NV_texgen_emboss = GL_FALSE
dim shared as GLboolean IS_GL_NV_blend_square = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_env_combine4 = GL_FALSE
dim shared as GLboolean IS_GL_MESA_resize_buffers = GL_FALSE
dim shared as GLboolean IS_GL_MESA_window_pos = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_compression_s3tc = GL_FALSE
dim shared as GLboolean IS_GL_IBM_cull_vertex = GL_FALSE
dim shared as GLboolean IS_GL_IBM_multimode_draw_arrays = GL_FALSE
dim shared as GLboolean IS_GL_IBM_vertex_array_lists = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_subsample = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_ycrcb_subsample = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_ycrcba = GL_FALSE
dim shared as GLboolean IS_GL_SGI_depth_pass_instrument = GL_FALSE
dim shared as GLboolean IS_GL_3DFX_texture_compression_FXT1 = GL_FALSE
dim shared as GLboolean IS_GL_3DFX_multisample = GL_FALSE
dim shared as GLboolean IS_GL_3DFX_tbuffer = GL_FALSE
dim shared as GLboolean IS_GL_EXT_multisample = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_vertex_preclip = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_convolution_accuracy = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_resample = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_point_line_texgen = GL_FALSE
dim shared as GLboolean IS_GL_SGIS_texture_color_mask = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_env_dot3 = GL_FALSE
dim shared as GLboolean IS_GL_ATI_texture_mirror_once = GL_FALSE
dim shared as GLboolean IS_GL_NV_fence = GL_FALSE
dim shared as GLboolean IS_GL_IBM_texture_mirrored_repeat = GL_FALSE
dim shared as GLboolean IS_GL_NV_evaluators = GL_FALSE
dim shared as GLboolean IS_GL_NV_packed_depth_stencil = GL_FALSE
dim shared as GLboolean IS_GL_NV_register_combiners2 = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_compression_vtc = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_rectangle = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_shader = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_shader2 = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_array_range2 = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_program = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_coordinate_clamp = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_scalebias_hint = GL_FALSE
dim shared as GLboolean IS_GL_OML_interlace = GL_FALSE
dim shared as GLboolean IS_GL_OML_subsample = GL_FALSE
dim shared as GLboolean IS_GL_OML_resample = GL_FALSE
dim shared as GLboolean IS_GL_NV_copy_depth_to_color = GL_FALSE
dim shared as GLboolean IS_GL_ATI_envmap_bumpmap = GL_FALSE
dim shared as GLboolean IS_GL_ATI_fragment_shader = GL_FALSE
dim shared as GLboolean IS_GL_ATI_pn_triangles = GL_FALSE
dim shared as GLboolean IS_GL_ATI_vertex_array_object = GL_FALSE
dim shared as GLboolean IS_GL_EXT_vertex_shader = GL_FALSE
dim shared as GLboolean IS_GL_ATI_vertex_streams = GL_FALSE
dim shared as GLboolean IS_GL_ATI_element_array = GL_FALSE
dim shared as GLboolean IS_GL_SUN_mesh_array = GL_FALSE
dim shared as GLboolean IS_GL_SUN_slice_accum = GL_FALSE
dim shared as GLboolean IS_GL_NV_multisample_filter_hint = GL_FALSE
dim shared as GLboolean IS_GL_NV_depth_clamp = GL_FALSE
dim shared as GLboolean IS_GL_NV_occlusion_query = GL_FALSE
dim shared as GLboolean IS_GL_NV_point_sprite = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_shader3 = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_program1_1 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_shadow_funcs = GL_FALSE
dim shared as GLboolean IS_GL_EXT_stencil_two_side = GL_FALSE
dim shared as GLboolean IS_GL_ATI_text_fragment_shader = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_client_storage = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_element_array = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_fence = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_vertex_array_object = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_vertex_array_range = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_ycbcr_422 = GL_FALSE
dim shared as GLboolean IS_GL_S3__s3tc = GL_FALSE
dim shared as GLboolean IS_GL_ATI_draw_buffers = GL_FALSE
dim shared as GLboolean IS_GL_ATI_pixel_format_float = GL_FALSE
dim shared as GLboolean IS_GL_ATI_texture_env_combine3 = GL_FALSE
dim shared as GLboolean IS_GL_ATI_texture_float = GL_FALSE
dim shared as GLboolean IS_GL_NV_float_buffer = GL_FALSE
dim shared as GLboolean IS_GL_NV_fragment_program = GL_FALSE
dim shared as GLboolean IS_GL_NV_half_float = GL_FALSE
dim shared as GLboolean IS_GL_NV_pixel_data_range = GL_FALSE
dim shared as GLboolean IS_GL_NV_primitive_restart = GL_FALSE
dim shared as GLboolean IS_GL_NV_texture_expand_normal = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_program2 = GL_FALSE
dim shared as GLboolean IS_GL_ATI_map_object_buffer = GL_FALSE
dim shared as GLboolean IS_GL_ATI_separate_stencil = GL_FALSE
dim shared as GLboolean IS_GL_ATI_vertex_attrib_array_object = GL_FALSE
dim shared as GLboolean IS_GL_OES_read_format = GL_FALSE
dim shared as GLboolean IS_GL_EXT_depth_bounds_test = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_mirror_clamp = GL_FALSE
dim shared as GLboolean IS_GL_EXT_blend_equation_separate = GL_FALSE
dim shared as GLboolean IS_GL_MESA_pack_invert = GL_FALSE
dim shared as GLboolean IS_GL_MESA_ycbcr_texture = GL_FALSE
dim shared as GLboolean IS_GL_EXT_pixel_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_NV_fragment_program_option = GL_FALSE
dim shared as GLboolean IS_GL_NV_fragment_program2 = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_program2_option = GL_FALSE
dim shared as GLboolean IS_GL_NV_vertex_program3 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_framebuffer_object = GL_FALSE
dim shared as GLboolean IS_GL_GREMEDY_string_marker = GL_FALSE
dim shared as GLboolean IS_GL_EXT_packed_depth_stencil = GL_FALSE
dim shared as GLboolean IS_GL_EXT_stencil_clear_tag = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_sRGB = GL_FALSE
dim shared as GLboolean IS_GL_EXT_framebuffer_blit = GL_FALSE
dim shared as GLboolean IS_GL_EXT_framebuffer_multisample = GL_FALSE
dim shared as GLboolean IS_GL_MESAX_texture_stack = GL_FALSE
dim shared as GLboolean IS_GL_EXT_timer_query = GL_FALSE
dim shared as GLboolean IS_GL_EXT_gpu_program_parameters = GL_FALSE
dim shared as GLboolean IS_GL_APPLE_flush_buffer_range = GL_FALSE
dim shared as GLboolean IS_GL_EXT_gpu_shader4 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_draw_instanced = GL_FALSE
dim shared as GLboolean IS_GL_EXT_packed_float = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_array = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_compression_latc = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_compression_rgtc = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_shared_exponent = GL_FALSE
dim shared as GLboolean IS_GL_NV_depth_buffer_float = GL_FALSE
dim shared as GLboolean IS_GL_NV_framebuffer_multisample_coverage = GL_FALSE
dim shared as GLboolean IS_GL_EXT_framebuffer_sRGB = GL_FALSE
dim shared as GLboolean IS_GL_NV_geometry_shader4 = GL_FALSE
dim shared as GLboolean IS_GL_NV_parameter_buffer_object = GL_FALSE
dim shared as GLboolean IS_GL_EXT_draw_buffers2 = GL_FALSE
dim shared as GLboolean IS_GL_NV_transform_feedback = GL_FALSE
dim shared as GLboolean IS_GL_EXT_bindable_uniform = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_integer = GL_FALSE
dim shared as GLboolean IS_GL_GREMEDY_frame_terminator = GL_FALSE
dim shared as GLboolean IS_GL_NV_conditional_render = GL_FALSE
dim shared as GLboolean IS_GL_NV_present_video = GL_FALSE
dim shared as GLboolean IS_GL_EXT_transform_feedback = GL_FALSE
dim shared as GLboolean IS_GL_EXT_direct_state_access = GL_FALSE
dim shared as GLboolean IS_GL_EXT_vertex_array_bgra = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_swizzle = GL_FALSE
dim shared as GLboolean IS_GL_NV_explicit_multisample = GL_FALSE
dim shared as GLboolean IS_GL_NV_transform_feedback2 = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_select = GL_FALSE
dim shared as GLboolean IS_GL_INGR_blend_func_separate = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_depth_pass_instrument = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_igloo_interface = GL_FALSE
dim shared as GLboolean IS_GL_EXT_fragment_lighting = GL_FALSE
dim shared as GLboolean IS_GL_EXT_geometry_shader4 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_scene_marker = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_compression_dxt1 = GL_FALSE
dim shared as GLboolean IS_GL_EXT_texture_env = GL_FALSE
dim shared as GLboolean IS_GL_IBM_static_data = GL_FALSE
dim shared as GLboolean IS_GL_NV_gpu_program4 = GL_FALSE
dim shared as GLboolean IS_GL_OES_byte_coordinates = GL_FALSE
dim shared as GLboolean IS_GL_OES_compressed_paletted_texture = GL_FALSE
dim shared as GLboolean IS_GL_OES_single_precision = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_pixel_texture_bits = GL_FALSE
dim shared as GLboolean IS_GL_SGIX_texture_range = GL_FALSE

#ifdef __FB_WIN32__ ' WGL externsions
dim shared as GLboolean IS_GL_WGL_ARB_buffer_region
dim shared as GLboolean IS_GL_WGL_ARB_create_context = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_depth_float = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_digital_video_control = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_extensions_string = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_gamma = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_genlock = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_make_current_read = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_make_current_read = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_multisample = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_multisample = GL_FALSE
dim shared as GLboolean IS_GL_WGL_3DFX_multisample = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_pixel_format = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_pixel_format = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_pixel_format_float = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_render_texture = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ARB_pbuffer = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_pbuffer = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_image_buffer = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_swap_frame_lock = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_render_depth_texture = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_render_texture_rectangle = GL_FALSE
dim shared as GLboolean IS_GL_WGL_ATI_pixel_format_float = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_float_buffer = GL_FALSE
dim shared as GLboolean IS_GL_WGL_3DL_stereo_control = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_pixel_format_packed_float = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_framebuffer_sRGB = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_present_video = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_swap_group = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_gpu_affinity = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_display_color_table = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_extensions_string = GL_FALSE
dim shared as GLboolean IS_GL_WGL_EXT_swap_control = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_vertex_array_range = GL_FALSE
dim shared as GLboolean IS_GL_WGL_OML_sync_control = GL_FALSE
dim shared as GLboolean IS_GL_WGL_I3D_swap_frame_usage = GL_FALSE
dim shared as GLboolean IS_GL_WGL_NV_video_output = GL_FALSE
#else ' GLX extensions
dim shared as GLboolean IS_GL_GLX_VERSION_1_3 = GL_FALSE
dim shared as GLboolean IS_GL_GLX_VERSION_1_4 = GL_FALSE
dim shared as GLboolean IS_GL_GLX_ARB_multisample = GL_FALSE
dim shared as GLboolean IS_GL_GLX_ARB_fbconfig_float = GL_FALSE
dim shared as GLboolean IS_GL_GLX_ARB_create_context = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIS_multisample = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_visual_info = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGI_swap_control = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGI_video_sync = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGI_make_current_read = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_visual_rating = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_import_context = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_fbconfig = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_pbuffer = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGI_cushion = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_video_resize = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_swap_group = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_swap_barrier = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIS_blended_overlay = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIS_shared_multisample = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SUN_get_transparent_index = GL_FALSE
dim shared as GLboolean IS_GL_GLX_3DFX_multisample = GL_FALSE
dim shared as GLboolean IS_GL_GLX_MESA_copy_sub_buffer = GL_FALSE
dim shared as GLboolean IS_GL_GLX_MESA_pixmap_colormap = GL_FALSE
dim shared as GLboolean IS_GL_GLX_MESA_release_buffers = GL_FALSE
dim shared as GLboolean IS_GL_GLX_MESA_set_3dfx_mode = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_visual_select_group = GL_FALSE
dim shared as GLboolean IS_GL_GLX_OML_swap_method = GL_FALSE
dim shared as GLboolean IS_GL_GLX_OML_sync_control = GL_FALSE
dim shared as GLboolean IS_GL_GLX_NV_float_buffer = GL_FALSE
dim shared as GLboolean IS_GL_GLX_SGIX_hyperpipe = GL_FALSE
dim shared as GLboolean IS_GL_GLX_MESA_agp_offset = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_fbconfig_packed_float = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_framebuffer_sRGB = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_texture_from_pixmap = GL_FALSE
dim shared as GLboolean IS_GL_GLX_NV_present_video = GL_FALSE
dim shared as GLboolean IS_GL_GLX_NV_video_out = GL_FALSE
dim shared as GLboolean IS_GL_GLX_NV_swap_group = GL_FALSE
dim shared as GLboolean IS_GL_GLX_EXT_scene_marker = GL_FALSE
dim shared as GLboolean IS_GL_GLX_NV_video_output = GL_FALSE
#endif

dim shared as PFNGLBLENDCOLORPROC glBlendColor
dim shared as PFNGLBLENDEQUATIONPROC glBlendEquation
dim shared as PFNGLDRAWRANGEELEMENTSPROC glDrawRangeElements
dim shared as PFNGLTEXIMAGE3DPROC glTexImage3D
dim shared as PFNGLTEXSUBIMAGE3DPROC glTexSubImage3D
dim shared as PFNGLCOPYTEXSUBIMAGE3DPROC glCopyTexSubImage3D
dim shared as PFNGLACTIVETEXTUREPROC glActiveTexture
dim shared as PFNGLSAMPLECOVERAGEPROC glSampleCoverage
dim shared as PFNGLCOMPRESSEDTEXIMAGE3DPROC glCompressedTexImage3D
dim shared as PFNGLCOMPRESSEDTEXIMAGE2DPROC glCompressedTexImage2D
dim shared as PFNGLCOMPRESSEDTEXIMAGE1DPROC glCompressedTexImage1D
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC glCompressedTexSubImage3D
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC glCompressedTexSubImage2D
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC glCompressedTexSubImage1D
dim shared as PFNGLGETCOMPRESSEDTEXIMAGEPROC glGetCompressedTexImage
dim shared as PFNGLCLIENTACTIVETEXTUREPROC glClientActiveTexture
dim shared as PFNGLMULTITEXCOORD1DPROC glMultiTexCoord1d
dim shared as PFNGLMULTITEXCOORD1DVPROC glMultiTexCoord1dv
dim shared as PFNGLMULTITEXCOORD1FPROC glMultiTexCoord1f
dim shared as PFNGLMULTITEXCOORD1FVPROC glMultiTexCoord1fv
dim shared as PFNGLMULTITEXCOORD1IPROC glMultiTexCoord1i
dim shared as PFNGLMULTITEXCOORD1IVPROC glMultiTexCoord1iv
dim shared as PFNGLMULTITEXCOORD1SPROC glMultiTexCoord1s
dim shared as PFNGLMULTITEXCOORD1SVPROC glMultiTexCoord1sv
dim shared as PFNGLMULTITEXCOORD2DPROC glMultiTexCoord2d
dim shared as PFNGLMULTITEXCOORD2DVPROC glMultiTexCoord2dv
dim shared as PFNGLMULTITEXCOORD2FPROC glMultiTexCoord2f
dim shared as PFNGLMULTITEXCOORD2FVPROC glMultiTexCoord2fv
dim shared as PFNGLMULTITEXCOORD2IPROC glMultiTexCoord2i
dim shared as PFNGLMULTITEXCOORD2IVPROC glMultiTexCoord2iv
dim shared as PFNGLMULTITEXCOORD2SPROC glMultiTexCoord2s
dim shared as PFNGLMULTITEXCOORD2SVPROC glMultiTexCoord2sv
dim shared as PFNGLMULTITEXCOORD3DPROC glMultiTexCoord3d
dim shared as PFNGLMULTITEXCOORD3DVPROC glMultiTexCoord3dv
dim shared as PFNGLMULTITEXCOORD3FPROC glMultiTexCoord3f
dim shared as PFNGLMULTITEXCOORD3FVPROC glMultiTexCoord3fv
dim shared as PFNGLMULTITEXCOORD3IPROC glMultiTexCoord3i
dim shared as PFNGLMULTITEXCOORD3IVPROC glMultiTexCoord3iv
dim shared as PFNGLMULTITEXCOORD3SPROC glMultiTexCoord3s
dim shared as PFNGLMULTITEXCOORD3SVPROC glMultiTexCoord3sv
dim shared as PFNGLMULTITEXCOORD4DPROC glMultiTexCoord4d
dim shared as PFNGLMULTITEXCOORD4DVPROC glMultiTexCoord4dv
dim shared as PFNGLMULTITEXCOORD4FPROC glMultiTexCoord4f
dim shared as PFNGLMULTITEXCOORD4FVPROC glMultiTexCoord4fv
dim shared as PFNGLMULTITEXCOORD4IPROC glMultiTexCoord4i
dim shared as PFNGLMULTITEXCOORD4IVPROC glMultiTexCoord4iv
dim shared as PFNGLMULTITEXCOORD4SPROC glMultiTexCoord4s
dim shared as PFNGLMULTITEXCOORD4SVPROC glMultiTexCoord4sv
dim shared as PFNGLLOADTRANSPOSEMATRIXFPROC glLoadTransposeMatrixf
dim shared as PFNGLLOADTRANSPOSEMATRIXDPROC glLoadTransposeMatrixd
dim shared as PFNGLMULTTRANSPOSEMATRIXFPROC glMultTransposeMatrixf
dim shared as PFNGLMULTTRANSPOSEMATRIXDPROC glMultTransposeMatrixd
dim shared as PFNGLBLENDFUNCSEPARATEPROC glBlendFuncSeparate
dim shared as PFNGLMULTIDRAWARRAYSPROC glMultiDrawArrays
dim shared as PFNGLMULTIDRAWELEMENTSPROC glMultiDrawElements
dim shared as PFNGLPOINTPARAMETERFPROC glPointParameterf
dim shared as PFNGLPOINTPARAMETERFVPROC glPointParameterfv
dim shared as PFNGLPOINTPARAMETERIPROC glPointParameteri
dim shared as PFNGLPOINTPARAMETERIVPROC glPointParameteriv
dim shared as PFNGLFOGCOORDFPROC glFogCoordf
dim shared as PFNGLFOGCOORDFVPROC glFogCoordfv
dim shared as PFNGLFOGCOORDDPROC glFogCoordd
dim shared as PFNGLFOGCOORDDVPROC glFogCoorddv
dim shared as PFNGLFOGCOORDPOINTERPROC glFogCoordPointer
dim shared as PFNGLSECONDARYCOLOR3BPROC glSecondaryColor3b
dim shared as PFNGLSECONDARYCOLOR3BVPROC glSecondaryColor3bv
dim shared as PFNGLSECONDARYCOLOR3DPROC glSecondaryColor3d
dim shared as PFNGLSECONDARYCOLOR3DVPROC glSecondaryColor3dv
dim shared as PFNGLSECONDARYCOLOR3FPROC glSecondaryColor3f
dim shared as PFNGLSECONDARYCOLOR3FVPROC glSecondaryColor3fv
dim shared as PFNGLSECONDARYCOLOR3IPROC glSecondaryColor3i
dim shared as PFNGLSECONDARYCOLOR3IVPROC glSecondaryColor3iv
dim shared as PFNGLSECONDARYCOLOR3SPROC glSecondaryColor3s
dim shared as PFNGLSECONDARYCOLOR3SVPROC glSecondaryColor3sv
dim shared as PFNGLSECONDARYCOLOR3UBPROC glSecondaryColor3ub
dim shared as PFNGLSECONDARYCOLOR3UBVPROC glSecondaryColor3ubv
dim shared as PFNGLSECONDARYCOLOR3UIPROC glSecondaryColor3ui
dim shared as PFNGLSECONDARYCOLOR3UIVPROC glSecondaryColor3uiv
dim shared as PFNGLSECONDARYCOLOR3USPROC glSecondaryColor3us
dim shared as PFNGLSECONDARYCOLOR3USVPROC glSecondaryColor3usv
dim shared as PFNGLSECONDARYCOLORPOINTERPROC glSecondaryColorPointer
dim shared as PFNGLWINDOWPOS2DPROC glWindowPos2d
dim shared as PFNGLWINDOWPOS2DVPROC glWindowPos2dv
dim shared as PFNGLWINDOWPOS2FPROC glWindowPos2f
dim shared as PFNGLWINDOWPOS2FVPROC glWindowPos2fv
dim shared as PFNGLWINDOWPOS2IPROC glWindowPos2i
dim shared as PFNGLWINDOWPOS2IVPROC glWindowPos2iv
dim shared as PFNGLWINDOWPOS2SPROC glWindowPos2s
dim shared as PFNGLWINDOWPOS2SVPROC glWindowPos2sv
dim shared as PFNGLWINDOWPOS3DPROC glWindowPos3d
dim shared as PFNGLWINDOWPOS3DVPROC glWindowPos3dv
dim shared as PFNGLWINDOWPOS3FPROC glWindowPos3f
dim shared as PFNGLWINDOWPOS3FVPROC glWindowPos3fv
dim shared as PFNGLWINDOWPOS3IPROC glWindowPos3i
dim shared as PFNGLWINDOWPOS3IVPROC glWindowPos3iv
dim shared as PFNGLWINDOWPOS3SPROC glWindowPos3s
dim shared as PFNGLWINDOWPOS3SVPROC glWindowPos3sv
dim shared as PFNGLGENQUERIESPROC glGenQueries
dim shared as PFNGLDELETEQUERIESPROC glDeleteQueries
dim shared as PFNGLISQUERYPROC glIsQuery
dim shared as PFNGLBEGINQUERYPROC glBeginQuery
dim shared as PFNGLENDQUERYPROC glEndQuery
dim shared as PFNGLGETQUERYIVPROC glGetQueryiv
dim shared as PFNGLGETQUERYOBJECTIVPROC glGetQueryObjectiv
dim shared as PFNGLGETQUERYOBJECTUIVPROC glGetQueryObjectuiv
dim shared as PFNGLBINDBUFFERPROC glBindBuffer
dim shared as PFNGLDELETEBUFFERSPROC glDeleteBuffers
dim shared as PFNGLGENBUFFERSPROC glGenBuffers
dim shared as PFNGLISBUFFERPROC glIsBuffer
dim shared as PFNGLBUFFERDATAPROC glBufferData
dim shared as PFNGLBUFFERSUBDATAPROC glBufferSubData
dim shared as PFNGLGETBUFFERSUBDATAPROC glGetBufferSubData
dim shared as PFNGLMAPBUFFERPROC glMapBuffer
dim shared as PFNGLUNMAPBUFFERPROC glUnmapBuffer
dim shared as PFNGLGETBUFFERPARAMETERIVPROC glGetBufferParameteriv
dim shared as PFNGLGETBUFFERPOINTERVPROC glGetBufferPointerv
dim shared as PFNGLBLENDEQUATIONSEPARATEPROC glBlendEquationSeparate
dim shared as PFNGLDRAWBUFFERSPROC glDrawBuffers
dim shared as PFNGLSTENCILOPSEPARATEPROC glStencilOpSeparate
dim shared as PFNGLSTENCILFUNCSEPARATEPROC glStencilFuncSeparate
dim shared as PFNGLSTENCILMASKSEPARATEPROC glStencilMaskSeparate
dim shared as PFNGLATTACHSHADERPROC glAttachShader
dim shared as PFNGLBINDATTRIBLOCATIONPROC glBindAttribLocation
dim shared as PFNGLCOMPILESHADERPROC glCompileShader
dim shared as PFNGLCREATEPROGRAMPROC glCreateProgram
dim shared as PFNGLCREATESHADERPROC glCreateShader
dim shared as PFNGLDELETEPROGRAMPROC glDeleteProgram
dim shared as PFNGLDELETESHADERPROC glDeleteShader
dim shared as PFNGLDETACHSHADERPROC glDetachShader
dim shared as PFNGLDISABLEVERTEXATTRIBARRAYPROC glDisableVertexAttribArray
dim shared as PFNGLENABLEVERTEXATTRIBARRAYPROC glEnableVertexAttribArray
dim shared as PFNGLGETACTIVEATTRIBPROC glGetActiveAttrib
dim shared as PFNGLGETACTIVEUNIFORMPROC glGetActiveUniform
dim shared as PFNGLGETATTACHEDSHADERSPROC glGetAttachedShaders
dim shared as PFNGLGETATTRIBLOCATIONPROC glGetAttribLocation
dim shared as PFNGLGETPROGRAMIVPROC glGetProgramiv
dim shared as PFNGLGETPROGRAMINFOLOGPROC glGetProgramInfoLog
dim shared as PFNGLGETSHADERIVPROC glGetShaderiv
dim shared as PFNGLGETSHADERINFOLOGPROC glGetShaderInfoLog
dim shared as PFNGLGETSHADERSOURCEPROC glGetShaderSource
dim shared as PFNGLGETUNIFORMLOCATIONPROC glGetUniformLocation
dim shared as PFNGLGETUNIFORMFVPROC glGetUniformfv
dim shared as PFNGLGETUNIFORMIVPROC glGetUniformiv
dim shared as PFNGLGETVERTEXATTRIBDVPROC glGetVertexAttribdv
dim shared as PFNGLGETVERTEXATTRIBFVPROC glGetVertexAttribfv
dim shared as PFNGLGETVERTEXATTRIBIVPROC glGetVertexAttribiv
dim shared as PFNGLGETVERTEXATTRIBPOINTERVPROC glGetVertexAttribPointerv
dim shared as PFNGLISPROGRAMPROC glIsProgram
dim shared as PFNGLISSHADERPROC glIsShader
dim shared as PFNGLLINKPROGRAMPROC glLinkProgram
dim shared as PFNGLSHADERSOURCEPROC glShaderSource
dim shared as PFNGLUSEPROGRAMPROC glUseProgram
dim shared as PFNGLUNIFORM1FPROC glUniform1f
dim shared as PFNGLUNIFORM2FPROC glUniform2f
dim shared as PFNGLUNIFORM3FPROC glUniform3f
dim shared as PFNGLUNIFORM4FPROC glUniform4f
dim shared as PFNGLUNIFORM1IPROC glUniform1i
dim shared as PFNGLUNIFORM2IPROC glUniform2i
dim shared as PFNGLUNIFORM3IPROC glUniform3i
dim shared as PFNGLUNIFORM4IPROC glUniform4i
dim shared as PFNGLUNIFORM1FVPROC glUniform1fv
dim shared as PFNGLUNIFORM2FVPROC glUniform2fv
dim shared as PFNGLUNIFORM3FVPROC glUniform3fv
dim shared as PFNGLUNIFORM4FVPROC glUniform4fv
dim shared as PFNGLUNIFORM1IVPROC glUniform1iv
dim shared as PFNGLUNIFORM2IVPROC glUniform2iv
dim shared as PFNGLUNIFORM3IVPROC glUniform3iv
dim shared as PFNGLUNIFORM4IVPROC glUniform4iv
dim shared as PFNGLUNIFORMMATRIX2FVPROC glUniformMatrix2fv
dim shared as PFNGLUNIFORMMATRIX3FVPROC glUniformMatrix3fv
dim shared as PFNGLUNIFORMMATRIX4FVPROC glUniformMatrix4fv
dim shared as PFNGLVALIDATEPROGRAMPROC glValidateProgram
dim shared as PFNGLVERTEXATTRIB1DPROC glVertexAttrib1d
dim shared as PFNGLVERTEXATTRIB1DVPROC glVertexAttrib1dv
dim shared as PFNGLVERTEXATTRIB1FPROC glVertexAttrib1f
dim shared as PFNGLVERTEXATTRIB1FVPROC glVertexAttrib1fv
dim shared as PFNGLVERTEXATTRIB1SPROC glVertexAttrib1s
dim shared as PFNGLVERTEXATTRIB1SVPROC glVertexAttrib1sv
dim shared as PFNGLVERTEXATTRIB2DPROC glVertexAttrib2d
dim shared as PFNGLVERTEXATTRIB2DVPROC glVertexAttrib2dv
dim shared as PFNGLVERTEXATTRIB2FPROC glVertexAttrib2f
dim shared as PFNGLVERTEXATTRIB2FVPROC glVertexAttrib2fv
dim shared as PFNGLVERTEXATTRIB2SPROC glVertexAttrib2s
dim shared as PFNGLVERTEXATTRIB2SVPROC glVertexAttrib2sv
dim shared as PFNGLVERTEXATTRIB3DPROC glVertexAttrib3d
dim shared as PFNGLVERTEXATTRIB3DVPROC glVertexAttrib3dv
dim shared as PFNGLVERTEXATTRIB3FPROC glVertexAttrib3f
dim shared as PFNGLVERTEXATTRIB3FVPROC glVertexAttrib3fv
dim shared as PFNGLVERTEXATTRIB3SPROC glVertexAttrib3s
dim shared as PFNGLVERTEXATTRIB3SVPROC glVertexAttrib3sv
dim shared as PFNGLVERTEXATTRIB4NBVPROC glVertexAttrib4Nbv
dim shared as PFNGLVERTEXATTRIB4NIVPROC glVertexAttrib4Niv
dim shared as PFNGLVERTEXATTRIB4NSVPROC glVertexAttrib4Nsv
dim shared as PFNGLVERTEXATTRIB4NUBPROC glVertexAttrib4Nub
dim shared as PFNGLVERTEXATTRIB4NUBVPROC glVertexAttrib4Nubv
dim shared as PFNGLVERTEXATTRIB4NUIVPROC glVertexAttrib4Nuiv
dim shared as PFNGLVERTEXATTRIB4NUSVPROC glVertexAttrib4Nusv
dim shared as PFNGLVERTEXATTRIB4BVPROC glVertexAttrib4bv
dim shared as PFNGLVERTEXATTRIB4DPROC glVertexAttrib4d
dim shared as PFNGLVERTEXATTRIB4DVPROC glVertexAttrib4dv
dim shared as PFNGLVERTEXATTRIB4FPROC glVertexAttrib4f
dim shared as PFNGLVERTEXATTRIB4FVPROC glVertexAttrib4fv
dim shared as PFNGLVERTEXATTRIB4IVPROC glVertexAttrib4iv
dim shared as PFNGLVERTEXATTRIB4SPROC glVertexAttrib4s
dim shared as PFNGLVERTEXATTRIB4SVPROC glVertexAttrib4sv
dim shared as PFNGLVERTEXATTRIB4UBVPROC glVertexAttrib4ubv
dim shared as PFNGLVERTEXATTRIB4UIVPROC glVertexAttrib4uiv
dim shared as PFNGLVERTEXATTRIB4USVPROC glVertexAttrib4usv
dim shared as PFNGLVERTEXATTRIBPOINTERPROC glVertexAttribPointer
dim shared as PFNGLUNIFORMMATRIX2X3FVPROC glUniformMatrix2x3fv
dim shared as PFNGLUNIFORMMATRIX3X2FVPROC glUniformMatrix3x2fv
dim shared as PFNGLUNIFORMMATRIX2X4FVPROC glUniformMatrix2x4fv
dim shared as PFNGLUNIFORMMATRIX4X2FVPROC glUniformMatrix4x2fv
dim shared as PFNGLUNIFORMMATRIX3X4FVPROC glUniformMatrix3x4fv
dim shared as PFNGLUNIFORMMATRIX4X3FVPROC glUniformMatrix4x3fv
dim shared as PFNGLCOLORMASKIPROC glColorMaski
dim shared as PFNGLGETBOOLEANI_VPROC glGetBooleani_v
dim shared as PFNGLGETINTEGERI_VPROC glGetIntegeri_v
dim shared as PFNGLENABLEIPROC glEnablei
dim shared as PFNGLDISABLEIPROC glDisablei
dim shared as PFNGLISENABLEDIPROC glIsEnabledi
dim shared as PFNGLBEGINTRANSFORMFEEDBACKPROC glBeginTransformFeedback
dim shared as PFNGLENDTRANSFORMFEEDBACKPROC glEndTransformFeedback
dim shared as PFNGLBINDBUFFERRANGEPROC glBindBufferRange
dim shared as PFNGLBINDBUFFERBASEPROC glBindBufferBase
dim shared as PFNGLTRANSFORMFEEDBACKVARYINGSPROC glTransformFeedbackVaryings
dim shared as PFNGLGETTRANSFORMFEEDBACKVARYINGPROC glGetTransformFeedbackVarying
dim shared as PFNGLCLAMPCOLORPROC glClampColor
dim shared as PFNGLBEGINCONDITIONALRENDERPROC glBeginConditionalRender
dim shared as PFNGLENDCONDITIONALRENDERPROC glEndConditionalRender
dim shared as PFNGLVERTEXATTRIBIPOINTERPROC glVertexAttribIPointer
dim shared as PFNGLGETVERTEXATTRIBIIVPROC glGetVertexAttribIiv
dim shared as PFNGLGETVERTEXATTRIBIUIVPROC glGetVertexAttribIuiv
dim shared as PFNGLVERTEXATTRIBI1IPROC glVertexAttribI1i
dim shared as PFNGLVERTEXATTRIBI2IPROC glVertexAttribI2i
dim shared as PFNGLVERTEXATTRIBI3IPROC glVertexAttribI3i
dim shared as PFNGLVERTEXATTRIBI4IPROC glVertexAttribI4i
dim shared as PFNGLVERTEXATTRIBI1UIPROC glVertexAttribI1ui
dim shared as PFNGLVERTEXATTRIBI2UIPROC glVertexAttribI2ui
dim shared as PFNGLVERTEXATTRIBI3UIPROC glVertexAttribI3ui
dim shared as PFNGLVERTEXATTRIBI4UIPROC glVertexAttribI4ui
dim shared as PFNGLVERTEXATTRIBI1IVPROC glVertexAttribI1iv
dim shared as PFNGLVERTEXATTRIBI2IVPROC glVertexAttribI2iv
dim shared as PFNGLVERTEXATTRIBI3IVPROC glVertexAttribI3iv
dim shared as PFNGLVERTEXATTRIBI4IVPROC glVertexAttribI4iv
dim shared as PFNGLVERTEXATTRIBI1UIVPROC glVertexAttribI1uiv
dim shared as PFNGLVERTEXATTRIBI2UIVPROC glVertexAttribI2uiv
dim shared as PFNGLVERTEXATTRIBI3UIVPROC glVertexAttribI3uiv
dim shared as PFNGLVERTEXATTRIBI4UIVPROC glVertexAttribI4uiv
dim shared as PFNGLVERTEXATTRIBI4BVPROC glVertexAttribI4bv
dim shared as PFNGLVERTEXATTRIBI4SVPROC glVertexAttribI4sv
dim shared as PFNGLVERTEXATTRIBI4UBVPROC glVertexAttribI4ubv
dim shared as PFNGLVERTEXATTRIBI4USVPROC glVertexAttribI4usv
dim shared as PFNGLGETUNIFORMUIVPROC glGetUniformuiv
dim shared as PFNGLBINDFRAGDATALOCATIONPROC glBindFragDataLocation
dim shared as PFNGLGETFRAGDATALOCATIONPROC glGetFragDataLocation
dim shared as PFNGLUNIFORM1UIPROC glUniform1ui
dim shared as PFNGLUNIFORM2UIPROC glUniform2ui
dim shared as PFNGLUNIFORM3UIPROC glUniform3ui
dim shared as PFNGLUNIFORM4UIPROC glUniform4ui
dim shared as PFNGLUNIFORM1UIVPROC glUniform1uiv
dim shared as PFNGLUNIFORM2UIVPROC glUniform2uiv
dim shared as PFNGLUNIFORM3UIVPROC glUniform3uiv
dim shared as PFNGLUNIFORM4UIVPROC glUniform4uiv
dim shared as PFNGLTEXPARAMETERIIVPROC glTexParameterIiv
dim shared as PFNGLTEXPARAMETERIUIVPROC glTexParameterIuiv
dim shared as PFNGLGETTEXPARAMETERIIVPROC glGetTexParameterIiv
dim shared as PFNGLGETTEXPARAMETERIUIVPROC glGetTexParameterIuiv
dim shared as PFNGLCLEARBUFFERIVPROC glClearBufferiv
dim shared as PFNGLCLEARBUFFERUIVPROC glClearBufferuiv
dim shared as PFNGLCLEARBUFFERFVPROC glClearBufferfv
dim shared as PFNGLCLEARBUFFERFIPROC glClearBufferfi
dim shared as PFNGLGETSTRINGIPROC glGetStringi
dim shared as PFNGLISRENDERBUFFERPROC glIsRenderbuffer
dim shared as PFNGLBINDRENDERBUFFERPROC glBindRenderbuffer
dim shared as PFNGLDELETERENDERBUFFERSPROC glDeleteRenderbuffers
dim shared as PFNGLGENRENDERBUFFERSPROC glGenRenderbuffers
dim shared as PFNGLRENDERBUFFERSTORAGEPROC glRenderbufferStorage
dim shared as PFNGLGETRENDERBUFFERPARAMETERIVPROC glGetRenderbufferParameteriv
dim shared as PFNGLISFRAMEBUFFERPROC glIsFramebuffer
dim shared as PFNGLBINDFRAMEBUFFERPROC glBindFramebuffer
dim shared as PFNGLDELETEFRAMEBUFFERSPROC glDeleteFramebuffers
dim shared as PFNGLGENFRAMEBUFFERSPROC glGenFramebuffers
dim shared as PFNGLCHECKFRAMEBUFFERSTATUSPROC glCheckFramebufferStatus
dim shared as PFNGLFRAMEBUFFERTEXTURE1DPROC glFramebufferTexture1D
dim shared as PFNGLFRAMEBUFFERTEXTURE2DPROC glFramebufferTexture2D
dim shared as PFNGLFRAMEBUFFERTEXTURE3DPROC glFramebufferTexture3D
dim shared as PFNGLFRAMEBUFFERRENDERBUFFERPROC glFramebufferRenderbuffer
dim shared as PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC glGetFramebufferAttachmentParameteriv
dim shared as PFNGLGENERATEMIPMAPPROC glGenerateMipmap
dim shared as PFNGLBLITFRAMEBUFFERPROC glBlitFramebuffer
dim shared as PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC glRenderbufferStorageMultisample
dim shared as PFNGLFRAMEBUFFERTEXTURELAYERPROC glFramebufferTextureLayer
dim shared as PFNGLMAPBUFFERRANGEPROC glMapBufferRange
dim shared as PFNGLFLUSHMAPPEDBUFFERRANGEPROC glFlushMappedBufferRange
dim shared as PFNGLBINDVERTEXARRAYPROC glBindVertexArray
dim shared as PFNGLDELETEVERTEXARRAYSPROC glDeleteVertexArrays
dim shared as PFNGLGENVERTEXARRAYSPROC glGenVertexArrays
dim shared as PFNGLISVERTEXARRAYPROC glIsVertexArray
dim shared as PFNGLDRAWARRAYSINSTANCEDPROC glDrawArraysInstanced
dim shared as PFNGLDRAWELEMENTSINSTANCEDPROC glDrawElementsInstanced
dim shared as PFNGLTEXBUFFERPROC glTexBuffer
dim shared as PFNGLPRIMITIVERESTARTINDEXPROC glPrimitiveRestartIndex
dim shared as PFNGLCOPYBUFFERSUBDATAPROC glCopyBufferSubData
dim shared as PFNGLGETUNIFORMINDICESPROC glGetUniformIndices
dim shared as PFNGLGETACTIVEUNIFORMSIVPROC glGetActiveUniformsiv
dim shared as PFNGLGETACTIVEUNIFORMNAMEPROC glGetActiveUniformName
dim shared as PFNGLGETUNIFORMBLOCKINDEXPROC glGetUniformBlockIndex
dim shared as PFNGLGETACTIVEUNIFORMBLOCKIVPROC glGetActiveUniformBlockiv
dim shared as PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC glGetActiveUniformBlockName
dim shared as PFNGLUNIFORMBLOCKBINDINGPROC glUniformBlockBinding
dim shared as PFNGLDRAWELEMENTSBASEVERTEXPROC glDrawElementsBaseVertex
dim shared as PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC glDrawRangeElementsBaseVertex
dim shared as PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC glDrawElementsInstancedBaseVertex
dim shared as PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC glMultiDrawElementsBaseVertex
dim shared as PFNGLPROVOKINGVERTEXPROC glProvokingVertex
dim shared as PFNGLFENCESYNCPROC glFenceSync
dim shared as PFNGLISSYNCPROC glIsSync
dim shared as PFNGLDELETESYNCPROC glDeleteSync
dim shared as PFNGLCLIENTWAITSYNCPROC glClientWaitSync
dim shared as PFNGLWAITSYNCPROC glWaitSync
dim shared as PFNGLGETINTEGER64VPROC glGetInteger64v
dim shared as PFNGLGETSYNCIVPROC glGetSynciv
dim shared as PFNGLGETINTEGER64I_VPROC glGetInteger64i_v
dim shared as PFNGLGETBUFFERPARAMETERI64VPROC glGetBufferParameteri64v
dim shared as PFNGLFRAMEBUFFERTEXTUREPROC glFramebufferTexture
dim shared as PFNGLTEXIMAGE2DMULTISAMPLEPROC glTexImage2DMultisample
dim shared as PFNGLTEXIMAGE3DMULTISAMPLEPROC glTexImage3DMultisample
dim shared as PFNGLGETMULTISAMPLEFVPROC glGetMultisamplefv
dim shared as PFNGLSAMPLEMASKIPROC glSampleMaski
dim shared as PFNGLBINDFRAGDATALOCATIONINDEXEDPROC glBindFragDataLocationIndexed
dim shared as PFNGLGETFRAGDATAINDEXPROC glGetFragDataIndex
dim shared as PFNGLGENSAMPLERSPROC glGenSamplers
dim shared as PFNGLDELETESAMPLERSPROC glDeleteSamplers
dim shared as PFNGLISSAMPLERPROC glIsSampler
dim shared as PFNGLBINDSAMPLERPROC glBindSampler
dim shared as PFNGLSAMPLERPARAMETERIPROC glSamplerParameteri
dim shared as PFNGLSAMPLERPARAMETERIVPROC glSamplerParameteriv
dim shared as PFNGLSAMPLERPARAMETERFPROC glSamplerParameterf
dim shared as PFNGLSAMPLERPARAMETERFVPROC glSamplerParameterfv
dim shared as PFNGLSAMPLERPARAMETERIIVPROC glSamplerParameterIiv
dim shared as PFNGLSAMPLERPARAMETERIUIVPROC glSamplerParameterIuiv
dim shared as PFNGLGETSAMPLERPARAMETERIVPROC glGetSamplerParameteriv
dim shared as PFNGLGETSAMPLERPARAMETERIIVPROC glGetSamplerParameterIiv
dim shared as PFNGLGETSAMPLERPARAMETERFVPROC glGetSamplerParameterfv
dim shared as PFNGLGETSAMPLERPARAMETERIUIVPROC glGetSamplerParameterIuiv
dim shared as PFNGLQUERYCOUNTERPROC glQueryCounter
dim shared as PFNGLGETQUERYOBJECTI64VPROC glGetQueryObjecti64v
dim shared as PFNGLGETQUERYOBJECTUI64VPROC glGetQueryObjectui64v
dim shared as PFNGLVERTEXATTRIBDIVISORPROC glVertexAttribDivisor
dim shared as PFNGLVERTEXATTRIBP1UIPROC glVertexAttribP1ui
dim shared as PFNGLVERTEXATTRIBP1UIVPROC glVertexAttribP1uiv
dim shared as PFNGLVERTEXATTRIBP2UIPROC glVertexAttribP2ui
dim shared as PFNGLVERTEXATTRIBP2UIVPROC glVertexAttribP2uiv
dim shared as PFNGLVERTEXATTRIBP3UIPROC glVertexAttribP3ui
dim shared as PFNGLVERTEXATTRIBP3UIVPROC glVertexAttribP3uiv
dim shared as PFNGLVERTEXATTRIBP4UIPROC glVertexAttribP4ui
dim shared as PFNGLVERTEXATTRIBP4UIVPROC glVertexAttribP4uiv
dim shared as PFNGLVERTEXP2UIPROC glVertexP2ui
dim shared as PFNGLVERTEXP2UIVPROC glVertexP2uiv
dim shared as PFNGLVERTEXP3UIPROC glVertexP3ui
dim shared as PFNGLVERTEXP3UIVPROC glVertexP3uiv
dim shared as PFNGLVERTEXP4UIPROC glVertexP4ui
dim shared as PFNGLVERTEXP4UIVPROC glVertexP4uiv
dim shared as PFNGLTEXCOORDP1UIPROC glTexCoordP1ui
dim shared as PFNGLTEXCOORDP1UIVPROC glTexCoordP1uiv
dim shared as PFNGLTEXCOORDP2UIPROC glTexCoordP2ui
dim shared as PFNGLTEXCOORDP2UIVPROC glTexCoordP2uiv
dim shared as PFNGLTEXCOORDP3UIPROC glTexCoordP3ui
dim shared as PFNGLTEXCOORDP3UIVPROC glTexCoordP3uiv
dim shared as PFNGLTEXCOORDP4UIPROC glTexCoordP4ui
dim shared as PFNGLTEXCOORDP4UIVPROC glTexCoordP4uiv
dim shared as PFNGLMULTITEXCOORDP1UIPROC glMultiTexCoordP1ui
dim shared as PFNGLMULTITEXCOORDP1UIVPROC glMultiTexCoordP1uiv
dim shared as PFNGLMULTITEXCOORDP2UIPROC glMultiTexCoordP2ui
dim shared as PFNGLMULTITEXCOORDP2UIVPROC glMultiTexCoordP2uiv
dim shared as PFNGLMULTITEXCOORDP3UIPROC glMultiTexCoordP3ui
dim shared as PFNGLMULTITEXCOORDP3UIVPROC glMultiTexCoordP3uiv
dim shared as PFNGLMULTITEXCOORDP4UIPROC glMultiTexCoordP4ui
dim shared as PFNGLMULTITEXCOORDP4UIVPROC glMultiTexCoordP4uiv
dim shared as PFNGLNORMALP3UIPROC glNormalP3ui
dim shared as PFNGLNORMALP3UIVPROC glNormalP3uiv
dim shared as PFNGLCOLORP3UIPROC glColorP3ui
dim shared as PFNGLCOLORP3UIVPROC glColorP3uiv
dim shared as PFNGLCOLORP4UIPROC glColorP4ui
dim shared as PFNGLCOLORP4UIVPROC glColorP4uiv
dim shared as PFNGLSECONDARYCOLORP3UIPROC glSecondaryColorP3ui
dim shared as PFNGLSECONDARYCOLORP3UIVPROC glSecondaryColorP3uiv
dim shared as PFNGLMINSAMPLESHADINGPROC glMinSampleShading
dim shared as PFNGLBLENDEQUATIONIPROC glBlendEquationi
dim shared as PFNGLBLENDEQUATIONSEPARATEIPROC glBlendEquationSeparatei
dim shared as PFNGLBLENDFUNCIPROC glBlendFunci
dim shared as PFNGLBLENDFUNCSEPARATEIPROC glBlendFuncSeparatei
dim shared as PFNGLDRAWARRAYSINDIRECTPROC glDrawArraysIndirect
dim shared as PFNGLDRAWELEMENTSINDIRECTPROC glDrawElementsIndirect
dim shared as PFNGLUNIFORM1DPROC glUniform1d
dim shared as PFNGLUNIFORM2DPROC glUniform2d
dim shared as PFNGLUNIFORM3DPROC glUniform3d
dim shared as PFNGLUNIFORM4DPROC glUniform4d
dim shared as PFNGLUNIFORM1DVPROC glUniform1dv
dim shared as PFNGLUNIFORM2DVPROC glUniform2dv
dim shared as PFNGLUNIFORM3DVPROC glUniform3dv
dim shared as PFNGLUNIFORM4DVPROC glUniform4dv
dim shared as PFNGLUNIFORMMATRIX2DVPROC glUniformMatrix2dv
dim shared as PFNGLUNIFORMMATRIX3DVPROC glUniformMatrix3dv
dim shared as PFNGLUNIFORMMATRIX4DVPROC glUniformMatrix4dv
dim shared as PFNGLUNIFORMMATRIX2X3DVPROC glUniformMatrix2x3dv
dim shared as PFNGLUNIFORMMATRIX2X4DVPROC glUniformMatrix2x4dv
dim shared as PFNGLUNIFORMMATRIX3X2DVPROC glUniformMatrix3x2dv
dim shared as PFNGLUNIFORMMATRIX3X4DVPROC glUniformMatrix3x4dv
dim shared as PFNGLUNIFORMMATRIX4X2DVPROC glUniformMatrix4x2dv
dim shared as PFNGLUNIFORMMATRIX4X3DVPROC glUniformMatrix4x3dv
dim shared as PFNGLGETUNIFORMDVPROC glGetUniformdv
dim shared as PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC glGetSubroutineUniformLocation
dim shared as PFNGLGETSUBROUTINEINDEXPROC glGetSubroutineIndex
dim shared as PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC glGetActiveSubroutineUniformiv
dim shared as PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC glGetActiveSubroutineUniformName
dim shared as PFNGLGETACTIVESUBROUTINENAMEPROC glGetActiveSubroutineName
dim shared as PFNGLUNIFORMSUBROUTINESUIVPROC glUniformSubroutinesuiv
dim shared as PFNGLGETUNIFORMSUBROUTINEUIVPROC glGetUniformSubroutineuiv
dim shared as PFNGLGETPROGRAMSTAGEIVPROC glGetProgramStageiv
dim shared as PFNGLPATCHPARAMETERIPROC glPatchParameteri
dim shared as PFNGLPATCHPARAMETERFVPROC glPatchParameterfv
dim shared as PFNGLBINDTRANSFORMFEEDBACKPROC glBindTransformFeedback
dim shared as PFNGLDELETETRANSFORMFEEDBACKSPROC glDeleteTransformFeedbacks
dim shared as PFNGLGENTRANSFORMFEEDBACKSPROC glGenTransformFeedbacks
dim shared as PFNGLISTRANSFORMFEEDBACKPROC glIsTransformFeedback
dim shared as PFNGLPAUSETRANSFORMFEEDBACKPROC glPauseTransformFeedback
dim shared as PFNGLRESUMETRANSFORMFEEDBACKPROC glResumeTransformFeedback
dim shared as PFNGLDRAWTRANSFORMFEEDBACKPROC glDrawTransformFeedback
dim shared as PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC glDrawTransformFeedbackStream
dim shared as PFNGLBEGINQUERYINDEXEDPROC glBeginQueryIndexed
dim shared as PFNGLENDQUERYINDEXEDPROC glEndQueryIndexed
dim shared as PFNGLGETQUERYINDEXEDIVPROC glGetQueryIndexediv
dim shared as PFNGLRELEASESHADERCOMPILERPROC glReleaseShaderCompiler
dim shared as PFNGLSHADERBINARYPROC glShaderBinary
dim shared as PFNGLGETSHADERPRECISIONFORMATPROC glGetShaderPrecisionFormat
dim shared as PFNGLDEPTHRANGEFPROC glDepthRangef
dim shared as PFNGLCLEARDEPTHFPROC glClearDepthf
dim shared as PFNGLGETPROGRAMBINARYPROC glGetProgramBinary
dim shared as PFNGLPROGRAMBINARYPROC glProgramBinary
dim shared as PFNGLPROGRAMPARAMETERIPROC glProgramParameteri
dim shared as PFNGLUSEPROGRAMSTAGESPROC glUseProgramStages
dim shared as PFNGLACTIVESHADERPROGRAMPROC glActiveShaderProgram
dim shared as PFNGLCREATESHADERPROGRAMVPROC glCreateShaderProgramv
dim shared as PFNGLBINDPROGRAMPIPELINEPROC glBindProgramPipeline
dim shared as PFNGLDELETEPROGRAMPIPELINESPROC glDeleteProgramPipelines
dim shared as PFNGLGENPROGRAMPIPELINESPROC glGenProgramPipelines
dim shared as PFNGLISPROGRAMPIPELINEPROC glIsProgramPipeline
dim shared as PFNGLGETPROGRAMPIPELINEIVPROC glGetProgramPipelineiv
dim shared as PFNGLPROGRAMUNIFORM1IPROC glProgramUniform1i
dim shared as PFNGLPROGRAMUNIFORM1IVPROC glProgramUniform1iv
dim shared as PFNGLPROGRAMUNIFORM1FPROC glProgramUniform1f
dim shared as PFNGLPROGRAMUNIFORM1FVPROC glProgramUniform1fv
dim shared as PFNGLPROGRAMUNIFORM1DPROC glProgramUniform1d
dim shared as PFNGLPROGRAMUNIFORM1DVPROC glProgramUniform1dv
dim shared as PFNGLPROGRAMUNIFORM1UIPROC glProgramUniform1ui
dim shared as PFNGLPROGRAMUNIFORM1UIVPROC glProgramUniform1uiv
dim shared as PFNGLPROGRAMUNIFORM2IPROC glProgramUniform2i
dim shared as PFNGLPROGRAMUNIFORM2IVPROC glProgramUniform2iv
dim shared as PFNGLPROGRAMUNIFORM2FPROC glProgramUniform2f
dim shared as PFNGLPROGRAMUNIFORM2FVPROC glProgramUniform2fv
dim shared as PFNGLPROGRAMUNIFORM2DPROC glProgramUniform2d
dim shared as PFNGLPROGRAMUNIFORM2DVPROC glProgramUniform2dv
dim shared as PFNGLPROGRAMUNIFORM2UIPROC glProgramUniform2ui
dim shared as PFNGLPROGRAMUNIFORM2UIVPROC glProgramUniform2uiv
dim shared as PFNGLPROGRAMUNIFORM3IPROC glProgramUniform3i
dim shared as PFNGLPROGRAMUNIFORM3IVPROC glProgramUniform3iv
dim shared as PFNGLPROGRAMUNIFORM3FPROC glProgramUniform3f
dim shared as PFNGLPROGRAMUNIFORM3FVPROC glProgramUniform3fv
dim shared as PFNGLPROGRAMUNIFORM3DPROC glProgramUniform3d
dim shared as PFNGLPROGRAMUNIFORM3DVPROC glProgramUniform3dv
dim shared as PFNGLPROGRAMUNIFORM3UIPROC glProgramUniform3ui
dim shared as PFNGLPROGRAMUNIFORM3UIVPROC glProgramUniform3uiv
dim shared as PFNGLPROGRAMUNIFORM4IPROC glProgramUniform4i
dim shared as PFNGLPROGRAMUNIFORM4IVPROC glProgramUniform4iv
dim shared as PFNGLPROGRAMUNIFORM4FPROC glProgramUniform4f
dim shared as PFNGLPROGRAMUNIFORM4FVPROC glProgramUniform4fv
dim shared as PFNGLPROGRAMUNIFORM4DPROC glProgramUniform4d
dim shared as PFNGLPROGRAMUNIFORM4DVPROC glProgramUniform4dv
dim shared as PFNGLPROGRAMUNIFORM4UIPROC glProgramUniform4ui
dim shared as PFNGLPROGRAMUNIFORM4UIVPROC glProgramUniform4uiv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2FVPROC glProgramUniformMatrix2fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3FVPROC glProgramUniformMatrix3fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4FVPROC glProgramUniformMatrix4fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2DVPROC glProgramUniformMatrix2dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3DVPROC glProgramUniformMatrix3dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4DVPROC glProgramUniformMatrix4dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC glProgramUniformMatrix2x3fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC glProgramUniformMatrix3x2fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC glProgramUniformMatrix2x4fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC glProgramUniformMatrix4x2fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC glProgramUniformMatrix3x4fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC glProgramUniformMatrix4x3fv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC glProgramUniformMatrix2x3dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC glProgramUniformMatrix3x2dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC glProgramUniformMatrix2x4dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC glProgramUniformMatrix4x2dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC glProgramUniformMatrix3x4dv
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC glProgramUniformMatrix4x3dv
dim shared as PFNGLVALIDATEPROGRAMPIPELINEPROC glValidateProgramPipeline
dim shared as PFNGLGETPROGRAMPIPELINEINFOLOGPROC glGetProgramPipelineInfoLog
dim shared as PFNGLVERTEXATTRIBL1DPROC glVertexAttribL1d
dim shared as PFNGLVERTEXATTRIBL2DPROC glVertexAttribL2d
dim shared as PFNGLVERTEXATTRIBL3DPROC glVertexAttribL3d
dim shared as PFNGLVERTEXATTRIBL4DPROC glVertexAttribL4d
dim shared as PFNGLVERTEXATTRIBL1DVPROC glVertexAttribL1dv
dim shared as PFNGLVERTEXATTRIBL2DVPROC glVertexAttribL2dv
dim shared as PFNGLVERTEXATTRIBL3DVPROC glVertexAttribL3dv
dim shared as PFNGLVERTEXATTRIBL4DVPROC glVertexAttribL4dv
dim shared as PFNGLVERTEXATTRIBLPOINTERPROC glVertexAttribLPointer
dim shared as PFNGLGETVERTEXATTRIBLDVPROC glGetVertexAttribLdv
dim shared as PFNGLVIEWPORTARRAYVPROC glViewportArrayv
dim shared as PFNGLVIEWPORTINDEXEDFPROC glViewportIndexedf
dim shared as PFNGLVIEWPORTINDEXEDFVPROC glViewportIndexedfv
dim shared as PFNGLSCISSORARRAYVPROC glScissorArrayv
dim shared as PFNGLSCISSORINDEXEDPROC glScissorIndexed
dim shared as PFNGLSCISSORINDEXEDVPROC glScissorIndexedv
dim shared as PFNGLDEPTHRANGEARRAYVPROC glDepthRangeArrayv
dim shared as PFNGLDEPTHRANGEINDEXEDPROC glDepthRangeIndexed
dim shared as PFNGLGETFLOATI_VPROC glGetFloati_v
dim shared as PFNGLGETDOUBLEI_VPROC glGetDoublei_v
dim shared as PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC glDrawArraysInstancedBaseInstance
dim shared as PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC glDrawElementsInstancedBaseInstance
dim shared as PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC glDrawElementsInstancedBaseVertexBaseInstance
dim shared as PFNGLGETINTERNALFORMATI64VPROC glGetInternalformati64v
dim shared as PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC glGetActiveAtomicCounterBufferiv
dim shared as PFNGLBINDIMAGETEXTUREPROC glBindImageTexture
dim shared as PFNGLMEMORYBARRIERPROC glMemoryBarrier
dim shared as PFNGLTEXSTORAGE1DPROC glTexStorage1D
dim shared as PFNGLTEXSTORAGE2DPROC glTexStorage2D
dim shared as PFNGLTEXSTORAGE3DPROC glTexStorage3D
dim shared as PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC glDrawTransformFeedbackInstanced
dim shared as PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC glDrawTransformFeedbackStreamInstanced
dim shared as PFNGLCLEARBUFFERDATAPROC glClearBufferData
dim shared as PFNGLCLEARBUFFERSUBDATAPROC glClearBufferSubData
dim shared as PFNGLDISPATCHCOMPUTEPROC glDispatchCompute
dim shared as PFNGLDISPATCHCOMPUTEINDIRECTPROC glDispatchComputeIndirect
dim shared as PFNGLCOPYIMAGESUBDATAPROC glCopyImageSubData
dim shared as PFNGLFRAMEBUFFERPARAMETERIPROC glFramebufferParameteri
dim shared as PFNGLGETFRAMEBUFFERPARAMETERIVPROC glGetFramebufferParameteriv
dim shared as PFNGLINVALIDATETEXSUBIMAGEPROC glInvalidateTexSubImage
dim shared as PFNGLINVALIDATETEXIMAGEPROC glInvalidateTexImage
dim shared as PFNGLINVALIDATEBUFFERSUBDATAPROC glInvalidateBufferSubData
dim shared as PFNGLINVALIDATEBUFFERDATAPROC glInvalidateBufferData
dim shared as PFNGLINVALIDATEFRAMEBUFFERPROC glInvalidateFramebuffer
dim shared as PFNGLINVALIDATESUBFRAMEBUFFERPROC glInvalidateSubFramebuffer
dim shared as PFNGLMULTIDRAWARRAYSINDIRECTPROC glMultiDrawArraysIndirect
dim shared as PFNGLMULTIDRAWELEMENTSINDIRECTPROC glMultiDrawElementsIndirect
dim shared as PFNGLGETPROGRAMINTERFACEIVPROC glGetProgramInterfaceiv
dim shared as PFNGLGETPROGRAMRESOURCEINDEXPROC glGetProgramResourceIndex
dim shared as PFNGLGETPROGRAMRESOURCENAMEPROC glGetProgramResourceName
dim shared as PFNGLGETPROGRAMRESOURCEIVPROC glGetProgramResourceiv
dim shared as PFNGLGETPROGRAMRESOURCELOCATIONPROC glGetProgramResourceLocation
dim shared as PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC glGetProgramResourceLocationIndex
dim shared as PFNGLSHADERSTORAGEBLOCKBINDINGPROC glShaderStorageBlockBinding
dim shared as PFNGLTEXBUFFERRANGEPROC glTexBufferRange
dim shared as PFNGLTEXSTORAGE2DMULTISAMPLEPROC glTexStorage2DMultisample
dim shared as PFNGLTEXSTORAGE3DMULTISAMPLEPROC glTexStorage3DMultisample
dim shared as PFNGLTEXTUREVIEWPROC glTextureView
dim shared as PFNGLBINDVERTEXBUFFERPROC glBindVertexBuffer
dim shared as PFNGLVERTEXATTRIBFORMATPROC glVertexAttribFormat
dim shared as PFNGLVERTEXATTRIBIFORMATPROC glVertexAttribIFormat
dim shared as PFNGLVERTEXATTRIBLFORMATPROC glVertexAttribLFormat
dim shared as PFNGLVERTEXATTRIBBINDINGPROC glVertexAttribBinding
dim shared as PFNGLVERTEXBINDINGDIVISORPROC glVertexBindingDivisor
dim shared as PFNGLDEBUGMESSAGECONTROLPROC glDebugMessageControl
dim shared as PFNGLDEBUGMESSAGEINSERTPROC glDebugMessageInsert
dim shared as PFNGLDEBUGMESSAGECALLBACKPROC glDebugMessageCallback
dim shared as PFNGLGETDEBUGMESSAGELOGPROC glGetDebugMessageLog
dim shared as PFNGLPUSHDEBUGGROUPPROC glPushDebugGroup
dim shared as PFNGLPOPDEBUGGROUPPROC glPopDebugGroup
dim shared as PFNGLOBJECTLABELPROC glObjectLabel
dim shared as PFNGLGETOBJECTLABELPROC glGetObjectLabel
dim shared as PFNGLOBJECTPTRLABELPROC glObjectPtrLabel
dim shared as PFNGLGETOBJECTPTRLABELPROC glGetObjectPtrLabel
dim shared as PFNGLBUFFERSTORAGEPROC glBufferStorage
dim shared as PFNGLCLEARTEXIMAGEPROC glClearTexImage
dim shared as PFNGLCLEARTEXSUBIMAGEPROC glClearTexSubImage
dim shared as PFNGLBINDBUFFERSBASEPROC glBindBuffersBase
dim shared as PFNGLBINDBUFFERSRANGEPROC glBindBuffersRange
dim shared as PFNGLBINDTEXTURESPROC glBindTextures
dim shared as PFNGLBINDSAMPLERSPROC glBindSamplers
dim shared as PFNGLBINDIMAGETEXTURESPROC glBindImageTextures
dim shared as PFNGLBINDVERTEXBUFFERSPROC glBindVertexBuffers
dim shared as PFNGLGETTEXTUREHANDLEARBPROC glGetTextureHandleARB
dim shared as PFNGLGETTEXTURESAMPLERHANDLEARBPROC glGetTextureSamplerHandleARB
dim shared as PFNGLMAKETEXTUREHANDLERESIDENTARBPROC glMakeTextureHandleResidentARB
dim shared as PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC glMakeTextureHandleNonResidentARB
dim shared as PFNGLGETIMAGEHANDLEARBPROC glGetImageHandleARB
dim shared as PFNGLMAKEIMAGEHANDLERESIDENTARBPROC glMakeImageHandleResidentARB
dim shared as PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC glMakeImageHandleNonResidentARB
dim shared as PFNGLUNIFORMHANDLEUI64ARBPROC glUniformHandleui64ARB
dim shared as PFNGLUNIFORMHANDLEUI64VARBPROC glUniformHandleui64vARB
dim shared as PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC glProgramUniformHandleui64ARB
dim shared as PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC glProgramUniformHandleui64vARB
dim shared as PFNGLISTEXTUREHANDLERESIDENTARBPROC glIsTextureHandleResidentARB
dim shared as PFNGLISIMAGEHANDLERESIDENTARBPROC glIsImageHandleResidentARB
dim shared as PFNGLVERTEXATTRIBL1UI64ARBPROC glVertexAttribL1ui64ARB
dim shared as PFNGLVERTEXATTRIBL1UI64VARBPROC glVertexAttribL1ui64vARB
dim shared as PFNGLGETVERTEXATTRIBLUI64VARBPROC glGetVertexAttribLui64vARB
dim shared as PFNGLCREATESYNCFROMCLEVENTARBPROC glCreateSyncFromCLeventARB
dim shared as PFNGLCLAMPCOLORARBPROC glClampColorARB
dim shared as PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC glDispatchComputeGroupSizeARB
dim shared as PFNGLDEBUGMESSAGECONTROLARBPROC glDebugMessageControlARB
dim shared as PFNGLDEBUGMESSAGEINSERTARBPROC glDebugMessageInsertARB
dim shared as PFNGLDEBUGMESSAGECALLBACKARBPROC glDebugMessageCallbackARB
dim shared as PFNGLGETDEBUGMESSAGELOGARBPROC glGetDebugMessageLogARB
dim shared as PFNGLDRAWBUFFERSARBPROC glDrawBuffersARB
dim shared as PFNGLBLENDEQUATIONIARBPROC glBlendEquationiARB
dim shared as PFNGLBLENDEQUATIONSEPARATEIARBPROC glBlendEquationSeparateiARB
dim shared as PFNGLBLENDFUNCIARBPROC glBlendFunciARB
dim shared as PFNGLBLENDFUNCSEPARATEIARBPROC glBlendFuncSeparateiARB
dim shared as PFNGLDRAWARRAYSINSTANCEDARBPROC glDrawArraysInstancedARB
dim shared as PFNGLDRAWELEMENTSINSTANCEDARBPROC glDrawElementsInstancedARB
dim shared as PFNGLPROGRAMSTRINGARBPROC glProgramStringARB
dim shared as PFNGLBINDPROGRAMARBPROC glBindProgramARB
dim shared as PFNGLDELETEPROGRAMSARBPROC glDeleteProgramsARB
dim shared as PFNGLGENPROGRAMSARBPROC glGenProgramsARB
dim shared as PFNGLPROGRAMENVPARAMETER4DARBPROC glProgramEnvParameter4dARB
dim shared as PFNGLPROGRAMENVPARAMETER4DVARBPROC glProgramEnvParameter4dvARB
dim shared as PFNGLPROGRAMENVPARAMETER4FARBPROC glProgramEnvParameter4fARB
dim shared as PFNGLPROGRAMENVPARAMETER4FVARBPROC glProgramEnvParameter4fvARB
dim shared as PFNGLPROGRAMLOCALPARAMETER4DARBPROC glProgramLocalParameter4dARB
dim shared as PFNGLPROGRAMLOCALPARAMETER4DVARBPROC glProgramLocalParameter4dvARB
dim shared as PFNGLPROGRAMLOCALPARAMETER4FARBPROC glProgramLocalParameter4fARB
dim shared as PFNGLPROGRAMLOCALPARAMETER4FVARBPROC glProgramLocalParameter4fvARB
dim shared as PFNGLGETPROGRAMENVPARAMETERDVARBPROC glGetProgramEnvParameterdvARB
dim shared as PFNGLGETPROGRAMENVPARAMETERFVARBPROC glGetProgramEnvParameterfvARB
dim shared as PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC glGetProgramLocalParameterdvARB
dim shared as PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC glGetProgramLocalParameterfvARB
dim shared as PFNGLGETPROGRAMIVARBPROC glGetProgramivARB
dim shared as PFNGLGETPROGRAMSTRINGARBPROC glGetProgramStringARB
dim shared as PFNGLISPROGRAMARBPROC glIsProgramARB
dim shared as PFNGLPROGRAMPARAMETERIARBPROC glProgramParameteriARB
dim shared as PFNGLFRAMEBUFFERTEXTUREARBPROC glFramebufferTextureARB
dim shared as PFNGLFRAMEBUFFERTEXTURELAYERARBPROC glFramebufferTextureLayerARB
dim shared as PFNGLFRAMEBUFFERTEXTUREFACEARBPROC glFramebufferTextureFaceARB
dim shared as PFNGLCOLORTABLEPROC glColorTable
dim shared as PFNGLCOLORTABLEPARAMETERFVPROC glColorTableParameterfv
dim shared as PFNGLCOLORTABLEPARAMETERIVPROC glColorTableParameteriv
dim shared as PFNGLCOPYCOLORTABLEPROC glCopyColorTable
dim shared as PFNGLGETCOLORTABLEPROC glGetColorTable
dim shared as PFNGLGETCOLORTABLEPARAMETERFVPROC glGetColorTableParameterfv
dim shared as PFNGLGETCOLORTABLEPARAMETERIVPROC glGetColorTableParameteriv
dim shared as PFNGLCOLORSUBTABLEPROC glColorSubTable
dim shared as PFNGLCOPYCOLORSUBTABLEPROC glCopyColorSubTable
dim shared as PFNGLCONVOLUTIONFILTER1DPROC glConvolutionFilter1D
dim shared as PFNGLCONVOLUTIONFILTER2DPROC glConvolutionFilter2D
dim shared as PFNGLCONVOLUTIONPARAMETERFPROC glConvolutionParameterf
dim shared as PFNGLCONVOLUTIONPARAMETERFVPROC glConvolutionParameterfv
dim shared as PFNGLCONVOLUTIONPARAMETERIPROC glConvolutionParameteri
dim shared as PFNGLCONVOLUTIONPARAMETERIVPROC glConvolutionParameteriv
dim shared as PFNGLCOPYCONVOLUTIONFILTER1DPROC glCopyConvolutionFilter1D
dim shared as PFNGLCOPYCONVOLUTIONFILTER2DPROC glCopyConvolutionFilter2D
dim shared as PFNGLGETCONVOLUTIONFILTERPROC glGetConvolutionFilter
dim shared as PFNGLGETCONVOLUTIONPARAMETERFVPROC glGetConvolutionParameterfv
dim shared as PFNGLGETCONVOLUTIONPARAMETERIVPROC glGetConvolutionParameteriv
dim shared as PFNGLGETSEPARABLEFILTERPROC glGetSeparableFilter
dim shared as PFNGLSEPARABLEFILTER2DPROC glSeparableFilter2D
dim shared as PFNGLGETHISTOGRAMPROC glGetHistogram
dim shared as PFNGLGETHISTOGRAMPARAMETERFVPROC glGetHistogramParameterfv
dim shared as PFNGLGETHISTOGRAMPARAMETERIVPROC glGetHistogramParameteriv
dim shared as PFNGLGETMINMAXPROC glGetMinmax
dim shared as PFNGLGETMINMAXPARAMETERFVPROC glGetMinmaxParameterfv
dim shared as PFNGLGETMINMAXPARAMETERIVPROC glGetMinmaxParameteriv
dim shared as PFNGLHISTOGRAMPROC glHistogram
dim shared as PFNGLMINMAXPROC glMinmax
dim shared as PFNGLRESETHISTOGRAMPROC glResetHistogram
dim shared as PFNGLRESETMINMAXPROC glResetMinmax
dim shared as PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC glMultiDrawArraysIndirectCountARB
dim shared as PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC glMultiDrawElementsIndirectCountARB
dim shared as PFNGLVERTEXATTRIBDIVISORARBPROC glVertexAttribDivisorARB
dim shared as PFNGLGETINTERNALFORMATIVPROC glGetInternalformativ
dim shared as PFNGLCURRENTPALETTEMATRIXARBPROC glCurrentPaletteMatrixARB
dim shared as PFNGLMATRIXINDEXUBVARBPROC glMatrixIndexubvARB
dim shared as PFNGLMATRIXINDEXUSVARBPROC glMatrixIndexusvARB
dim shared as PFNGLMATRIXINDEXUIVARBPROC glMatrixIndexuivARB
dim shared as PFNGLMATRIXINDEXPOINTERARBPROC glMatrixIndexPointerARB
dim shared as PFNGLSAMPLECOVERAGEARBPROC glSampleCoverageARB
dim shared as PFNGLACTIVETEXTUREARBPROC glActiveTextureARB
dim shared as PFNGLCLIENTACTIVETEXTUREARBPROC glClientActiveTextureARB
dim shared as PFNGLMULTITEXCOORD1DARBPROC glMultiTexCoord1dARB
dim shared as PFNGLMULTITEXCOORD1DVARBPROC glMultiTexCoord1dvARB
dim shared as PFNGLMULTITEXCOORD1FARBPROC glMultiTexCoord1fARB
dim shared as PFNGLMULTITEXCOORD1FVARBPROC glMultiTexCoord1fvARB
dim shared as PFNGLMULTITEXCOORD1IARBPROC glMultiTexCoord1iARB
dim shared as PFNGLMULTITEXCOORD1IVARBPROC glMultiTexCoord1ivARB
dim shared as PFNGLMULTITEXCOORD1SARBPROC glMultiTexCoord1sARB
dim shared as PFNGLMULTITEXCOORD1SVARBPROC glMultiTexCoord1svARB
dim shared as PFNGLMULTITEXCOORD2DARBPROC glMultiTexCoord2dARB
dim shared as PFNGLMULTITEXCOORD2DVARBPROC glMultiTexCoord2dvARB
dim shared as PFNGLMULTITEXCOORD2FARBPROC glMultiTexCoord2fARB
dim shared as PFNGLMULTITEXCOORD2FVARBPROC glMultiTexCoord2fvARB
dim shared as PFNGLMULTITEXCOORD2IARBPROC glMultiTexCoord2iARB
dim shared as PFNGLMULTITEXCOORD2IVARBPROC glMultiTexCoord2ivARB
dim shared as PFNGLMULTITEXCOORD2SARBPROC glMultiTexCoord2sARB
dim shared as PFNGLMULTITEXCOORD2SVARBPROC glMultiTexCoord2svARB
dim shared as PFNGLMULTITEXCOORD3DARBPROC glMultiTexCoord3dARB
dim shared as PFNGLMULTITEXCOORD3DVARBPROC glMultiTexCoord3dvARB
dim shared as PFNGLMULTITEXCOORD3FARBPROC glMultiTexCoord3fARB
dim shared as PFNGLMULTITEXCOORD3FVARBPROC glMultiTexCoord3fvARB
dim shared as PFNGLMULTITEXCOORD3IARBPROC glMultiTexCoord3iARB
dim shared as PFNGLMULTITEXCOORD3IVARBPROC glMultiTexCoord3ivARB
dim shared as PFNGLMULTITEXCOORD3SARBPROC glMultiTexCoord3sARB
dim shared as PFNGLMULTITEXCOORD3SVARBPROC glMultiTexCoord3svARB
dim shared as PFNGLMULTITEXCOORD4DARBPROC glMultiTexCoord4dARB
dim shared as PFNGLMULTITEXCOORD4DVARBPROC glMultiTexCoord4dvARB
dim shared as PFNGLMULTITEXCOORD4FARBPROC glMultiTexCoord4fARB
dim shared as PFNGLMULTITEXCOORD4FVARBPROC glMultiTexCoord4fvARB
dim shared as PFNGLMULTITEXCOORD4IARBPROC glMultiTexCoord4iARB
dim shared as PFNGLMULTITEXCOORD4IVARBPROC glMultiTexCoord4ivARB
dim shared as PFNGLMULTITEXCOORD4SARBPROC glMultiTexCoord4sARB
dim shared as PFNGLMULTITEXCOORD4SVARBPROC glMultiTexCoord4svARB
dim shared as PFNGLGENQUERIESARBPROC glGenQueriesARB
dim shared as PFNGLDELETEQUERIESARBPROC glDeleteQueriesARB
dim shared as PFNGLISQUERYARBPROC glIsQueryARB
dim shared as PFNGLBEGINQUERYARBPROC glBeginQueryARB
dim shared as PFNGLENDQUERYARBPROC glEndQueryARB
dim shared as PFNGLGETQUERYIVARBPROC glGetQueryivARB
dim shared as PFNGLGETQUERYOBJECTIVARBPROC glGetQueryObjectivARB
dim shared as PFNGLGETQUERYOBJECTUIVARBPROC glGetQueryObjectuivARB
dim shared as PFNGLPOINTPARAMETERFARBPROC glPointParameterfARB
dim shared as PFNGLPOINTPARAMETERFVARBPROC glPointParameterfvARB
dim shared as PFNGLGETGRAPHICSRESETSTATUSARBPROC glGetGraphicsResetStatusARB
dim shared as PFNGLGETNTEXIMAGEARBPROC glGetnTexImageARB
dim shared as PFNGLREADNPIXELSARBPROC glReadnPixelsARB
dim shared as PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC glGetnCompressedTexImageARB
dim shared as PFNGLGETNUNIFORMFVARBPROC glGetnUniformfvARB
dim shared as PFNGLGETNUNIFORMIVARBPROC glGetnUniformivARB
dim shared as PFNGLGETNUNIFORMUIVARBPROC glGetnUniformuivARB
dim shared as PFNGLGETNUNIFORMDVARBPROC glGetnUniformdvARB
dim shared as PFNGLGETNMAPDVARBPROC glGetnMapdvARB
dim shared as PFNGLGETNMAPFVARBPROC glGetnMapfvARB
dim shared as PFNGLGETNMAPIVARBPROC glGetnMapivARB
dim shared as PFNGLGETNPIXELMAPFVARBPROC glGetnPixelMapfvARB
dim shared as PFNGLGETNPIXELMAPUIVARBPROC glGetnPixelMapuivARB
dim shared as PFNGLGETNPIXELMAPUSVARBPROC glGetnPixelMapusvARB
dim shared as PFNGLGETNPOLYGONSTIPPLEARBPROC glGetnPolygonStippleARB
dim shared as PFNGLGETNCOLORTABLEARBPROC glGetnColorTableARB
dim shared as PFNGLGETNCONVOLUTIONFILTERARBPROC glGetnConvolutionFilterARB
dim shared as PFNGLGETNSEPARABLEFILTERARBPROC glGetnSeparableFilterARB
dim shared as PFNGLGETNHISTOGRAMARBPROC glGetnHistogramARB
dim shared as PFNGLGETNMINMAXARBPROC glGetnMinmaxARB
dim shared as PFNGLMINSAMPLESHADINGARBPROC glMinSampleShadingARB
dim shared as PFNGLDELETEOBJECTARBPROC glDeleteObjectARB
dim shared as PFNGLGETHANDLEARBPROC glGetHandleARB
dim shared as PFNGLDETACHOBJECTARBPROC glDetachObjectARB
dim shared as PFNGLCREATESHADEROBJECTARBPROC glCreateShaderObjectARB
dim shared as PFNGLSHADERSOURCEARBPROC glShaderSourceARB
dim shared as PFNGLCOMPILESHADERARBPROC glCompileShaderARB
dim shared as PFNGLCREATEPROGRAMOBJECTARBPROC glCreateProgramObjectARB
dim shared as PFNGLATTACHOBJECTARBPROC glAttachObjectARB
dim shared as PFNGLLINKPROGRAMARBPROC glLinkProgramARB
dim shared as PFNGLUSEPROGRAMOBJECTARBPROC glUseProgramObjectARB
dim shared as PFNGLVALIDATEPROGRAMARBPROC glValidateProgramARB
dim shared as PFNGLUNIFORM1FARBPROC glUniform1fARB
dim shared as PFNGLUNIFORM2FARBPROC glUniform2fARB
dim shared as PFNGLUNIFORM3FARBPROC glUniform3fARB
dim shared as PFNGLUNIFORM4FARBPROC glUniform4fARB
dim shared as PFNGLUNIFORM1IARBPROC glUniform1iARB
dim shared as PFNGLUNIFORM2IARBPROC glUniform2iARB
dim shared as PFNGLUNIFORM3IARBPROC glUniform3iARB
dim shared as PFNGLUNIFORM4IARBPROC glUniform4iARB
dim shared as PFNGLUNIFORM1FVARBPROC glUniform1fvARB
dim shared as PFNGLUNIFORM2FVARBPROC glUniform2fvARB
dim shared as PFNGLUNIFORM3FVARBPROC glUniform3fvARB
dim shared as PFNGLUNIFORM4FVARBPROC glUniform4fvARB
dim shared as PFNGLUNIFORM1IVARBPROC glUniform1ivARB
dim shared as PFNGLUNIFORM2IVARBPROC glUniform2ivARB
dim shared as PFNGLUNIFORM3IVARBPROC glUniform3ivARB
dim shared as PFNGLUNIFORM4IVARBPROC glUniform4ivARB
dim shared as PFNGLUNIFORMMATRIX2FVARBPROC glUniformMatrix2fvARB
dim shared as PFNGLUNIFORMMATRIX3FVARBPROC glUniformMatrix3fvARB
dim shared as PFNGLUNIFORMMATRIX4FVARBPROC glUniformMatrix4fvARB
dim shared as PFNGLGETOBJECTPARAMETERFVARBPROC glGetObjectParameterfvARB
dim shared as PFNGLGETOBJECTPARAMETERIVARBPROC glGetObjectParameterivARB
dim shared as PFNGLGETINFOLOGARBPROC glGetInfoLogARB
dim shared as PFNGLGETATTACHEDOBJECTSARBPROC glGetAttachedObjectsARB
dim shared as PFNGLGETUNIFORMLOCATIONARBPROC glGetUniformLocationARB
dim shared as PFNGLGETACTIVEUNIFORMARBPROC glGetActiveUniformARB
dim shared as PFNGLGETUNIFORMFVARBPROC glGetUniformfvARB
dim shared as PFNGLGETUNIFORMIVARBPROC glGetUniformivARB
dim shared as PFNGLGETSHADERSOURCEARBPROC glGetShaderSourceARB
dim shared as PFNGLNAMEDSTRINGARBPROC glNamedStringARB
dim shared as PFNGLDELETENAMEDSTRINGARBPROC glDeleteNamedStringARB
dim shared as PFNGLCOMPILESHADERINCLUDEARBPROC glCompileShaderIncludeARB
dim shared as PFNGLISNAMEDSTRINGARBPROC glIsNamedStringARB
dim shared as PFNGLGETNAMEDSTRINGARBPROC glGetNamedStringARB
dim shared as PFNGLGETNAMEDSTRINGIVARBPROC glGetNamedStringivARB
dim shared as PFNGLTEXPAGECOMMITMENTARBPROC glTexPageCommitmentARB
dim shared as PFNGLTEXBUFFERARBPROC glTexBufferARB
dim shared as PFNGLCOMPRESSEDTEXIMAGE3DARBPROC glCompressedTexImage3DARB
dim shared as PFNGLCOMPRESSEDTEXIMAGE2DARBPROC glCompressedTexImage2DARB
dim shared as PFNGLCOMPRESSEDTEXIMAGE1DARBPROC glCompressedTexImage1DARB
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC glCompressedTexSubImage3DARB
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC glCompressedTexSubImage2DARB
dim shared as PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC glCompressedTexSubImage1DARB
dim shared as PFNGLGETCOMPRESSEDTEXIMAGEARBPROC glGetCompressedTexImageARB
dim shared as PFNGLLOADTRANSPOSEMATRIXFARBPROC glLoadTransposeMatrixfARB
dim shared as PFNGLLOADTRANSPOSEMATRIXDARBPROC glLoadTransposeMatrixdARB
dim shared as PFNGLMULTTRANSPOSEMATRIXFARBPROC glMultTransposeMatrixfARB
dim shared as PFNGLMULTTRANSPOSEMATRIXDARBPROC glMultTransposeMatrixdARB
dim shared as PFNGLWEIGHTBVARBPROC glWeightbvARB
dim shared as PFNGLWEIGHTSVARBPROC glWeightsvARB
dim shared as PFNGLWEIGHTIVARBPROC glWeightivARB
dim shared as PFNGLWEIGHTFVARBPROC glWeightfvARB
dim shared as PFNGLWEIGHTDVARBPROC glWeightdvARB
dim shared as PFNGLWEIGHTUBVARBPROC glWeightubvARB
dim shared as PFNGLWEIGHTUSVARBPROC glWeightusvARB
dim shared as PFNGLWEIGHTUIVARBPROC glWeightuivARB
dim shared as PFNGLWEIGHTPOINTERARBPROC glWeightPointerARB
dim shared as PFNGLVERTEXBLENDARBPROC glVertexBlendARB
dim shared as PFNGLBINDBUFFERARBPROC glBindBufferARB
dim shared as PFNGLDELETEBUFFERSARBPROC glDeleteBuffersARB
dim shared as PFNGLGENBUFFERSARBPROC glGenBuffersARB
dim shared as PFNGLISBUFFERARBPROC glIsBufferARB
dim shared as PFNGLBUFFERDATAARBPROC glBufferDataARB
dim shared as PFNGLBUFFERSUBDATAARBPROC glBufferSubDataARB
dim shared as PFNGLGETBUFFERSUBDATAARBPROC glGetBufferSubDataARB
dim shared as PFNGLMAPBUFFERARBPROC glMapBufferARB
dim shared as PFNGLUNMAPBUFFERARBPROC glUnmapBufferARB
dim shared as PFNGLGETBUFFERPARAMETERIVARBPROC glGetBufferParameterivARB
dim shared as PFNGLGETBUFFERPOINTERVARBPROC glGetBufferPointervARB
dim shared as PFNGLVERTEXATTRIB1DARBPROC glVertexAttrib1dARB
dim shared as PFNGLVERTEXATTRIB1DVARBPROC glVertexAttrib1dvARB
dim shared as PFNGLVERTEXATTRIB1FARBPROC glVertexAttrib1fARB
dim shared as PFNGLVERTEXATTRIB1FVARBPROC glVertexAttrib1fvARB
dim shared as PFNGLVERTEXATTRIB1SARBPROC glVertexAttrib1sARB
dim shared as PFNGLVERTEXATTRIB1SVARBPROC glVertexAttrib1svARB
dim shared as PFNGLVERTEXATTRIB2DARBPROC glVertexAttrib2dARB
dim shared as PFNGLVERTEXATTRIB2DVARBPROC glVertexAttrib2dvARB
dim shared as PFNGLVERTEXATTRIB2FARBPROC glVertexAttrib2fARB
dim shared as PFNGLVERTEXATTRIB2FVARBPROC glVertexAttrib2fvARB
dim shared as PFNGLVERTEXATTRIB2SARBPROC glVertexAttrib2sARB
dim shared as PFNGLVERTEXATTRIB2SVARBPROC glVertexAttrib2svARB
dim shared as PFNGLVERTEXATTRIB3DARBPROC glVertexAttrib3dARB
dim shared as PFNGLVERTEXATTRIB3DVARBPROC glVertexAttrib3dvARB
dim shared as PFNGLVERTEXATTRIB3FARBPROC glVertexAttrib3fARB
dim shared as PFNGLVERTEXATTRIB3FVARBPROC glVertexAttrib3fvARB
dim shared as PFNGLVERTEXATTRIB3SARBPROC glVertexAttrib3sARB
dim shared as PFNGLVERTEXATTRIB3SVARBPROC glVertexAttrib3svARB
dim shared as PFNGLVERTEXATTRIB4NBVARBPROC glVertexAttrib4NbvARB
dim shared as PFNGLVERTEXATTRIB4NIVARBPROC glVertexAttrib4NivARB
dim shared as PFNGLVERTEXATTRIB4NSVARBPROC glVertexAttrib4NsvARB
dim shared as PFNGLVERTEXATTRIB4NUBARBPROC glVertexAttrib4NubARB
dim shared as PFNGLVERTEXATTRIB4NUBVARBPROC glVertexAttrib4NubvARB
dim shared as PFNGLVERTEXATTRIB4NUIVARBPROC glVertexAttrib4NuivARB
dim shared as PFNGLVERTEXATTRIB4NUSVARBPROC glVertexAttrib4NusvARB
dim shared as PFNGLVERTEXATTRIB4BVARBPROC glVertexAttrib4bvARB
dim shared as PFNGLVERTEXATTRIB4DARBPROC glVertexAttrib4dARB
dim shared as PFNGLVERTEXATTRIB4DVARBPROC glVertexAttrib4dvARB
dim shared as PFNGLVERTEXATTRIB4FARBPROC glVertexAttrib4fARB
dim shared as PFNGLVERTEXATTRIB4FVARBPROC glVertexAttrib4fvARB
dim shared as PFNGLVERTEXATTRIB4IVARBPROC glVertexAttrib4ivARB
dim shared as PFNGLVERTEXATTRIB4SARBPROC glVertexAttrib4sARB
dim shared as PFNGLVERTEXATTRIB4SVARBPROC glVertexAttrib4svARB
dim shared as PFNGLVERTEXATTRIB4UBVARBPROC glVertexAttrib4ubvARB
dim shared as PFNGLVERTEXATTRIB4UIVARBPROC glVertexAttrib4uivARB
dim shared as PFNGLVERTEXATTRIB4USVARBPROC glVertexAttrib4usvARB
dim shared as PFNGLVERTEXATTRIBPOINTERARBPROC glVertexAttribPointerARB
dim shared as PFNGLENABLEVERTEXATTRIBARRAYARBPROC glEnableVertexAttribArrayARB
dim shared as PFNGLDISABLEVERTEXATTRIBARRAYARBPROC glDisableVertexAttribArrayARB
dim shared as PFNGLGETVERTEXATTRIBDVARBPROC glGetVertexAttribdvARB
dim shared as PFNGLGETVERTEXATTRIBFVARBPROC glGetVertexAttribfvARB
dim shared as PFNGLGETVERTEXATTRIBIVARBPROC glGetVertexAttribivARB
dim shared as PFNGLGETVERTEXATTRIBPOINTERVARBPROC glGetVertexAttribPointervARB
dim shared as PFNGLBINDATTRIBLOCATIONARBPROC glBindAttribLocationARB
dim shared as PFNGLGETACTIVEATTRIBARBPROC glGetActiveAttribARB
dim shared as PFNGLGETATTRIBLOCATIONARBPROC glGetAttribLocationARB
dim shared as PFNGLWINDOWPOS2DARBPROC glWindowPos2dARB
dim shared as PFNGLWINDOWPOS2DVARBPROC glWindowPos2dvARB
dim shared as PFNGLWINDOWPOS2FARBPROC glWindowPos2fARB
dim shared as PFNGLWINDOWPOS2FVARBPROC glWindowPos2fvARB
dim shared as PFNGLWINDOWPOS2IARBPROC glWindowPos2iARB
dim shared as PFNGLWINDOWPOS2IVARBPROC glWindowPos2ivARB
dim shared as PFNGLWINDOWPOS2SARBPROC glWindowPos2sARB
dim shared as PFNGLWINDOWPOS2SVARBPROC glWindowPos2svARB
dim shared as PFNGLWINDOWPOS3DARBPROC glWindowPos3dARB
dim shared as PFNGLWINDOWPOS3DVARBPROC glWindowPos3dvARB
dim shared as PFNGLWINDOWPOS3FARBPROC glWindowPos3fARB
dim shared as PFNGLWINDOWPOS3FVARBPROC glWindowPos3fvARB
dim shared as PFNGLWINDOWPOS3IARBPROC glWindowPos3iARB
dim shared as PFNGLWINDOWPOS3IVARBPROC glWindowPos3ivARB
dim shared as PFNGLWINDOWPOS3SARBPROC glWindowPos3sARB
dim shared as PFNGLWINDOWPOS3SVARBPROC glWindowPos3svARB
dim shared as PFNGLMULTITEXCOORD1BOESPROC glMultiTexCoord1bOES
dim shared as PFNGLMULTITEXCOORD1BVOESPROC glMultiTexCoord1bvOES
dim shared as PFNGLMULTITEXCOORD2BOESPROC glMultiTexCoord2bOES
dim shared as PFNGLMULTITEXCOORD2BVOESPROC glMultiTexCoord2bvOES
dim shared as PFNGLMULTITEXCOORD3BOESPROC glMultiTexCoord3bOES
dim shared as PFNGLMULTITEXCOORD3BVOESPROC glMultiTexCoord3bvOES
dim shared as PFNGLMULTITEXCOORD4BOESPROC glMultiTexCoord4bOES
dim shared as PFNGLMULTITEXCOORD4BVOESPROC glMultiTexCoord4bvOES
dim shared as PFNGLTEXCOORD1BOESPROC glTexCoord1bOES
dim shared as PFNGLTEXCOORD1BVOESPROC glTexCoord1bvOES
dim shared as PFNGLTEXCOORD2BOESPROC glTexCoord2bOES
dim shared as PFNGLTEXCOORD2BVOESPROC glTexCoord2bvOES
dim shared as PFNGLTEXCOORD3BOESPROC glTexCoord3bOES
dim shared as PFNGLTEXCOORD3BVOESPROC glTexCoord3bvOES
dim shared as PFNGLTEXCOORD4BOESPROC glTexCoord4bOES
dim shared as PFNGLTEXCOORD4BVOESPROC glTexCoord4bvOES
dim shared as PFNGLVERTEX2BOESPROC glVertex2bOES
dim shared as PFNGLVERTEX2BVOESPROC glVertex2bvOES
dim shared as PFNGLVERTEX3BOESPROC glVertex3bOES
dim shared as PFNGLVERTEX3BVOESPROC glVertex3bvOES
dim shared as PFNGLVERTEX4BOESPROC glVertex4bOES
dim shared as PFNGLVERTEX4BVOESPROC glVertex4bvOES
dim shared as PFNGLALPHAFUNCXOESPROC glAlphaFuncxOES
dim shared as PFNGLCLEARCOLORXOESPROC glClearColorxOES
dim shared as PFNGLCLEARDEPTHXOESPROC glClearDepthxOES
dim shared as PFNGLCLIPPLANEXOESPROC glClipPlanexOES
dim shared as PFNGLCOLOR4XOESPROC glColor4xOES
dim shared as PFNGLDEPTHRANGEXOESPROC glDepthRangexOES
dim shared as PFNGLFOGXOESPROC glFogxOES
dim shared as PFNGLFOGXVOESPROC glFogxvOES
dim shared as PFNGLFRUSTUMXOESPROC glFrustumxOES
dim shared as PFNGLGETCLIPPLANEXOESPROC glGetClipPlanexOES
dim shared as PFNGLGETFIXEDVOESPROC glGetFixedvOES
dim shared as PFNGLGETTEXENVXVOESPROC glGetTexEnvxvOES
dim shared as PFNGLGETTEXPARAMETERXVOESPROC glGetTexParameterxvOES
dim shared as PFNGLLIGHTMODELXOESPROC glLightModelxOES
dim shared as PFNGLLIGHTMODELXVOESPROC glLightModelxvOES
dim shared as PFNGLLIGHTXOESPROC glLightxOES
dim shared as PFNGLLIGHTXVOESPROC glLightxvOES
dim shared as PFNGLLINEWIDTHXOESPROC glLineWidthxOES
dim shared as PFNGLLOADMATRIXXOESPROC glLoadMatrixxOES
dim shared as PFNGLMATERIALXOESPROC glMaterialxOES
dim shared as PFNGLMATERIALXVOESPROC glMaterialxvOES
dim shared as PFNGLMULTMATRIXXOESPROC glMultMatrixxOES
dim shared as PFNGLMULTITEXCOORD4XOESPROC glMultiTexCoord4xOES
dim shared as PFNGLNORMAL3XOESPROC glNormal3xOES
dim shared as PFNGLORTHOXOESPROC glOrthoxOES
dim shared as PFNGLPOINTPARAMETERXVOESPROC glPointParameterxvOES
dim shared as PFNGLPOINTSIZEXOESPROC glPointSizexOES
dim shared as PFNGLPOLYGONOFFSETXOESPROC glPolygonOffsetxOES
dim shared as PFNGLROTATEXOESPROC glRotatexOES
dim shared as PFNGLSAMPLECOVERAGEOESPROC glSampleCoverageOES
dim shared as PFNGLSCALEXOESPROC glScalexOES
dim shared as PFNGLTEXENVXOESPROC glTexEnvxOES
dim shared as PFNGLTEXENVXVOESPROC glTexEnvxvOES
dim shared as PFNGLTEXPARAMETERXOESPROC glTexParameterxOES
dim shared as PFNGLTEXPARAMETERXVOESPROC glTexParameterxvOES
dim shared as PFNGLTRANSLATEXOESPROC glTranslatexOES
dim shared as PFNGLACCUMXOESPROC glAccumxOES
dim shared as PFNGLBITMAPXOESPROC glBitmapxOES
dim shared as PFNGLBLENDCOLORXOESPROC glBlendColorxOES
dim shared as PFNGLCLEARACCUMXOESPROC glClearAccumxOES
dim shared as PFNGLCOLOR3XOESPROC glColor3xOES
dim shared as PFNGLCOLOR3XVOESPROC glColor3xvOES
dim shared as PFNGLCOLOR4XVOESPROC glColor4xvOES
dim shared as PFNGLCONVOLUTIONPARAMETERXOESPROC glConvolutionParameterxOES
dim shared as PFNGLCONVOLUTIONPARAMETERXVOESPROC glConvolutionParameterxvOES
dim shared as PFNGLEVALCOORD1XOESPROC glEvalCoord1xOES
dim shared as PFNGLEVALCOORD1XVOESPROC glEvalCoord1xvOES
dim shared as PFNGLEVALCOORD2XOESPROC glEvalCoord2xOES
dim shared as PFNGLEVALCOORD2XVOESPROC glEvalCoord2xvOES
dim shared as PFNGLFEEDBACKBUFFERXOESPROC glFeedbackBufferxOES
dim shared as PFNGLGETCONVOLUTIONPARAMETERXVOESPROC glGetConvolutionParameterxvOES
dim shared as PFNGLGETHISTOGRAMPARAMETERXVOESPROC glGetHistogramParameterxvOES
dim shared as PFNGLGETLIGHTXOESPROC glGetLightxOES
dim shared as PFNGLGETMAPXVOESPROC glGetMapxvOES
dim shared as PFNGLGETMATERIALXOESPROC glGetMaterialxOES
dim shared as PFNGLGETPIXELMAPXVPROC glGetPixelMapxv
dim shared as PFNGLGETTEXGENXVOESPROC glGetTexGenxvOES
dim shared as PFNGLGETTEXLEVELPARAMETERXVOESPROC glGetTexLevelParameterxvOES
dim shared as PFNGLINDEXXOESPROC glIndexxOES
dim shared as PFNGLINDEXXVOESPROC glIndexxvOES
dim shared as PFNGLLOADTRANSPOSEMATRIXXOESPROC glLoadTransposeMatrixxOES
dim shared as PFNGLMAP1XOESPROC glMap1xOES
dim shared as PFNGLMAP2XOESPROC glMap2xOES
dim shared as PFNGLMAPGRID1XOESPROC glMapGrid1xOES
dim shared as PFNGLMAPGRID2XOESPROC glMapGrid2xOES
dim shared as PFNGLMULTTRANSPOSEMATRIXXOESPROC glMultTransposeMatrixxOES
dim shared as PFNGLMULTITEXCOORD1XOESPROC glMultiTexCoord1xOES
dim shared as PFNGLMULTITEXCOORD1XVOESPROC glMultiTexCoord1xvOES
dim shared as PFNGLMULTITEXCOORD2XOESPROC glMultiTexCoord2xOES
dim shared as PFNGLMULTITEXCOORD2XVOESPROC glMultiTexCoord2xvOES
dim shared as PFNGLMULTITEXCOORD3XOESPROC glMultiTexCoord3xOES
dim shared as PFNGLMULTITEXCOORD3XVOESPROC glMultiTexCoord3xvOES
dim shared as PFNGLMULTITEXCOORD4XVOESPROC glMultiTexCoord4xvOES
dim shared as PFNGLNORMAL3XVOESPROC glNormal3xvOES
dim shared as PFNGLPASSTHROUGHXOESPROC glPassThroughxOES
dim shared as PFNGLPIXELMAPXPROC glPixelMapx
dim shared as PFNGLPIXELSTOREXPROC glPixelStorex
dim shared as PFNGLPIXELTRANSFERXOESPROC glPixelTransferxOES
dim shared as PFNGLPIXELZOOMXOESPROC glPixelZoomxOES
dim shared as PFNGLPRIORITIZETEXTURESXOESPROC glPrioritizeTexturesxOES
dim shared as PFNGLRASTERPOS2XOESPROC glRasterPos2xOES
dim shared as PFNGLRASTERPOS2XVOESPROC glRasterPos2xvOES
dim shared as PFNGLRASTERPOS3XOESPROC glRasterPos3xOES
dim shared as PFNGLRASTERPOS3XVOESPROC glRasterPos3xvOES
dim shared as PFNGLRASTERPOS4XOESPROC glRasterPos4xOES
dim shared as PFNGLRASTERPOS4XVOESPROC glRasterPos4xvOES
dim shared as PFNGLRECTXOESPROC glRectxOES
dim shared as PFNGLRECTXVOESPROC glRectxvOES
dim shared as PFNGLTEXCOORD1XOESPROC glTexCoord1xOES
dim shared as PFNGLTEXCOORD1XVOESPROC glTexCoord1xvOES
dim shared as PFNGLTEXCOORD2XOESPROC glTexCoord2xOES
dim shared as PFNGLTEXCOORD2XVOESPROC glTexCoord2xvOES
dim shared as PFNGLTEXCOORD3XOESPROC glTexCoord3xOES
dim shared as PFNGLTEXCOORD3XVOESPROC glTexCoord3xvOES
dim shared as PFNGLTEXCOORD4XOESPROC glTexCoord4xOES
dim shared as PFNGLTEXCOORD4XVOESPROC glTexCoord4xvOES
dim shared as PFNGLTEXGENXOESPROC glTexGenxOES
dim shared as PFNGLTEXGENXVOESPROC glTexGenxvOES
dim shared as PFNGLVERTEX2XOESPROC glVertex2xOES
dim shared as PFNGLVERTEX2XVOESPROC glVertex2xvOES
dim shared as PFNGLVERTEX3XOESPROC glVertex3xOES
dim shared as PFNGLVERTEX3XVOESPROC glVertex3xvOES
dim shared as PFNGLVERTEX4XOESPROC glVertex4xOES
dim shared as PFNGLVERTEX4XVOESPROC glVertex4xvOES
dim shared as PFNGLQUERYMATRIXXOESPROC glQueryMatrixxOES
dim shared as PFNGLCLEARDEPTHFOESPROC glClearDepthfOES
dim shared as PFNGLCLIPPLANEFOESPROC glClipPlanefOES
dim shared as PFNGLDEPTHRANGEFOESPROC glDepthRangefOES
dim shared as PFNGLFRUSTUMFOESPROC glFrustumfOES
dim shared as PFNGLGETCLIPPLANEFOESPROC glGetClipPlanefOES
dim shared as PFNGLORTHOFOESPROC glOrthofOES
dim shared as PFNGLTBUFFERMASK3DFXPROC glTbufferMask3DFX
dim shared as PFNGLDEBUGMESSAGEENABLEAMDPROC glDebugMessageEnableAMD
dim shared as PFNGLDEBUGMESSAGEINSERTAMDPROC glDebugMessageInsertAMD
dim shared as PFNGLDEBUGMESSAGECALLBACKAMDPROC glDebugMessageCallbackAMD
dim shared as PFNGLGETDEBUGMESSAGELOGAMDPROC glGetDebugMessageLogAMD
dim shared as PFNGLBLENDFUNCINDEXEDAMDPROC glBlendFuncIndexedAMD
dim shared as PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC glBlendFuncSeparateIndexedAMD
dim shared as PFNGLBLENDEQUATIONINDEXEDAMDPROC glBlendEquationIndexedAMD
dim shared as PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC glBlendEquationSeparateIndexedAMD
dim shared as PFNGLVERTEXATTRIBPARAMETERIAMDPROC glVertexAttribParameteriAMD
dim shared as PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC glMultiDrawArraysIndirectAMD
dim shared as PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC glMultiDrawElementsIndirectAMD
dim shared as PFNGLGENNAMESAMDPROC glGenNamesAMD
dim shared as PFNGLDELETENAMESAMDPROC glDeleteNamesAMD
dim shared as PFNGLISNAMEAMDPROC glIsNameAMD
dim shared as PFNGLGETPERFMONITORGROUPSAMDPROC glGetPerfMonitorGroupsAMD
dim shared as PFNGLGETPERFMONITORCOUNTERSAMDPROC glGetPerfMonitorCountersAMD
dim shared as PFNGLGETPERFMONITORGROUPSTRINGAMDPROC glGetPerfMonitorGroupStringAMD
dim shared as PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC glGetPerfMonitorCounterStringAMD
dim shared as PFNGLGETPERFMONITORCOUNTERINFOAMDPROC glGetPerfMonitorCounterInfoAMD
dim shared as PFNGLGENPERFMONITORSAMDPROC glGenPerfMonitorsAMD
dim shared as PFNGLDELETEPERFMONITORSAMDPROC glDeletePerfMonitorsAMD
dim shared as PFNGLSELECTPERFMONITORCOUNTERSAMDPROC glSelectPerfMonitorCountersAMD
dim shared as PFNGLBEGINPERFMONITORAMDPROC glBeginPerfMonitorAMD
dim shared as PFNGLENDPERFMONITORAMDPROC glEndPerfMonitorAMD
dim shared as PFNGLGETPERFMONITORCOUNTERDATAAMDPROC glGetPerfMonitorCounterDataAMD
dim shared as PFNGLSETMULTISAMPLEFVAMDPROC glSetMultisamplefvAMD
dim shared as PFNGLTEXSTORAGESPARSEAMDPROC glTexStorageSparseAMD
dim shared as PFNGLTEXTURESTORAGESPARSEAMDPROC glTextureStorageSparseAMD
dim shared as PFNGLSTENCILOPVALUEAMDPROC glStencilOpValueAMD
dim shared as PFNGLTESSELLATIONFACTORAMDPROC glTessellationFactorAMD
dim shared as PFNGLTESSELLATIONMODEAMDPROC glTessellationModeAMD
dim shared as PFNGLELEMENTPOINTERAPPLEPROC glElementPointerAPPLE
dim shared as PFNGLDRAWELEMENTARRAYAPPLEPROC glDrawElementArrayAPPLE
dim shared as PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC glDrawRangeElementArrayAPPLE
dim shared as PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC glMultiDrawElementArrayAPPLE
dim shared as PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC glMultiDrawRangeElementArrayAPPLE
dim shared as PFNGLGENFENCESAPPLEPROC glGenFencesAPPLE
dim shared as PFNGLDELETEFENCESAPPLEPROC glDeleteFencesAPPLE
dim shared as PFNGLSETFENCEAPPLEPROC glSetFenceAPPLE
dim shared as PFNGLISFENCEAPPLEPROC glIsFenceAPPLE
dim shared as PFNGLTESTFENCEAPPLEPROC glTestFenceAPPLE
dim shared as PFNGLFINISHFENCEAPPLEPROC glFinishFenceAPPLE
dim shared as PFNGLTESTOBJECTAPPLEPROC glTestObjectAPPLE
dim shared as PFNGLFINISHOBJECTAPPLEPROC glFinishObjectAPPLE
dim shared as PFNGLBUFFERPARAMETERIAPPLEPROC glBufferParameteriAPPLE
dim shared as PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC glFlushMappedBufferRangeAPPLE
dim shared as PFNGLOBJECTPURGEABLEAPPLEPROC glObjectPurgeableAPPLE
dim shared as PFNGLOBJECTUNPURGEABLEAPPLEPROC glObjectUnpurgeableAPPLE
dim shared as PFNGLGETOBJECTPARAMETERIVAPPLEPROC glGetObjectParameterivAPPLE
dim shared as PFNGLTEXTURERANGEAPPLEPROC glTextureRangeAPPLE
dim shared as PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC glGetTexParameterPointervAPPLE
dim shared as PFNGLBINDVERTEXARRAYAPPLEPROC glBindVertexArrayAPPLE
dim shared as PFNGLDELETEVERTEXARRAYSAPPLEPROC glDeleteVertexArraysAPPLE
dim shared as PFNGLGENVERTEXARRAYSAPPLEPROC glGenVertexArraysAPPLE
dim shared as PFNGLISVERTEXARRAYAPPLEPROC glIsVertexArrayAPPLE
dim shared as PFNGLVERTEXARRAYRANGEAPPLEPROC glVertexArrayRangeAPPLE
dim shared as PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC glFlushVertexArrayRangeAPPLE
dim shared as PFNGLVERTEXARRAYPARAMETERIAPPLEPROC glVertexArrayParameteriAPPLE
dim shared as PFNGLENABLEVERTEXATTRIBAPPLEPROC glEnableVertexAttribAPPLE
dim shared as PFNGLDISABLEVERTEXATTRIBAPPLEPROC glDisableVertexAttribAPPLE
dim shared as PFNGLISVERTEXATTRIBENABLEDAPPLEPROC glIsVertexAttribEnabledAPPLE
dim shared as PFNGLMAPVERTEXATTRIB1DAPPLEPROC glMapVertexAttrib1dAPPLE
dim shared as PFNGLMAPVERTEXATTRIB1FAPPLEPROC glMapVertexAttrib1fAPPLE
dim shared as PFNGLMAPVERTEXATTRIB2DAPPLEPROC glMapVertexAttrib2dAPPLE
dim shared as PFNGLMAPVERTEXATTRIB2FAPPLEPROC glMapVertexAttrib2fAPPLE
dim shared as PFNGLDRAWBUFFERSATIPROC glDrawBuffersATI
dim shared as PFNGLELEMENTPOINTERATIPROC glElementPointerATI
dim shared as PFNGLDRAWELEMENTARRAYATIPROC glDrawElementArrayATI
dim shared as PFNGLDRAWRANGEELEMENTARRAYATIPROC glDrawRangeElementArrayATI
dim shared as PFNGLTEXBUMPPARAMETERIVATIPROC glTexBumpParameterivATI
dim shared as PFNGLTEXBUMPPARAMETERFVATIPROC glTexBumpParameterfvATI
dim shared as PFNGLGETTEXBUMPPARAMETERIVATIPROC glGetTexBumpParameterivATI
dim shared as PFNGLGETTEXBUMPPARAMETERFVATIPROC glGetTexBumpParameterfvATI
dim shared as PFNGLGENFRAGMENTSHADERSATIPROC glGenFragmentShadersATI
dim shared as PFNGLBINDFRAGMENTSHADERATIPROC glBindFragmentShaderATI
dim shared as PFNGLDELETEFRAGMENTSHADERATIPROC glDeleteFragmentShaderATI
dim shared as PFNGLBEGINFRAGMENTSHADERATIPROC glBeginFragmentShaderATI
dim shared as PFNGLENDFRAGMENTSHADERATIPROC glEndFragmentShaderATI
dim shared as PFNGLPASSTEXCOORDATIPROC glPassTexCoordATI
dim shared as PFNGLSAMPLEMAPATIPROC glSampleMapATI
dim shared as PFNGLCOLORFRAGMENTOP1ATIPROC glColorFragmentOp1ATI
dim shared as PFNGLCOLORFRAGMENTOP2ATIPROC glColorFragmentOp2ATI
dim shared as PFNGLCOLORFRAGMENTOP3ATIPROC glColorFragmentOp3ATI
dim shared as PFNGLALPHAFRAGMENTOP1ATIPROC glAlphaFragmentOp1ATI
dim shared as PFNGLALPHAFRAGMENTOP2ATIPROC glAlphaFragmentOp2ATI
dim shared as PFNGLALPHAFRAGMENTOP3ATIPROC glAlphaFragmentOp3ATI
dim shared as PFNGLSETFRAGMENTSHADERCONSTANTATIPROC glSetFragmentShaderConstantATI
dim shared as PFNGLMAPOBJECTBUFFERATIPROC glMapObjectBufferATI
dim shared as PFNGLUNMAPOBJECTBUFFERATIPROC glUnmapObjectBufferATI
dim shared as PFNGLPNTRIANGLESIATIPROC glPNTrianglesiATI
dim shared as PFNGLPNTRIANGLESFATIPROC glPNTrianglesfATI
dim shared as PFNGLSTENCILOPSEPARATEATIPROC glStencilOpSeparateATI
dim shared as PFNGLSTENCILFUNCSEPARATEATIPROC glStencilFuncSeparateATI
dim shared as PFNGLNEWOBJECTBUFFERATIPROC glNewObjectBufferATI
dim shared as PFNGLISOBJECTBUFFERATIPROC glIsObjectBufferATI
dim shared as PFNGLUPDATEOBJECTBUFFERATIPROC glUpdateObjectBufferATI
dim shared as PFNGLGETOBJECTBUFFERFVATIPROC glGetObjectBufferfvATI
dim shared as PFNGLGETOBJECTBUFFERIVATIPROC glGetObjectBufferivATI
dim shared as PFNGLFREEOBJECTBUFFERATIPROC glFreeObjectBufferATI
dim shared as PFNGLARRAYOBJECTATIPROC glArrayObjectATI
dim shared as PFNGLGETARRAYOBJECTFVATIPROC glGetArrayObjectfvATI
dim shared as PFNGLGETARRAYOBJECTIVATIPROC glGetArrayObjectivATI
dim shared as PFNGLVARIANTARRAYOBJECTATIPROC glVariantArrayObjectATI
dim shared as PFNGLGETVARIANTARRAYOBJECTFVATIPROC glGetVariantArrayObjectfvATI
dim shared as PFNGLGETVARIANTARRAYOBJECTIVATIPROC glGetVariantArrayObjectivATI
dim shared as PFNGLVERTEXATTRIBARRAYOBJECTATIPROC glVertexAttribArrayObjectATI
dim shared as PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC glGetVertexAttribArrayObjectfvATI
dim shared as PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC glGetVertexAttribArrayObjectivATI
dim shared as PFNGLVERTEXSTREAM1SATIPROC glVertexStream1sATI
dim shared as PFNGLVERTEXSTREAM1SVATIPROC glVertexStream1svATI
dim shared as PFNGLVERTEXSTREAM1IATIPROC glVertexStream1iATI
dim shared as PFNGLVERTEXSTREAM1IVATIPROC glVertexStream1ivATI
dim shared as PFNGLVERTEXSTREAM1FATIPROC glVertexStream1fATI
dim shared as PFNGLVERTEXSTREAM1FVATIPROC glVertexStream1fvATI
dim shared as PFNGLVERTEXSTREAM1DATIPROC glVertexStream1dATI
dim shared as PFNGLVERTEXSTREAM1DVATIPROC glVertexStream1dvATI
dim shared as PFNGLVERTEXSTREAM2SATIPROC glVertexStream2sATI
dim shared as PFNGLVERTEXSTREAM2SVATIPROC glVertexStream2svATI
dim shared as PFNGLVERTEXSTREAM2IATIPROC glVertexStream2iATI
dim shared as PFNGLVERTEXSTREAM2IVATIPROC glVertexStream2ivATI
dim shared as PFNGLVERTEXSTREAM2FATIPROC glVertexStream2fATI
dim shared as PFNGLVERTEXSTREAM2FVATIPROC glVertexStream2fvATI
dim shared as PFNGLVERTEXSTREAM2DATIPROC glVertexStream2dATI
dim shared as PFNGLVERTEXSTREAM2DVATIPROC glVertexStream2dvATI
dim shared as PFNGLVERTEXSTREAM3SATIPROC glVertexStream3sATI
dim shared as PFNGLVERTEXSTREAM3SVATIPROC glVertexStream3svATI
dim shared as PFNGLVERTEXSTREAM3IATIPROC glVertexStream3iATI
dim shared as PFNGLVERTEXSTREAM3IVATIPROC glVertexStream3ivATI
dim shared as PFNGLVERTEXSTREAM3FATIPROC glVertexStream3fATI
dim shared as PFNGLVERTEXSTREAM3FVATIPROC glVertexStream3fvATI
dim shared as PFNGLVERTEXSTREAM3DATIPROC glVertexStream3dATI
dim shared as PFNGLVERTEXSTREAM3DVATIPROC glVertexStream3dvATI
dim shared as PFNGLVERTEXSTREAM4SATIPROC glVertexStream4sATI
dim shared as PFNGLVERTEXSTREAM4SVATIPROC glVertexStream4svATI
dim shared as PFNGLVERTEXSTREAM4IATIPROC glVertexStream4iATI
dim shared as PFNGLVERTEXSTREAM4IVATIPROC glVertexStream4ivATI
dim shared as PFNGLVERTEXSTREAM4FATIPROC glVertexStream4fATI
dim shared as PFNGLVERTEXSTREAM4FVATIPROC glVertexStream4fvATI
dim shared as PFNGLVERTEXSTREAM4DATIPROC glVertexStream4dATI
dim shared as PFNGLVERTEXSTREAM4DVATIPROC glVertexStream4dvATI
dim shared as PFNGLNORMALSTREAM3BATIPROC glNormalStream3bATI
dim shared as PFNGLNORMALSTREAM3BVATIPROC glNormalStream3bvATI
dim shared as PFNGLNORMALSTREAM3SATIPROC glNormalStream3sATI
dim shared as PFNGLNORMALSTREAM3SVATIPROC glNormalStream3svATI
dim shared as PFNGLNORMALSTREAM3IATIPROC glNormalStream3iATI
dim shared as PFNGLNORMALSTREAM3IVATIPROC glNormalStream3ivATI
dim shared as PFNGLNORMALSTREAM3FATIPROC glNormalStream3fATI
dim shared as PFNGLNORMALSTREAM3FVATIPROC glNormalStream3fvATI
dim shared as PFNGLNORMALSTREAM3DATIPROC glNormalStream3dATI
dim shared as PFNGLNORMALSTREAM3DVATIPROC glNormalStream3dvATI
dim shared as PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC glClientActiveVertexStreamATI
dim shared as PFNGLVERTEXBLENDENVIATIPROC glVertexBlendEnviATI
dim shared as PFNGLVERTEXBLENDENVFATIPROC glVertexBlendEnvfATI
dim shared as PFNGLUNIFORMBUFFEREXTPROC glUniformBufferEXT
dim shared as PFNGLGETUNIFORMBUFFERSIZEEXTPROC glGetUniformBufferSizeEXT
dim shared as PFNGLGETUNIFORMOFFSETEXTPROC glGetUniformOffsetEXT
dim shared as PFNGLBLENDCOLOREXTPROC glBlendColorEXT
dim shared as PFNGLBLENDEQUATIONSEPARATEEXTPROC glBlendEquationSeparateEXT
dim shared as PFNGLBLENDFUNCSEPARATEEXTPROC glBlendFuncSeparateEXT
dim shared as PFNGLBLENDEQUATIONEXTPROC glBlendEquationEXT
dim shared as PFNGLCOLORSUBTABLEEXTPROC glColorSubTableEXT
dim shared as PFNGLCOPYCOLORSUBTABLEEXTPROC glCopyColorSubTableEXT
dim shared as PFNGLLOCKARRAYSEXTPROC glLockArraysEXT
dim shared as PFNGLUNLOCKARRAYSEXTPROC glUnlockArraysEXT
dim shared as PFNGLCONVOLUTIONFILTER1DEXTPROC glConvolutionFilter1DEXT
dim shared as PFNGLCONVOLUTIONFILTER2DEXTPROC glConvolutionFilter2DEXT
dim shared as PFNGLCONVOLUTIONPARAMETERFEXTPROC glConvolutionParameterfEXT
dim shared as PFNGLCONVOLUTIONPARAMETERFVEXTPROC glConvolutionParameterfvEXT
dim shared as PFNGLCONVOLUTIONPARAMETERIEXTPROC glConvolutionParameteriEXT
dim shared as PFNGLCONVOLUTIONPARAMETERIVEXTPROC glConvolutionParameterivEXT
dim shared as PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC glCopyConvolutionFilter1DEXT
dim shared as PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC glCopyConvolutionFilter2DEXT
dim shared as PFNGLGETCONVOLUTIONFILTEREXTPROC glGetConvolutionFilterEXT
dim shared as PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC glGetConvolutionParameterfvEXT
dim shared as PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC glGetConvolutionParameterivEXT
dim shared as PFNGLGETSEPARABLEFILTEREXTPROC glGetSeparableFilterEXT
dim shared as PFNGLSEPARABLEFILTER2DEXTPROC glSeparableFilter2DEXT
dim shared as PFNGLTANGENT3BEXTPROC glTangent3bEXT
dim shared as PFNGLTANGENT3BVEXTPROC glTangent3bvEXT
dim shared as PFNGLTANGENT3DEXTPROC glTangent3dEXT
dim shared as PFNGLTANGENT3DVEXTPROC glTangent3dvEXT
dim shared as PFNGLTANGENT3FEXTPROC glTangent3fEXT
dim shared as PFNGLTANGENT3FVEXTPROC glTangent3fvEXT
dim shared as PFNGLTANGENT3IEXTPROC glTangent3iEXT
dim shared as PFNGLTANGENT3IVEXTPROC glTangent3ivEXT
dim shared as PFNGLTANGENT3SEXTPROC glTangent3sEXT
dim shared as PFNGLTANGENT3SVEXTPROC glTangent3svEXT
dim shared as PFNGLBINORMAL3BEXTPROC glBinormal3bEXT
dim shared as PFNGLBINORMAL3BVEXTPROC glBinormal3bvEXT
dim shared as PFNGLBINORMAL3DEXTPROC glBinormal3dEXT
dim shared as PFNGLBINORMAL3DVEXTPROC glBinormal3dvEXT
dim shared as PFNGLBINORMAL3FEXTPROC glBinormal3fEXT
dim shared as PFNGLBINORMAL3FVEXTPROC glBinormal3fvEXT
dim shared as PFNGLBINORMAL3IEXTPROC glBinormal3iEXT
dim shared as PFNGLBINORMAL3IVEXTPROC glBinormal3ivEXT
dim shared as PFNGLBINORMAL3SEXTPROC glBinormal3sEXT
dim shared as PFNGLBINORMAL3SVEXTPROC glBinormal3svEXT
dim shared as PFNGLTANGENTPOINTEREXTPROC glTangentPointerEXT
dim shared as PFNGLBINORMALPOINTEREXTPROC glBinormalPointerEXT
dim shared as PFNGLCOPYTEXIMAGE1DEXTPROC glCopyTexImage1DEXT
dim shared as PFNGLCOPYTEXIMAGE2DEXTPROC glCopyTexImage2DEXT
dim shared as PFNGLCOPYTEXSUBIMAGE1DEXTPROC glCopyTexSubImage1DEXT
dim shared as PFNGLCOPYTEXSUBIMAGE2DEXTPROC glCopyTexSubImage2DEXT
dim shared as PFNGLCOPYTEXSUBIMAGE3DEXTPROC glCopyTexSubImage3DEXT
dim shared as PFNGLCULLPARAMETERDVEXTPROC glCullParameterdvEXT
dim shared as PFNGLCULLPARAMETERFVEXTPROC glCullParameterfvEXT
dim shared as PFNGLDEPTHBOUNDSEXTPROC glDepthBoundsEXT
dim shared as PFNGLMATRIXLOADFEXTPROC glMatrixLoadfEXT
dim shared as PFNGLMATRIXLOADDEXTPROC glMatrixLoaddEXT
dim shared as PFNGLMATRIXMULTFEXTPROC glMatrixMultfEXT
dim shared as PFNGLMATRIXMULTDEXTPROC glMatrixMultdEXT
dim shared as PFNGLMATRIXLOADIDENTITYEXTPROC glMatrixLoadIdentityEXT
dim shared as PFNGLMATRIXROTATEFEXTPROC glMatrixRotatefEXT
dim shared as PFNGLMATRIXROTATEDEXTPROC glMatrixRotatedEXT
dim shared as PFNGLMATRIXSCALEFEXTPROC glMatrixScalefEXT
dim shared as PFNGLMATRIXSCALEDEXTPROC glMatrixScaledEXT
dim shared as PFNGLMATRIXTRANSLATEFEXTPROC glMatrixTranslatefEXT
dim shared as PFNGLMATRIXTRANSLATEDEXTPROC glMatrixTranslatedEXT
dim shared as PFNGLMATRIXFRUSTUMEXTPROC glMatrixFrustumEXT
dim shared as PFNGLMATRIXORTHOEXTPROC glMatrixOrthoEXT
dim shared as PFNGLMATRIXPOPEXTPROC glMatrixPopEXT
dim shared as PFNGLMATRIXPUSHEXTPROC glMatrixPushEXT
dim shared as PFNGLCLIENTATTRIBDEFAULTEXTPROC glClientAttribDefaultEXT
dim shared as PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC glPushClientAttribDefaultEXT
dim shared as PFNGLTEXTUREPARAMETERFEXTPROC glTextureParameterfEXT
dim shared as PFNGLTEXTUREPARAMETERFVEXTPROC glTextureParameterfvEXT
dim shared as PFNGLTEXTUREPARAMETERIEXTPROC glTextureParameteriEXT
dim shared as PFNGLTEXTUREPARAMETERIVEXTPROC glTextureParameterivEXT
dim shared as PFNGLTEXTUREIMAGE1DEXTPROC glTextureImage1DEXT
dim shared as PFNGLTEXTUREIMAGE2DEXTPROC glTextureImage2DEXT
dim shared as PFNGLTEXTURESUBIMAGE1DEXTPROC glTextureSubImage1DEXT
dim shared as PFNGLTEXTURESUBIMAGE2DEXTPROC glTextureSubImage2DEXT
dim shared as PFNGLCOPYTEXTUREIMAGE1DEXTPROC glCopyTextureImage1DEXT
dim shared as PFNGLCOPYTEXTUREIMAGE2DEXTPROC glCopyTextureImage2DEXT
dim shared as PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC glCopyTextureSubImage1DEXT
dim shared as PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC glCopyTextureSubImage2DEXT
dim shared as PFNGLGETTEXTUREIMAGEEXTPROC glGetTextureImageEXT
dim shared as PFNGLGETTEXTUREPARAMETERFVEXTPROC glGetTextureParameterfvEXT
dim shared as PFNGLGETTEXTUREPARAMETERIVEXTPROC glGetTextureParameterivEXT
dim shared as PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC glGetTextureLevelParameterfvEXT
dim shared as PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC glGetTextureLevelParameterivEXT
dim shared as PFNGLTEXTUREIMAGE3DEXTPROC glTextureImage3DEXT
dim shared as PFNGLTEXTURESUBIMAGE3DEXTPROC glTextureSubImage3DEXT
dim shared as PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC glCopyTextureSubImage3DEXT
dim shared as PFNGLBINDMULTITEXTUREEXTPROC glBindMultiTextureEXT
dim shared as PFNGLMULTITEXCOORDPOINTEREXTPROC glMultiTexCoordPointerEXT
dim shared as PFNGLMULTITEXENVFEXTPROC glMultiTexEnvfEXT
dim shared as PFNGLMULTITEXENVFVEXTPROC glMultiTexEnvfvEXT
dim shared as PFNGLMULTITEXENVIEXTPROC glMultiTexEnviEXT
dim shared as PFNGLMULTITEXENVIVEXTPROC glMultiTexEnvivEXT
dim shared as PFNGLMULTITEXGENDEXTPROC glMultiTexGendEXT
dim shared as PFNGLMULTITEXGENDVEXTPROC glMultiTexGendvEXT
dim shared as PFNGLMULTITEXGENFEXTPROC glMultiTexGenfEXT
dim shared as PFNGLMULTITEXGENFVEXTPROC glMultiTexGenfvEXT
dim shared as PFNGLMULTITEXGENIEXTPROC glMultiTexGeniEXT
dim shared as PFNGLMULTITEXGENIVEXTPROC glMultiTexGenivEXT
dim shared as PFNGLGETMULTITEXENVFVEXTPROC glGetMultiTexEnvfvEXT
dim shared as PFNGLGETMULTITEXENVIVEXTPROC glGetMultiTexEnvivEXT
dim shared as PFNGLGETMULTITEXGENDVEXTPROC glGetMultiTexGendvEXT
dim shared as PFNGLGETMULTITEXGENFVEXTPROC glGetMultiTexGenfvEXT
dim shared as PFNGLGETMULTITEXGENIVEXTPROC glGetMultiTexGenivEXT
dim shared as PFNGLMULTITEXPARAMETERIEXTPROC glMultiTexParameteriEXT
dim shared as PFNGLMULTITEXPARAMETERIVEXTPROC glMultiTexParameterivEXT
dim shared as PFNGLMULTITEXPARAMETERFEXTPROC glMultiTexParameterfEXT
dim shared as PFNGLMULTITEXPARAMETERFVEXTPROC glMultiTexParameterfvEXT
dim shared as PFNGLMULTITEXIMAGE1DEXTPROC glMultiTexImage1DEXT
dim shared as PFNGLMULTITEXIMAGE2DEXTPROC glMultiTexImage2DEXT
dim shared as PFNGLMULTITEXSUBIMAGE1DEXTPROC glMultiTexSubImage1DEXT
dim shared as PFNGLMULTITEXSUBIMAGE2DEXTPROC glMultiTexSubImage2DEXT
dim shared as PFNGLCOPYMULTITEXIMAGE1DEXTPROC glCopyMultiTexImage1DEXT
dim shared as PFNGLCOPYMULTITEXIMAGE2DEXTPROC glCopyMultiTexImage2DEXT
dim shared as PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC glCopyMultiTexSubImage1DEXT
dim shared as PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC glCopyMultiTexSubImage2DEXT
dim shared as PFNGLGETMULTITEXIMAGEEXTPROC glGetMultiTexImageEXT
dim shared as PFNGLGETMULTITEXPARAMETERFVEXTPROC glGetMultiTexParameterfvEXT
dim shared as PFNGLGETMULTITEXPARAMETERIVEXTPROC glGetMultiTexParameterivEXT
dim shared as PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC glGetMultiTexLevelParameterfvEXT
dim shared as PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC glGetMultiTexLevelParameterivEXT
dim shared as PFNGLMULTITEXIMAGE3DEXTPROC glMultiTexImage3DEXT
dim shared as PFNGLMULTITEXSUBIMAGE3DEXTPROC glMultiTexSubImage3DEXT
dim shared as PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC glCopyMultiTexSubImage3DEXT
dim shared as PFNGLENABLECLIENTSTATEINDEXEDEXTPROC glEnableClientStateIndexedEXT
dim shared as PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC glDisableClientStateIndexedEXT
dim shared as PFNGLGETFLOATINDEXEDVEXTPROC glGetFloatIndexedvEXT
dim shared as PFNGLGETDOUBLEINDEXEDVEXTPROC glGetDoubleIndexedvEXT
dim shared as PFNGLGETPOINTERINDEXEDVEXTPROC glGetPointerIndexedvEXT
dim shared as PFNGLENABLEINDEXEDEXTPROC glEnableIndexedEXT
dim shared as PFNGLDISABLEINDEXEDEXTPROC glDisableIndexedEXT
dim shared as PFNGLISENABLEDINDEXEDEXTPROC glIsEnabledIndexedEXT
dim shared as PFNGLGETINTEGERINDEXEDVEXTPROC glGetIntegerIndexedvEXT
dim shared as PFNGLGETBOOLEANINDEXEDVEXTPROC glGetBooleanIndexedvEXT
dim shared as PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC glCompressedTextureImage3DEXT
dim shared as PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC glCompressedTextureImage2DEXT
dim shared as PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC glCompressedTextureImage1DEXT
dim shared as PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC glCompressedTextureSubImage3DEXT
dim shared as PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC glCompressedTextureSubImage2DEXT
dim shared as PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC glCompressedTextureSubImage1DEXT
dim shared as PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC glGetCompressedTextureImageEXT
dim shared as PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC glCompressedMultiTexImage3DEXT
dim shared as PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC glCompressedMultiTexImage2DEXT
dim shared as PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC glCompressedMultiTexImage1DEXT
dim shared as PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC glCompressedMultiTexSubImage3DEXT
dim shared as PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC glCompressedMultiTexSubImage2DEXT
dim shared as PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC glCompressedMultiTexSubImage1DEXT
dim shared as PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC glGetCompressedMultiTexImageEXT
dim shared as PFNGLMATRIXLOADTRANSPOSEFEXTPROC glMatrixLoadTransposefEXT
dim shared as PFNGLMATRIXLOADTRANSPOSEDEXTPROC glMatrixLoadTransposedEXT
dim shared as PFNGLMATRIXMULTTRANSPOSEFEXTPROC glMatrixMultTransposefEXT
dim shared as PFNGLMATRIXMULTTRANSPOSEDEXTPROC glMatrixMultTransposedEXT
dim shared as PFNGLNAMEDBUFFERDATAEXTPROC glNamedBufferDataEXT
dim shared as PFNGLNAMEDBUFFERSUBDATAEXTPROC glNamedBufferSubDataEXT
dim shared as PFNGLMAPNAMEDBUFFEREXTPROC glMapNamedBufferEXT
dim shared as PFNGLUNMAPNAMEDBUFFEREXTPROC glUnmapNamedBufferEXT
dim shared as PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC glGetNamedBufferParameterivEXT
dim shared as PFNGLGETNAMEDBUFFERPOINTERVEXTPROC glGetNamedBufferPointervEXT
dim shared as PFNGLGETNAMEDBUFFERSUBDATAEXTPROC glGetNamedBufferSubDataEXT
dim shared as PFNGLPROGRAMUNIFORM1FEXTPROC glProgramUniform1fEXT
dim shared as PFNGLPROGRAMUNIFORM2FEXTPROC glProgramUniform2fEXT
dim shared as PFNGLPROGRAMUNIFORM3FEXTPROC glProgramUniform3fEXT
dim shared as PFNGLPROGRAMUNIFORM4FEXTPROC glProgramUniform4fEXT
dim shared as PFNGLPROGRAMUNIFORM1IEXTPROC glProgramUniform1iEXT
dim shared as PFNGLPROGRAMUNIFORM2IEXTPROC glProgramUniform2iEXT
dim shared as PFNGLPROGRAMUNIFORM3IEXTPROC glProgramUniform3iEXT
dim shared as PFNGLPROGRAMUNIFORM4IEXTPROC glProgramUniform4iEXT
dim shared as PFNGLPROGRAMUNIFORM1FVEXTPROC glProgramUniform1fvEXT
dim shared as PFNGLPROGRAMUNIFORM2FVEXTPROC glProgramUniform2fvEXT
dim shared as PFNGLPROGRAMUNIFORM3FVEXTPROC glProgramUniform3fvEXT
dim shared as PFNGLPROGRAMUNIFORM4FVEXTPROC glProgramUniform4fvEXT
dim shared as PFNGLPROGRAMUNIFORM1IVEXTPROC glProgramUniform1ivEXT
dim shared as PFNGLPROGRAMUNIFORM2IVEXTPROC glProgramUniform2ivEXT
dim shared as PFNGLPROGRAMUNIFORM3IVEXTPROC glProgramUniform3ivEXT
dim shared as PFNGLPROGRAMUNIFORM4IVEXTPROC glProgramUniform4ivEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC glProgramUniformMatrix2fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC glProgramUniformMatrix3fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC glProgramUniformMatrix4fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC glProgramUniformMatrix2x3fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC glProgramUniformMatrix3x2fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC glProgramUniformMatrix2x4fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC glProgramUniformMatrix4x2fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC glProgramUniformMatrix3x4fvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC glProgramUniformMatrix4x3fvEXT
dim shared as PFNGLTEXTUREBUFFEREXTPROC glTextureBufferEXT
dim shared as PFNGLMULTITEXBUFFEREXTPROC glMultiTexBufferEXT
dim shared as PFNGLTEXTUREPARAMETERIIVEXTPROC glTextureParameterIivEXT
dim shared as PFNGLTEXTUREPARAMETERIUIVEXTPROC glTextureParameterIuivEXT
dim shared as PFNGLGETTEXTUREPARAMETERIIVEXTPROC glGetTextureParameterIivEXT
dim shared as PFNGLGETTEXTUREPARAMETERIUIVEXTPROC glGetTextureParameterIuivEXT
dim shared as PFNGLMULTITEXPARAMETERIIVEXTPROC glMultiTexParameterIivEXT
dim shared as PFNGLMULTITEXPARAMETERIUIVEXTPROC glMultiTexParameterIuivEXT
dim shared as PFNGLGETMULTITEXPARAMETERIIVEXTPROC glGetMultiTexParameterIivEXT
dim shared as PFNGLGETMULTITEXPARAMETERIUIVEXTPROC glGetMultiTexParameterIuivEXT
dim shared as PFNGLPROGRAMUNIFORM1UIEXTPROC glProgramUniform1uiEXT
dim shared as PFNGLPROGRAMUNIFORM2UIEXTPROC glProgramUniform2uiEXT
dim shared as PFNGLPROGRAMUNIFORM3UIEXTPROC glProgramUniform3uiEXT
dim shared as PFNGLPROGRAMUNIFORM4UIEXTPROC glProgramUniform4uiEXT
dim shared as PFNGLPROGRAMUNIFORM1UIVEXTPROC glProgramUniform1uivEXT
dim shared as PFNGLPROGRAMUNIFORM2UIVEXTPROC glProgramUniform2uivEXT
dim shared as PFNGLPROGRAMUNIFORM3UIVEXTPROC glProgramUniform3uivEXT
dim shared as PFNGLPROGRAMUNIFORM4UIVEXTPROC glProgramUniform4uivEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC glNamedProgramLocalParameters4fvEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC glNamedProgramLocalParameterI4iEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC glNamedProgramLocalParameterI4ivEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC glNamedProgramLocalParametersI4ivEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC glNamedProgramLocalParameterI4uiEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC glNamedProgramLocalParameterI4uivEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC glNamedProgramLocalParametersI4uivEXT
dim shared as PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC glGetNamedProgramLocalParameterIivEXT
dim shared as PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC glGetNamedProgramLocalParameterIuivEXT
dim shared as PFNGLENABLECLIENTSTATEIEXTPROC glEnableClientStateiEXT
dim shared as PFNGLDISABLECLIENTSTATEIEXTPROC glDisableClientStateiEXT
dim shared as PFNGLGETFLOATI_VEXTPROC glGetFloati_vEXT
dim shared as PFNGLGETDOUBLEI_VEXTPROC glGetDoublei_vEXT
dim shared as PFNGLGETPOINTERI_VEXTPROC glGetPointeri_vEXT
dim shared as PFNGLNAMEDPROGRAMSTRINGEXTPROC glNamedProgramStringEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC glNamedProgramLocalParameter4dEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC glNamedProgramLocalParameter4dvEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC glNamedProgramLocalParameter4fEXT
dim shared as PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC glNamedProgramLocalParameter4fvEXT
dim shared as PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC glGetNamedProgramLocalParameterdvEXT
dim shared as PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC glGetNamedProgramLocalParameterfvEXT
dim shared as PFNGLGETNAMEDPROGRAMIVEXTPROC glGetNamedProgramivEXT
dim shared as PFNGLGETNAMEDPROGRAMSTRINGEXTPROC glGetNamedProgramStringEXT
dim shared as PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC glNamedRenderbufferStorageEXT
dim shared as PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC glGetNamedRenderbufferParameterivEXT
dim shared as PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC glNamedRenderbufferStorageMultisampleEXT
dim shared as PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC glNamedRenderbufferStorageMultisampleCoverageEXT
dim shared as PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC glCheckNamedFramebufferStatusEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC glNamedFramebufferTexture1DEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC glNamedFramebufferTexture2DEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC glNamedFramebufferTexture3DEXT
dim shared as PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC glNamedFramebufferRenderbufferEXT
dim shared as PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC glGetNamedFramebufferAttachmentParameterivEXT
dim shared as PFNGLGENERATETEXTUREMIPMAPEXTPROC glGenerateTextureMipmapEXT
dim shared as PFNGLGENERATEMULTITEXMIPMAPEXTPROC glGenerateMultiTexMipmapEXT
dim shared as PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC glFramebufferDrawBufferEXT
dim shared as PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC glFramebufferDrawBuffersEXT
dim shared as PFNGLFRAMEBUFFERREADBUFFEREXTPROC glFramebufferReadBufferEXT
dim shared as PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC glGetFramebufferParameterivEXT
dim shared as PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC glNamedCopyBufferSubDataEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC glNamedFramebufferTextureEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC glNamedFramebufferTextureLayerEXT
dim shared as PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC glNamedFramebufferTextureFaceEXT
dim shared as PFNGLTEXTURERENDERBUFFEREXTPROC glTextureRenderbufferEXT
dim shared as PFNGLMULTITEXRENDERBUFFEREXTPROC glMultiTexRenderbufferEXT
dim shared as PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC glVertexArrayVertexOffsetEXT
dim shared as PFNGLVERTEXARRAYCOLOROFFSETEXTPROC glVertexArrayColorOffsetEXT
dim shared as PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC glVertexArrayEdgeFlagOffsetEXT
dim shared as PFNGLVERTEXARRAYINDEXOFFSETEXTPROC glVertexArrayIndexOffsetEXT
dim shared as PFNGLVERTEXARRAYNORMALOFFSETEXTPROC glVertexArrayNormalOffsetEXT
dim shared as PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC glVertexArrayTexCoordOffsetEXT
dim shared as PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC glVertexArrayMultiTexCoordOffsetEXT
dim shared as PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC glVertexArrayFogCoordOffsetEXT
dim shared as PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC glVertexArraySecondaryColorOffsetEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC glVertexArrayVertexAttribOffsetEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC glVertexArrayVertexAttribIOffsetEXT
dim shared as PFNGLENABLEVERTEXARRAYEXTPROC glEnableVertexArrayEXT
dim shared as PFNGLDISABLEVERTEXARRAYEXTPROC glDisableVertexArrayEXT
dim shared as PFNGLENABLEVERTEXARRAYATTRIBEXTPROC glEnableVertexArrayAttribEXT
dim shared as PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC glDisableVertexArrayAttribEXT
dim shared as PFNGLGETVERTEXARRAYINTEGERVEXTPROC glGetVertexArrayIntegervEXT
dim shared as PFNGLGETVERTEXARRAYPOINTERVEXTPROC glGetVertexArrayPointervEXT
dim shared as PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC glGetVertexArrayIntegeri_vEXT
dim shared as PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC glGetVertexArrayPointeri_vEXT
dim shared as PFNGLMAPNAMEDBUFFERRANGEEXTPROC glMapNamedBufferRangeEXT
dim shared as PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC glFlushMappedNamedBufferRangeEXT
dim shared as PFNGLCLEARNAMEDBUFFERDATAEXTPROC glClearNamedBufferDataEXT
dim shared as PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC glClearNamedBufferSubDataEXT
dim shared as PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC glNamedFramebufferParameteriEXT
dim shared as PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC glGetNamedFramebufferParameterivEXT
dim shared as PFNGLPROGRAMUNIFORM1DEXTPROC glProgramUniform1dEXT
dim shared as PFNGLPROGRAMUNIFORM2DEXTPROC glProgramUniform2dEXT
dim shared as PFNGLPROGRAMUNIFORM3DEXTPROC glProgramUniform3dEXT
dim shared as PFNGLPROGRAMUNIFORM4DEXTPROC glProgramUniform4dEXT
dim shared as PFNGLPROGRAMUNIFORM1DVEXTPROC glProgramUniform1dvEXT
dim shared as PFNGLPROGRAMUNIFORM2DVEXTPROC glProgramUniform2dvEXT
dim shared as PFNGLPROGRAMUNIFORM3DVEXTPROC glProgramUniform3dvEXT
dim shared as PFNGLPROGRAMUNIFORM4DVEXTPROC glProgramUniform4dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC glProgramUniformMatrix2dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC glProgramUniformMatrix3dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC glProgramUniformMatrix4dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC glProgramUniformMatrix2x3dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC glProgramUniformMatrix2x4dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC glProgramUniformMatrix3x2dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC glProgramUniformMatrix3x4dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC glProgramUniformMatrix4x2dvEXT
dim shared as PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC glProgramUniformMatrix4x3dvEXT
dim shared as PFNGLTEXTUREBUFFERRANGEEXTPROC glTextureBufferRangeEXT
dim shared as PFNGLTEXTURESTORAGE1DEXTPROC glTextureStorage1DEXT
dim shared as PFNGLTEXTURESTORAGE2DEXTPROC glTextureStorage2DEXT
dim shared as PFNGLTEXTURESTORAGE3DEXTPROC glTextureStorage3DEXT
dim shared as PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC glTextureStorage2DMultisampleEXT
dim shared as PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC glTextureStorage3DMultisampleEXT
dim shared as PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC glVertexArrayBindVertexBufferEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC glVertexArrayVertexAttribFormatEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC glVertexArrayVertexAttribIFormatEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC glVertexArrayVertexAttribLFormatEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC glVertexArrayVertexAttribBindingEXT
dim shared as PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC glVertexArrayVertexBindingDivisorEXT
dim shared as PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC glVertexArrayVertexAttribLOffsetEXT
dim shared as PFNGLTEXTUREPAGECOMMITMENTEXTPROC glTexturePageCommitmentEXT
dim shared as PFNGLCOLORMASKINDEXEDEXTPROC glColorMaskIndexedEXT
dim shared as PFNGLDRAWARRAYSINSTANCEDEXTPROC glDrawArraysInstancedEXT
dim shared as PFNGLDRAWELEMENTSINSTANCEDEXTPROC glDrawElementsInstancedEXT
dim shared as PFNGLDRAWRANGEELEMENTSEXTPROC glDrawRangeElementsEXT
dim shared as PFNGLFOGCOORDFEXTPROC glFogCoordfEXT
dim shared as PFNGLFOGCOORDFVEXTPROC glFogCoordfvEXT
dim shared as PFNGLFOGCOORDDEXTPROC glFogCoorddEXT
dim shared as PFNGLFOGCOORDDVEXTPROC glFogCoorddvEXT
dim shared as PFNGLFOGCOORDPOINTEREXTPROC glFogCoordPointerEXT
dim shared as PFNGLBLITFRAMEBUFFEREXTPROC glBlitFramebufferEXT
dim shared as PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC glRenderbufferStorageMultisampleEXT
dim shared as PFNGLISRENDERBUFFEREXTPROC glIsRenderbufferEXT
dim shared as PFNGLBINDRENDERBUFFEREXTPROC glBindRenderbufferEXT
dim shared as PFNGLDELETERENDERBUFFERSEXTPROC glDeleteRenderbuffersEXT
dim shared as PFNGLGENRENDERBUFFERSEXTPROC glGenRenderbuffersEXT
dim shared as PFNGLRENDERBUFFERSTORAGEEXTPROC glRenderbufferStorageEXT
dim shared as PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC glGetRenderbufferParameterivEXT
dim shared as PFNGLISFRAMEBUFFEREXTPROC glIsFramebufferEXT
dim shared as PFNGLBINDFRAMEBUFFEREXTPROC glBindFramebufferEXT
dim shared as PFNGLDELETEFRAMEBUFFERSEXTPROC glDeleteFramebuffersEXT
dim shared as PFNGLGENFRAMEBUFFERSEXTPROC glGenFramebuffersEXT
dim shared as PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC glCheckFramebufferStatusEXT
dim shared as PFNGLFRAMEBUFFERTEXTURE1DEXTPROC glFramebufferTexture1DEXT
dim shared as PFNGLFRAMEBUFFERTEXTURE2DEXTPROC glFramebufferTexture2DEXT
dim shared as PFNGLFRAMEBUFFERTEXTURE3DEXTPROC glFramebufferTexture3DEXT
dim shared as PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC glFramebufferRenderbufferEXT
dim shared as PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC glGetFramebufferAttachmentParameterivEXT
dim shared as PFNGLGENERATEMIPMAPEXTPROC glGenerateMipmapEXT
dim shared as PFNGLPROGRAMPARAMETERIEXTPROC glProgramParameteriEXT
dim shared as PFNGLPROGRAMENVPARAMETERS4FVEXTPROC glProgramEnvParameters4fvEXT
dim shared as PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC glProgramLocalParameters4fvEXT
dim shared as PFNGLGETUNIFORMUIVEXTPROC glGetUniformuivEXT
dim shared as PFNGLBINDFRAGDATALOCATIONEXTPROC glBindFragDataLocationEXT
dim shared as PFNGLGETFRAGDATALOCATIONEXTPROC glGetFragDataLocationEXT
dim shared as PFNGLUNIFORM1UIEXTPROC glUniform1uiEXT
dim shared as PFNGLUNIFORM2UIEXTPROC glUniform2uiEXT
dim shared as PFNGLUNIFORM3UIEXTPROC glUniform3uiEXT
dim shared as PFNGLUNIFORM4UIEXTPROC glUniform4uiEXT
dim shared as PFNGLUNIFORM1UIVEXTPROC glUniform1uivEXT
dim shared as PFNGLUNIFORM2UIVEXTPROC glUniform2uivEXT
dim shared as PFNGLUNIFORM3UIVEXTPROC glUniform3uivEXT
dim shared as PFNGLUNIFORM4UIVEXTPROC glUniform4uivEXT
dim shared as PFNGLGETHISTOGRAMEXTPROC glGetHistogramEXT
dim shared as PFNGLGETHISTOGRAMPARAMETERFVEXTPROC glGetHistogramParameterfvEXT
dim shared as PFNGLGETHISTOGRAMPARAMETERIVEXTPROC glGetHistogramParameterivEXT
dim shared as PFNGLGETMINMAXEXTPROC glGetMinmaxEXT
dim shared as PFNGLGETMINMAXPARAMETERFVEXTPROC glGetMinmaxParameterfvEXT
dim shared as PFNGLGETMINMAXPARAMETERIVEXTPROC glGetMinmaxParameterivEXT
dim shared as PFNGLHISTOGRAMEXTPROC glHistogramEXT
dim shared as PFNGLMINMAXEXTPROC glMinmaxEXT
dim shared as PFNGLRESETHISTOGRAMEXTPROC glResetHistogramEXT
dim shared as PFNGLRESETMINMAXEXTPROC glResetMinmaxEXT
dim shared as PFNGLINDEXFUNCEXTPROC glIndexFuncEXT
dim shared as PFNGLINDEXMATERIALEXTPROC glIndexMaterialEXT
dim shared as PFNGLAPPLYTEXTUREEXTPROC glApplyTextureEXT
dim shared as PFNGLTEXTURELIGHTEXTPROC glTextureLightEXT
dim shared as PFNGLTEXTUREMATERIALEXTPROC glTextureMaterialEXT
dim shared as PFNGLMULTIDRAWARRAYSEXTPROC glMultiDrawArraysEXT
dim shared as PFNGLMULTIDRAWELEMENTSEXTPROC glMultiDrawElementsEXT
dim shared as PFNGLSAMPLEMASKEXTPROC glSampleMaskEXT
dim shared as PFNGLSAMPLEPATTERNEXTPROC glSamplePatternEXT
dim shared as PFNGLPIXELTRANSFORMPARAMETERIEXTPROC glPixelTransformParameteriEXT
dim shared as PFNGLPIXELTRANSFORMPARAMETERFEXTPROC glPixelTransformParameterfEXT
dim shared as PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC glPixelTransformParameterivEXT
dim shared as PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC glPixelTransformParameterfvEXT
dim shared as PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC glGetPixelTransformParameterivEXT
dim shared as PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC glGetPixelTransformParameterfvEXT
dim shared as PFNGLPOINTPARAMETERFEXTPROC glPointParameterfEXT
dim shared as PFNGLPOINTPARAMETERFVEXTPROC glPointParameterfvEXT
dim shared as PFNGLPOLYGONOFFSETEXTPROC glPolygonOffsetEXT
dim shared as PFNGLPROVOKINGVERTEXEXTPROC glProvokingVertexEXT
dim shared as PFNGLSECONDARYCOLOR3BEXTPROC glSecondaryColor3bEXT
dim shared as PFNGLSECONDARYCOLOR3BVEXTPROC glSecondaryColor3bvEXT
dim shared as PFNGLSECONDARYCOLOR3DEXTPROC glSecondaryColor3dEXT
dim shared as PFNGLSECONDARYCOLOR3DVEXTPROC glSecondaryColor3dvEXT
dim shared as PFNGLSECONDARYCOLOR3FEXTPROC glSecondaryColor3fEXT
dim shared as PFNGLSECONDARYCOLOR3FVEXTPROC glSecondaryColor3fvEXT
dim shared as PFNGLSECONDARYCOLOR3IEXTPROC glSecondaryColor3iEXT
dim shared as PFNGLSECONDARYCOLOR3IVEXTPROC glSecondaryColor3ivEXT
dim shared as PFNGLSECONDARYCOLOR3SEXTPROC glSecondaryColor3sEXT
dim shared as PFNGLSECONDARYCOLOR3SVEXTPROC glSecondaryColor3svEXT
dim shared as PFNGLSECONDARYCOLOR3UBEXTPROC glSecondaryColor3ubEXT
dim shared as PFNGLSECONDARYCOLOR3UBVEXTPROC glSecondaryColor3ubvEXT
dim shared as PFNGLSECONDARYCOLOR3UIEXTPROC glSecondaryColor3uiEXT
dim shared as PFNGLSECONDARYCOLOR3UIVEXTPROC glSecondaryColor3uivEXT
dim shared as PFNGLSECONDARYCOLOR3USEXTPROC glSecondaryColor3usEXT
dim shared as PFNGLSECONDARYCOLOR3USVEXTPROC glSecondaryColor3usvEXT
dim shared as PFNGLSECONDARYCOLORPOINTEREXTPROC glSecondaryColorPointerEXT
dim shared as PFNGLUSESHADERPROGRAMEXTPROC glUseShaderProgramEXT
dim shared as PFNGLACTIVEPROGRAMEXTPROC glActiveProgramEXT
dim shared as PFNGLCREATESHADERPROGRAMEXTPROC glCreateShaderProgramEXT
dim shared as PFNGLBINDIMAGETEXTUREEXTPROC glBindImageTextureEXT
dim shared as PFNGLMEMORYBARRIEREXTPROC glMemoryBarrierEXT
dim shared as PFNGLSTENCILCLEARTAGEXTPROC glStencilClearTagEXT
dim shared as PFNGLACTIVESTENCILFACEEXTPROC glActiveStencilFaceEXT
dim shared as PFNGLTEXSUBIMAGE1DEXTPROC glTexSubImage1DEXT
dim shared as PFNGLTEXSUBIMAGE2DEXTPROC glTexSubImage2DEXT
dim shared as PFNGLTEXIMAGE3DEXTPROC glTexImage3DEXT
dim shared as PFNGLTEXSUBIMAGE3DEXTPROC glTexSubImage3DEXT
dim shared as PFNGLTEXBUFFEREXTPROC glTexBufferEXT
dim shared as PFNGLTEXPARAMETERIIVEXTPROC glTexParameterIivEXT
dim shared as PFNGLTEXPARAMETERIUIVEXTPROC glTexParameterIuivEXT
dim shared as PFNGLGETTEXPARAMETERIIVEXTPROC glGetTexParameterIivEXT
dim shared as PFNGLGETTEXPARAMETERIUIVEXTPROC glGetTexParameterIuivEXT
dim shared as PFNGLCLEARCOLORIIEXTPROC glClearColorIiEXT
dim shared as PFNGLCLEARCOLORIUIEXTPROC glClearColorIuiEXT
dim shared as PFNGLARETEXTURESRESIDENTEXTPROC glAreTexturesResidentEXT
dim shared as PFNGLBINDTEXTUREEXTPROC glBindTextureEXT
dim shared as PFNGLDELETETEXTURESEXTPROC glDeleteTexturesEXT
dim shared as PFNGLGENTEXTURESEXTPROC glGenTexturesEXT
dim shared as PFNGLISTEXTUREEXTPROC glIsTextureEXT
dim shared as PFNGLPRIORITIZETEXTURESEXTPROC glPrioritizeTexturesEXT
dim shared as PFNGLTEXTURENORMALEXTPROC glTextureNormalEXT
dim shared as PFNGLGETQUERYOBJECTI64VEXTPROC glGetQueryObjecti64vEXT
dim shared as PFNGLGETQUERYOBJECTUI64VEXTPROC glGetQueryObjectui64vEXT
dim shared as PFNGLBEGINTRANSFORMFEEDBACKEXTPROC glBeginTransformFeedbackEXT
dim shared as PFNGLENDTRANSFORMFEEDBACKEXTPROC glEndTransformFeedbackEXT
dim shared as PFNGLBINDBUFFERRANGEEXTPROC glBindBufferRangeEXT
dim shared as PFNGLBINDBUFFEROFFSETEXTPROC glBindBufferOffsetEXT
dim shared as PFNGLBINDBUFFERBASEEXTPROC glBindBufferBaseEXT
dim shared as PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC glTransformFeedbackVaryingsEXT
dim shared as PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC glGetTransformFeedbackVaryingEXT
dim shared as PFNGLVERTEXATTRIBL1DEXTPROC glVertexAttribL1dEXT
dim shared as PFNGLVERTEXATTRIBL2DEXTPROC glVertexAttribL2dEXT
dim shared as PFNGLVERTEXATTRIBL3DEXTPROC glVertexAttribL3dEXT
dim shared as PFNGLVERTEXATTRIBL4DEXTPROC glVertexAttribL4dEXT
dim shared as PFNGLVERTEXATTRIBL1DVEXTPROC glVertexAttribL1dvEXT
dim shared as PFNGLVERTEXATTRIBL2DVEXTPROC glVertexAttribL2dvEXT
dim shared as PFNGLVERTEXATTRIBL3DVEXTPROC glVertexAttribL3dvEXT
dim shared as PFNGLVERTEXATTRIBL4DVEXTPROC glVertexAttribL4dvEXT
dim shared as PFNGLVERTEXATTRIBLPOINTEREXTPROC glVertexAttribLPointerEXT
dim shared as PFNGLGETVERTEXATTRIBLDVEXTPROC glGetVertexAttribLdvEXT
dim shared as PFNGLBEGINVERTEXSHADEREXTPROC glBeginVertexShaderEXT
dim shared as PFNGLENDVERTEXSHADEREXTPROC glEndVertexShaderEXT
dim shared as PFNGLBINDVERTEXSHADEREXTPROC glBindVertexShaderEXT
dim shared as PFNGLGENVERTEXSHADERSEXTPROC glGenVertexShadersEXT
dim shared as PFNGLDELETEVERTEXSHADEREXTPROC glDeleteVertexShaderEXT
dim shared as PFNGLSHADEROP1EXTPROC glShaderOp1EXT
dim shared as PFNGLSHADEROP2EXTPROC glShaderOp2EXT
dim shared as PFNGLSHADEROP3EXTPROC glShaderOp3EXT
dim shared as PFNGLSWIZZLEEXTPROC glSwizzleEXT
dim shared as PFNGLWRITEMASKEXTPROC glWriteMaskEXT
dim shared as PFNGLINSERTCOMPONENTEXTPROC glInsertComponentEXT
dim shared as PFNGLEXTRACTCOMPONENTEXTPROC glExtractComponentEXT
dim shared as PFNGLGENSYMBOLSEXTPROC glGenSymbolsEXT
dim shared as PFNGLSETINVARIANTEXTPROC glSetInvariantEXT
dim shared as PFNGLSETLOCALCONSTANTEXTPROC glSetLocalConstantEXT
dim shared as PFNGLVARIANTBVEXTPROC glVariantbvEXT
dim shared as PFNGLVARIANTSVEXTPROC glVariantsvEXT
dim shared as PFNGLVARIANTIVEXTPROC glVariantivEXT
dim shared as PFNGLVARIANTFVEXTPROC glVariantfvEXT
dim shared as PFNGLVARIANTDVEXTPROC glVariantdvEXT
dim shared as PFNGLVARIANTUBVEXTPROC glVariantubvEXT
dim shared as PFNGLVARIANTUSVEXTPROC glVariantusvEXT
dim shared as PFNGLVARIANTUIVEXTPROC glVariantuivEXT
dim shared as PFNGLVARIANTPOINTEREXTPROC glVariantPointerEXT
dim shared as PFNGLENABLEVARIANTCLIENTSTATEEXTPROC glEnableVariantClientStateEXT
dim shared as PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC glDisableVariantClientStateEXT
dim shared as PFNGLBINDLIGHTPARAMETEREXTPROC glBindLightParameterEXT
dim shared as PFNGLBINDMATERIALPARAMETEREXTPROC glBindMaterialParameterEXT
dim shared as PFNGLBINDTEXGENPARAMETEREXTPROC glBindTexGenParameterEXT
dim shared as PFNGLBINDTEXTUREUNITPARAMETEREXTPROC glBindTextureUnitParameterEXT
dim shared as PFNGLBINDPARAMETEREXTPROC glBindParameterEXT
dim shared as PFNGLISVARIANTENABLEDEXTPROC glIsVariantEnabledEXT
dim shared as PFNGLGETVARIANTBOOLEANVEXTPROC glGetVariantBooleanvEXT
dim shared as PFNGLGETVARIANTINTEGERVEXTPROC glGetVariantIntegervEXT
dim shared as PFNGLGETVARIANTFLOATVEXTPROC glGetVariantFloatvEXT
dim shared as PFNGLGETVARIANTPOINTERVEXTPROC glGetVariantPointervEXT
dim shared as PFNGLGETINVARIANTBOOLEANVEXTPROC glGetInvariantBooleanvEXT
dim shared as PFNGLGETINVARIANTINTEGERVEXTPROC glGetInvariantIntegervEXT
dim shared as PFNGLGETINVARIANTFLOATVEXTPROC glGetInvariantFloatvEXT
dim shared as PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC glGetLocalConstantBooleanvEXT
dim shared as PFNGLGETLOCALCONSTANTINTEGERVEXTPROC glGetLocalConstantIntegervEXT
dim shared as PFNGLGETLOCALCONSTANTFLOATVEXTPROC glGetLocalConstantFloatvEXT
dim shared as PFNGLVERTEXWEIGHTFEXTPROC glVertexWeightfEXT
dim shared as PFNGLVERTEXWEIGHTFVEXTPROC glVertexWeightfvEXT
dim shared as PFNGLVERTEXWEIGHTPOINTEREXTPROC glVertexWeightPointerEXT
dim shared as PFNGLIMPORTSYNCEXTPROC glImportSyncEXT
dim shared as PFNGLFRAMETERMINATORGREMEDYPROC glFrameTerminatorGREMEDY
dim shared as PFNGLSTRINGMARKERGREMEDYPROC glStringMarkerGREMEDY
dim shared as PFNGLIMAGETRANSFORMPARAMETERIHPPROC glImageTransformParameteriHP
dim shared as PFNGLIMAGETRANSFORMPARAMETERFHPPROC glImageTransformParameterfHP
dim shared as PFNGLIMAGETRANSFORMPARAMETERIVHPPROC glImageTransformParameterivHP
dim shared as PFNGLIMAGETRANSFORMPARAMETERFVHPPROC glImageTransformParameterfvHP
dim shared as PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC glGetImageTransformParameterivHP
dim shared as PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC glGetImageTransformParameterfvHP
dim shared as PFNGLMULTIMODEDRAWARRAYSIBMPROC glMultiModeDrawArraysIBM
dim shared as PFNGLMULTIMODEDRAWELEMENTSIBMPROC glMultiModeDrawElementsIBM
dim shared as PFNGLFLUSHSTATICDATAIBMPROC glFlushStaticDataIBM
dim shared as PFNGLCOLORPOINTERLISTIBMPROC glColorPointerListIBM
dim shared as PFNGLSECONDARYCOLORPOINTERLISTIBMPROC glSecondaryColorPointerListIBM
dim shared as PFNGLEDGEFLAGPOINTERLISTIBMPROC glEdgeFlagPointerListIBM
dim shared as PFNGLFOGCOORDPOINTERLISTIBMPROC glFogCoordPointerListIBM
dim shared as PFNGLINDEXPOINTERLISTIBMPROC glIndexPointerListIBM
dim shared as PFNGLNORMALPOINTERLISTIBMPROC glNormalPointerListIBM
dim shared as PFNGLTEXCOORDPOINTERLISTIBMPROC glTexCoordPointerListIBM
dim shared as PFNGLVERTEXPOINTERLISTIBMPROC glVertexPointerListIBM
dim shared as PFNGLBLENDFUNCSEPARATEINGRPROC glBlendFuncSeparateINGR
dim shared as PFNGLSYNCTEXTUREINTELPROC glSyncTextureINTEL
dim shared as PFNGLUNMAPTEXTURE2DINTELPROC glUnmapTexture2DINTEL
dim shared as PFNGLMAPTEXTURE2DINTELPROC glMapTexture2DINTEL
dim shared as PFNGLVERTEXPOINTERVINTELPROC glVertexPointervINTEL
dim shared as PFNGLNORMALPOINTERVINTELPROC glNormalPointervINTEL
dim shared as PFNGLCOLORPOINTERVINTELPROC glColorPointervINTEL
dim shared as PFNGLTEXCOORDPOINTERVINTELPROC glTexCoordPointervINTEL
dim shared as PFNGLRESIZEBUFFERSMESAPROC glResizeBuffersMESA
dim shared as PFNGLWINDOWPOS2DMESAPROC glWindowPos2dMESA
dim shared as PFNGLWINDOWPOS2DVMESAPROC glWindowPos2dvMESA
dim shared as PFNGLWINDOWPOS2FMESAPROC glWindowPos2fMESA
dim shared as PFNGLWINDOWPOS2FVMESAPROC glWindowPos2fvMESA
dim shared as PFNGLWINDOWPOS2IMESAPROC glWindowPos2iMESA
dim shared as PFNGLWINDOWPOS2IVMESAPROC glWindowPos2ivMESA
dim shared as PFNGLWINDOWPOS2SMESAPROC glWindowPos2sMESA
dim shared as PFNGLWINDOWPOS2SVMESAPROC glWindowPos2svMESA
dim shared as PFNGLWINDOWPOS3DMESAPROC glWindowPos3dMESA
dim shared as PFNGLWINDOWPOS3DVMESAPROC glWindowPos3dvMESA
dim shared as PFNGLWINDOWPOS3FMESAPROC glWindowPos3fMESA
dim shared as PFNGLWINDOWPOS3FVMESAPROC glWindowPos3fvMESA
dim shared as PFNGLWINDOWPOS3IMESAPROC glWindowPos3iMESA
dim shared as PFNGLWINDOWPOS3IVMESAPROC glWindowPos3ivMESA
dim shared as PFNGLWINDOWPOS3SMESAPROC glWindowPos3sMESA
dim shared as PFNGLWINDOWPOS3SVMESAPROC glWindowPos3svMESA
dim shared as PFNGLWINDOWPOS4DMESAPROC glWindowPos4dMESA
dim shared as PFNGLWINDOWPOS4DVMESAPROC glWindowPos4dvMESA
dim shared as PFNGLWINDOWPOS4FMESAPROC glWindowPos4fMESA
dim shared as PFNGLWINDOWPOS4FVMESAPROC glWindowPos4fvMESA
dim shared as PFNGLWINDOWPOS4IMESAPROC glWindowPos4iMESA
dim shared as PFNGLWINDOWPOS4IVMESAPROC glWindowPos4ivMESA
dim shared as PFNGLWINDOWPOS4SMESAPROC glWindowPos4sMESA
dim shared as PFNGLWINDOWPOS4SVMESAPROC glWindowPos4svMESA
dim shared as PFNGLBEGINCONDITIONALRENDERNVXPROC glBeginConditionalRenderNVX
dim shared as PFNGLENDCONDITIONALRENDERNVXPROC glEndConditionalRenderNVX
dim shared as PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC glMultiDrawArraysIndirectBindlessNV
dim shared as PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC glMultiDrawElementsIndirectBindlessNV
dim shared as PFNGLGETTEXTUREHANDLENVPROC glGetTextureHandleNV
dim shared as PFNGLGETTEXTURESAMPLERHANDLENVPROC glGetTextureSamplerHandleNV
dim shared as PFNGLMAKETEXTUREHANDLERESIDENTNVPROC glMakeTextureHandleResidentNV
dim shared as PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC glMakeTextureHandleNonResidentNV
dim shared as PFNGLGETIMAGEHANDLENVPROC glGetImageHandleNV
dim shared as PFNGLMAKEIMAGEHANDLERESIDENTNVPROC glMakeImageHandleResidentNV
dim shared as PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC glMakeImageHandleNonResidentNV
dim shared as PFNGLUNIFORMHANDLEUI64NVPROC glUniformHandleui64NV
dim shared as PFNGLUNIFORMHANDLEUI64VNVPROC glUniformHandleui64vNV
dim shared as PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC glProgramUniformHandleui64NV
dim shared as PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC glProgramUniformHandleui64vNV
dim shared as PFNGLISTEXTUREHANDLERESIDENTNVPROC glIsTextureHandleResidentNV
dim shared as PFNGLISIMAGEHANDLERESIDENTNVPROC glIsImageHandleResidentNV
dim shared as PFNGLBLENDPARAMETERINVPROC glBlendParameteriNV
dim shared as PFNGLBLENDBARRIERNVPROC glBlendBarrierNV
dim shared as PFNGLBEGINCONDITIONALRENDERNVPROC glBeginConditionalRenderNV
dim shared as PFNGLENDCONDITIONALRENDERNVPROC glEndConditionalRenderNV
dim shared as PFNGLCOPYIMAGESUBDATANVPROC glCopyImageSubDataNV
dim shared as PFNGLDEPTHRANGEDNVPROC glDepthRangedNV
dim shared as PFNGLCLEARDEPTHDNVPROC glClearDepthdNV
dim shared as PFNGLDEPTHBOUNDSDNVPROC glDepthBoundsdNV
dim shared as PFNGLDRAWTEXTURENVPROC glDrawTextureNV
dim shared as PFNGLMAPCONTROLPOINTSNVPROC glMapControlPointsNV
dim shared as PFNGLMAPPARAMETERIVNVPROC glMapParameterivNV
dim shared as PFNGLMAPPARAMETERFVNVPROC glMapParameterfvNV
dim shared as PFNGLGETMAPCONTROLPOINTSNVPROC glGetMapControlPointsNV
dim shared as PFNGLGETMAPPARAMETERIVNVPROC glGetMapParameterivNV
dim shared as PFNGLGETMAPPARAMETERFVNVPROC glGetMapParameterfvNV
dim shared as PFNGLGETMAPATTRIBPARAMETERIVNVPROC glGetMapAttribParameterivNV
dim shared as PFNGLGETMAPATTRIBPARAMETERFVNVPROC glGetMapAttribParameterfvNV
dim shared as PFNGLEVALMAPSNVPROC glEvalMapsNV
dim shared as PFNGLGETMULTISAMPLEFVNVPROC glGetMultisamplefvNV
dim shared as PFNGLSAMPLEMASKINDEXEDNVPROC glSampleMaskIndexedNV
dim shared as PFNGLTEXRENDERBUFFERNVPROC glTexRenderbufferNV
dim shared as PFNGLDELETEFENCESNVPROC glDeleteFencesNV
dim shared as PFNGLGENFENCESNVPROC glGenFencesNV
dim shared as PFNGLISFENCENVPROC glIsFenceNV
dim shared as PFNGLTESTFENCENVPROC glTestFenceNV
dim shared as PFNGLGETFENCEIVNVPROC glGetFenceivNV
dim shared as PFNGLFINISHFENCENVPROC glFinishFenceNV
dim shared as PFNGLSETFENCENVPROC glSetFenceNV
dim shared as PFNGLPROGRAMNAMEDPARAMETER4FNVPROC glProgramNamedParameter4fNV
dim shared as PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC glProgramNamedParameter4fvNV
dim shared as PFNGLPROGRAMNAMEDPARAMETER4DNVPROC glProgramNamedParameter4dNV
dim shared as PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC glProgramNamedParameter4dvNV
dim shared as PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC glGetProgramNamedParameterfvNV
dim shared as PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC glGetProgramNamedParameterdvNV
dim shared as PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC glRenderbufferStorageMultisampleCoverageNV
dim shared as PFNGLPROGRAMVERTEXLIMITNVPROC glProgramVertexLimitNV
dim shared as PFNGLFRAMEBUFFERTEXTUREEXTPROC glFramebufferTextureEXT
dim shared as PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC glFramebufferTextureLayerEXT
dim shared as PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC glFramebufferTextureFaceEXT
dim shared as PFNGLPROGRAMLOCALPARAMETERI4INVPROC glProgramLocalParameterI4iNV
dim shared as PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC glProgramLocalParameterI4ivNV
dim shared as PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC glProgramLocalParametersI4ivNV
dim shared as PFNGLPROGRAMLOCALPARAMETERI4UINVPROC glProgramLocalParameterI4uiNV
dim shared as PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC glProgramLocalParameterI4uivNV
dim shared as PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC glProgramLocalParametersI4uivNV
dim shared as PFNGLPROGRAMENVPARAMETERI4INVPROC glProgramEnvParameterI4iNV
dim shared as PFNGLPROGRAMENVPARAMETERI4IVNVPROC glProgramEnvParameterI4ivNV
dim shared as PFNGLPROGRAMENVPARAMETERSI4IVNVPROC glProgramEnvParametersI4ivNV
dim shared as PFNGLPROGRAMENVPARAMETERI4UINVPROC glProgramEnvParameterI4uiNV
dim shared as PFNGLPROGRAMENVPARAMETERI4UIVNVPROC glProgramEnvParameterI4uivNV
dim shared as PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC glProgramEnvParametersI4uivNV
dim shared as PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC glGetProgramLocalParameterIivNV
dim shared as PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC glGetProgramLocalParameterIuivNV
dim shared as PFNGLGETPROGRAMENVPARAMETERIIVNVPROC glGetProgramEnvParameterIivNV
dim shared as PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC glGetProgramEnvParameterIuivNV
dim shared as PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC glProgramSubroutineParametersuivNV
dim shared as PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC glGetProgramSubroutineParameteruivNV
dim shared as PFNGLUNIFORM1I64NVPROC glUniform1i64NV
dim shared as PFNGLUNIFORM2I64NVPROC glUniform2i64NV
dim shared as PFNGLUNIFORM3I64NVPROC glUniform3i64NV
dim shared as PFNGLUNIFORM4I64NVPROC glUniform4i64NV
dim shared as PFNGLUNIFORM1I64VNVPROC glUniform1i64vNV
dim shared as PFNGLUNIFORM2I64VNVPROC glUniform2i64vNV
dim shared as PFNGLUNIFORM3I64VNVPROC glUniform3i64vNV
dim shared as PFNGLUNIFORM4I64VNVPROC glUniform4i64vNV
dim shared as PFNGLUNIFORM1UI64NVPROC glUniform1ui64NV
dim shared as PFNGLUNIFORM2UI64NVPROC glUniform2ui64NV
dim shared as PFNGLUNIFORM3UI64NVPROC glUniform3ui64NV
dim shared as PFNGLUNIFORM4UI64NVPROC glUniform4ui64NV
dim shared as PFNGLUNIFORM1UI64VNVPROC glUniform1ui64vNV
dim shared as PFNGLUNIFORM2UI64VNVPROC glUniform2ui64vNV
dim shared as PFNGLUNIFORM3UI64VNVPROC glUniform3ui64vNV
dim shared as PFNGLUNIFORM4UI64VNVPROC glUniform4ui64vNV
dim shared as PFNGLGETUNIFORMI64VNVPROC glGetUniformi64vNV
dim shared as PFNGLPROGRAMUNIFORM1I64NVPROC glProgramUniform1i64NV
dim shared as PFNGLPROGRAMUNIFORM2I64NVPROC glProgramUniform2i64NV
dim shared as PFNGLPROGRAMUNIFORM3I64NVPROC glProgramUniform3i64NV
dim shared as PFNGLPROGRAMUNIFORM4I64NVPROC glProgramUniform4i64NV
dim shared as PFNGLPROGRAMUNIFORM1I64VNVPROC glProgramUniform1i64vNV
dim shared as PFNGLPROGRAMUNIFORM2I64VNVPROC glProgramUniform2i64vNV
dim shared as PFNGLPROGRAMUNIFORM3I64VNVPROC glProgramUniform3i64vNV
dim shared as PFNGLPROGRAMUNIFORM4I64VNVPROC glProgramUniform4i64vNV
dim shared as PFNGLPROGRAMUNIFORM1UI64NVPROC glProgramUniform1ui64NV
dim shared as PFNGLPROGRAMUNIFORM2UI64NVPROC glProgramUniform2ui64NV
dim shared as PFNGLPROGRAMUNIFORM3UI64NVPROC glProgramUniform3ui64NV
dim shared as PFNGLPROGRAMUNIFORM4UI64NVPROC glProgramUniform4ui64NV
dim shared as PFNGLPROGRAMUNIFORM1UI64VNVPROC glProgramUniform1ui64vNV
dim shared as PFNGLPROGRAMUNIFORM2UI64VNVPROC glProgramUniform2ui64vNV
dim shared as PFNGLPROGRAMUNIFORM3UI64VNVPROC glProgramUniform3ui64vNV
dim shared as PFNGLPROGRAMUNIFORM4UI64VNVPROC glProgramUniform4ui64vNV
dim shared as PFNGLVERTEX2HNVPROC glVertex2hNV
dim shared as PFNGLVERTEX2HVNVPROC glVertex2hvNV
dim shared as PFNGLVERTEX3HNVPROC glVertex3hNV
dim shared as PFNGLVERTEX3HVNVPROC glVertex3hvNV
dim shared as PFNGLVERTEX4HNVPROC glVertex4hNV
dim shared as PFNGLVERTEX4HVNVPROC glVertex4hvNV
dim shared as PFNGLNORMAL3HNVPROC glNormal3hNV
dim shared as PFNGLNORMAL3HVNVPROC glNormal3hvNV
dim shared as PFNGLCOLOR3HNVPROC glColor3hNV
dim shared as PFNGLCOLOR3HVNVPROC glColor3hvNV
dim shared as PFNGLCOLOR4HNVPROC glColor4hNV
dim shared as PFNGLCOLOR4HVNVPROC glColor4hvNV
dim shared as PFNGLTEXCOORD1HNVPROC glTexCoord1hNV
dim shared as PFNGLTEXCOORD1HVNVPROC glTexCoord1hvNV
dim shared as PFNGLTEXCOORD2HNVPROC glTexCoord2hNV
dim shared as PFNGLTEXCOORD2HVNVPROC glTexCoord2hvNV
dim shared as PFNGLTEXCOORD3HNVPROC glTexCoord3hNV
dim shared as PFNGLTEXCOORD3HVNVPROC glTexCoord3hvNV
dim shared as PFNGLTEXCOORD4HNVPROC glTexCoord4hNV
dim shared as PFNGLTEXCOORD4HVNVPROC glTexCoord4hvNV
dim shared as PFNGLMULTITEXCOORD1HNVPROC glMultiTexCoord1hNV
dim shared as PFNGLMULTITEXCOORD1HVNVPROC glMultiTexCoord1hvNV
dim shared as PFNGLMULTITEXCOORD2HNVPROC glMultiTexCoord2hNV
dim shared as PFNGLMULTITEXCOORD2HVNVPROC glMultiTexCoord2hvNV
dim shared as PFNGLMULTITEXCOORD3HNVPROC glMultiTexCoord3hNV
dim shared as PFNGLMULTITEXCOORD3HVNVPROC glMultiTexCoord3hvNV
dim shared as PFNGLMULTITEXCOORD4HNVPROC glMultiTexCoord4hNV
dim shared as PFNGLMULTITEXCOORD4HVNVPROC glMultiTexCoord4hvNV
dim shared as PFNGLFOGCOORDHNVPROC glFogCoordhNV
dim shared as PFNGLFOGCOORDHVNVPROC glFogCoordhvNV
dim shared as PFNGLSECONDARYCOLOR3HNVPROC glSecondaryColor3hNV
dim shared as PFNGLSECONDARYCOLOR3HVNVPROC glSecondaryColor3hvNV
dim shared as PFNGLVERTEXWEIGHTHNVPROC glVertexWeighthNV
dim shared as PFNGLVERTEXWEIGHTHVNVPROC glVertexWeighthvNV
dim shared as PFNGLVERTEXATTRIB1HNVPROC glVertexAttrib1hNV
dim shared as PFNGLVERTEXATTRIB1HVNVPROC glVertexAttrib1hvNV
dim shared as PFNGLVERTEXATTRIB2HNVPROC glVertexAttrib2hNV
dim shared as PFNGLVERTEXATTRIB2HVNVPROC glVertexAttrib2hvNV
dim shared as PFNGLVERTEXATTRIB3HNVPROC glVertexAttrib3hNV
dim shared as PFNGLVERTEXATTRIB3HVNVPROC glVertexAttrib3hvNV
dim shared as PFNGLVERTEXATTRIB4HNVPROC glVertexAttrib4hNV
dim shared as PFNGLVERTEXATTRIB4HVNVPROC glVertexAttrib4hvNV
dim shared as PFNGLVERTEXATTRIBS1HVNVPROC glVertexAttribs1hvNV
dim shared as PFNGLVERTEXATTRIBS2HVNVPROC glVertexAttribs2hvNV
dim shared as PFNGLVERTEXATTRIBS3HVNVPROC glVertexAttribs3hvNV
dim shared as PFNGLVERTEXATTRIBS4HVNVPROC glVertexAttribs4hvNV
dim shared as PFNGLGENOCCLUSIONQUERIESNVPROC glGenOcclusionQueriesNV
dim shared as PFNGLDELETEOCCLUSIONQUERIESNVPROC glDeleteOcclusionQueriesNV
dim shared as PFNGLISOCCLUSIONQUERYNVPROC glIsOcclusionQueryNV
dim shared as PFNGLBEGINOCCLUSIONQUERYNVPROC glBeginOcclusionQueryNV
dim shared as PFNGLENDOCCLUSIONQUERYNVPROC glEndOcclusionQueryNV
dim shared as PFNGLGETOCCLUSIONQUERYIVNVPROC glGetOcclusionQueryivNV
dim shared as PFNGLGETOCCLUSIONQUERYUIVNVPROC glGetOcclusionQueryuivNV
dim shared as PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC glProgramBufferParametersfvNV
dim shared as PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC glProgramBufferParametersIivNV
dim shared as PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC glProgramBufferParametersIuivNV
dim shared as PFNGLGENPATHSNVPROC glGenPathsNV
dim shared as PFNGLDELETEPATHSNVPROC glDeletePathsNV
dim shared as PFNGLISPATHNVPROC glIsPathNV
dim shared as PFNGLPATHCOMMANDSNVPROC glPathCommandsNV
dim shared as PFNGLPATHCOORDSNVPROC glPathCoordsNV
dim shared as PFNGLPATHSUBCOMMANDSNVPROC glPathSubCommandsNV
dim shared as PFNGLPATHSUBCOORDSNVPROC glPathSubCoordsNV
dim shared as PFNGLPATHSTRINGNVPROC glPathStringNV
dim shared as PFNGLPATHGLYPHSNVPROC glPathGlyphsNV
dim shared as PFNGLPATHGLYPHRANGENVPROC glPathGlyphRangeNV
dim shared as PFNGLWEIGHTPATHSNVPROC glWeightPathsNV
dim shared as PFNGLCOPYPATHNVPROC glCopyPathNV
dim shared as PFNGLINTERPOLATEPATHSNVPROC glInterpolatePathsNV
dim shared as PFNGLTRANSFORMPATHNVPROC glTransformPathNV
dim shared as PFNGLPATHPARAMETERIVNVPROC glPathParameterivNV
dim shared as PFNGLPATHPARAMETERINVPROC glPathParameteriNV
dim shared as PFNGLPATHPARAMETERFVNVPROC glPathParameterfvNV
dim shared as PFNGLPATHPARAMETERFNVPROC glPathParameterfNV
dim shared as PFNGLPATHDASHARRAYNVPROC glPathDashArrayNV
dim shared as PFNGLPATHSTENCILFUNCNVPROC glPathStencilFuncNV
dim shared as PFNGLPATHSTENCILDEPTHOFFSETNVPROC glPathStencilDepthOffsetNV
dim shared as PFNGLSTENCILFILLPATHNVPROC glStencilFillPathNV
dim shared as PFNGLSTENCILSTROKEPATHNVPROC glStencilStrokePathNV
dim shared as PFNGLSTENCILFILLPATHINSTANCEDNVPROC glStencilFillPathInstancedNV
dim shared as PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC glStencilStrokePathInstancedNV
dim shared as PFNGLPATHCOVERDEPTHFUNCNVPROC glPathCoverDepthFuncNV
dim shared as PFNGLPATHCOLORGENNVPROC glPathColorGenNV
dim shared as PFNGLPATHTEXGENNVPROC glPathTexGenNV
dim shared as PFNGLPATHFOGGENNVPROC glPathFogGenNV
dim shared as PFNGLCOVERFILLPATHNVPROC glCoverFillPathNV
dim shared as PFNGLCOVERSTROKEPATHNVPROC glCoverStrokePathNV
dim shared as PFNGLCOVERFILLPATHINSTANCEDNVPROC glCoverFillPathInstancedNV
dim shared as PFNGLCOVERSTROKEPATHINSTANCEDNVPROC glCoverStrokePathInstancedNV
dim shared as PFNGLGETPATHPARAMETERIVNVPROC glGetPathParameterivNV
dim shared as PFNGLGETPATHPARAMETERFVNVPROC glGetPathParameterfvNV
dim shared as PFNGLGETPATHCOMMANDSNVPROC glGetPathCommandsNV
dim shared as PFNGLGETPATHCOORDSNVPROC glGetPathCoordsNV
dim shared as PFNGLGETPATHDASHARRAYNVPROC glGetPathDashArrayNV
dim shared as PFNGLGETPATHMETRICSNVPROC glGetPathMetricsNV
dim shared as PFNGLGETPATHMETRICRANGENVPROC glGetPathMetricRangeNV
dim shared as PFNGLGETPATHSPACINGNVPROC glGetPathSpacingNV
dim shared as PFNGLGETPATHCOLORGENIVNVPROC glGetPathColorGenivNV
dim shared as PFNGLGETPATHCOLORGENFVNVPROC glGetPathColorGenfvNV
dim shared as PFNGLGETPATHTEXGENIVNVPROC glGetPathTexGenivNV
dim shared as PFNGLGETPATHTEXGENFVNVPROC glGetPathTexGenfvNV
dim shared as PFNGLISPOINTINFILLPATHNVPROC glIsPointInFillPathNV
dim shared as PFNGLISPOINTINSTROKEPATHNVPROC glIsPointInStrokePathNV
dim shared as PFNGLGETPATHLENGTHNVPROC glGetPathLengthNV
dim shared as PFNGLPOINTALONGPATHNVPROC glPointAlongPathNV
dim shared as PFNGLPIXELDATARANGENVPROC glPixelDataRangeNV
dim shared as PFNGLFLUSHPIXELDATARANGENVPROC glFlushPixelDataRangeNV
dim shared as PFNGLPOINTPARAMETERINVPROC glPointParameteriNV
dim shared as PFNGLPOINTPARAMETERIVNVPROC glPointParameterivNV
dim shared as PFNGLPRESENTFRAMEKEYEDNVPROC glPresentFrameKeyedNV
dim shared as PFNGLPRESENTFRAMEDUALFILLNVPROC glPresentFrameDualFillNV
dim shared as PFNGLGETVIDEOIVNVPROC glGetVideoivNV
dim shared as PFNGLGETVIDEOUIVNVPROC glGetVideouivNV
dim shared as PFNGLGETVIDEOI64VNVPROC glGetVideoi64vNV
dim shared as PFNGLGETVIDEOUI64VNVPROC glGetVideoui64vNV
dim shared as PFNGLPRIMITIVERESTARTNVPROC glPrimitiveRestartNV
dim shared as PFNGLPRIMITIVERESTARTINDEXNVPROC glPrimitiveRestartIndexNV
dim shared as PFNGLCOMBINERPARAMETERFVNVPROC glCombinerParameterfvNV
dim shared as PFNGLCOMBINERPARAMETERFNVPROC glCombinerParameterfNV
dim shared as PFNGLCOMBINERPARAMETERIVNVPROC glCombinerParameterivNV
dim shared as PFNGLCOMBINERPARAMETERINVPROC glCombinerParameteriNV
dim shared as PFNGLCOMBINERINPUTNVPROC glCombinerInputNV
dim shared as PFNGLCOMBINEROUTPUTNVPROC glCombinerOutputNV
dim shared as PFNGLFINALCOMBINERINPUTNVPROC glFinalCombinerInputNV
dim shared as PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC glGetCombinerInputParameterfvNV
dim shared as PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC glGetCombinerInputParameterivNV
dim shared as PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC glGetCombinerOutputParameterfvNV
dim shared as PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC glGetCombinerOutputParameterivNV
dim shared as PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC glGetFinalCombinerInputParameterfvNV
dim shared as PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC glGetFinalCombinerInputParameterivNV
dim shared as PFNGLCOMBINERSTAGEPARAMETERFVNVPROC glCombinerStageParameterfvNV
dim shared as PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC glGetCombinerStageParameterfvNV
dim shared as PFNGLMAKEBUFFERRESIDENTNVPROC glMakeBufferResidentNV
dim shared as PFNGLMAKEBUFFERNONRESIDENTNVPROC glMakeBufferNonResidentNV
dim shared as PFNGLISBUFFERRESIDENTNVPROC glIsBufferResidentNV
dim shared as PFNGLMAKENAMEDBUFFERRESIDENTNVPROC glMakeNamedBufferResidentNV
dim shared as PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC glMakeNamedBufferNonResidentNV
dim shared as PFNGLISNAMEDBUFFERRESIDENTNVPROC glIsNamedBufferResidentNV
dim shared as PFNGLGETBUFFERPARAMETERUI64VNVPROC glGetBufferParameterui64vNV
dim shared as PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC glGetNamedBufferParameterui64vNV
dim shared as PFNGLGETINTEGERUI64VNVPROC glGetIntegerui64vNV
dim shared as PFNGLUNIFORMUI64NVPROC glUniformui64NV
dim shared as PFNGLUNIFORMUI64VNVPROC glUniformui64vNV
dim shared as PFNGLGETUNIFORMUI64VNVPROC glGetUniformui64vNV
dim shared as PFNGLPROGRAMUNIFORMUI64NVPROC glProgramUniformui64NV
dim shared as PFNGLPROGRAMUNIFORMUI64VNVPROC glProgramUniformui64vNV
dim shared as PFNGLTEXTUREBARRIERNVPROC glTextureBarrierNV
dim shared as PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC glTexImage2DMultisampleCoverageNV
dim shared as PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC glTexImage3DMultisampleCoverageNV
dim shared as PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC glTextureImage2DMultisampleNV
dim shared as PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC glTextureImage3DMultisampleNV
dim shared as PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC glTextureImage2DMultisampleCoverageNV
dim shared as PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC glTextureImage3DMultisampleCoverageNV
dim shared as PFNGLBEGINTRANSFORMFEEDBACKNVPROC glBeginTransformFeedbackNV
dim shared as PFNGLENDTRANSFORMFEEDBACKNVPROC glEndTransformFeedbackNV
dim shared as PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC glTransformFeedbackAttribsNV
dim shared as PFNGLBINDBUFFERRANGENVPROC glBindBufferRangeNV
dim shared as PFNGLBINDBUFFEROFFSETNVPROC glBindBufferOffsetNV
dim shared as PFNGLBINDBUFFERBASENVPROC glBindBufferBaseNV
dim shared as PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC glTransformFeedbackVaryingsNV
dim shared as PFNGLACTIVEVARYINGNVPROC glActiveVaryingNV
dim shared as PFNGLGETVARYINGLOCATIONNVPROC glGetVaryingLocationNV
dim shared as PFNGLGETACTIVEVARYINGNVPROC glGetActiveVaryingNV
dim shared as PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC glGetTransformFeedbackVaryingNV
dim shared as PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC glTransformFeedbackStreamAttribsNV
dim shared as PFNGLBINDTRANSFORMFEEDBACKNVPROC glBindTransformFeedbackNV
dim shared as PFNGLDELETETRANSFORMFEEDBACKSNVPROC glDeleteTransformFeedbacksNV
dim shared as PFNGLGENTRANSFORMFEEDBACKSNVPROC glGenTransformFeedbacksNV
dim shared as PFNGLISTRANSFORMFEEDBACKNVPROC glIsTransformFeedbackNV
dim shared as PFNGLPAUSETRANSFORMFEEDBACKNVPROC glPauseTransformFeedbackNV
dim shared as PFNGLRESUMETRANSFORMFEEDBACKNVPROC glResumeTransformFeedbackNV
dim shared as PFNGLDRAWTRANSFORMFEEDBACKNVPROC glDrawTransformFeedbackNV
dim shared as PFNGLVDPAUINITNVPROC glVDPAUInitNV
dim shared as PFNGLVDPAUFININVPROC glVDPAUFiniNV
dim shared as PFNGLVDPAUREGISTERVIDEOSURFACENVPROC glVDPAURegisterVideoSurfaceNV
dim shared as PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC glVDPAURegisterOutputSurfaceNV
dim shared as PFNGLVDPAUISSURFACENVPROC glVDPAUIsSurfaceNV
dim shared as PFNGLVDPAUUNREGISTERSURFACENVPROC glVDPAUUnregisterSurfaceNV
dim shared as PFNGLVDPAUGETSURFACEIVNVPROC glVDPAUGetSurfaceivNV
dim shared as PFNGLVDPAUSURFACEACCESSNVPROC glVDPAUSurfaceAccessNV
dim shared as PFNGLVDPAUMAPSURFACESNVPROC glVDPAUMapSurfacesNV
dim shared as PFNGLVDPAUUNMAPSURFACESNVPROC glVDPAUUnmapSurfacesNV
dim shared as PFNGLFLUSHVERTEXARRAYRANGENVPROC glFlushVertexArrayRangeNV
dim shared as PFNGLVERTEXARRAYRANGENVPROC glVertexArrayRangeNV
dim shared as PFNGLVERTEXATTRIBL1I64NVPROC glVertexAttribL1i64NV
dim shared as PFNGLVERTEXATTRIBL2I64NVPROC glVertexAttribL2i64NV
dim shared as PFNGLVERTEXATTRIBL3I64NVPROC glVertexAttribL3i64NV
dim shared as PFNGLVERTEXATTRIBL4I64NVPROC glVertexAttribL4i64NV
dim shared as PFNGLVERTEXATTRIBL1I64VNVPROC glVertexAttribL1i64vNV
dim shared as PFNGLVERTEXATTRIBL2I64VNVPROC glVertexAttribL2i64vNV
dim shared as PFNGLVERTEXATTRIBL3I64VNVPROC glVertexAttribL3i64vNV
dim shared as PFNGLVERTEXATTRIBL4I64VNVPROC glVertexAttribL4i64vNV
dim shared as PFNGLVERTEXATTRIBL1UI64NVPROC glVertexAttribL1ui64NV
dim shared as PFNGLVERTEXATTRIBL2UI64NVPROC glVertexAttribL2ui64NV
dim shared as PFNGLVERTEXATTRIBL3UI64NVPROC glVertexAttribL3ui64NV
dim shared as PFNGLVERTEXATTRIBL4UI64NVPROC glVertexAttribL4ui64NV
dim shared as PFNGLVERTEXATTRIBL1UI64VNVPROC glVertexAttribL1ui64vNV
dim shared as PFNGLVERTEXATTRIBL2UI64VNVPROC glVertexAttribL2ui64vNV
dim shared as PFNGLVERTEXATTRIBL3UI64VNVPROC glVertexAttribL3ui64vNV
dim shared as PFNGLVERTEXATTRIBL4UI64VNVPROC glVertexAttribL4ui64vNV
dim shared as PFNGLGETVERTEXATTRIBLI64VNVPROC glGetVertexAttribLi64vNV
dim shared as PFNGLGETVERTEXATTRIBLUI64VNVPROC glGetVertexAttribLui64vNV
dim shared as PFNGLVERTEXATTRIBLFORMATNVPROC glVertexAttribLFormatNV
dim shared as PFNGLBUFFERADDRESSRANGENVPROC glBufferAddressRangeNV
dim shared as PFNGLVERTEXFORMATNVPROC glVertexFormatNV
dim shared as PFNGLNORMALFORMATNVPROC glNormalFormatNV
dim shared as PFNGLCOLORFORMATNVPROC glColorFormatNV
dim shared as PFNGLINDEXFORMATNVPROC glIndexFormatNV
dim shared as PFNGLTEXCOORDFORMATNVPROC glTexCoordFormatNV
dim shared as PFNGLEDGEFLAGFORMATNVPROC glEdgeFlagFormatNV
dim shared as PFNGLSECONDARYCOLORFORMATNVPROC glSecondaryColorFormatNV
dim shared as PFNGLFOGCOORDFORMATNVPROC glFogCoordFormatNV
dim shared as PFNGLVERTEXATTRIBFORMATNVPROC glVertexAttribFormatNV
dim shared as PFNGLVERTEXATTRIBIFORMATNVPROC glVertexAttribIFormatNV
dim shared as PFNGLGETINTEGERUI64I_VNVPROC glGetIntegerui64i_vNV
dim shared as PFNGLAREPROGRAMSRESIDENTNVPROC glAreProgramsResidentNV
dim shared as PFNGLBINDPROGRAMNVPROC glBindProgramNV
dim shared as PFNGLDELETEPROGRAMSNVPROC glDeleteProgramsNV
dim shared as PFNGLEXECUTEPROGRAMNVPROC glExecuteProgramNV
dim shared as PFNGLGENPROGRAMSNVPROC glGenProgramsNV
dim shared as PFNGLGETPROGRAMPARAMETERDVNVPROC glGetProgramParameterdvNV
dim shared as PFNGLGETPROGRAMPARAMETERFVNVPROC glGetProgramParameterfvNV
dim shared as PFNGLGETPROGRAMIVNVPROC glGetProgramivNV
dim shared as PFNGLGETPROGRAMSTRINGNVPROC glGetProgramStringNV
dim shared as PFNGLGETTRACKMATRIXIVNVPROC glGetTrackMatrixivNV
dim shared as PFNGLGETVERTEXATTRIBDVNVPROC glGetVertexAttribdvNV
dim shared as PFNGLGETVERTEXATTRIBFVNVPROC glGetVertexAttribfvNV
dim shared as PFNGLGETVERTEXATTRIBIVNVPROC glGetVertexAttribivNV
dim shared as PFNGLGETVERTEXATTRIBPOINTERVNVPROC glGetVertexAttribPointervNV
dim shared as PFNGLISPROGRAMNVPROC glIsProgramNV
dim shared as PFNGLLOADPROGRAMNVPROC glLoadProgramNV
dim shared as PFNGLPROGRAMPARAMETER4DNVPROC glProgramParameter4dNV
dim shared as PFNGLPROGRAMPARAMETER4DVNVPROC glProgramParameter4dvNV
dim shared as PFNGLPROGRAMPARAMETER4FNVPROC glProgramParameter4fNV
dim shared as PFNGLPROGRAMPARAMETER4FVNVPROC glProgramParameter4fvNV
dim shared as PFNGLPROGRAMPARAMETERS4DVNVPROC glProgramParameters4dvNV
dim shared as PFNGLPROGRAMPARAMETERS4FVNVPROC glProgramParameters4fvNV
dim shared as PFNGLREQUESTRESIDENTPROGRAMSNVPROC glRequestResidentProgramsNV
dim shared as PFNGLTRACKMATRIXNVPROC glTrackMatrixNV
dim shared as PFNGLVERTEXATTRIBPOINTERNVPROC glVertexAttribPointerNV
dim shared as PFNGLVERTEXATTRIB1DNVPROC glVertexAttrib1dNV
dim shared as PFNGLVERTEXATTRIB1DVNVPROC glVertexAttrib1dvNV
dim shared as PFNGLVERTEXATTRIB1FNVPROC glVertexAttrib1fNV
dim shared as PFNGLVERTEXATTRIB1FVNVPROC glVertexAttrib1fvNV
dim shared as PFNGLVERTEXATTRIB1SNVPROC glVertexAttrib1sNV
dim shared as PFNGLVERTEXATTRIB1SVNVPROC glVertexAttrib1svNV
dim shared as PFNGLVERTEXATTRIB2DNVPROC glVertexAttrib2dNV
dim shared as PFNGLVERTEXATTRIB2DVNVPROC glVertexAttrib2dvNV
dim shared as PFNGLVERTEXATTRIB2FNVPROC glVertexAttrib2fNV
dim shared as PFNGLVERTEXATTRIB2FVNVPROC glVertexAttrib2fvNV
dim shared as PFNGLVERTEXATTRIB2SNVPROC glVertexAttrib2sNV
dim shared as PFNGLVERTEXATTRIB2SVNVPROC glVertexAttrib2svNV
dim shared as PFNGLVERTEXATTRIB3DNVPROC glVertexAttrib3dNV
dim shared as PFNGLVERTEXATTRIB3DVNVPROC glVertexAttrib3dvNV
dim shared as PFNGLVERTEXATTRIB3FNVPROC glVertexAttrib3fNV
dim shared as PFNGLVERTEXATTRIB3FVNVPROC glVertexAttrib3fvNV
dim shared as PFNGLVERTEXATTRIB3SNVPROC glVertexAttrib3sNV
dim shared as PFNGLVERTEXATTRIB3SVNVPROC glVertexAttrib3svNV
dim shared as PFNGLVERTEXATTRIB4DNVPROC glVertexAttrib4dNV
dim shared as PFNGLVERTEXATTRIB4DVNVPROC glVertexAttrib4dvNV
dim shared as PFNGLVERTEXATTRIB4FNVPROC glVertexAttrib4fNV
dim shared as PFNGLVERTEXATTRIB4FVNVPROC glVertexAttrib4fvNV
dim shared as PFNGLVERTEXATTRIB4SNVPROC glVertexAttrib4sNV
dim shared as PFNGLVERTEXATTRIB4SVNVPROC glVertexAttrib4svNV
dim shared as PFNGLVERTEXATTRIB4UBNVPROC glVertexAttrib4ubNV
dim shared as PFNGLVERTEXATTRIB4UBVNVPROC glVertexAttrib4ubvNV
dim shared as PFNGLVERTEXATTRIBS1DVNVPROC glVertexAttribs1dvNV
dim shared as PFNGLVERTEXATTRIBS1FVNVPROC glVertexAttribs1fvNV
dim shared as PFNGLVERTEXATTRIBS1SVNVPROC glVertexAttribs1svNV
dim shared as PFNGLVERTEXATTRIBS2DVNVPROC glVertexAttribs2dvNV
dim shared as PFNGLVERTEXATTRIBS2FVNVPROC glVertexAttribs2fvNV
dim shared as PFNGLVERTEXATTRIBS2SVNVPROC glVertexAttribs2svNV
dim shared as PFNGLVERTEXATTRIBS3DVNVPROC glVertexAttribs3dvNV
dim shared as PFNGLVERTEXATTRIBS3FVNVPROC glVertexAttribs3fvNV
dim shared as PFNGLVERTEXATTRIBS3SVNVPROC glVertexAttribs3svNV
dim shared as PFNGLVERTEXATTRIBS4DVNVPROC glVertexAttribs4dvNV
dim shared as PFNGLVERTEXATTRIBS4FVNVPROC glVertexAttribs4fvNV
dim shared as PFNGLVERTEXATTRIBS4SVNVPROC glVertexAttribs4svNV
dim shared as PFNGLVERTEXATTRIBS4UBVNVPROC glVertexAttribs4ubvNV
dim shared as PFNGLVERTEXATTRIBI1IEXTPROC glVertexAttribI1iEXT
dim shared as PFNGLVERTEXATTRIBI2IEXTPROC glVertexAttribI2iEXT
dim shared as PFNGLVERTEXATTRIBI3IEXTPROC glVertexAttribI3iEXT
dim shared as PFNGLVERTEXATTRIBI4IEXTPROC glVertexAttribI4iEXT
dim shared as PFNGLVERTEXATTRIBI1UIEXTPROC glVertexAttribI1uiEXT
dim shared as PFNGLVERTEXATTRIBI2UIEXTPROC glVertexAttribI2uiEXT
dim shared as PFNGLVERTEXATTRIBI3UIEXTPROC glVertexAttribI3uiEXT
dim shared as PFNGLVERTEXATTRIBI4UIEXTPROC glVertexAttribI4uiEXT
dim shared as PFNGLVERTEXATTRIBI1IVEXTPROC glVertexAttribI1ivEXT
dim shared as PFNGLVERTEXATTRIBI2IVEXTPROC glVertexAttribI2ivEXT
dim shared as PFNGLVERTEXATTRIBI3IVEXTPROC glVertexAttribI3ivEXT
dim shared as PFNGLVERTEXATTRIBI4IVEXTPROC glVertexAttribI4ivEXT
dim shared as PFNGLVERTEXATTRIBI1UIVEXTPROC glVertexAttribI1uivEXT
dim shared as PFNGLVERTEXATTRIBI2UIVEXTPROC glVertexAttribI2uivEXT
dim shared as PFNGLVERTEXATTRIBI3UIVEXTPROC glVertexAttribI3uivEXT
dim shared as PFNGLVERTEXATTRIBI4UIVEXTPROC glVertexAttribI4uivEXT
dim shared as PFNGLVERTEXATTRIBI4BVEXTPROC glVertexAttribI4bvEXT
dim shared as PFNGLVERTEXATTRIBI4SVEXTPROC glVertexAttribI4svEXT
dim shared as PFNGLVERTEXATTRIBI4UBVEXTPROC glVertexAttribI4ubvEXT
dim shared as PFNGLVERTEXATTRIBI4USVEXTPROC glVertexAttribI4usvEXT
dim shared as PFNGLVERTEXATTRIBIPOINTEREXTPROC glVertexAttribIPointerEXT
dim shared as PFNGLGETVERTEXATTRIBIIVEXTPROC glGetVertexAttribIivEXT
dim shared as PFNGLGETVERTEXATTRIBIUIVEXTPROC glGetVertexAttribIuivEXT
dim shared as PFNGLBEGINVIDEOCAPTURENVPROC glBeginVideoCaptureNV
dim shared as PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC glBindVideoCaptureStreamBufferNV
dim shared as PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC glBindVideoCaptureStreamTextureNV
dim shared as PFNGLENDVIDEOCAPTURENVPROC glEndVideoCaptureNV
dim shared as PFNGLGETVIDEOCAPTUREIVNVPROC glGetVideoCaptureivNV
dim shared as PFNGLGETVIDEOCAPTURESTREAMIVNVPROC glGetVideoCaptureStreamivNV
dim shared as PFNGLGETVIDEOCAPTURESTREAMFVNVPROC glGetVideoCaptureStreamfvNV
dim shared as PFNGLGETVIDEOCAPTURESTREAMDVNVPROC glGetVideoCaptureStreamdvNV
dim shared as PFNGLVIDEOCAPTURENVPROC glVideoCaptureNV
dim shared as PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC glVideoCaptureStreamParameterivNV
dim shared as PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC glVideoCaptureStreamParameterfvNV
dim shared as PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC glVideoCaptureStreamParameterdvNV
dim shared as PFNGLHINTPGIPROC glHintPGI
dim shared as PFNGLDETAILTEXFUNCSGISPROC glDetailTexFuncSGIS
dim shared as PFNGLGETDETAILTEXFUNCSGISPROC glGetDetailTexFuncSGIS
dim shared as PFNGLFOGFUNCSGISPROC glFogFuncSGIS
dim shared as PFNGLGETFOGFUNCSGISPROC glGetFogFuncSGIS
dim shared as PFNGLSAMPLEMASKSGISPROC glSampleMaskSGIS
dim shared as PFNGLSAMPLEPATTERNSGISPROC glSamplePatternSGIS
dim shared as PFNGLPIXELTEXGENPARAMETERISGISPROC glPixelTexGenParameteriSGIS
dim shared as PFNGLPIXELTEXGENPARAMETERIVSGISPROC glPixelTexGenParameterivSGIS
dim shared as PFNGLPIXELTEXGENPARAMETERFSGISPROC glPixelTexGenParameterfSGIS
dim shared as PFNGLPIXELTEXGENPARAMETERFVSGISPROC glPixelTexGenParameterfvSGIS
dim shared as PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC glGetPixelTexGenParameterivSGIS
dim shared as PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC glGetPixelTexGenParameterfvSGIS
dim shared as PFNGLPOINTPARAMETERFSGISPROC glPointParameterfSGIS
dim shared as PFNGLPOINTPARAMETERFVSGISPROC glPointParameterfvSGIS
dim shared as PFNGLSHARPENTEXFUNCSGISPROC glSharpenTexFuncSGIS
dim shared as PFNGLGETSHARPENTEXFUNCSGISPROC glGetSharpenTexFuncSGIS
dim shared as PFNGLTEXIMAGE4DSGISPROC glTexImage4DSGIS
dim shared as PFNGLTEXSUBIMAGE4DSGISPROC glTexSubImage4DSGIS
dim shared as PFNGLTEXTURECOLORMASKSGISPROC glTextureColorMaskSGIS
dim shared as PFNGLGETTEXFILTERFUNCSGISPROC glGetTexFilterFuncSGIS
dim shared as PFNGLTEXFILTERFUNCSGISPROC glTexFilterFuncSGIS
dim shared as PFNGLASYNCMARKERSGIXPROC glAsyncMarkerSGIX
dim shared as PFNGLFINISHASYNCSGIXPROC glFinishAsyncSGIX
dim shared as PFNGLPOLLASYNCSGIXPROC glPollAsyncSGIX
dim shared as PFNGLGENASYNCMARKERSSGIXPROC glGenAsyncMarkersSGIX
dim shared as PFNGLDELETEASYNCMARKERSSGIXPROC glDeleteAsyncMarkersSGIX
dim shared as PFNGLISASYNCMARKERSGIXPROC glIsAsyncMarkerSGIX
dim shared as PFNGLFLUSHRASTERSGIXPROC glFlushRasterSGIX
dim shared as PFNGLFRAGMENTCOLORMATERIALSGIXPROC glFragmentColorMaterialSGIX
dim shared as PFNGLFRAGMENTLIGHTFSGIXPROC glFragmentLightfSGIX
dim shared as PFNGLFRAGMENTLIGHTFVSGIXPROC glFragmentLightfvSGIX
dim shared as PFNGLFRAGMENTLIGHTISGIXPROC glFragmentLightiSGIX
dim shared as PFNGLFRAGMENTLIGHTIVSGIXPROC glFragmentLightivSGIX
dim shared as PFNGLFRAGMENTLIGHTMODELFSGIXPROC glFragmentLightModelfSGIX
dim shared as PFNGLFRAGMENTLIGHTMODELFVSGIXPROC glFragmentLightModelfvSGIX
dim shared as PFNGLFRAGMENTLIGHTMODELISGIXPROC glFragmentLightModeliSGIX
dim shared as PFNGLFRAGMENTLIGHTMODELIVSGIXPROC glFragmentLightModelivSGIX
dim shared as PFNGLFRAGMENTMATERIALFSGIXPROC glFragmentMaterialfSGIX
dim shared as PFNGLFRAGMENTMATERIALFVSGIXPROC glFragmentMaterialfvSGIX
dim shared as PFNGLFRAGMENTMATERIALISGIXPROC glFragmentMaterialiSGIX
dim shared as PFNGLFRAGMENTMATERIALIVSGIXPROC glFragmentMaterialivSGIX
dim shared as PFNGLGETFRAGMENTLIGHTFVSGIXPROC glGetFragmentLightfvSGIX
dim shared as PFNGLGETFRAGMENTLIGHTIVSGIXPROC glGetFragmentLightivSGIX
dim shared as PFNGLGETFRAGMENTMATERIALFVSGIXPROC glGetFragmentMaterialfvSGIX
dim shared as PFNGLGETFRAGMENTMATERIALIVSGIXPROC glGetFragmentMaterialivSGIX
dim shared as PFNGLLIGHTENVISGIXPROC glLightEnviSGIX
dim shared as PFNGLFRAMEZOOMSGIXPROC glFrameZoomSGIX
dim shared as PFNGLIGLOOINTERFACESGIXPROC glIglooInterfaceSGIX
dim shared as PFNGLGETINSTRUMENTSSGIXPROC glGetInstrumentsSGIX
dim shared as PFNGLINSTRUMENTSBUFFERSGIXPROC glInstrumentsBufferSGIX
dim shared as PFNGLPOLLINSTRUMENTSSGIXPROC glPollInstrumentsSGIX
dim shared as PFNGLREADINSTRUMENTSSGIXPROC glReadInstrumentsSGIX
dim shared as PFNGLSTARTINSTRUMENTSSGIXPROC glStartInstrumentsSGIX
dim shared as PFNGLSTOPINSTRUMENTSSGIXPROC glStopInstrumentsSGIX
dim shared as PFNGLGETLISTPARAMETERFVSGIXPROC glGetListParameterfvSGIX
dim shared as PFNGLGETLISTPARAMETERIVSGIXPROC glGetListParameterivSGIX
dim shared as PFNGLLISTPARAMETERFSGIXPROC glListParameterfSGIX
dim shared as PFNGLLISTPARAMETERFVSGIXPROC glListParameterfvSGIX
dim shared as PFNGLLISTPARAMETERISGIXPROC glListParameteriSGIX
dim shared as PFNGLLISTPARAMETERIVSGIXPROC glListParameterivSGIX
dim shared as PFNGLPIXELTEXGENSGIXPROC glPixelTexGenSGIX
dim shared as PFNGLDEFORMATIONMAP3DSGIXPROC glDeformationMap3dSGIX
dim shared as PFNGLDEFORMATIONMAP3FSGIXPROC glDeformationMap3fSGIX
dim shared as PFNGLDEFORMSGIXPROC glDeformSGIX
dim shared as PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC glLoadIdentityDeformationMapSGIX
dim shared as PFNGLREFERENCEPLANESGIXPROC glReferencePlaneSGIX
dim shared as PFNGLSPRITEPARAMETERFSGIXPROC glSpriteParameterfSGIX
dim shared as PFNGLSPRITEPARAMETERFVSGIXPROC glSpriteParameterfvSGIX
dim shared as PFNGLSPRITEPARAMETERISGIXPROC glSpriteParameteriSGIX
dim shared as PFNGLSPRITEPARAMETERIVSGIXPROC glSpriteParameterivSGIX
dim shared as PFNGLTAGSAMPLEBUFFERSGIXPROC glTagSampleBufferSGIX
dim shared as PFNGLCOLORTABLESGIPROC glColorTableSGI
dim shared as PFNGLCOLORTABLEPARAMETERFVSGIPROC glColorTableParameterfvSGI
dim shared as PFNGLCOLORTABLEPARAMETERIVSGIPROC glColorTableParameterivSGI
dim shared as PFNGLCOPYCOLORTABLESGIPROC glCopyColorTableSGI
dim shared as PFNGLGETCOLORTABLESGIPROC glGetColorTableSGI
dim shared as PFNGLGETCOLORTABLEPARAMETERFVSGIPROC glGetColorTableParameterfvSGI
dim shared as PFNGLGETCOLORTABLEPARAMETERIVSGIPROC glGetColorTableParameterivSGI
dim shared as PFNGLFINISHTEXTURESUNXPROC glFinishTextureSUNX
dim shared as PFNGLGLOBALALPHAFACTORBSUNPROC glGlobalAlphaFactorbSUN
dim shared as PFNGLGLOBALALPHAFACTORSSUNPROC glGlobalAlphaFactorsSUN
dim shared as PFNGLGLOBALALPHAFACTORISUNPROC glGlobalAlphaFactoriSUN
dim shared as PFNGLGLOBALALPHAFACTORFSUNPROC glGlobalAlphaFactorfSUN
dim shared as PFNGLGLOBALALPHAFACTORDSUNPROC glGlobalAlphaFactordSUN
dim shared as PFNGLGLOBALALPHAFACTORUBSUNPROC glGlobalAlphaFactorubSUN
dim shared as PFNGLGLOBALALPHAFACTORUSSUNPROC glGlobalAlphaFactorusSUN
dim shared as PFNGLGLOBALALPHAFACTORUISUNPROC glGlobalAlphaFactoruiSUN
dim shared as PFNGLDRAWMESHARRAYSSUNPROC glDrawMeshArraysSUN
dim shared as PFNGLREPLACEMENTCODEUISUNPROC glReplacementCodeuiSUN
dim shared as PFNGLREPLACEMENTCODEUSSUNPROC glReplacementCodeusSUN
dim shared as PFNGLREPLACEMENTCODEUBSUNPROC glReplacementCodeubSUN
dim shared as PFNGLREPLACEMENTCODEUIVSUNPROC glReplacementCodeuivSUN
dim shared as PFNGLREPLACEMENTCODEUSVSUNPROC glReplacementCodeusvSUN
dim shared as PFNGLREPLACEMENTCODEUBVSUNPROC glReplacementCodeubvSUN
dim shared as PFNGLREPLACEMENTCODEPOINTERSUNPROC glReplacementCodePointerSUN
dim shared as PFNGLCOLOR4UBVERTEX2FSUNPROC glColor4ubVertex2fSUN
dim shared as PFNGLCOLOR4UBVERTEX2FVSUNPROC glColor4ubVertex2fvSUN
dim shared as PFNGLCOLOR4UBVERTEX3FSUNPROC glColor4ubVertex3fSUN
dim shared as PFNGLCOLOR4UBVERTEX3FVSUNPROC glColor4ubVertex3fvSUN
dim shared as PFNGLCOLOR3FVERTEX3FSUNPROC glColor3fVertex3fSUN
dim shared as PFNGLCOLOR3FVERTEX3FVSUNPROC glColor3fVertex3fvSUN
dim shared as PFNGLNORMAL3FVERTEX3FSUNPROC glNormal3fVertex3fSUN
dim shared as PFNGLNORMAL3FVERTEX3FVSUNPROC glNormal3fVertex3fvSUN
dim shared as PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC glColor4fNormal3fVertex3fSUN
dim shared as PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC glColor4fNormal3fVertex3fvSUN
dim shared as PFNGLTEXCOORD2FVERTEX3FSUNPROC glTexCoord2fVertex3fSUN
dim shared as PFNGLTEXCOORD2FVERTEX3FVSUNPROC glTexCoord2fVertex3fvSUN
dim shared as PFNGLTEXCOORD4FVERTEX4FSUNPROC glTexCoord4fVertex4fSUN
dim shared as PFNGLTEXCOORD4FVERTEX4FVSUNPROC glTexCoord4fVertex4fvSUN
dim shared as PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC glTexCoord2fColor4ubVertex3fSUN
dim shared as PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC glTexCoord2fColor4ubVertex3fvSUN
dim shared as PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC glTexCoord2fColor3fVertex3fSUN
dim shared as PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC glTexCoord2fColor3fVertex3fvSUN
dim shared as PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC glTexCoord2fNormal3fVertex3fSUN
dim shared as PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC glTexCoord2fNormal3fVertex3fvSUN
dim shared as PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC glTexCoord2fColor4fNormal3fVertex3fSUN
dim shared as PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC glTexCoord2fColor4fNormal3fVertex3fvSUN
dim shared as PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC glTexCoord4fColor4fNormal3fVertex4fSUN
dim shared as PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC glTexCoord4fColor4fNormal3fVertex4fvSUN
dim shared as PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC glReplacementCodeuiVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC glReplacementCodeuiVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC glReplacementCodeuiColor4ubVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC glReplacementCodeuiColor4ubVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC glReplacementCodeuiColor3fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC glReplacementCodeuiColor3fVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC glReplacementCodeuiNormal3fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC glReplacementCodeuiNormal3fVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC glReplacementCodeuiColor4fNormal3fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC glReplacementCodeuiColor4fNormal3fVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC glReplacementCodeuiTexCoord2fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC glReplacementCodeuiTexCoord2fVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN
dim shared as PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN



function InitGLExtensions() as integer
 #ifndef __GLFW__
  dim as boolean glCreated=false
  if screenptr()=0 then 
   screenres 320,240,32,,2 ' opengl
   glCreated=true
  endif
  dim as string glExtensions
  ScreenControl 15,glExtensions
  if len(glExtensions)<1 then
    if glCreated=true then screen 0
    return 0
  endif  
 #endif  
 
  dim as string glVersion=*cptr(zstring ptr,glGetString(GL_VERSION))
  if len(glVersion)<3 then
   #ifndef __GLFW__ 
    if glCreated=true then screen 0
   #endif 
   print "glGetString() '" & glVersion & "'"
    return 0
  endif  
  dim as ushort version = (glVersion[0]-asc("0"))*256+(glVersion[2]-asc("0"))
  if (version>=258) then IS_GL_VERSION_1_2 = GL_TRUE

  if (version>=259) then IS_GL_VERSION_1_3 = GL_TRUE
  if (version>=260) then IS_GL_VERSION_1_4 = GL_TRUE
  if (version>=261) then IS_GL_VERSION_1_5 = GL_TRUE

  if (version>=512) then IS_GL_VERSION_2_0 = GL_TRUE
  if (version>=513) then IS_GL_VERSION_2_1 = GL_TRUE

  if (version>=768) then IS_GL_VERSION_3_0 = GL_TRUE
  if (version>=769) then IS_GL_VERSION_3_1 = GL_TRUE
  if (version>=770) then IS_GL_VERSION_3_2 = GL_TRUE
  if (version>=771) then IS_GL_VERSION_3_3 = GL_TRUE

  if (version>=1024) then IS_GL_VERSION_4_0 = GL_TRUE
  if (version>=1025) then IS_GL_VERSION_4_1 = GL_TRUE
  if (version>=1026) then IS_GL_VERSION_4_2 = GL_TRUE
  if (version>=1027) then IS_GL_VERSION_4_3 = GL_TRUE
  if (version>=1028) then IS_GL_VERSION_4_4 = GL_TRUE

  if (ExtensionSupported("GL_ARB_imaging")) then IS_GL_ARB_imaging = GL_TRUE
  if (ExtensionSupported("GL_ARB_multitexture")) then IS_GL_ARB_multitexture = GL_TRUE
  if (ExtensionSupported("GL_ARB_transpose_matrix")) then IS_GL_ARB_transpose_matrix = GL_TRUE
  if (ExtensionSupported("GL_ARB_multisample")) then IS_GL_ARB_multisample = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_env_add")) then IS_GL_ARB_texture_env_add = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_cube_map")) then IS_GL_ARB_texture_cube_map = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_compression")) then IS_GL_ARB_texture_compression = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_border_clamp")) then IS_GL_ARB_texture_border_clamp = GL_TRUE
  if (ExtensionSupported("GL_ARB_point_parameters")) then IS_GL_ARB_point_parameters = GL_TRUE
  if (ExtensionSupported("GL_ARB_vertex_blend")) then IS_GL_ARB_vertex_blend = GL_TRUE
  if (ExtensionSupported("GL_ARB_matrix_palette")) then IS_GL_ARB_matrix_palette = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_env_combine")) then IS_GL_ARB_texture_env_combine = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_env_crossbar")) then IS_GL_ARB_texture_env_crossbar = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_env_dot3")) then IS_GL_ARB_texture_env_dot3 = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_mirrored_repeat")) then IS_GL_ARB_texture_mirrored_repeat = GL_TRUE
  if (ExtensionSupported("GL_ARB_depth_texture")) then IS_GL_ARB_depth_texture = GL_TRUE
  if (ExtensionSupported("GL_ARB_shadow")) then IS_GL_ARB_shadow = GL_TRUE
  if (ExtensionSupported("GL_ARB_shadow_ambient")) then IS_GL_ARB_shadow_ambient = GL_TRUE
  if (ExtensionSupported("GL_ARB_window_pos")) then IS_GL_ARB_window_pos = GL_TRUE
  if (ExtensionSupported("GL_ARB_vertex_program")) then IS_GL_ARB_vertex_program = GL_TRUE
  if (ExtensionSupported("GL_ARB_fragment_program")) then IS_GL_ARB_fragment_program = GL_TRUE
  if (ExtensionSupported("GL_ARB_vertex_buffer_object")) then IS_GL_ARB_vertex_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_ARB_occlusion_query")) then IS_GL_ARB_occlusion_query = GL_TRUE
  if (ExtensionSupported("GL_ARB_shader_objects")) then IS_GL_ARB_shader_objects = GL_TRUE
  if (ExtensionSupported("GL_ARB_vertex_shader")) then IS_GL_ARB_vertex_shader = GL_TRUE
  if (ExtensionSupported("GL_ARB_fragment_shader")) then IS_GL_ARB_fragment_shader = GL_TRUE
  if (ExtensionSupported("GL_ARB_shading_language_100")) then IS_GL_ARB_shading_language_100 = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_non_power_of_two")) then IS_GL_ARB_texture_non_power_of_two = GL_TRUE
  if (ExtensionSupported("GL_ARB_point_sprite")) then IS_GL_ARB_point_sprite = GL_TRUE
  if (ExtensionSupported("GL_ARB_fragment_program_shadow")) then IS_GL_ARB_fragment_program_shadow = GL_TRUE
  if (ExtensionSupported("GL_ARB_draw_buffers")) then IS_GL_ARB_draw_buffers = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_rectangle")) then IS_GL_ARB_texture_rectangle = GL_TRUE
  if (ExtensionSupported("GL_ARB_color_buffer_float")) then IS_GL_ARB_color_buffer_float = GL_TRUE
  if (ExtensionSupported("GL_ARB_half_float_pixel")) then IS_GL_ARB_half_float_pixel = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_float")) then IS_GL_ARB_texture_float = GL_TRUE
  if (ExtensionSupported("GL_ARB_pixel_buffer_object")) then IS_GL_ARB_pixel_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_ARB_depth_buffer_float")) then IS_GL_ARB_depth_buffer_float = GL_TRUE
  if (ExtensionSupported("GL_ARB_draw_instanced")) then  IS_GL_ARB_draw_instanced = GL_TRUE
  if (ExtensionSupported("GL_ARB_framebuffer_object")) then IS_GL_ARB_framebuffer_object = GL_TRUE
  if (ExtensionSupported("GL_ARB_framebuffer_sRGB")) then IS_GL_ARB_framebuffer_sRGB = GL_TRUE
  if (ExtensionSupported("GL_ARB_geometry_shader4")) then IS_GL_ARB_geometry_shader4 = GL_TRUE
  if (ExtensionSupported("GL_ARB_half_float_vertex")) then IS_GL_ARB_half_float_vertex = GL_TRUE
  if (ExtensionSupported("GL_ARB_instanced_arrays")) then IS_GL_ARB_instanced_arrays = GL_TRUE
  if (ExtensionSupported("GL_ARB_map_buffer_range")) then IS_GL_ARB_map_buffer_range = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_buffer_object")) then IS_GL_ARB_texture_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_compression_rgtc")) then IS_GL_ARB_texture_compression_rgtc = GL_TRUE
  if (ExtensionSupported("GL_ARB_texture_rg")) then IS_GL_ARB_texture_rg = GL_TRUE
  if (ExtensionSupported("GL_ARB_vertex_array_object")) then IS_GL_ARB_vertex_array_object = GL_TRUE
  if (ExtensionSupported("GL_EXT_abgr")) then IS_GL_EXT_abgr = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_color")) then IS_GL_EXT_blend_color = GL_TRUE
  if (ExtensionSupported("GL_EXT_polygon_offset")) then IS_GL_EXT_polygon_offset = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture")) then IS_GL_EXT_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture3D")) then IS_GL_EXT_texture3D = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_filter4")) then IS_GL_SGIS_texture_filter4 = GL_TRUE
  if (ExtensionSupported("GL_EXT_subtexture")) then IS_GL_EXT_subtexture = GL_TRUE
  if (ExtensionSupported("GL_EXT_copy_texture")) then IS_GL_EXT_copy_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_histogram")) then IS_GL_EXT_histogram = GL_TRUE
  if (ExtensionSupported("GL_EXT_convolution")) then IS_GL_EXT_convolution = GL_TRUE
  if (ExtensionSupported("GL_SGI_color_matrix")) then IS_GL_SGI_color_matrix = GL_TRUE
  if (ExtensionSupported("GL_SGI_color_table")) then IS_GL_SGI_color_table = GL_TRUE
  if (ExtensionSupported("GL_SGIS_pixel_texture")) then IS_GL_SGIS_pixel_texture = GL_TRUE
  if (ExtensionSupported("GL_SGIX_pixel_texture")) then IS_GL_SGIX_pixel_texture = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture4D")) then IS_GL_SGIS_texture4D = GL_TRUE
  if (ExtensionSupported("GL_SGI_texture_color_table")) then IS_GL_SGI_texture_color_table = GL_TRUE
  if (ExtensionSupported("GL_EXT_cmyka")) then IS_GL_EXT_cmyka = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_object")) then IS_GL_EXT_texture_object = GL_TRUE
  if (ExtensionSupported("GL_SGIS_detail_texture")) then IS_GL_SGIS_detail_texture = GL_TRUE
  if (ExtensionSupported("GL_SGIS_sharpen_texture")) then IS_GL_SGIS_sharpen_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_packed_pixels")) then IS_GL_EXT_packed_pixels = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_lod")) then IS_GL_SGIS_texture_lod = GL_TRUE
  if (ExtensionSupported("GL_SGIS_multisample")) then IS_GL_SGIS_multisample = GL_TRUE
  if (ExtensionSupported("GL_EXT_rescale_normal")) then IS_GL_EXT_rescale_normal = GL_TRUE
  if (ExtensionSupported("GL_EXT_vertex_array")) then IS_GL_EXT_vertex_array = GL_TRUE
  if (ExtensionSupported("GL_EXT_misc_attribute")) then IS_GL_EXT_misc_attribute = GL_TRUE
  if (ExtensionSupported("GL_SGIS_generate_mipmap")) then IS_GL_SGIS_generate_mipmap = GL_TRUE
  if (ExtensionSupported("GL_SGIX_clipmap")) then IS_GL_SGIX_clipmap = GL_TRUE
  if (ExtensionSupported("GL_SGIX_shadow")) then IS_GL_SGIX_shadow = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_edge_clamp")) then IS_GL_SGIS_texture_edge_clamp = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_border_clamp")) then IS_GL_SGIS_texture_border_clamp = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_minmax")) then IS_GL_EXT_blend_minmax = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_subtract")) then IS_GL_EXT_blend_subtract = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_logic_op")) then IS_GL_EXT_blend_logic_op = GL_TRUE
  if (ExtensionSupported("GL_SGIX_interlace")) then IS_GL_SGIX_interlace = GL_TRUE
  if (ExtensionSupported("GL_SGIX_pixel_tiles")) then IS_GL_SGIX_pixel_tiles = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_select")) then IS_GL_SGIS_texture_select = GL_TRUE
  if (ExtensionSupported("GL_SGIX_sprite")) then IS_GL_SGIX_sprite = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_multi_buffer")) then IS_GL_SGIX_texture_multi_buffer = GL_TRUE
  if (ExtensionSupported("GL_EXT_point_parameters")) then IS_GL_EXT_point_parameters = GL_TRUE
  if (ExtensionSupported("GL_SGIS_point_parameters")) then IS_GL_SGIS_point_parameters = GL_TRUE
  if (ExtensionSupported("GL_SGIX_instruments")) then IS_GL_SGIX_instruments = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_scale_bias")) then IS_GL_SGIX_texture_scale_bias = GL_TRUE
  if (ExtensionSupported("GL_SGIX_framezoom")) then IS_GL_SGIX_framezoom = GL_TRUE
  if (ExtensionSupported("GL_SGIX_tag_sample_buffer")) then IS_GL_SGIX_tag_sample_buffer = GL_TRUE
  if (ExtensionSupported("GL_FfdMaskSGIX")) then IS_GL_FfdMaskSGIX = GL_TRUE
  if (ExtensionSupported("GL_SGIX_polynomial_ffd")) then IS_GL_SGIX_polynomial_ffd = GL_TRUE
  if (ExtensionSupported("GL_SGIX_reference_plane")) then IS_GL_SGIX_reference_plane = GL_TRUE
  if (ExtensionSupported("GL_SGIX_flush_raster")) then IS_GL_SGIX_flush_raster = GL_TRUE
  if (ExtensionSupported("GL_SGIX_depth_texture")) then IS_GL_SGIX_depth_texture = GL_TRUE
  if (ExtensionSupported("GL_SGIS_fog_function")) then IS_GL_SGIS_fog_function = GL_TRUE
  if (ExtensionSupported("GL_SGIX_fog_offset")) then IS_GL_SGIX_fog_offset = GL_TRUE
  if (ExtensionSupported("GL_HP_image_transform")) then IS_GL_HP_image_transform = GL_TRUE
  if (ExtensionSupported("GL_HP_convolution_border_modes")) then IS_GL_HP_convolution_border_modes = GL_TRUE
  if (ExtensionSupported("GL_INGR_palette_buffer")) then IS_GL_INGR_palette_buffer = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_add_env")) then IS_GL_SGIX_texture_add_env = GL_TRUE
  if (ExtensionSupported("GL_EXT_color_subtable")) then IS_GL_EXT_color_subtable = GL_TRUE
  if (ExtensionSupported("GL_PGI_vertex_hints")) then IS_GL_PGI_vertex_hints = GL_TRUE
  if (ExtensionSupported("GL_PGI_misc_hints")) then IS_GL_PGI_misc_hints = GL_TRUE
  if (ExtensionSupported("GL_EXT_paletted_texture")) then IS_GL_EXT_paletted_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_clip_volume_hint")) then IS_GL_EXT_clip_volume_hint = GL_TRUE
  if (ExtensionSupported("GL_SGIX_list_priority")) then IS_GL_SGIX_list_priority = GL_TRUE
  if (ExtensionSupported("GL_SGIX_ir_instrument1")) then IS_GL_SGIX_ir_instrument1 = GL_TRUE
  if (ExtensionSupported("GL_SGIX_calligraphic_fragment")) then IS_GL_SGIX_calligraphic_fragment = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_lod_bias")) then IS_GL_SGIX_texture_lod_bias = GL_TRUE
  if (ExtensionSupported("GL_SGIX_shadow_ambient")) then IS_GL_SGIX_shadow_ambient = GL_TRUE
  if (ExtensionSupported("GL_EXT_index_texture")) then IS_GL_EXT_index_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_index_material")) then IS_GL_EXT_index_material = GL_TRUE
  if (ExtensionSupported("GL_EXT_index_func")) then IS_GL_EXT_index_func = GL_TRUE
  if (ExtensionSupported("GL_EXT_index_array_formats")) then IS_GL_EXT_index_array_formats = GL_TRUE
  if (ExtensionSupported("GL_EXT_compiled_vertex_array")) then IS_GL_EXT_compiled_vertex_array = GL_TRUE
  if (ExtensionSupported("GL_EXT_cull_vertex")) then IS_GL_EXT_cull_vertex = GL_TRUE
  if (ExtensionSupported("GL_SGIX_ycrcb")) then IS_GL_SGIX_ycrcb = GL_TRUE
  if (ExtensionSupported("GL_SGIX_fragment_lighting")) then IS_GL_SGIX_fragment_lighting = GL_TRUE
  if (ExtensionSupported("GL_IBM_rasterpos_clip")) then IS_GL_IBM_rasterpos_clip = GL_TRUE
  if (ExtensionSupported("GL_HP_texture_lighting")) then IS_GL_HP_texture_lighting = GL_TRUE
  if (ExtensionSupported("GL_EXT_draw_range_elements")) then IS_GL_EXT_draw_range_elements = GL_TRUE
  if (ExtensionSupported("GL_WIN_phong_shading")) then IS_GL_WIN_phong_shading = GL_TRUE
  if (ExtensionSupported("GL_WIN_specular_fog")) then IS_GL_WIN_specular_fog = GL_TRUE
  if (ExtensionSupported("GL_EXT_light_texture")) then IS_GL_EXT_light_texture = GL_TRUE
  if (ExtensionSupported("GL_SGIX_blend_alpha_minmax")) then IS_GL_SGIX_blend_alpha_minmax = GL_TRUE
  if (ExtensionSupported("GL_SGIX_impact_pixel_texture")) then IS_GL_SGIX_impact_pixel_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_bgra")) then IS_GL_EXT_bgra = GL_TRUE
  if (ExtensionSupported("GL_SGIX_async")) then IS_GL_SGIX_async = GL_TRUE
  if (ExtensionSupported("GL_SGIX_async_pixel")) then IS_GL_SGIX_async_pixel = GL_TRUE
  if (ExtensionSupported("GL_SGIX_async_histogram")) then IS_GL_SGIX_async_histogram = GL_TRUE
  if (ExtensionSupported("GL_INTEL_texture_scissor")) then IS_GL_INTEL_texture_scissor = GL_TRUE
  if (ExtensionSupported("GL_INTEL_parallel_arrays")) then IS_GL_INTEL_parallel_arrays = GL_TRUE
  if (ExtensionSupported("GL_HP_occlusion_test")) then IS_GL_HP_occlusion_test = GL_TRUE
  if (ExtensionSupported("GL_EXT_pixel_transform")) then IS_GL_EXT_pixel_transform = GL_TRUE
  if (ExtensionSupported("GL_EXT_pixel_transform_color_table")) then IS_GL_EXT_pixel_transform_color_table = GL_TRUE
  if (ExtensionSupported("GL_EXT_shared_texture_palette")) then IS_GL_EXT_shared_texture_palette = GL_TRUE
  if (ExtensionSupported("GL_EXT_separate_specular_color")) then IS_GL_EXT_separate_specular_color = GL_TRUE
  if (ExtensionSupported("GL_EXT_secondary_color")) then IS_GL_EXT_secondary_color = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_perturb_normal")) then IS_GL_EXT_texture_perturb_normal = GL_TRUE
  if (ExtensionSupported("GL_EXT_multi_draw_arrays")) then IS_GL_EXT_multi_draw_arrays = GL_TRUE
  if (ExtensionSupported("GL_EXT_fog_coord")) then IS_GL_EXT_fog_coord = GL_TRUE
  if (ExtensionSupported("GL_REND_screen_coordinates")) then IS_GL_REND_screen_coordinates = GL_TRUE
  if (ExtensionSupported("GL_EXT_coordinate_frame")) then IS_GL_EXT_coordinate_frame = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_env_combine")) then IS_GL_EXT_texture_env_combine = GL_TRUE
  if (ExtensionSupported("GL_APPLE_specular_vector")) then IS_GL_APPLE_specular_vector = GL_TRUE
  if (ExtensionSupported("GL_APPLE_transform_hint")) then IS_GL_APPLE_transform_hint = GL_TRUE
  if (ExtensionSupported("GL_SGIX_fog_scale")) then IS_GL_SGIX_fog_scale = GL_TRUE
  if (ExtensionSupported("GL_SUNX_constant_data")) then IS_GL_SUNX_constant_data = GL_TRUE
  if (ExtensionSupported("GL_SUN_global_alpha")) then IS_GL_SUN_global_alpha = GL_TRUE
  if (ExtensionSupported("GL_SUN_triangle_list")) then IS_GL_SUN_triangle_list = GL_TRUE
  if (ExtensionSupported("GL_SUN_vertex")) then IS_GL_SUN_vertex = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_func_separate")) then IS_GL_EXT_blend_func_separate = GL_TRUE
  if (ExtensionSupported("GL_INGR_color_clamp")) then IS_GL_INGR_color_clamp = GL_TRUE
  if (ExtensionSupported("GL_INGR_interlace_read")) then IS_GL_INGR_interlace_read = GL_TRUE
  if (ExtensionSupported("GL_EXT_stencil_wrap")) then IS_GL_EXT_stencil_wrap = GL_TRUE
  if (ExtensionSupported("GL_EXT_422_pixels")) then IS_GL_EXT_422_pixels = GL_TRUE
  if (ExtensionSupported("GL_NV_texgen_reflection")) then IS_GL_NV_texgen_reflection = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_cube_map")) then IS_GL_EXT_texture_cube_map = GL_TRUE
  if (ExtensionSupported("GL_SUN_convolution_border_modes")) then IS_GL_SUN_convolution_border_modes = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_env_add")) then IS_GL_EXT_texture_env_add = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_lod_bias")) then IS_GL_EXT_texture_lod_bias = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_filter_anisotropic")) then IS_GL_EXT_texture_filter_anisotropic = GL_TRUE
  if (ExtensionSupported("GL_EXT_vertex_weighting")) then IS_GL_EXT_vertex_weighting = GL_TRUE
  if (ExtensionSupported("GL_NV_light_max_exponent")) then IS_GL_NV_light_max_exponent = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_array_range")) then IS_GL_NV_vertex_array_range = GL_TRUE
  if (ExtensionSupported("GL_NV_register_combiners")) then IS_GL_NV_register_combiners = GL_TRUE
  if (ExtensionSupported("GL_NV_fog_distance")) then IS_GL_NV_fog_distance = GL_TRUE
  if (ExtensionSupported("GL_NV_texgen_emboss")) then IS_GL_NV_texgen_emboss = GL_TRUE
  if (ExtensionSupported("GL_NV_blend_square")) then IS_GL_NV_blend_square = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_env_combine4")) then IS_GL_NV_texture_env_combine4 = GL_TRUE
  if (ExtensionSupported("GL_MESA_resize_buffers")) then IS_GL_MESA_resize_buffers = GL_TRUE
  if (ExtensionSupported("GL_MESA_window_pos")) then IS_GL_MESA_window_pos = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_compression_s3tc")) then IS_GL_EXT_texture_compression_s3tc = GL_TRUE
  if (ExtensionSupported("GL_IBM_cull_vertex")) then IS_GL_IBM_cull_vertex = GL_TRUE
  if (ExtensionSupported("GL_IBM_multimode_draw_arrays")) then IS_GL_IBM_multimode_draw_arrays = GL_TRUE
  if (ExtensionSupported("GL_IBM_vertex_array_lists")) then IS_GL_IBM_vertex_array_lists = GL_TRUE
  if (ExtensionSupported("GL_SGIX_subsample")) then IS_GL_SGIX_subsample = GL_TRUE
  if (ExtensionSupported("GL_SGIX_ycrcb_subsample")) then IS_GL_SGIX_ycrcb_subsample = GL_TRUE
  if (ExtensionSupported("GL_SGIX_ycrcba")) then IS_GL_SGIX_ycrcba = GL_TRUE
  if (ExtensionSupported("GL_SGI_depth_pass_instrument")) then IS_GL_SGI_depth_pass_instrument = GL_TRUE
  if (ExtensionSupported("GL_3DFX_texture_compression_FXT1")) then IS_GL_3DFX_texture_compression_FXT1 = GL_TRUE
  if (ExtensionSupported("GL_3DFX_multisample")) then IS_GL_3DFX_multisample = GL_TRUE
  if (ExtensionSupported("GL_3DFX_tbuffer")) then IS_GL_3DFX_tbuffer = GL_TRUE
  if (ExtensionSupported("GL_EXT_multisample")) then IS_GL_EXT_multisample = GL_TRUE
  if (ExtensionSupported("GL_SGIX_vertex_preclip")) then IS_GL_SGIX_vertex_preclip = GL_TRUE
  if (ExtensionSupported("GL_SGIX_convolution_accuracy")) then IS_GL_SGIX_convolution_accuracy = GL_TRUE
  if (ExtensionSupported("GL_SGIX_resample")) then IS_GL_SGIX_resample = GL_TRUE
  if (ExtensionSupported("GL_SGIS_point_line_texgen")) then IS_GL_SGIS_point_line_texgen = GL_TRUE
  if (ExtensionSupported("GL_SGIS_texture_color_mask")) then IS_GL_SGIS_texture_color_mask = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_env_dot3")) then IS_GL_EXT_texture_env_dot3 = GL_TRUE
  if (ExtensionSupported("GL_ATI_texture_mirror_once")) then IS_GL_ATI_texture_mirror_once = GL_TRUE
  if (ExtensionSupported("GL_NV_fence")) then IS_GL_NV_fence = GL_TRUE
  if (ExtensionSupported("GL_IBM_texture_mirrored_repeat")) then IS_GL_IBM_texture_mirrored_repeat = GL_TRUE
  if (ExtensionSupported("GL_NV_evaluators")) then IS_GL_NV_evaluators = GL_TRUE
  if (ExtensionSupported("GL_NV_packed_depth_stencil")) then IS_GL_NV_packed_depth_stencil = GL_TRUE
  if (ExtensionSupported("GL_NV_register_combiners2")) then IS_GL_NV_register_combiners2 = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_compression_vtc")) then IS_GL_NV_texture_compression_vtc = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_rectangle")) then IS_GL_NV_texture_rectangle = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_shader")) then IS_GL_NV_texture_shader = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_shader2")) then IS_GL_NV_texture_shader2 = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_array_range2")) then IS_GL_NV_vertex_array_range2 = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_program")) then IS_GL_NV_vertex_program = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_coordinate_clamp")) then IS_GL_SGIX_texture_coordinate_clamp = GL_TRUE
  if (ExtensionSupported("GL_SGIX_scalebias_hint")) then IS_GL_SGIX_scalebias_hint = GL_TRUE
  if (ExtensionSupported("GL_OML_interlace")) then IS_GL_OML_interlace = GL_TRUE
  if (ExtensionSupported("GL_OML_subsample")) then IS_GL_OML_subsample = GL_TRUE
  if (ExtensionSupported("GL_OML_resample")) then IS_GL_OML_resample = GL_TRUE
  if (ExtensionSupported("GL_NV_copy_depth_to_color")) then IS_GL_NV_copy_depth_to_color = GL_TRUE
  if (ExtensionSupported("GL_ATI_envmap_bumpmap")) then IS_GL_ATI_envmap_bumpmap = GL_TRUE
  if (ExtensionSupported("GL_ATI_fragment_shader")) then IS_GL_ATI_fragment_shader = GL_TRUE
  if (ExtensionSupported("GL_ATI_pn_triangles")) then IS_GL_ATI_pn_triangles = GL_TRUE
  if (ExtensionSupported("GL_ATI_vertex_array_object")) then IS_GL_ATI_vertex_array_object = GL_TRUE
  if (ExtensionSupported("GL_EXT_vertex_shader")) then IS_GL_EXT_vertex_shader = GL_TRUE
  if (ExtensionSupported("GL_ATI_vertex_streams")) then IS_GL_ATI_vertex_streams = GL_TRUE
  if (ExtensionSupported("GL_ATI_element_array")) then IS_GL_ATI_element_array = GL_TRUE
  if (ExtensionSupported("GL_SUN_mesh_array")) then IS_GL_SUN_mesh_array = GL_TRUE
  if (ExtensionSupported("GL_SUN_slice_accum")) then IS_GL_SUN_slice_accum = GL_TRUE
  if (ExtensionSupported("GL_NV_multisample_filter_hint")) then IS_GL_NV_multisample_filter_hint = GL_TRUE
  if (ExtensionSupported("GL_NV_depth_clamp")) then IS_GL_NV_depth_clamp = GL_TRUE
  if (ExtensionSupported("GL_NV_occlusion_query")) then IS_GL_NV_occlusion_query = GL_TRUE
  if (ExtensionSupported("GL_NV_point_sprite")) then IS_GL_NV_point_sprite = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_shader3")) then IS_GL_NV_texture_shader3 = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_program1_1")) then IS_GL_NV_vertex_program1_1 = GL_TRUE
  if (ExtensionSupported("GL_EXT_shadow_funcs")) then IS_GL_EXT_shadow_funcs = GL_TRUE
  if (ExtensionSupported("GL_EXT_stencil_two_side")) then IS_GL_EXT_stencil_two_side = GL_TRUE
  if (ExtensionSupported("GL_ATI_text_fragment_shader")) then IS_GL_ATI_text_fragment_shader = GL_TRUE
  if (ExtensionSupported("GL_APPLE_client_storage")) then IS_GL_APPLE_client_storage = GL_TRUE
  if (ExtensionSupported("GL_APPLE_element_array")) then IS_GL_APPLE_element_array = GL_TRUE
  if (ExtensionSupported("GL_APPLE_fence")) then IS_GL_APPLE_fence = GL_TRUE
  if (ExtensionSupported("GL_APPLE_vertex_array_object")) then IS_GL_APPLE_vertex_array_object = GL_TRUE
  if (ExtensionSupported("GL_APPLE_vertex_array_range")) then IS_GL_APPLE_vertex_array_range = GL_TRUE
  if (ExtensionSupported("GL_APPLE_ycbcr_422")) then IS_GL_APPLE_ycbcr_422 = GL_TRUE
  if (ExtensionSupported("GL_S3_s3tc")) then IS_GL_S3__s3tc = GL_TRUE
  if (ExtensionSupported("GL_ATI_draw_buffers")) then IS_GL_ATI_draw_buffers = GL_TRUE
  if (ExtensionSupported("GL_ATI_pixel_format_float")) then IS_GL_ATI_pixel_format_float = GL_TRUE
  if (ExtensionSupported("GL_ATI_texture_env_combine3")) then IS_GL_ATI_texture_env_combine3 = GL_TRUE
  if (ExtensionSupported("GL_ATI_texture_float")) then IS_GL_ATI_texture_float = GL_TRUE
  if (ExtensionSupported("GL_NV_float_buffer")) then IS_GL_NV_float_buffer = GL_TRUE
  if (ExtensionSupported("GL_NV_fragment_program")) then IS_GL_NV_fragment_program = GL_TRUE
  if (ExtensionSupported("GL_NV_half_float")) then IS_GL_NV_half_float = GL_TRUE
  if (ExtensionSupported("GL_NV_pixel_data_range")) then IS_GL_NV_pixel_data_range = GL_TRUE
  if (ExtensionSupported("GL_NV_primitive_restart")) then IS_GL_NV_primitive_restart = GL_TRUE
  if (ExtensionSupported("GL_NV_texture_expand_normal")) then IS_GL_NV_texture_expand_normal = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_program2")) then IS_GL_NV_vertex_program2 = GL_TRUE
  if (ExtensionSupported("GL_ATI_map_object_buffer")) then IS_GL_ATI_map_object_buffer = GL_TRUE
  if (ExtensionSupported("GL_ATI_separate_stencil")) then IS_GL_ATI_separate_stencil = GL_TRUE
  if (ExtensionSupported("GL_ATI_vertex_attrib_array_object")) then IS_GL_ATI_vertex_attrib_array_object = GL_TRUE
  if (ExtensionSupported("GL_OES_read_format")) then IS_GL_OES_read_format = GL_TRUE
  if (ExtensionSupported("GL_EXT_depth_bounds_test")) then IS_GL_EXT_depth_bounds_test = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_mirror_clamp")) then IS_GL_EXT_texture_mirror_clamp = GL_TRUE
  if (ExtensionSupported("GL_EXT_blend_equation_separate")) then IS_GL_EXT_blend_equation_separate = GL_TRUE
  if (ExtensionSupported("GL_MESA_pack_invert")) then IS_GL_MESA_pack_invert = GL_TRUE
  if (ExtensionSupported("GL_MESA_ycbcr_texture")) then IS_GL_MESA_ycbcr_texture = GL_TRUE
  if (ExtensionSupported("GL_EXT_pixel_buffer_object")) then IS_GL_EXT_pixel_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_NV_fragment_program_option")) then IS_GL_NV_fragment_program_option = GL_TRUE
  if (ExtensionSupported("GL_NV_fragment_program2")) then IS_GL_NV_fragment_program2 = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_program2_option")) then IS_GL_NV_vertex_program2_option = GL_TRUE
  if (ExtensionSupported("GL_NV_vertex_program3")) then IS_GL_NV_vertex_program3 = GL_TRUE
  if (ExtensionSupported("GL_EXT_framebuffer_object")) then IS_GL_EXT_framebuffer_object = GL_TRUE
  if (ExtensionSupported("GL_GREMEDY_string_marker")) then IS_GL_GREMEDY_string_marker = GL_TRUE
  if (ExtensionSupported("GL_EXT_packed_depth_stencil")) then IS_GL_EXT_packed_depth_stencil = GL_TRUE
  if (ExtensionSupported("GL_EXT_stencil_clear_tag")) then IS_GL_EXT_stencil_clear_tag = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_sRGB")) then IS_GL_EXT_texture_sRGB = GL_TRUE
  if (ExtensionSupported("GL_EXT_framebuffer_blit")) then IS_GL_EXT_framebuffer_blit = GL_TRUE
  if (ExtensionSupported("GL_EXT_framebuffer_multisample")) then IS_GL_EXT_framebuffer_multisample = GL_TRUE
  if (ExtensionSupported("GL_MESAX_texture_stack")) then IS_GL_MESAX_texture_stack = GL_TRUE
  if (ExtensionSupported("GL_EXT_timer_query")) then IS_GL_EXT_timer_query = GL_TRUE
  if (ExtensionSupported("GL_EXT_gpu_program_parameters")) then IS_GL_EXT_gpu_program_parameters = GL_TRUE
  if (ExtensionSupported("GL_APPLE_flush_buffer_range")) then IS_GL_APPLE_flush_buffer_range = GL_TRUE
  if (ExtensionSupported("GL_EXT_gpu_shader4")) then IS_GL_EXT_gpu_shader4 = GL_TRUE
  if (ExtensionSupported("GL_EXT_draw_instanced")) then IS_GL_EXT_draw_instanced = GL_TRUE
  if (ExtensionSupported("GL_EXT_packed_float")) then IS_GL_EXT_packed_float = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_array")) then IS_GL_EXT_texture_array = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_buffer_object")) then IS_GL_EXT_texture_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_compression_latc")) then IS_GL_EXT_texture_compression_latc = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_compression_rgtc")) then IS_GL_EXT_texture_compression_rgtc = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_shared_exponent")) then IS_GL_EXT_texture_shared_exponent = GL_TRUE
  if (ExtensionSupported("GL_NV_depth_buffer_float")) then IS_GL_NV_depth_buffer_float = GL_TRUE
  if (ExtensionSupported("GL_NV_framebuffer_multisample_coverage")) then IS_GL_NV_framebuffer_multisample_coverage = GL_TRUE
  if (ExtensionSupported("GL_EXT_framebuffer_sRGB")) then IS_GL_EXT_framebuffer_sRGB = GL_TRUE
  if (ExtensionSupported("GL_NV_geometry_shader4")) then IS_GL_NV_geometry_shader4 = GL_TRUE
  if (ExtensionSupported("GL_NV_parameter_buffer_object")) then IS_GL_NV_parameter_buffer_object = GL_TRUE
  if (ExtensionSupported("GL_EXT_draw_buffers2")) then IS_GL_EXT_draw_buffers2 = GL_TRUE
  if (ExtensionSupported("GL_NV_transform_feedback")) then IS_GL_NV_transform_feedback = GL_TRUE
  if (ExtensionSupported("GL_EXT_bindable_uniform")) then IS_GL_EXT_bindable_uniform = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_integer")) then IS_GL_EXT_texture_integer = GL_TRUE
  if (ExtensionSupported("GL_GREMEDY_frame_terminator")) then IS_GL_GREMEDY_frame_terminator = GL_TRUE
  if (ExtensionSupported("GL_NV_conditional_render")) then IS_GL_NV_conditional_render = GL_TRUE
  if (ExtensionSupported("GL_NV_present_video")) then IS_GL_NV_present_video = GL_TRUE
  if (ExtensionSupported("GL_EXT_transform_feedback")) then IS_GL_EXT_transform_feedback = GL_TRUE
  if (ExtensionSupported("GL_EXT_direct_state_access")) then IS_GL_EXT_direct_state_access = GL_TRUE
  if (ExtensionSupported("GL_EXT_vertex_array_bgra")) then IS_GL_EXT_vertex_array_bgra = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_swizzle")) then IS_GL_EXT_texture_swizzle = GL_TRUE
  if (ExtensionSupported("GL_NV_explicit_multisample")) then IS_GL_NV_explicit_multisample = GL_TRUE
  if (ExtensionSupported("GL_NV_transform_feedback2")) then IS_GL_NV_transform_feedback2 = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_select")) then IS_GL_SGIX_texture_select = GL_TRUE
  if (ExtensionSupported("GL_INGR_blend_func_separate")) then IS_GL_INGR_blend_func_separate = GL_TRUE
  if (ExtensionSupported("GL_SGIX_depth_pass_instrument")) then IS_GL_SGIX_depth_pass_instrument = GL_TRUE
  if (ExtensionSupported("GL_SGIX_igloo_interface")) then IS_GL_SGIX_igloo_interface = GL_TRUE
  if (ExtensionSupported("GL_EXT_fragment_lighting")) then IS_GL_EXT_fragment_lighting = GL_TRUE
  if (ExtensionSupported("GL_EXT_geometry_shader4")) then IS_GL_EXT_geometry_shader4 = GL_TRUE
  if (ExtensionSupported("GL_EXT_scene_marker")) then IS_GL_EXT_scene_marker = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_compression_dxt1")) then IS_GL_EXT_texture_compression_dxt1 = GL_TRUE
  if (ExtensionSupported("GL_EXT_texture_env")) then IS_GL_EXT_texture_env = GL_TRUE
  if (ExtensionSupported("GL_IBM_static_data")) then IS_GL_IBM_static_data = GL_TRUE
  if (ExtensionSupported("GL_NV_gpu_program4")) then IS_GL_NV_gpu_program4 = GL_TRUE
  if (ExtensionSupported("GL_OES_byte_coordinates")) then IS_GL_OES_byte_coordinates = GL_TRUE
  if (ExtensionSupported("GL_OES_compressed_paletted_texture")) then IS_GL_OES_compressed_paletted_texture = GL_TRUE
  if (ExtensionSupported("GL_OES_single_precision")) then IS_GL_OES_single_precision = GL_TRUE
  if (ExtensionSupported("GL_SGIX_pixel_texture_bits")) then IS_GL_SGIX_pixel_texture_bits = GL_TRUE
  if (ExtensionSupported("GL_SGIX_texture_range")) then IS_GL_SGIX_texture_range = GL_TRUE
#ifdef __FB_WIN32__ ' WGL
  if (ExtensionSupported("WGL_ARB_buffer_region")) then IS_GL_WGL_ARB_buffer_region = GL_TRUE
  if (ExtensionSupported("WGL_ARB_create_context")) then IS_GL_WGL_ARB_create_context = GL_TRUE
  if (ExtensionSupported("WGL_EXT_depth_float")) then IS_GL_WGL_EXT_depth_float = GL_TRUE
  if (ExtensionSupported("WGL_I3D_digital_video_control")) then IS_GL_WGL_I3D_digital_video_control = GL_TRUE
  if (ExtensionSupported("WGL_EXT_display_color_table")) then IS_GL_WGL_EXT_display_color_table = GL_TRUE
  if (ExtensionSupported("WGL_ARB_extensions_string")) then IS_GL_WGL_ARB_extensions_string = GL_TRUE
  if (ExtensionSupported("WGL_EXT_extensions_string")) then IS_GL_WGL_EXT_extensions_string = GL_TRUE
  if (ExtensionSupported("WGL_NV_float_buffer")) then IS_GL_WGL_NV_float_buffer = GL_TRUE
  if (ExtensionSupported("WGL_EXT_framebuffer_sRGB")) then IS_GL_WGL_EXT_framebuffer_sRGB = GL_TRUE
  if (ExtensionSupported("WGL_I3D_gamma")) then IS_GL_WGL_I3D_gamma = GL_TRUE
  if (ExtensionSupported("WGL_I3D_genlock")) then IS_GL_WGL_I3D_genlock = GL_TRUE
  if (ExtensionSupported("WGL_NV_gpu_affinity")) then IS_GL_WGL_NV_gpu_affinity = GL_TRUE
  if (ExtensionSupported("WGL_I3D_image_buffer")) then IS_GL_WGL_I3D_image_buffer = GL_TRUE
  if (ExtensionSupported("WGL_ARB_make_current_read")) then IS_GL_WGL_ARB_make_current_read = GL_TRUE
  if (ExtensionSupported("WGL_EXT_make_current_read")) then IS_GL_WGL_EXT_make_current_read = GL_TRUE
  if (ExtensionSupported("WGL_3DFX_multisample")) then IS_GL_WGL_3DFX_multisample = GL_TRUE
  if (ExtensionSupported("WGL_ARB_multisample")) then IS_GL_WGL_ARB_multisample = GL_TRUE
  if (ExtensionSupported("WGL_EXT_multisample")) then IS_GL_WGL_EXT_multisample = GL_TRUE
  if (ExtensionSupported("WGL_ARB_pbuffer")) then IS_GL_WGL_ARB_pbuffer = GL_TRUE
  if (ExtensionSupported("WGL_EXT_pbuffer")) then IS_GL_WGL_EXT_pbuffer = GL_TRUE
  if (ExtensionSupported("WGL_ARB_pixel_format")) then IS_GL_WGL_ARB_pixel_format = GL_TRUE
  if (ExtensionSupported("WGL_ARB_pixel_format_float")) then IS_GL_WGL_ARB_pixel_format_float = GL_TRUE
  if (ExtensionSupported("WGL_EXT_pixel_format")) then IS_GL_WGL_EXT_pixel_format = GL_TRUE
  if (ExtensionSupported("WGL_ATI_pixel_format_float")) then IS_GL_WGL_ATI_pixel_format_float = GL_TRUE
  if (ExtensionSupported("WGL_EXT_pixel_format_packed_float")) then IS_GL_WGL_EXT_pixel_format_packed_float = GL_TRUE
  if (ExtensionSupported("WGL_NV_present_video")) then IS_GL_WGL_NV_present_video = GL_TRUE
  if (ExtensionSupported("WGL_NV_render_depth_texture")) then IS_GL_WGL_NV_render_depth_texture = GL_TRUE
  if (ExtensionSupported("WGL_ARB_render_texture")) then IS_GL_WGL_ARB_render_texture = GL_TRUE
  if (ExtensionSupported("WGL_NV_render_texture_rectangle")) then IS_GL_WGL_NV_render_texture_rectangle = GL_TRUE
  if (ExtensionSupported("WGL_3DL_stereo_control")) then IS_GL_WGL_3DL_stereo_control = GL_TRUE
  if (ExtensionSupported("WGL_EXT_swap_control")) then IS_GL_WGL_EXT_swap_control = GL_TRUE
  if (ExtensionSupported("WGL_I3D_swap_frame_lock")) then IS_GL_WGL_I3D_swap_frame_lock = GL_TRUE
  if (ExtensionSupported("WGL_I3D_swap_frame_usage")) then IS_GL_WGL_I3D_swap_frame_usage = GL_TRUE
  if (ExtensionSupported("WGL_NV_swap_group")) then IS_GL_WGL_NV_swap_group = GL_TRUE
  if (ExtensionSupported("WGL_OML_sync_control")) then IS_GL_WGL_OML_sync_control = GL_TRUE
  if (ExtensionSupported("WGL_NV_vertex_array_range")) then IS_GL_WGL_NV_vertex_array_range = GL_TRUE
  if (ExtensionSupported("WGL_NV_video_output")) then IS_GL_WGL_NV_video_output = GL_TRUE
#else ' GLX
  if (ExtensionSupported("GLX_VERSION_1_3")) then IS_GL_GLX_VERSION_1_3 = GL_TRUE
  if (ExtensionSupported("GLX_VERSION_1_4")) then IS_GL_GLX_VERSION_1_4 = GL_TRUE
  if (ExtensionSupported("GLX_MESA_agp_offset")) then IS_GL_GLX_MESA_agp_offset = GL_TRUE
  if (ExtensionSupported("GLX_SGIS_blended_overlay")) then IS_GL_GLX_SGIS_blended_overlay = GL_TRUE
  if (ExtensionSupported("GLX_MESA_copy_sub_buffer")) then IS_GL_GLX_MESA_copy_sub_buffer = GL_TRUE
  if (ExtensionSupported("GLX_ARB_create_context")) then IS_GL_GLX_ARB_create_context = GL_TRUE
  if (ExtensionSupported("GLX_SGI_cushion")) then IS_GL_GLX_SGI_cushion = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_fbconfig")) then IS_GL_GLX_SGIX_fbconfig = GL_TRUE
  if (ExtensionSupported("GLX_ARB_fbconfig_float")) then IS_GL_GLX_ARB_fbconfig_float = GL_TRUE
  if (ExtensionSupported("GLX_EXT_fbconfig_packed_float")) then IS_GL_GLX_EXT_fbconfig_packed_float = GL_TRUE
  if (ExtensionSupported("GLX_NV_float_buffer")) then IS_GL_GLX_NV_float_buffer = GL_TRUE
  if (ExtensionSupported("GLX_EXT_framebuffer_sRGB")) then IS_GL_GLX_EXT_framebuffer_sRGB = GL_TRUE
  if (ExtensionSupported("GLX_SUN_get_transparent_index")) then IS_GL_GLX_SUN_get_transparent_index = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_hyperpipe")) then IS_GL_GLX_SGIX_hyperpipe = GL_TRUE
  if (ExtensionSupported("GLX_EXT_import_context")) then IS_GL_GLX_EXT_import_context = GL_TRUE
  if (ExtensionSupported("GLX_SGI_make_current_read")) then IS_GL_GLX_SGI_make_current_read = GL_TRUE
  if (ExtensionSupported("GLX_ARB_multisample")) then IS_GL_GLX_ARB_multisample = GL_TRUE
  if (ExtensionSupported("GLX_SGIS_multisample")) then IS_GL_GLX_SGIS_multisample = GL_TRUE
  if (ExtensionSupported("GLX_3DFX_multisample")) then IS_GL_GLX_3DFX_multisample = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_pbuffer")) then IS_GL_GLX_SGIX_pbuffer = GL_TRUE
  if (ExtensionSupported("GLX_MESA_pixmap_colormap")) then IS_GL_GLX_MESA_pixmap_colormap = GL_TRUE
  if (ExtensionSupported("GLX_NV_present_video")) then IS_GL_GLX_NV_present_video = GL_TRUE
  if (ExtensionSupported("GLX_MESA_release_buffers")) then IS_GL_GLX_MESA_release_buffers = GL_TRUE
  if (ExtensionSupported("GLX_EXT_scene_marker")) then IS_GL_GLX_EXT_scene_marker = GL_TRUE
  if (ExtensionSupported("GLX_MESA_set_3dfx_mode")) then IS_GL_GLX_MESA_set_3dfx_mode = GL_TRUE
  if (ExtensionSupported("GLX_SGI_swap_control")) then IS_GL_GLX_SGI_swap_control = GL_TRUE
  if (ExtensionSupported("GLX_SGIS_shared_multisample")) then IS_GL_GLX_SGIS_shared_multisample = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_swap_barrier")) then IS_GL_GLX_SGIX_swap_barrier = GL_TRUE
  if (ExtensionSupported("GLX_NV_swap_group")) then IS_GL_GLX_NV_swap_group = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_swap_group")) then IS_GL_GLX_SGIX_swap_group = GL_TRUE
  if (ExtensionSupported("GLX_OML_swap_method")) then IS_GL_GLX_OML_swap_method = GL_TRUE
  if (ExtensionSupported("GLX_OML_sync_control")) then IS_GL_GLX_OML_sync_control = GL_TRUE
  if (ExtensionSupported("GLX_EXT_texture_from_pixmap")) then IS_GL_GLX_EXT_texture_from_pixmap = GL_TRUE
  if (ExtensionSupported("GLX_NV_video_out")) then IS_GL_GLX_NV_video_out = GL_TRUE
  if (ExtensionSupported("GLX_NV_video_output")) then IS_GL_GLX_NV_video_output = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_video_resize")) then IS_GL_GLX_SGIX_video_resize = GL_TRUE
  if (ExtensionSupported("GLX_SGI_video_sync")) then IS_GL_GLX_SGI_video_sync = GL_TRUE
  if (ExtensionSupported("GLX_EXT_visual_info")) then IS_GL_GLX_EXT_visual_info = GL_TRUE
  if (ExtensionSupported("GLX_EXT_visual_rating")) then IS_GL_GLX_EXT_visual_rating = GL_TRUE
  if (ExtensionSupported("GLX_SGIX_visual_select_group")) then IS_GL_GLX_SGIX_visual_select_group = GL_TRUE
#endif
  dim as uinteger n
  if IS_GL_VERSION_1_2 then
    n=6
    glBlendColor = GetProcPtr("glBlendColor") : if (glBlendColor<>0) then n-=1
    glBlendEquation = GetProcPtr("glBlendEquation") : if (glBlendEquation<>0) then n-=1
    glDrawRangeElements = GetProcPtr("glDrawRangeElements") : if (glDrawRangeElements<>0) then n-=1
    glTexImage3D = GetProcPtr("glTexImage3D") : if (glTexImage3D<>0) then n-=1
    glTexSubImage3D = GetProcPtr("glTexSubImage3D") : if (glTexSubImage3D<>0) then n-=1
    glCopyTexSubImage3D = GetProcPtr("glCopyTexSubImage3D") : if (glCopyTexSubImage3D<>0) then n-=1
    if n then IS_GL_VERSION_1_2=GL_FALSE
  end if

  if IS_GL_VERSION_1_3 then
    n=46
    glActiveTexture = GetProcPtr("glActiveTexture") : if (glActiveTexture<>0) then n-=1
    glSampleCoverage = GetProcPtr("glSampleCoverage") : if (glSampleCoverage<>0) then n-=1
    glCompressedTexImage3D = GetProcPtr("glCompressedTexImage3D") : if (glCompressedTexImage3D<>0) then n-=1
    glCompressedTexImage2D = GetProcPtr("glCompressedTexImage2D") : if (glCompressedTexImage2D<>0) then n-=1
    glCompressedTexImage1D = GetProcPtr("glCompressedTexImage1D") : if (glCompressedTexImage1D<>0) then n-=1
    glCompressedTexSubImage3D = GetProcPtr("glCompressedTexSubImage3D") : if (glCompressedTexSubImage3D<>0) then n-=1
    glCompressedTexSubImage2D = GetProcPtr("glCompressedTexSubImage2D") : if (glCompressedTexSubImage2D<>0) then n-=1
    glCompressedTexSubImage1D = GetProcPtr("glCompressedTexSubImage1D") : if (glCompressedTexSubImage1D<>0) then n-=1
    glGetCompressedTexImage = GetProcPtr("glGetCompressedTexImage") : if (glGetCompressedTexImage<>0) then n-=1
    glClientActiveTexture = GetProcPtr("glClientActiveTexture") : if (glClientActiveTexture<>0) then n-=1
    glMultiTexCoord1d = GetProcPtr("glMultiTexCoord1d") : if (glMultiTexCoord1d<>0) then n-=1
    glMultiTexCoord1dv = GetProcPtr("glMultiTexCoord1dv") : if (glMultiTexCoord1dv<>0) then n-=1
    glMultiTexCoord1f = GetProcPtr("glMultiTexCoord1f") : if (glMultiTexCoord1f<>0) then n-=1
    glMultiTexCoord1fv = GetProcPtr("glMultiTexCoord1fv") : if (glMultiTexCoord1fv<>0) then n-=1
    glMultiTexCoord1i = GetProcPtr("glMultiTexCoord1i") : if (glMultiTexCoord1i<>0) then n-=1
    glMultiTexCoord1iv = GetProcPtr("glMultiTexCoord1iv") : if (glMultiTexCoord1iv<>0) then n-=1
    glMultiTexCoord1s = GetProcPtr("glMultiTexCoord1s") : if (glMultiTexCoord1s<>0) then n-=1
    glMultiTexCoord1sv = GetProcPtr("glMultiTexCoord1sv") : if (glMultiTexCoord1sv<>0) then n-=1
    glMultiTexCoord2d = GetProcPtr("glMultiTexCoord2d") : if (glMultiTexCoord2d<>0) then n-=1
    glMultiTexCoord2dv = GetProcPtr("glMultiTexCoord2dv") : if (glMultiTexCoord2dv<>0) then n-=1
    glMultiTexCoord2f = GetProcPtr("glMultiTexCoord2f") : if (glMultiTexCoord2f<>0) then n-=1
    glMultiTexCoord2fv = GetProcPtr("glMultiTexCoord2fv") : if (glMultiTexCoord2fv<>0) then n-=1
    glMultiTexCoord2i = GetProcPtr("glMultiTexCoord2i") : if (glMultiTexCoord2i<>0) then n-=1
    glMultiTexCoord2iv = GetProcPtr("glMultiTexCoord2iv") : if (glMultiTexCoord2iv<>0) then n-=1
    glMultiTexCoord2s = GetProcPtr("glMultiTexCoord2s") : if (glMultiTexCoord2s<>0) then n-=1
    glMultiTexCoord2sv = GetProcPtr("glMultiTexCoord2sv") : if (glMultiTexCoord2sv<>0) then n-=1
    glMultiTexCoord3d = GetProcPtr("glMultiTexCoord3d") : if (glMultiTexCoord3d<>0) then n-=1
    glMultiTexCoord3dv = GetProcPtr("glMultiTexCoord3dv") : if (glMultiTexCoord3dv<>0) then n-=1
    glMultiTexCoord3f = GetProcPtr("glMultiTexCoord3f") : if (glMultiTexCoord3f<>0) then n-=1
    glMultiTexCoord3fv = GetProcPtr("glMultiTexCoord3fv") : if (glMultiTexCoord3fv<>0) then n-=1
    glMultiTexCoord3i = GetProcPtr("glMultiTexCoord3i") : if (glMultiTexCoord3i<>0) then n-=1
    glMultiTexCoord3iv = GetProcPtr("glMultiTexCoord3iv") : if (glMultiTexCoord3iv<>0) then n-=1
    glMultiTexCoord3s = GetProcPtr("glMultiTexCoord3s") : if (glMultiTexCoord3s<>0) then n-=1
    glMultiTexCoord3sv = GetProcPtr("glMultiTexCoord3sv") : if (glMultiTexCoord3sv<>0) then n-=1
    glMultiTexCoord4d = GetProcPtr("glMultiTexCoord4d") : if (glMultiTexCoord4d<>0) then n-=1
    glMultiTexCoord4dv = GetProcPtr("glMultiTexCoord4dv") : if (glMultiTexCoord4dv<>0) then n-=1
    glMultiTexCoord4f = GetProcPtr("glMultiTexCoord4f") : if (glMultiTexCoord4f<>0) then n-=1
    glMultiTexCoord4fv = GetProcPtr("glMultiTexCoord4fv") : if (glMultiTexCoord4fv<>0) then n-=1
    glMultiTexCoord4i = GetProcPtr("glMultiTexCoord4i") : if (glMultiTexCoord4i<>0) then n-=1
    glMultiTexCoord4iv = GetProcPtr("glMultiTexCoord4iv") : if (glMultiTexCoord4iv<>0) then n-=1
    glMultiTexCoord4s = GetProcPtr("glMultiTexCoord4s") : if (glMultiTexCoord4s<>0) then n-=1
    glMultiTexCoord4sv = GetProcPtr("glMultiTexCoord4sv") : if (glMultiTexCoord4sv<>0) then n-=1
    glLoadTransposeMatrixf = GetProcPtr("glLoadTransposeMatrixf") : if (glLoadTransposeMatrixf<>0) then n-=1
    glLoadTransposeMatrixd = GetProcPtr("glLoadTransposeMatrixd") : if (glLoadTransposeMatrixd<>0) then n-=1
    glMultTransposeMatrixf = GetProcPtr("glMultTransposeMatrixf") : if (glMultTransposeMatrixf<>0) then n-=1
    glMultTransposeMatrixd = GetProcPtr("glMultTransposeMatrixd") : if (glMultTransposeMatrixd<>0) then n-=1
    if n then IS_GL_VERSION_1_3=GL_FALSE
  end if

  if IS_GL_VERSION_1_4 then
    n=45
    glBlendFuncSeparate = GetProcPtr("glBlendFuncSeparate") : if (glBlendFuncSeparate<>0) then n-=1
    glMultiDrawArrays = GetProcPtr("glMultiDrawArrays") : if (glMultiDrawArrays<>0) then n-=1
    glMultiDrawElements = GetProcPtr("glMultiDrawElements") : if (glMultiDrawElements<>0) then n-=1
    glPointParameterf = GetProcPtr("glPointParameterf") : if (glPointParameterf<>0) then n-=1
    glPointParameterfv = GetProcPtr("glPointParameterfv") : if (glPointParameterfv<>0) then n-=1
    glPointParameteri = GetProcPtr("glPointParameteri") : if (glPointParameteri<>0) then n-=1
    glPointParameteriv = GetProcPtr("glPointParameteriv") : if (glPointParameteriv<>0) then n-=1
    glFogCoordf = GetProcPtr("glFogCoordf") : if (glFogCoordf<>0) then n-=1
    glFogCoordfv = GetProcPtr("glFogCoordfv") : if (glFogCoordfv<>0) then n-=1
    glFogCoordd = GetProcPtr("glFogCoordd") : if (glFogCoordd<>0) then n-=1
    glFogCoorddv = GetProcPtr("glFogCoorddv") : if (glFogCoorddv<>0) then n-=1
    glFogCoordPointer = GetProcPtr("glFogCoordPointer") : if (glFogCoordPointer<>0) then n-=1
    glSecondaryColor3b = GetProcPtr("glSecondaryColor3b") : if (glSecondaryColor3b<>0) then n-=1
    glSecondaryColor3bv = GetProcPtr("glSecondaryColor3bv") : if (glSecondaryColor3bv<>0) then n-=1
    glSecondaryColor3d = GetProcPtr("glSecondaryColor3d") : if (glSecondaryColor3d<>0) then n-=1
    glSecondaryColor3dv = GetProcPtr("glSecondaryColor3dv") : if (glSecondaryColor3dv<>0) then n-=1
    glSecondaryColor3f = GetProcPtr("glSecondaryColor3f") : if (glSecondaryColor3f<>0) then n-=1
    glSecondaryColor3fv = GetProcPtr("glSecondaryColor3fv") : if (glSecondaryColor3fv<>0) then n-=1
    glSecondaryColor3i = GetProcPtr("glSecondaryColor3i") : if (glSecondaryColor3i<>0) then n-=1
    glSecondaryColor3iv = GetProcPtr("glSecondaryColor3iv") : if (glSecondaryColor3iv<>0) then n-=1
    glSecondaryColor3s = GetProcPtr("glSecondaryColor3s") : if (glSecondaryColor3s<>0) then n-=1
    glSecondaryColor3sv = GetProcPtr("glSecondaryColor3sv") : if (glSecondaryColor3sv<>0) then n-=1
    glSecondaryColor3ub = GetProcPtr("glSecondaryColor3ub") : if (glSecondaryColor3ub<>0) then n-=1
    glSecondaryColor3ubv = GetProcPtr("glSecondaryColor3ubv") : if (glSecondaryColor3ubv<>0) then n-=1
    glSecondaryColor3ui = GetProcPtr("glSecondaryColor3ui") : if (glSecondaryColor3ui<>0) then n-=1
    glSecondaryColor3uiv = GetProcPtr("glSecondaryColor3uiv") : if (glSecondaryColor3uiv<>0) then n-=1
    glSecondaryColor3us = GetProcPtr("glSecondaryColor3us") : if (glSecondaryColor3us<>0) then n-=1
    glSecondaryColor3usv = GetProcPtr("glSecondaryColor3usv") : if (glSecondaryColor3usv<>0) then n-=1
    glSecondaryColorPointer = GetProcPtr("glSecondaryColorPointer") : if (glSecondaryColorPointer<>0) then n-=1
    glWindowPos2d = GetProcPtr("glWindowPos2d") : if (glWindowPos2d<>0) then n-=1
    glWindowPos2dv = GetProcPtr("glWindowPos2dv") : if (glWindowPos2dv<>0) then n-=1
    glWindowPos2f = GetProcPtr("glWindowPos2f") : if (glWindowPos2f<>0) then n-=1
    glWindowPos2fv = GetProcPtr("glWindowPos2fv") : if (glWindowPos2fv<>0) then n-=1
    glWindowPos2i = GetProcPtr("glWindowPos2i") : if (glWindowPos2i<>0) then n-=1
    glWindowPos2iv = GetProcPtr("glWindowPos2iv") : if (glWindowPos2iv<>0) then n-=1
    glWindowPos2s = GetProcPtr("glWindowPos2s") : if (glWindowPos2s<>0) then n-=1
    glWindowPos2sv = GetProcPtr("glWindowPos2sv") : if (glWindowPos2sv<>0) then n-=1
    glWindowPos3d = GetProcPtr("glWindowPos3d") : if (glWindowPos3d<>0) then n-=1
    glWindowPos3dv = GetProcPtr("glWindowPos3dv") : if (glWindowPos3dv<>0) then n-=1
    glWindowPos3f = GetProcPtr("glWindowPos3f") : if (glWindowPos3f<>0) then n-=1
    glWindowPos3fv = GetProcPtr("glWindowPos3fv") : if (glWindowPos3fv<>0) then n-=1
    glWindowPos3i = GetProcPtr("glWindowPos3i") : if (glWindowPos3i<>0) then n-=1
    glWindowPos3iv = GetProcPtr("glWindowPos3iv") : if (glWindowPos3iv<>0) then n-=1
    glWindowPos3s = GetProcPtr("glWindowPos3s") : if (glWindowPos3s<>0) then n-=1
    glWindowPos3sv = GetProcPtr("glWindowPos3sv") : if (glWindowPos3sv<>0) then n-=1
    if n then IS_GL_VERSION_1_4=GL_FALSE
  end if

  if IS_GL_VERSION_1_5 then
    n=19
    glGenQueries = GetProcPtr("glGenQueries") : if (glGenQueries<>0) then n-=1
    glDeleteQueries = GetProcPtr("glDeleteQueries") : if (glDeleteQueries<>0) then n-=1
    glIsQuery = GetProcPtr("glIsQuery") : if (glIsQuery<>0) then n-=1
    glBeginQuery = GetProcPtr("glBeginQuery") : if (glBeginQuery<>0) then n-=1
    glEndQuery = GetProcPtr("glEndQuery") : if (glEndQuery<>0) then n-=1
    glGetQueryiv = GetProcPtr("glGetQueryiv") : if (glGetQueryiv<>0) then n-=1
    glGetQueryObjectiv = GetProcPtr("glGetQueryObjectiv") : if (glGetQueryObjectiv<>0) then n-=1
    glGetQueryObjectuiv = GetProcPtr("glGetQueryObjectuiv") : if (glGetQueryObjectuiv<>0) then n-=1
    glBindBuffer = GetProcPtr("glBindBuffer") : if (glBindBuffer<>0) then n-=1
    glDeleteBuffers = GetProcPtr("glDeleteBuffers") : if (glDeleteBuffers<>0) then n-=1
    glGenBuffers = GetProcPtr("glGenBuffers") : if (glGenBuffers<>0) then n-=1
    glIsBuffer = GetProcPtr("glIsBuffer") : if (glIsBuffer<>0) then n-=1
    glBufferData = GetProcPtr("glBufferData") : if (glBufferData<>0) then n-=1
    glBufferSubData = GetProcPtr("glBufferSubData") : if (glBufferSubData<>0) then n-=1
    glGetBufferSubData = GetProcPtr("glGetBufferSubData") : if (glGetBufferSubData<>0) then n-=1
    glMapBuffer = GetProcPtr("glMapBuffer") : if (glMapBuffer<>0) then n-=1
    glUnmapBuffer = GetProcPtr("glUnmapBuffer") : if (glUnmapBuffer<>0) then n-=1
    glGetBufferParameteriv = GetProcPtr("glGetBufferParameteriv") : if (glGetBufferParameteriv<>0) then n-=1
    glGetBufferPointerv = GetProcPtr("glGetBufferPointerv") : if (glGetBufferPointerv<>0) then n-=1
    if n then IS_GL_VERSION_1_5=GL_FALSE
  end if

  if IS_GL_VERSION_2_0 then
    n=93
    glBlendEquationSeparate = GetProcPtr("glBlendEquationSeparate") : if (glBlendEquationSeparate<>0) then n-=1
    glDrawBuffers = GetProcPtr("glDrawBuffers") : if (glDrawBuffers<>0) then n-=1
    glStencilOpSeparate = GetProcPtr("glStencilOpSeparate") : if (glStencilOpSeparate<>0) then n-=1
    glStencilFuncSeparate = GetProcPtr("glStencilFuncSeparate") : if (glStencilFuncSeparate<>0) then n-=1
    glStencilMaskSeparate = GetProcPtr("glStencilMaskSeparate") : if (glStencilMaskSeparate<>0) then n-=1
    glAttachShader = GetProcPtr("glAttachShader") : if (glAttachShader<>0) then n-=1
    glBindAttribLocation = GetProcPtr("glBindAttribLocation") : if (glBindAttribLocation<>0) then n-=1
    glCompileShader = GetProcPtr("glCompileShader") : if (glCompileShader<>0) then n-=1
    glCreateProgram = GetProcPtr("glCreateProgram") : if (glCreateProgram<>0) then n-=1
    glCreateShader = GetProcPtr("glCreateShader") : if (glCreateShader<>0) then n-=1
    glDeleteProgram = GetProcPtr("glDeleteProgram") : if (glDeleteProgram<>0) then n-=1
    glDeleteShader = GetProcPtr("glDeleteShader") : if (glDeleteShader<>0) then n-=1
    glDetachShader = GetProcPtr("glDetachShader") : if (glDetachShader<>0) then n-=1
    glDisableVertexAttribArray = GetProcPtr("glDisableVertexAttribArray") : if (glDisableVertexAttribArray<>0) then n-=1
    glEnableVertexAttribArray = GetProcPtr("glEnableVertexAttribArray") : if (glEnableVertexAttribArray<>0) then n-=1
    glGetActiveAttrib = GetProcPtr("glGetActiveAttrib") : if (glGetActiveAttrib<>0) then n-=1
    glGetActiveUniform = GetProcPtr("glGetActiveUniform") : if (glGetActiveUniform<>0) then n-=1
    glGetAttachedShaders = GetProcPtr("glGetAttachedShaders") : if (glGetAttachedShaders<>0) then n-=1
    glGetAttribLocation = GetProcPtr("glGetAttribLocation") : if (glGetAttribLocation<>0) then n-=1
    glGetProgramiv = GetProcPtr("glGetProgramiv") : if (glGetProgramiv<>0) then n-=1
    glGetProgramInfoLog = GetProcPtr("glGetProgramInfoLog") : if (glGetProgramInfoLog<>0) then n-=1
    glGetShaderiv = GetProcPtr("glGetShaderiv") : if (glGetShaderiv<>0) then n-=1
    glGetShaderInfoLog = GetProcPtr("glGetShaderInfoLog") : if (glGetShaderInfoLog<>0) then n-=1
    glGetShaderSource = GetProcPtr("glGetShaderSource") : if (glGetShaderSource<>0) then n-=1
    glGetUniformLocation = GetProcPtr("glGetUniformLocation") : if (glGetUniformLocation<>0) then n-=1
    glGetUniformfv = GetProcPtr("glGetUniformfv") : if (glGetUniformfv<>0) then n-=1
    glGetUniformiv = GetProcPtr("glGetUniformiv") : if (glGetUniformiv<>0) then n-=1
    glGetVertexAttribdv = GetProcPtr("glGetVertexAttribdv") : if (glGetVertexAttribdv<>0) then n-=1
    glGetVertexAttribfv = GetProcPtr("glGetVertexAttribfv") : if (glGetVertexAttribfv<>0) then n-=1
    glGetVertexAttribiv = GetProcPtr("glGetVertexAttribiv") : if (glGetVertexAttribiv<>0) then n-=1
    glGetVertexAttribPointerv = GetProcPtr("glGetVertexAttribPointerv") : if (glGetVertexAttribPointerv<>0) then n-=1
    glIsProgram = GetProcPtr("glIsProgram") : if (glIsProgram<>0) then n-=1
    glIsShader = GetProcPtr("glIsShader") : if (glIsShader<>0) then n-=1
    glLinkProgram = GetProcPtr("glLinkProgram") : if (glLinkProgram<>0) then n-=1
    glShaderSource = GetProcPtr("glShaderSource") : if (glShaderSource<>0) then n-=1
    glUseProgram = GetProcPtr("glUseProgram") : if (glUseProgram<>0) then n-=1
    glUniform1f = GetProcPtr("glUniform1f") : if (glUniform1f<>0) then n-=1
    glUniform2f = GetProcPtr("glUniform2f") : if (glUniform2f<>0) then n-=1
    glUniform3f = GetProcPtr("glUniform3f") : if (glUniform3f<>0) then n-=1
    glUniform4f = GetProcPtr("glUniform4f") : if (glUniform4f<>0) then n-=1
    glUniform1i = GetProcPtr("glUniform1i") : if (glUniform1i<>0) then n-=1
    glUniform2i = GetProcPtr("glUniform2i") : if (glUniform2i<>0) then n-=1
    glUniform3i = GetProcPtr("glUniform3i") : if (glUniform3i<>0) then n-=1
    glUniform4i = GetProcPtr("glUniform4i") : if (glUniform4i<>0) then n-=1
    glUniform1fv = GetProcPtr("glUniform1fv") : if (glUniform1fv<>0) then n-=1
    glUniform2fv = GetProcPtr("glUniform2fv") : if (glUniform2fv<>0) then n-=1
    glUniform3fv = GetProcPtr("glUniform3fv") : if (glUniform3fv<>0) then n-=1
    glUniform4fv = GetProcPtr("glUniform4fv") : if (glUniform4fv<>0) then n-=1
    glUniform1iv = GetProcPtr("glUniform1iv") : if (glUniform1iv<>0) then n-=1
    glUniform2iv = GetProcPtr("glUniform2iv") : if (glUniform2iv<>0) then n-=1
    glUniform3iv = GetProcPtr("glUniform3iv") : if (glUniform3iv<>0) then n-=1
    glUniform4iv = GetProcPtr("glUniform4iv") : if (glUniform4iv<>0) then n-=1
    glUniformMatrix2fv = GetProcPtr("glUniformMatrix2fv") : if (glUniformMatrix2fv<>0) then n-=1
    glUniformMatrix3fv = GetProcPtr("glUniformMatrix3fv") : if (glUniformMatrix3fv<>0) then n-=1
    glUniformMatrix4fv = GetProcPtr("glUniformMatrix4fv") : if (glUniformMatrix4fv<>0) then n-=1
    glValidateProgram = GetProcPtr("glValidateProgram") : if (glValidateProgram<>0) then n-=1
    glVertexAttrib1d = GetProcPtr("glVertexAttrib1d") : if (glVertexAttrib1d<>0) then n-=1
    glVertexAttrib1dv = GetProcPtr("glVertexAttrib1dv") : if (glVertexAttrib1dv<>0) then n-=1
    glVertexAttrib1f = GetProcPtr("glVertexAttrib1f") : if (glVertexAttrib1f<>0) then n-=1
    glVertexAttrib1fv = GetProcPtr("glVertexAttrib1fv") : if (glVertexAttrib1fv<>0) then n-=1
    glVertexAttrib1s = GetProcPtr("glVertexAttrib1s") : if (glVertexAttrib1s<>0) then n-=1
    glVertexAttrib1sv = GetProcPtr("glVertexAttrib1sv") : if (glVertexAttrib1sv<>0) then n-=1
    glVertexAttrib2d = GetProcPtr("glVertexAttrib2d") : if (glVertexAttrib2d<>0) then n-=1
    glVertexAttrib2dv = GetProcPtr("glVertexAttrib2dv") : if (glVertexAttrib2dv<>0) then n-=1
    glVertexAttrib2f = GetProcPtr("glVertexAttrib2f") : if (glVertexAttrib2f<>0) then n-=1
    glVertexAttrib2fv = GetProcPtr("glVertexAttrib2fv") : if (glVertexAttrib2fv<>0) then n-=1
    glVertexAttrib2s = GetProcPtr("glVertexAttrib2s") : if (glVertexAttrib2s<>0) then n-=1
    glVertexAttrib2sv = GetProcPtr("glVertexAttrib2sv") : if (glVertexAttrib2sv<>0) then n-=1
    glVertexAttrib3d = GetProcPtr("glVertexAttrib3d") : if (glVertexAttrib3d<>0) then n-=1
    glVertexAttrib3dv = GetProcPtr("glVertexAttrib3dv") : if (glVertexAttrib3dv<>0) then n-=1
    glVertexAttrib3f = GetProcPtr("glVertexAttrib3f") : if (glVertexAttrib3f<>0) then n-=1
    glVertexAttrib3fv = GetProcPtr("glVertexAttrib3fv") : if (glVertexAttrib3fv<>0) then n-=1
    glVertexAttrib3s = GetProcPtr("glVertexAttrib3s") : if (glVertexAttrib3s<>0) then n-=1
    glVertexAttrib3sv = GetProcPtr("glVertexAttrib3sv") : if (glVertexAttrib3sv<>0) then n-=1
    glVertexAttrib4Nbv = GetProcPtr("glVertexAttrib4Nbv") : if (glVertexAttrib4Nbv<>0) then n-=1
    glVertexAttrib4Niv = GetProcPtr("glVertexAttrib4Niv") : if (glVertexAttrib4Niv<>0) then n-=1
    glVertexAttrib4Nsv = GetProcPtr("glVertexAttrib4Nsv") : if (glVertexAttrib4Nsv<>0) then n-=1
    glVertexAttrib4Nub = GetProcPtr("glVertexAttrib4Nub") : if (glVertexAttrib4Nub<>0) then n-=1
    glVertexAttrib4Nubv = GetProcPtr("glVertexAttrib4Nubv") : if (glVertexAttrib4Nubv<>0) then n-=1
    glVertexAttrib4Nuiv = GetProcPtr("glVertexAttrib4Nuiv") : if (glVertexAttrib4Nuiv<>0) then n-=1
    glVertexAttrib4Nusv = GetProcPtr("glVertexAttrib4Nusv") : if (glVertexAttrib4Nusv<>0) then n-=1
    glVertexAttrib4bv = GetProcPtr("glVertexAttrib4bv") : if (glVertexAttrib4bv<>0) then n-=1
    glVertexAttrib4d = GetProcPtr("glVertexAttrib4d") : if (glVertexAttrib4d<>0) then n-=1
    glVertexAttrib4dv = GetProcPtr("glVertexAttrib4dv") : if (glVertexAttrib4dv<>0) then n-=1
    glVertexAttrib4f = GetProcPtr("glVertexAttrib4f") : if (glVertexAttrib4f<>0) then n-=1
    glVertexAttrib4fv = GetProcPtr("glVertexAttrib4fv") : if (glVertexAttrib4fv<>0) then n-=1
    glVertexAttrib4iv = GetProcPtr("glVertexAttrib4iv") : if (glVertexAttrib4iv<>0) then n-=1
    glVertexAttrib4s = GetProcPtr("glVertexAttrib4s") : if (glVertexAttrib4s<>0) then n-=1
    glVertexAttrib4sv = GetProcPtr("glVertexAttrib4sv") : if (glVertexAttrib4sv<>0) then n-=1
    glVertexAttrib4ubv = GetProcPtr("glVertexAttrib4ubv") : if (glVertexAttrib4ubv<>0) then n-=1
    glVertexAttrib4uiv = GetProcPtr("glVertexAttrib4uiv") : if (glVertexAttrib4uiv<>0) then n-=1
    glVertexAttrib4usv = GetProcPtr("glVertexAttrib4usv") : if (glVertexAttrib4usv<>0) then n-=1
    glVertexAttribPointer = GetProcPtr("glVertexAttribPointer") : if (glVertexAttribPointer<>0) then n-=1
    if n then IS_GL_VERSION_2_0=GL_FALSE
  end if

  if IS_GL_VERSION_2_1 then
    n=6
    glUniformMatrix2x3fv = GetProcPtr("glUniformMatrix2x3fv") : if (glUniformMatrix2x3fv<>0) then n-=1
    glUniformMatrix3x2fv = GetProcPtr("glUniformMatrix3x2fv") : if (glUniformMatrix3x2fv<>0) then n-=1
    glUniformMatrix2x4fv = GetProcPtr("glUniformMatrix2x4fv") : if (glUniformMatrix2x4fv<>0) then n-=1
    glUniformMatrix4x2fv = GetProcPtr("glUniformMatrix4x2fv") : if (glUniformMatrix4x2fv<>0) then n-=1
    glUniformMatrix3x4fv = GetProcPtr("glUniformMatrix3x4fv") : if (glUniformMatrix3x4fv<>0) then n-=1
    glUniformMatrix4x3fv = GetProcPtr("glUniformMatrix4x3fv") : if (glUniformMatrix4x3fv<>0) then n-=1
    if n then IS_GL_VERSION_2_1=GL_FALSE
  end if

  if IS_GL_VERSION_3_0 then
    n=84
    glColorMaski = GetProcPtr("glColorMaski") : if (glColorMaski<>0) then n-=1
    glGetBooleani_v = GetProcPtr("glGetBooleani_v") : if (glGetBooleani_v<>0) then n-=1
    glGetIntegeri_v = GetProcPtr("glGetIntegeri_v") : if (glGetIntegeri_v<>0) then n-=1
    glEnablei = GetProcPtr("glEnablei") : if (glEnablei<>0) then n-=1
    glDisablei = GetProcPtr("glDisablei") : if (glDisablei<>0) then n-=1
    glIsEnabledi = GetProcPtr("glIsEnabledi") : if (glIsEnabledi<>0) then n-=1
    glBeginTransformFeedback = GetProcPtr("glBeginTransformFeedback") : if (glBeginTransformFeedback<>0) then n-=1
    glEndTransformFeedback = GetProcPtr("glEndTransformFeedback") : if (glEndTransformFeedback<>0) then n-=1
    glBindBufferRange = GetProcPtr("glBindBufferRange") : if (glBindBufferRange<>0) then n-=1
    glBindBufferBase = GetProcPtr("glBindBufferBase") : if (glBindBufferBase<>0) then n-=1
    glTransformFeedbackVaryings = GetProcPtr("glTransformFeedbackVaryings") : if (glTransformFeedbackVaryings<>0) then n-=1
    glGetTransformFeedbackVarying = GetProcPtr("glGetTransformFeedbackVarying") : if (glGetTransformFeedbackVarying<>0) then n-=1
    glClampColor = GetProcPtr("glClampColor") : if (glClampColor<>0) then n-=1
    glBeginConditionalRender = GetProcPtr("glBeginConditionalRender") : if (glBeginConditionalRender<>0) then n-=1
    glEndConditionalRender = GetProcPtr("glEndConditionalRender") : if (glEndConditionalRender<>0) then n-=1
    glVertexAttribIPointer = GetProcPtr("glVertexAttribIPointer") : if (glVertexAttribIPointer<>0) then n-=1
    glGetVertexAttribIiv = GetProcPtr("glGetVertexAttribIiv") : if (glGetVertexAttribIiv<>0) then n-=1
    glGetVertexAttribIuiv = GetProcPtr("glGetVertexAttribIuiv") : if (glGetVertexAttribIuiv<>0) then n-=1
    glVertexAttribI1i = GetProcPtr("glVertexAttribI1i") : if (glVertexAttribI1i<>0) then n-=1
    glVertexAttribI2i = GetProcPtr("glVertexAttribI2i") : if (glVertexAttribI2i<>0) then n-=1
    glVertexAttribI3i = GetProcPtr("glVertexAttribI3i") : if (glVertexAttribI3i<>0) then n-=1
    glVertexAttribI4i = GetProcPtr("glVertexAttribI4i") : if (glVertexAttribI4i<>0) then n-=1
    glVertexAttribI1ui = GetProcPtr("glVertexAttribI1ui") : if (glVertexAttribI1ui<>0) then n-=1
    glVertexAttribI2ui = GetProcPtr("glVertexAttribI2ui") : if (glVertexAttribI2ui<>0) then n-=1
    glVertexAttribI3ui = GetProcPtr("glVertexAttribI3ui") : if (glVertexAttribI3ui<>0) then n-=1
    glVertexAttribI4ui = GetProcPtr("glVertexAttribI4ui") : if (glVertexAttribI4ui<>0) then n-=1
    glVertexAttribI1iv = GetProcPtr("glVertexAttribI1iv") : if (glVertexAttribI1iv<>0) then n-=1
    glVertexAttribI2iv = GetProcPtr("glVertexAttribI2iv") : if (glVertexAttribI2iv<>0) then n-=1
    glVertexAttribI3iv = GetProcPtr("glVertexAttribI3iv") : if (glVertexAttribI3iv<>0) then n-=1
    glVertexAttribI4iv = GetProcPtr("glVertexAttribI4iv") : if (glVertexAttribI4iv<>0) then n-=1
    glVertexAttribI1uiv = GetProcPtr("glVertexAttribI1uiv") : if (glVertexAttribI1uiv<>0) then n-=1
    glVertexAttribI2uiv = GetProcPtr("glVertexAttribI2uiv") : if (glVertexAttribI2uiv<>0) then n-=1
    glVertexAttribI3uiv = GetProcPtr("glVertexAttribI3uiv") : if (glVertexAttribI3uiv<>0) then n-=1
    glVertexAttribI4uiv = GetProcPtr("glVertexAttribI4uiv") : if (glVertexAttribI4uiv<>0) then n-=1
    glVertexAttribI4bv = GetProcPtr("glVertexAttribI4bv") : if (glVertexAttribI4bv<>0) then n-=1
    glVertexAttribI4sv = GetProcPtr("glVertexAttribI4sv") : if (glVertexAttribI4sv<>0) then n-=1
    glVertexAttribI4ubv = GetProcPtr("glVertexAttribI4ubv") : if (glVertexAttribI4ubv<>0) then n-=1
    glVertexAttribI4usv = GetProcPtr("glVertexAttribI4usv") : if (glVertexAttribI4usv<>0) then n-=1
    glGetUniformuiv = GetProcPtr("glGetUniformuiv") : if (glGetUniformuiv<>0) then n-=1
    glBindFragDataLocation = GetProcPtr("glBindFragDataLocation") : if (glBindFragDataLocation<>0) then n-=1
    glGetFragDataLocation = GetProcPtr("glGetFragDataLocation") : if (glGetFragDataLocation<>0) then n-=1
    glUniform1ui = GetProcPtr("glUniform1ui") : if (glUniform1ui<>0) then n-=1
    glUniform2ui = GetProcPtr("glUniform2ui") : if (glUniform2ui<>0) then n-=1
    glUniform3ui = GetProcPtr("glUniform3ui") : if (glUniform3ui<>0) then n-=1
    glUniform4ui = GetProcPtr("glUniform4ui") : if (glUniform4ui<>0) then n-=1
    glUniform1uiv = GetProcPtr("glUniform1uiv") : if (glUniform1uiv<>0) then n-=1
    glUniform2uiv = GetProcPtr("glUniform2uiv") : if (glUniform2uiv<>0) then n-=1
    glUniform3uiv = GetProcPtr("glUniform3uiv") : if (glUniform3uiv<>0) then n-=1
    glUniform4uiv = GetProcPtr("glUniform4uiv") : if (glUniform4uiv<>0) then n-=1
    glTexParameterIiv = GetProcPtr("glTexParameterIiv") : if (glTexParameterIiv<>0) then n-=1
    glTexParameterIuiv = GetProcPtr("glTexParameterIuiv") : if (glTexParameterIuiv<>0) then n-=1
    glGetTexParameterIiv = GetProcPtr("glGetTexParameterIiv") : if (glGetTexParameterIiv<>0) then n-=1
    glGetTexParameterIuiv = GetProcPtr("glGetTexParameterIuiv") : if (glGetTexParameterIuiv<>0) then n-=1
    glClearBufferiv = GetProcPtr("glClearBufferiv") : if (glClearBufferiv<>0) then n-=1
    glClearBufferuiv = GetProcPtr("glClearBufferuiv") : if (glClearBufferuiv<>0) then n-=1
    glClearBufferfv = GetProcPtr("glClearBufferfv") : if (glClearBufferfv<>0) then n-=1
    glClearBufferfi = GetProcPtr("glClearBufferfi") : if (glClearBufferfi<>0) then n-=1
    glGetStringi = GetProcPtr("glGetStringi") : if (glGetStringi<>0) then n-=1
    glIsRenderbuffer = GetProcPtr("glIsRenderbuffer") : if (glIsRenderbuffer<>0) then n-=1
    glBindRenderbuffer = GetProcPtr("glBindRenderbuffer") : if (glBindRenderbuffer<>0) then n-=1
    glDeleteRenderbuffers = GetProcPtr("glDeleteRenderbuffers") : if (glDeleteRenderbuffers<>0) then n-=1
    glGenRenderbuffers = GetProcPtr("glGenRenderbuffers") : if (glGenRenderbuffers<>0) then n-=1
    glRenderbufferStorage = GetProcPtr("glRenderbufferStorage") : if (glRenderbufferStorage<>0) then n-=1
    glGetRenderbufferParameteriv = GetProcPtr("glGetRenderbufferParameteriv") : if (glGetRenderbufferParameteriv<>0) then n-=1
    glIsFramebuffer = GetProcPtr("glIsFramebuffer") : if (glIsFramebuffer<>0) then n-=1
    glBindFramebuffer = GetProcPtr("glBindFramebuffer") : if (glBindFramebuffer<>0) then n-=1
    glDeleteFramebuffers = GetProcPtr("glDeleteFramebuffers") : if (glDeleteFramebuffers<>0) then n-=1
    glGenFramebuffers = GetProcPtr("glGenFramebuffers") : if (glGenFramebuffers<>0) then n-=1
    glCheckFramebufferStatus = GetProcPtr("glCheckFramebufferStatus") : if (glCheckFramebufferStatus<>0) then n-=1
    glFramebufferTexture1D = GetProcPtr("glFramebufferTexture1D") : if (glFramebufferTexture1D<>0) then n-=1
    glFramebufferTexture2D = GetProcPtr("glFramebufferTexture2D") : if (glFramebufferTexture2D<>0) then n-=1
    glFramebufferTexture3D = GetProcPtr("glFramebufferTexture3D") : if (glFramebufferTexture3D<>0) then n-=1
    glFramebufferRenderbuffer = GetProcPtr("glFramebufferRenderbuffer") : if (glFramebufferRenderbuffer<>0) then n-=1
    glGetFramebufferAttachmentParameteriv = GetProcPtr("glGetFramebufferAttachmentParameteriv") : if (glGetFramebufferAttachmentParameteriv<>0) then n-=1
    glGenerateMipmap = GetProcPtr("glGenerateMipmap") : if (glGenerateMipmap<>0) then n-=1
    glBlitFramebuffer = GetProcPtr("glBlitFramebuffer") : if (glBlitFramebuffer<>0) then n-=1
    glRenderbufferStorageMultisample = GetProcPtr("glRenderbufferStorageMultisample") : if (glRenderbufferStorageMultisample<>0) then n-=1
    glFramebufferTextureLayer = GetProcPtr("glFramebufferTextureLayer") : if (glFramebufferTextureLayer<>0) then n-=1
    glMapBufferRange = GetProcPtr("glMapBufferRange") : if (glMapBufferRange<>0) then n-=1
    glFlushMappedBufferRange = GetProcPtr("glFlushMappedBufferRange") : if (glFlushMappedBufferRange<>0) then n-=1
    glBindVertexArray = GetProcPtr("glBindVertexArray") : if (glBindVertexArray<>0) then n-=1
    glDeleteVertexArrays = GetProcPtr("glDeleteVertexArrays") : if (glDeleteVertexArrays<>0) then n-=1
    glGenVertexArrays = GetProcPtr("glGenVertexArrays") : if (glGenVertexArrays<>0) then n-=1
    glIsVertexArray = GetProcPtr("glIsVertexArray") : if (glIsVertexArray<>0) then n-=1
    if n then IS_GL_VERSION_3_0=GL_FALSE
  end if

  if IS_GL_VERSION_3_1 then 
    n=12
    glDrawArraysInstanced = GetProcPtr("glDrawArraysInstanced") : if (glDrawArraysInstanced<>0) then n-=1
    glDrawElementsInstanced = GetProcPtr("glDrawElementsInstanced") : if (glDrawElementsInstanced<>0) then n-=1
    glTexBuffer = GetProcPtr("glTexBuffer") : if (glTexBuffer<>0) then n-=1
    glPrimitiveRestartIndex = GetProcPtr("glPrimitiveRestartIndex") : if (glPrimitiveRestartIndex<>0) then n-=1
    glCopyBufferSubData = GetProcPtr("glCopyBufferSubData") : if (glCopyBufferSubData<>0) then n-=1
    glGetUniformIndices = GetProcPtr("glGetUniformIndices") : if (glGetUniformIndices<>0) then n-=1
    glGetActiveUniformsiv = GetProcPtr("glGetActiveUniformsiv") : if (glGetActiveUniformsiv<>0) then n-=1
    glGetActiveUniformName = GetProcPtr("glGetActiveUniformName") : if (glGetActiveUniformName<>0) then n-=1
    glGetUniformBlockIndex = GetProcPtr("glGetUniformBlockIndex") : if (glGetUniformBlockIndex<>0) then n-=1
    glGetActiveUniformBlockiv = GetProcPtr("glGetActiveUniformBlockiv") : if (glGetActiveUniformBlockiv<>0) then n-=1
    glGetActiveUniformBlockName = GetProcPtr("glGetActiveUniformBlockName") : if (glGetActiveUniformBlockName<>0) then n-=1
    glUniformBlockBinding = GetProcPtr("glUniformBlockBinding") : if (glUniformBlockBinding<>0) then n-=1
    if n then IS_GL_VERSION_3_1=GL_FALSE
  end if

  if IS_GL_VERSION_3_2 then
    n=19
    glDrawElementsBaseVertex = GetProcPtr("glDrawElementsBaseVertex") : if (glDrawElementsBaseVertex<>0) then n-=1
    glDrawRangeElementsBaseVertex = GetProcPtr("glDrawRangeElementsBaseVertex") : if (glDrawRangeElementsBaseVertex<>0) then n-=1
    glDrawElementsInstancedBaseVertex = GetProcPtr("glDrawElementsInstancedBaseVertex") : if (glDrawElementsInstancedBaseVertex<>0) then n-=1
    glMultiDrawElementsBaseVertex = GetProcPtr("glMultiDrawElementsBaseVertex") : if (glMultiDrawElementsBaseVertex<>0) then n-=1
    glProvokingVertex = GetProcPtr("glProvokingVertex") : if (glProvokingVertex<>0) then n-=1
    glFenceSync = GetProcPtr("glFenceSync") : if (glFenceSync<>0) then n-=1
    glIsSync = GetProcPtr("glIsSync") : if (glIsSync<>0) then n-=1
    glDeleteSync = GetProcPtr("glDeleteSync") : if (glDeleteSync<>0) then n-=1
    glClientWaitSync = GetProcPtr("glClientWaitSync") : if (glClientWaitSync<>0) then n-=1
    glWaitSync = GetProcPtr("glWaitSync") : if (glWaitSync<>0) then n-=1
    glGetInteger64v = GetProcPtr("glGetInteger64v") : if (glGetInteger64v<>0) then n-=1
    glGetSynciv = GetProcPtr("glGetSynciv") : if (glGetSynciv<>0) then n-=1
    glGetInteger64i_v = GetProcPtr("glGetInteger64i_v") : if (glGetInteger64i_v<>0) then n-=1
    glGetBufferParameteri64v = GetProcPtr("glGetBufferParameteri64v") : if (glGetBufferParameteri64v<>0) then n-=1
    glFramebufferTexture = GetProcPtr("glFramebufferTexture") : if (glFramebufferTexture<>0) then n-=1
    glTexImage2DMultisample = GetProcPtr("glTexImage2DMultisample") : if (glTexImage2DMultisample<>0) then n-=1
    glTexImage3DMultisample = GetProcPtr("glTexImage3DMultisample") : if (glTexImage3DMultisample<>0) then n-=1
    glGetMultisamplefv = GetProcPtr("glGetMultisamplefv") : if (glGetMultisamplefv<>0) then n-=1
    glSampleMaski = GetProcPtr("glSampleMaski") : if (glSampleMaski<>0) then n-=1
    if n then IS_GL_VERSION_3_2=GL_FALSE
  end if

  if IS_GL_VERSION_3_3 then
    n=58
    glBindFragDataLocationIndexed = GetProcPtr("glBindFragDataLocationIndexed") : if (glBindFragDataLocationIndexed<>0) then n-=1
    glGetFragDataIndex = GetProcPtr("glGetFragDataIndex") : if (glGetFragDataIndex<>0) then n-=1
    glGenSamplers = GetProcPtr("glGenSamplers") : if (glGenSamplers<>0) then n-=1
    glDeleteSamplers = GetProcPtr("glDeleteSamplers") : if (glDeleteSamplers<>0) then n-=1
    glIsSampler = GetProcPtr("glIsSampler") : if (glIsSampler<>0) then n-=1
    glBindSampler = GetProcPtr("glBindSampler") : if (glBindSampler<>0) then n-=1
    glSamplerParameteri = GetProcPtr("glSamplerParameteri") : if (glSamplerParameteri<>0) then n-=1
    glSamplerParameteriv = GetProcPtr("glSamplerParameteriv") : if (glSamplerParameteriv<>0) then n-=1
    glSamplerParameterf = GetProcPtr("glSamplerParameterf") : if (glSamplerParameterf<>0) then n-=1
    glSamplerParameterfv = GetProcPtr("glSamplerParameterfv") : if (glSamplerParameterfv<>0) then n-=1
    glSamplerParameterIiv = GetProcPtr("glSamplerParameterIiv") : if (glSamplerParameterIiv<>0) then n-=1
    glSamplerParameterIuiv = GetProcPtr("glSamplerParameterIuiv") : if (glSamplerParameterIuiv<>0) then n-=1
    glGetSamplerParameteriv = GetProcPtr("glGetSamplerParameteriv") : if (glGetSamplerParameteriv<>0) then n-=1
    glGetSamplerParameterIiv = GetProcPtr("glGetSamplerParameterIiv") : if (glGetSamplerParameterIiv<>0) then n-=1
    glGetSamplerParameterfv = GetProcPtr("glGetSamplerParameterfv") : if (glGetSamplerParameterfv<>0) then n-=1
    glGetSamplerParameterIuiv = GetProcPtr("glGetSamplerParameterIuiv") : if (glGetSamplerParameterIuiv<>0) then n-=1
    glQueryCounter = GetProcPtr("glQueryCounter") : if (glQueryCounter<>0) then n-=1
    glGetQueryObjecti64v = GetProcPtr("glGetQueryObjecti64v") : if (glGetQueryObjecti64v<>0) then n-=1
    glGetQueryObjectui64v = GetProcPtr("glGetQueryObjectui64v") : if (glGetQueryObjectui64v<>0) then n-=1
    glVertexAttribDivisor = GetProcPtr("glVertexAttribDivisor") : if (glVertexAttribDivisor<>0) then n-=1
    glVertexAttribP1ui = GetProcPtr("glVertexAttribP1ui") : if (glVertexAttribP1ui<>0) then n-=1
    glVertexAttribP1uiv = GetProcPtr("glVertexAttribP1uiv") : if (glVertexAttribP1uiv<>0) then n-=1
    glVertexAttribP2ui = GetProcPtr("glVertexAttribP2ui") : if (glVertexAttribP2ui<>0) then n-=1
    glVertexAttribP2uiv = GetProcPtr("glVertexAttribP2uiv") : if (glVertexAttribP2uiv<>0) then n-=1
    glVertexAttribP3ui = GetProcPtr("glVertexAttribP3ui") : if (glVertexAttribP3ui<>0) then n-=1
    glVertexAttribP3uiv = GetProcPtr("glVertexAttribP3uiv") : if (glVertexAttribP3uiv<>0) then n-=1
    glVertexAttribP4ui = GetProcPtr("glVertexAttribP4ui") : if (glVertexAttribP4ui<>0) then n-=1
    glVertexAttribP4uiv = GetProcPtr("glVertexAttribP4uiv") : if (glVertexAttribP4uiv<>0) then n-=1
    glVertexP2ui = GetProcPtr("glVertexP2ui") : if (glVertexP2ui<>0) then n-=1
    glVertexP2uiv = GetProcPtr("glVertexP2uiv") : if (glVertexP2uiv<>0) then n-=1
    glVertexP3ui = GetProcPtr("glVertexP3ui") : if (glVertexP3ui<>0) then n-=1
    glVertexP3uiv = GetProcPtr("glVertexP3uiv") : if (glVertexP3uiv<>0) then n-=1
    glVertexP4ui = GetProcPtr("glVertexP4ui") : if (glVertexP4ui<>0) then n-=1
    glVertexP4uiv = GetProcPtr("glVertexP4uiv") : if (glVertexP4uiv<>0) then n-=1
    glTexCoordP1ui = GetProcPtr("glTexCoordP1ui") : if (glTexCoordP1ui<>0) then n-=1
    glTexCoordP1uiv = GetProcPtr("glTexCoordP1uiv") : if (glTexCoordP1uiv<>0) then n-=1
    glTexCoordP2ui = GetProcPtr("glTexCoordP2ui") : if (glTexCoordP2ui<>0) then n-=1
    glTexCoordP2uiv = GetProcPtr("glTexCoordP2uiv") : if (glTexCoordP2uiv<>0) then n-=1
    glTexCoordP3ui = GetProcPtr("glTexCoordP3ui") : if (glTexCoordP3ui<>0) then n-=1
    glTexCoordP3uiv = GetProcPtr("glTexCoordP3uiv") : if (glTexCoordP3uiv<>0) then n-=1
    glTexCoordP4ui = GetProcPtr("glTexCoordP4ui") : if (glTexCoordP4ui<>0) then n-=1
    glTexCoordP4uiv = GetProcPtr("glTexCoordP4uiv") : if (glTexCoordP4uiv<>0) then n-=1
    glMultiTexCoordP1ui = GetProcPtr("glMultiTexCoordP1ui") : if (glMultiTexCoordP1ui<>0) then n-=1
    glMultiTexCoordP1uiv = GetProcPtr("glMultiTexCoordP1uiv") : if (glMultiTexCoordP1uiv<>0) then n-=1
    glMultiTexCoordP2ui = GetProcPtr("glMultiTexCoordP2ui") : if (glMultiTexCoordP2ui<>0) then n-=1
    glMultiTexCoordP2uiv = GetProcPtr("glMultiTexCoordP2uiv") : if (glMultiTexCoordP2uiv<>0) then n-=1
    glMultiTexCoordP3ui = GetProcPtr("glMultiTexCoordP3ui") : if (glMultiTexCoordP3ui<>0) then n-=1
    glMultiTexCoordP3uiv = GetProcPtr("glMultiTexCoordP3uiv") : if (glMultiTexCoordP3uiv<>0) then n-=1
    glMultiTexCoordP4ui = GetProcPtr("glMultiTexCoordP4ui") : if (glMultiTexCoordP4ui<>0) then n-=1
    glMultiTexCoordP4uiv = GetProcPtr("glMultiTexCoordP4uiv") : if (glMultiTexCoordP4uiv<>0) then n-=1
    glNormalP3ui = GetProcPtr("glNormalP3ui") : if (glNormalP3ui<>0) then n-=1
    glNormalP3uiv = GetProcPtr("glNormalP3uiv") : if (glNormalP3uiv<>0) then n-=1
    glColorP3ui = GetProcPtr("glColorP3ui") : if (glColorP3ui<>0) then n-=1
    glColorP3uiv = GetProcPtr("glColorP3uiv") : if (glColorP3uiv<>0) then n-=1
    glColorP4ui = GetProcPtr("glColorP4ui") : if (glColorP4ui<>0) then n-=1
    glColorP4uiv = GetProcPtr("glColorP4uiv") : if (glColorP4uiv<>0) then n-=1
    glSecondaryColorP3ui = GetProcPtr("glSecondaryColorP3ui") : if (glSecondaryColorP3ui<>0) then n-=1
    glSecondaryColorP3uiv = GetProcPtr("glSecondaryColorP3uiv") : if (glSecondaryColorP3uiv<>0) then n-=1
    if n then IS_GL_VERSION_3_3=GL_FALSE
  end if

  if IS_GL_VERSION_4_0 then
    n=46
    glMinSampleShading = GetProcPtr("glMinSampleShading") : if (glMinSampleShading<>0) then n-=1
    glBlendEquationi = GetProcPtr("glBlendEquationi") : if (glBlendEquationi<>0) then n-=1
    glBlendEquationSeparatei = GetProcPtr("glBlendEquationSeparatei") : if (glBlendEquationSeparatei<>0) then n-=1
    glBlendFunci = GetProcPtr("glBlendFunci") : if (glBlendFunci<>0) then n-=1
    glBlendFuncSeparatei = GetProcPtr("glBlendFuncSeparatei") : if (glBlendFuncSeparatei<>0) then n-=1
    glDrawArraysIndirect = GetProcPtr("glDrawArraysIndirect") : if (glDrawArraysIndirect<>0) then n-=1
    glDrawElementsIndirect = GetProcPtr("glDrawElementsIndirect") : if (glDrawElementsIndirect<>0) then n-=1
    glUniform1d = GetProcPtr("glUniform1d") : if (glUniform1d<>0) then n-=1
    glUniform2d = GetProcPtr("glUniform2d") : if (glUniform2d<>0) then n-=1
    glUniform3d = GetProcPtr("glUniform3d") : if (glUniform3d<>0) then n-=1
    glUniform4d = GetProcPtr("glUniform4d") : if (glUniform4d<>0) then n-=1
    glUniform1dv = GetProcPtr("glUniform1dv") : if (glUniform1dv<>0) then n-=1
    glUniform2dv = GetProcPtr("glUniform2dv") : if (glUniform2dv<>0) then n-=1
    glUniform3dv = GetProcPtr("glUniform3dv") : if (glUniform3dv<>0) then n-=1
    glUniform4dv = GetProcPtr("glUniform4dv") : if (glUniform4dv<>0) then n-=1
    glUniformMatrix2dv = GetProcPtr("glUniformMatrix2dv") : if (glUniformMatrix2dv<>0) then n-=1
    glUniformMatrix3dv = GetProcPtr("glUniformMatrix3dv") : if (glUniformMatrix3dv<>0) then n-=1
    glUniformMatrix4dv = GetProcPtr("glUniformMatrix4dv") : if (glUniformMatrix4dv<>0) then n-=1
    glUniformMatrix2x3dv = GetProcPtr("glUniformMatrix2x3dv") : if (glUniformMatrix2x3dv<>0) then n-=1
    glUniformMatrix2x4dv = GetProcPtr("glUniformMatrix2x4dv") : if (glUniformMatrix2x4dv<>0) then n-=1
    glUniformMatrix3x2dv = GetProcPtr("glUniformMatrix3x2dv") : if (glUniformMatrix3x2dv<>0) then n-=1
    glUniformMatrix3x4dv = GetProcPtr("glUniformMatrix3x4dv") : if (glUniformMatrix3x4dv<>0) then n-=1
    glUniformMatrix4x2dv = GetProcPtr("glUniformMatrix4x2dv") : if (glUniformMatrix4x2dv<>0) then n-=1
    glUniformMatrix4x3dv = GetProcPtr("glUniformMatrix4x3dv") : if (glUniformMatrix4x3dv<>0) then n-=1
    glGetUniformdv = GetProcPtr("glGetUniformdv") : if (glGetUniformdv<>0) then n-=1
    glGetSubroutineUniformLocation = GetProcPtr("glGetSubroutineUniformLocation") : if (glGetSubroutineUniformLocation<>0) then n-=1
    glGetSubroutineIndex = GetProcPtr("glGetSubroutineIndex") : if (glGetSubroutineIndex<>0) then n-=1
    glGetActiveSubroutineUniformiv = GetProcPtr("glGetActiveSubroutineUniformiv") : if (glGetActiveSubroutineUniformiv<>0) then n-=1
    glGetActiveSubroutineUniformName = GetProcPtr("glGetActiveSubroutineUniformName") : if (glGetActiveSubroutineUniformName<>0) then n-=1
    glGetActiveSubroutineName = GetProcPtr("glGetActiveSubroutineName") : if (glGetActiveSubroutineName<>0) then n-=1
    glUniformSubroutinesuiv = GetProcPtr("glUniformSubroutinesuiv") : if (glUniformSubroutinesuiv<>0) then n-=1
    glGetUniformSubroutineuiv = GetProcPtr("glGetUniformSubroutineuiv") : if (glGetUniformSubroutineuiv<>0) then n-=1
    glGetProgramStageiv = GetProcPtr("glGetProgramStageiv") : if (glGetProgramStageiv<>0) then n-=1
    glPatchParameteri = GetProcPtr("glPatchParameteri") : if (glPatchParameteri<>0) then n-=1
    glPatchParameterfv = GetProcPtr("glPatchParameterfv") : if (glPatchParameterfv<>0) then n-=1
    glBindTransformFeedback = GetProcPtr("glBindTransformFeedback") : if (glBindTransformFeedback<>0) then n-=1
    glDeleteTransformFeedbacks = GetProcPtr("glDeleteTransformFeedbacks") : if (glDeleteTransformFeedbacks<>0) then n-=1
    glGenTransformFeedbacks = GetProcPtr("glGenTransformFeedbacks") : if (glGenTransformFeedbacks<>0) then n-=1
    glIsTransformFeedback = GetProcPtr("glIsTransformFeedback") : if (glIsTransformFeedback<>0) then n-=1
    glPauseTransformFeedback = GetProcPtr("glPauseTransformFeedback") : if (glPauseTransformFeedback<>0) then n-=1
    glResumeTransformFeedback = GetProcPtr("glResumeTransformFeedback") : if (glResumeTransformFeedback<>0) then n-=1
    glDrawTransformFeedback = GetProcPtr("glDrawTransformFeedback") : if (glDrawTransformFeedback<>0) then n-=1
    glDrawTransformFeedbackStream = GetProcPtr("glDrawTransformFeedbackStream") : if (glDrawTransformFeedbackStream<>0) then n-=1
    glBeginQueryIndexed = GetProcPtr("glBeginQueryIndexed") : if (glBeginQueryIndexed<>0) then n-=1
    glEndQueryIndexed = GetProcPtr("glEndQueryIndexed") : if (glEndQueryIndexed<>0) then n-=1
    glGetQueryIndexediv = GetProcPtr("glGetQueryIndexediv") : if (glGetQueryIndexediv<>0) then n-=1
    if n then IS_GL_VERSION_4_0=GL_FALSE
  end if

  if IS_GL_VERSION_4_1 then
    n=88
    glReleaseShaderCompiler = GetProcPtr("glReleaseShaderCompiler") : if (glReleaseShaderCompiler<>0) then n-=1
    glShaderBinary = GetProcPtr("glShaderBinary") : if (glShaderBinary<>0) then n-=1
    glGetShaderPrecisionFormat = GetProcPtr("glGetShaderPrecisionFormat") : if (glGetShaderPrecisionFormat<>0) then n-=1
    glDepthRangef = GetProcPtr("glDepthRangef") : if (glDepthRangef<>0) then n-=1
    glClearDepthf = GetProcPtr("glClearDepthf") : if (glClearDepthf<>0) then n-=1
    glGetProgramBinary = GetProcPtr("glGetProgramBinary") : if (glGetProgramBinary<>0) then n-=1
    glProgramBinary = GetProcPtr("glProgramBinary") : if (glProgramBinary<>0) then n-=1
    glProgramParameteri = GetProcPtr("glProgramParameteri") : if (glProgramParameteri<>0) then n-=1
    glUseProgramStages = GetProcPtr("glUseProgramStages") : if (glUseProgramStages<>0) then n-=1
    glActiveShaderProgram = GetProcPtr("glActiveShaderProgram") : if (glActiveShaderProgram<>0) then n-=1
    glCreateShaderProgramv = GetProcPtr("glCreateShaderProgramv") : if (glCreateShaderProgramv<>0) then n-=1
    glBindProgramPipeline = GetProcPtr("glBindProgramPipeline") : if (glBindProgramPipeline<>0) then n-=1
    glDeleteProgramPipelines = GetProcPtr("glDeleteProgramPipelines") : if (glDeleteProgramPipelines<>0) then n-=1
    glGenProgramPipelines = GetProcPtr("glGenProgramPipelines") : if (glGenProgramPipelines<>0) then n-=1
    glIsProgramPipeline = GetProcPtr("glIsProgramPipeline") : if (glIsProgramPipeline<>0) then n-=1
    glGetProgramPipelineiv = GetProcPtr("glGetProgramPipelineiv") : if (glGetProgramPipelineiv<>0) then n-=1
    glProgramUniform1i = GetProcPtr("glProgramUniform1i") : if (glProgramUniform1i<>0) then n-=1
    glProgramUniform1iv = GetProcPtr("glProgramUniform1iv") : if (glProgramUniform1iv<>0) then n-=1
    glProgramUniform1f = GetProcPtr("glProgramUniform1f") : if (glProgramUniform1f<>0) then n-=1
    glProgramUniform1fv = GetProcPtr("glProgramUniform1fv") : if (glProgramUniform1fv<>0) then n-=1
    glProgramUniform1d = GetProcPtr("glProgramUniform1d") : if (glProgramUniform1d<>0) then n-=1
    glProgramUniform1dv = GetProcPtr("glProgramUniform1dv") : if (glProgramUniform1dv<>0) then n-=1
    glProgramUniform1ui = GetProcPtr("glProgramUniform1ui") : if (glProgramUniform1ui<>0) then n-=1
    glProgramUniform1uiv = GetProcPtr("glProgramUniform1uiv") : if (glProgramUniform1uiv<>0) then n-=1
    glProgramUniform2i = GetProcPtr("glProgramUniform2i") : if (glProgramUniform2i<>0) then n-=1
    glProgramUniform2iv = GetProcPtr("glProgramUniform2iv") : if (glProgramUniform2iv<>0) then n-=1
    glProgramUniform2f = GetProcPtr("glProgramUniform2f") : if (glProgramUniform2f<>0) then n-=1
    glProgramUniform2fv = GetProcPtr("glProgramUniform2fv") : if (glProgramUniform2fv<>0) then n-=1
    glProgramUniform2d = GetProcPtr("glProgramUniform2d") : if (glProgramUniform2d<>0) then n-=1
    glProgramUniform2dv = GetProcPtr("glProgramUniform2dv") : if (glProgramUniform2dv<>0) then n-=1
    glProgramUniform2ui = GetProcPtr("glProgramUniform2ui") : if (glProgramUniform2ui<>0) then n-=1
    glProgramUniform2uiv = GetProcPtr("glProgramUniform2uiv") : if (glProgramUniform2uiv<>0) then n-=1
    glProgramUniform3i = GetProcPtr("glProgramUniform3i") : if (glProgramUniform3i<>0) then n-=1
    glProgramUniform3iv = GetProcPtr("glProgramUniform3iv") : if (glProgramUniform3iv<>0) then n-=1
    glProgramUniform3f = GetProcPtr("glProgramUniform3f") : if (glProgramUniform3f<>0) then n-=1
    glProgramUniform3fv = GetProcPtr("glProgramUniform3fv") : if (glProgramUniform3fv<>0) then n-=1
    glProgramUniform3d = GetProcPtr("glProgramUniform3d") : if (glProgramUniform3d<>0) then n-=1
    glProgramUniform3dv = GetProcPtr("glProgramUniform3dv") : if (glProgramUniform3dv<>0) then n-=1
    glProgramUniform3ui = GetProcPtr("glProgramUniform3ui") : if (glProgramUniform3ui<>0) then n-=1
    glProgramUniform3uiv = GetProcPtr("glProgramUniform3uiv") : if (glProgramUniform3uiv<>0) then n-=1
    glProgramUniform4i = GetProcPtr("glProgramUniform4i") : if (glProgramUniform4i<>0) then n-=1
    glProgramUniform4iv = GetProcPtr("glProgramUniform4iv") : if (glProgramUniform4iv<>0) then n-=1
    glProgramUniform4f = GetProcPtr("glProgramUniform4f") : if (glProgramUniform4f<>0) then n-=1
    glProgramUniform4fv = GetProcPtr("glProgramUniform4fv") : if (glProgramUniform4fv<>0) then n-=1
    glProgramUniform4d = GetProcPtr("glProgramUniform4d") : if (glProgramUniform4d<>0) then n-=1
    glProgramUniform4dv = GetProcPtr("glProgramUniform4dv") : if (glProgramUniform4dv<>0) then n-=1
    glProgramUniform4ui = GetProcPtr("glProgramUniform4ui") : if (glProgramUniform4ui<>0) then n-=1
    glProgramUniform4uiv = GetProcPtr("glProgramUniform4uiv") : if (glProgramUniform4uiv<>0) then n-=1
    glProgramUniformMatrix2fv = GetProcPtr("glProgramUniformMatrix2fv") : if (glProgramUniformMatrix2fv<>0) then n-=1
    glProgramUniformMatrix3fv = GetProcPtr("glProgramUniformMatrix3fv") : if (glProgramUniformMatrix3fv<>0) then n-=1
    glProgramUniformMatrix4fv = GetProcPtr("glProgramUniformMatrix4fv") : if (glProgramUniformMatrix4fv<>0) then n-=1
    glProgramUniformMatrix2dv = GetProcPtr("glProgramUniformMatrix2dv") : if (glProgramUniformMatrix2dv<>0) then n-=1
    glProgramUniformMatrix3dv = GetProcPtr("glProgramUniformMatrix3dv") : if (glProgramUniformMatrix3dv<>0) then n-=1
    glProgramUniformMatrix4dv = GetProcPtr("glProgramUniformMatrix4dv") : if (glProgramUniformMatrix4dv<>0) then n-=1
    glProgramUniformMatrix2x3fv = GetProcPtr("glProgramUniformMatrix2x3fv") : if (glProgramUniformMatrix2x3fv<>0) then n-=1
    glProgramUniformMatrix3x2fv = GetProcPtr("glProgramUniformMatrix3x2fv") : if (glProgramUniformMatrix3x2fv<>0) then n-=1
    glProgramUniformMatrix2x4fv = GetProcPtr("glProgramUniformMatrix2x4fv") : if (glProgramUniformMatrix2x4fv<>0) then n-=1
    glProgramUniformMatrix4x2fv = GetProcPtr("glProgramUniformMatrix4x2fv") : if (glProgramUniformMatrix4x2fv<>0) then n-=1
    glProgramUniformMatrix3x4fv = GetProcPtr("glProgramUniformMatrix3x4fv") : if (glProgramUniformMatrix3x4fv<>0) then n-=1
    glProgramUniformMatrix4x3fv = GetProcPtr("glProgramUniformMatrix4x3fv") : if (glProgramUniformMatrix4x3fv<>0) then n-=1
    glProgramUniformMatrix2x3dv = GetProcPtr("glProgramUniformMatrix2x3dv") : if (glProgramUniformMatrix2x3dv<>0) then n-=1
    glProgramUniformMatrix3x2dv = GetProcPtr("glProgramUniformMatrix3x2dv") : if (glProgramUniformMatrix3x2dv<>0) then n-=1
    glProgramUniformMatrix2x4dv = GetProcPtr("glProgramUniformMatrix2x4dv") : if (glProgramUniformMatrix2x4dv<>0) then n-=1
    glProgramUniformMatrix4x2dv = GetProcPtr("glProgramUniformMatrix4x2dv") : if (glProgramUniformMatrix4x2dv<>0) then n-=1
    glProgramUniformMatrix3x4dv = GetProcPtr("glProgramUniformMatrix3x4dv") : if (glProgramUniformMatrix3x4dv<>0) then n-=1
    glProgramUniformMatrix4x3dv = GetProcPtr("glProgramUniformMatrix4x3dv") : if (glProgramUniformMatrix4x3dv<>0) then n-=1
    glValidateProgramPipeline = GetProcPtr("glValidateProgramPipeline") : if (glValidateProgramPipeline<>0) then n-=1
    glGetProgramPipelineInfoLog = GetProcPtr("glGetProgramPipelineInfoLog") : if (glGetProgramPipelineInfoLog<>0) then n-=1
    glVertexAttribL1d = GetProcPtr("glVertexAttribL1d") : if (glVertexAttribL1d<>0) then n-=1
    glVertexAttribL2d = GetProcPtr("glVertexAttribL2d") : if (glVertexAttribL2d<>0) then n-=1
    glVertexAttribL3d = GetProcPtr("glVertexAttribL3d") : if (glVertexAttribL3d<>0) then n-=1
    glVertexAttribL4d = GetProcPtr("glVertexAttribL4d") : if (glVertexAttribL4d<>0) then n-=1
    glVertexAttribL1dv = GetProcPtr("glVertexAttribL1dv") : if (glVertexAttribL1dv<>0) then n-=1
    glVertexAttribL2dv = GetProcPtr("glVertexAttribL2dv") : if (glVertexAttribL2dv<>0) then n-=1
    glVertexAttribL3dv = GetProcPtr("glVertexAttribL3dv") : if (glVertexAttribL3dv<>0) then n-=1
    glVertexAttribL4dv = GetProcPtr("glVertexAttribL4dv") : if (glVertexAttribL4dv<>0) then n-=1
    glVertexAttribLPointer = GetProcPtr("glVertexAttribLPointer") : if (glVertexAttribLPointer<>0) then n-=1
    glGetVertexAttribLdv = GetProcPtr("glGetVertexAttribLdv") : if (glGetVertexAttribLdv<>0) then n-=1
    glViewportArrayv = GetProcPtr("glViewportArrayv") : if (glViewportArrayv<>0) then n-=1
    glViewportIndexedf = GetProcPtr("glViewportIndexedf") : if (glViewportIndexedf<>0) then n-=1
    glViewportIndexedfv = GetProcPtr("glViewportIndexedfv") : if (glViewportIndexedfv<>0) then n-=1
    glScissorArrayv = GetProcPtr("glScissorArrayv") : if (glScissorArrayv<>0) then n-=1
    glScissorIndexed = GetProcPtr("glScissorIndexed") : if (glScissorIndexed<>0) then n-=1
    glScissorIndexedv = GetProcPtr("glScissorIndexedv") : if (glScissorIndexedv<>0) then n-=1
    glDepthRangeArrayv = GetProcPtr("glDepthRangeArrayv") : if (glDepthRangeArrayv<>0) then n-=1
    glDepthRangeIndexed = GetProcPtr("glDepthRangeIndexed") : if (glDepthRangeIndexed<>0) then n-=1
    glGetFloati_v = GetProcPtr("glGetFloati_v") : if (glGetFloati_v<>0) then n-=1
    glGetDoublei_v = GetProcPtr("glGetDoublei_v") : if (glGetDoublei_v<>0) then n-=1
    if n then IS_GL_VERSION_4_1 = GL_FALSE
  end if

  if IS_GL_VERSION_4_2 then
    n=12
    glDrawArraysInstancedBaseInstance = GetProcPtr("glDrawArraysInstancedBaseInstance") : if (glDrawArraysInstancedBaseInstance<>0) then n-=1
    glDrawElementsInstancedBaseInstance = GetProcPtr("glDrawElementsInstancedBaseInstance") : if (glDrawElementsInstancedBaseInstance<>0) then n-=1
    glDrawElementsInstancedBaseVertexBaseInstance = GetProcPtr("glDrawElementsInstancedBaseVertexBaseInstance") : if (glDrawElementsInstancedBaseVertexBaseInstance<>0) then n-=1
    glGetInternalformati64v = GetProcPtr("glGetInternalformati64v") : if (glGetInternalformati64v<>0) then n-=1
    glGetActiveAtomicCounterBufferiv = GetProcPtr("glGetActiveAtomicCounterBufferiv") : if (glGetActiveAtomicCounterBufferiv<>0) then n-=1
    glBindImageTexture = GetProcPtr("glBindImageTexture") : if (glBindImageTexture<>0) then n-=1
    glMemoryBarrier = GetProcPtr("glMemoryBarrier") : if (glMemoryBarrier<>0) then n-=1
    glTexStorage1D = GetProcPtr("glTexStorage1D") : if (glTexStorage1D<>0) then n-=1
    glTexStorage2D = GetProcPtr("glTexStorage2D") : if (glTexStorage2D<>0) then n-=1
    glTexStorage3D = GetProcPtr("glTexStorage3D") : if (glTexStorage3D<>0) then n-=1
    glDrawTransformFeedbackInstanced = GetProcPtr("glDrawTransformFeedbackInstanced") : if (glDrawTransformFeedbackInstanced<>0) then n-=1
    glDrawTransformFeedbackStreamInstanced = GetProcPtr("glDrawTransformFeedbackStreamInstanced") : if (glDrawTransformFeedbackStreamInstanced<>0) then n-=1
    if n then IS_GL_VERSION_4_2=GL_FALSE
  end if

  if IS_GL_VERSION_4_3 then
    n=42
    glClearBufferData = GetProcPtr("glClearBufferData") : if (glClearBufferData<>0) then n-=1
    glClearBufferSubData = GetProcPtr("glClearBufferSubData") : if (glClearBufferSubData<>0) then n-=1
    glDispatchCompute = GetProcPtr("glDispatchCompute") : if (glDispatchCompute<>0) then n-=1
    glDispatchComputeIndirect = GetProcPtr("glDispatchComputeIndirect") : if (glDispatchComputeIndirect<>0) then n-=1
    glCopyImageSubData = GetProcPtr("glCopyImageSubData") : if (glCopyImageSubData<>0) then n-=1
    glFramebufferParameteri = GetProcPtr("glFramebufferParameteri") : if (glFramebufferParameteri<>0) then n-=1
    glGetFramebufferParameteriv = GetProcPtr("glGetFramebufferParameteriv") : if (glGetFramebufferParameteriv<>0) then n-=1
    glInvalidateTexSubImage = GetProcPtr("glInvalidateTexSubImage") : if (glInvalidateTexSubImage<>0) then n-=1
    glInvalidateTexImage = GetProcPtr("glInvalidateTexImage") : if (glInvalidateTexImage<>0) then n-=1
    glInvalidateBufferSubData = GetProcPtr("glInvalidateBufferSubData") : if (glInvalidateBufferSubData<>0) then n-=1
    glInvalidateBufferData = GetProcPtr("glInvalidateBufferData") : if (glInvalidateBufferData<>0) then n-=1
    glInvalidateFramebuffer = GetProcPtr("glInvalidateFramebuffer") : if (glInvalidateFramebuffer<>0) then n-=1
    glInvalidateSubFramebuffer = GetProcPtr("glInvalidateSubFramebuffer") : if (glInvalidateSubFramebuffer<>0) then n-=1
    glMultiDrawArraysIndirect = GetProcPtr("glMultiDrawArraysIndirect") : if (glMultiDrawArraysIndirect<>0) then n-=1
    glMultiDrawElementsIndirect = GetProcPtr("glMultiDrawElementsIndirect") : if (glMultiDrawElementsIndirect<>0) then n-=1
    glGetProgramInterfaceiv = GetProcPtr("glGetProgramInterfaceiv") : if (glGetProgramInterfaceiv<>0) then n-=1
    glGetProgramResourceIndex = GetProcPtr("glGetProgramResourceIndex") : if (glGetProgramResourceIndex<>0) then n-=1
    glGetProgramResourceName = GetProcPtr("glGetProgramResourceName") : if (glGetProgramResourceName<>0) then n-=1
    glGetProgramResourceiv = GetProcPtr("glGetProgramResourceiv") : if (glGetProgramResourceiv<>0) then n-=1
    glGetProgramResourceLocation = GetProcPtr("glGetProgramResourceLocation") : if (glGetProgramResourceLocation<>0) then n-=1
    glGetProgramResourceLocationIndex = GetProcPtr("glGetProgramResourceLocationIndex") : if (glGetProgramResourceLocationIndex<>0) then n-=1
    glShaderStorageBlockBinding = GetProcPtr("glShaderStorageBlockBinding") : if (glShaderStorageBlockBinding<>0) then n-=1
    glTexBufferRange = GetProcPtr("glTexBufferRange") : if (glTexBufferRange<>0) then n-=1
    glTexStorage2DMultisample = GetProcPtr("glTexStorage2DMultisample") : if (glTexStorage2DMultisample<>0) then n-=1
    glTexStorage3DMultisample = GetProcPtr("glTexStorage3DMultisample") : if (glTexStorage3DMultisample<>0) then n-=1
    glTextureView = GetProcPtr("glTextureView") : if (glTextureView<>0) then n-=1
    glBindVertexBuffer = GetProcPtr("glBindVertexBuffer") : if (glBindVertexBuffer<>0) then n-=1
    glVertexAttribFormat = GetProcPtr("glVertexAttribFormat") : if (glVertexAttribFormat<>0) then n-=1
    glVertexAttribIFormat = GetProcPtr("glVertexAttribIFormat") : if (glVertexAttribIFormat<>0) then n-=1
    glVertexAttribLFormat = GetProcPtr("glVertexAttribLFormat") : if (glVertexAttribLFormat<>0) then n-=1
    glVertexAttribBinding = GetProcPtr("glVertexAttribBinding") : if (glVertexAttribBinding<>0) then n-=1
    glVertexBindingDivisor = GetProcPtr("glVertexBindingDivisor") : if (glVertexBindingDivisor<>0) then n-=1
    glDebugMessageControl = GetProcPtr("glDebugMessageControl") : if (glDebugMessageControl<>0) then n-=1
    glDebugMessageInsert = GetProcPtr("glDebugMessageInsert") : if (glDebugMessageInsert<>0) then n-=1
    glDebugMessageCallback = GetProcPtr("glDebugMessageCallback") : if (glDebugMessageCallback<>0) then n-=1
    glGetDebugMessageLog = GetProcPtr("glGetDebugMessageLog") : if (glGetDebugMessageLog<>0) then n-=1
    glPushDebugGroup = GetProcPtr("glPushDebugGroup") : if (glPushDebugGroup<>0) then n-=1
    glPopDebugGroup = GetProcPtr("glPopDebugGroup") : if (glPopDebugGroup<>0) then n-=1
    glObjectLabel = GetProcPtr("glObjectLabel") : if (glObjectLabel<>0) then n-=1
    glGetObjectLabel = GetProcPtr("glGetObjectLabel") : if (glGetObjectLabel<>0) then n-=1
    glObjectPtrLabel = GetProcPtr("glObjectPtrLabel") : if (glObjectPtrLabel<>0) then n-=1
    glGetObjectPtrLabel = GetProcPtr("glGetObjectPtrLabel") : if (glGetObjectPtrLabel<>0) then n-=1
    if n then IS_GL_VERSION_4_3=GL_FALSE
  end if

  if IS_GL_VERSION_4_4 then
    n=9
    glBufferStorage = GetProcPtr("glBufferStorage") : if (glBufferStorage<>0) then n-=1
    glClearTexImage = GetProcPtr("glClearTexImage") : if (glClearTexImage<>0) then n-=1
    glClearTexSubImage = GetProcPtr("glClearTexSubImage") : if (glClearTexSubImage<>0) then n-=1
    glBindBuffersBase = GetProcPtr("glBindBuffersBase") : if (glBindBuffersBase<>0) then n-=1
    glBindBuffersRange = GetProcPtr("glBindBuffersRange") : if (glBindBuffersRange<>0) then n-=1
    glBindTextures = GetProcPtr("glBindTextures") : if (glBindTextures<>0) then n-=1
    glBindSamplers = GetProcPtr("glBindSamplers") : if (glBindSamplers<>0) then n-=1
    glBindImageTextures = GetProcPtr("glBindImageTextures") : if (glBindImageTextures<>0) then n-=1
    glBindVertexBuffers = GetProcPtr("glBindVertexBuffers") : if (glBindVertexBuffers<>0) then n-=1
    if n then IS_GL_VERSION_4_4=GL_FALSE
  end if
#if 0
  glGetTextureHandleARB = GetProcPtr("glGetTextureHandleARB") : if (glGetTextureHandleARB<>0) then n-=1
  glGetTextureSamplerHandleARB = GetProcPtr("glGetTextureSamplerHandleARB") : if (glGetTextureSamplerHandleARB<>0) then n-=1
  glMakeTextureHandleResidentARB = GetProcPtr("glMakeTextureHandleResidentARB") : if (glMakeTextureHandleResidentARB<>0) then n-=1
  glMakeTextureHandleNonResidentARB = GetProcPtr("glMakeTextureHandleNonResidentARB") : if (glMakeTextureHandleNonResidentARB<>0) then n-=1
  glGetImageHandleARB = GetProcPtr("glGetImageHandleARB") : if (glGetImageHandleARB<>0) then n-=1
  glMakeImageHandleResidentARB = GetProcPtr("glMakeImageHandleResidentARB") : if (glMakeImageHandleResidentARB<>0) then n-=1
  glMakeImageHandleNonResidentARB = GetProcPtr("glMakeImageHandleNonResidentARB") : if (glMakeImageHandleNonResidentARB<>0) then n-=1
  glUniformHandleui64ARB = GetProcPtr("glUniformHandleui64ARB") : if (glUniformHandleui64ARB<>0) then n-=1
  glUniformHandleui64vARB = GetProcPtr("glUniformHandleui64vARB") : if (glUniformHandleui64vARB<>0) then n-=1
  glProgramUniformHandleui64ARB = GetProcPtr("glProgramUniformHandleui64ARB") : if (glProgramUniformHandleui64ARB<>0) then n-=1
  glProgramUniformHandleui64vARB = GetProcPtr("glProgramUniformHandleui64vARB") : if (glProgramUniformHandleui64vARB<>0) then n-=1
  glIsTextureHandleResidentARB = GetProcPtr("glIsTextureHandleResidentARB") : if (glIsTextureHandleResidentARB<>0) then n-=1
  glIsImageHandleResidentARB = GetProcPtr("glIsImageHandleResidentARB") : if (glIsImageHandleResidentARB<>0) then n-=1
  glVertexAttribL1ui64ARB = GetProcPtr("glVertexAttribL1ui64ARB") : if (glVertexAttribL1ui64ARB<>0) then n-=1
  glVertexAttribL1ui64vARB = GetProcPtr("glVertexAttribL1ui64vARB") : if (glVertexAttribL1ui64vARB<>0) then n-=1
  glGetVertexAttribLui64vARB = GetProcPtr("glGetVertexAttribLui64vARB") : if (glGetVertexAttribLui64vARB<>0) then n-=1
  glCreateSyncFromCLeventARB = GetProcPtr("glCreateSyncFromCLeventARB") : if (glCreateSyncFromCLeventARB<>0) then n-=1
  glClampColorARB = GetProcPtr("glClampColorARB") : if (glClampColorARB<>0) then n-=1
  glDispatchComputeGroupSizeARB = GetProcPtr("glDispatchComputeGroupSizeARB") : if (glDispatchComputeGroupSizeARB<>0) then n-=1
  glDebugMessageControlARB = GetProcPtr("glDebugMessageControlARB") : if (glDebugMessageControlARB<>0) then n-=1
  glDebugMessageInsertARB = GetProcPtr("glDebugMessageInsertARB") : if (glDebugMessageInsertARB<>0) then n-=1
  glDebugMessageCallbackARB = GetProcPtr("glDebugMessageCallbackARB") : if (glDebugMessageCallbackARB<>0) then n-=1
  glGetDebugMessageLogARB = GetProcPtr("glGetDebugMessageLogARB") : if (glGetDebugMessageLogARB<>0) then n-=1
  glDrawBuffersARB = GetProcPtr("glDrawBuffersARB") : if (glDrawBuffersARB<>0) then n-=1
  glBlendEquationiARB = GetProcPtr("glBlendEquationiARB") : if (glBlendEquationiARB<>0) then n-=1
  glBlendEquationSeparateiARB = GetProcPtr("glBlendEquationSeparateiARB") : if (glBlendEquationSeparateiARB<>0) then n-=1
  glBlendFunciARB = GetProcPtr("glBlendFunciARB") : if (glBlendFunciARB<>0) then n-=1
  glBlendFuncSeparateiARB = GetProcPtr("glBlendFuncSeparateiARB") : if (glBlendFuncSeparateiARB<>0) then n-=1
  glDrawArraysInstancedARB = GetProcPtr("glDrawArraysInstancedARB") : if (glDrawArraysInstancedARB<>0) then n-=1
  glDrawElementsInstancedARB = GetProcPtr("glDrawElementsInstancedARB") : if (glDrawElementsInstancedARB<>0) then n-=1
  glProgramStringARB = GetProcPtr("glProgramStringARB") : if (glProgramStringARB<>0) then n-=1
  glBindProgramARB = GetProcPtr("glBindProgramARB") : if (glBindProgramARB<>0) then n-=1
  glDeleteProgramsARB = GetProcPtr("glDeleteProgramsARB") : if (glDeleteProgramsARB<>0) then n-=1
  glGenProgramsARB = GetProcPtr("glGenProgramsARB") : if (glGenProgramsARB<>0) then n-=1
  glProgramEnvParameter4dARB = GetProcPtr("glProgramEnvParameter4dARB") : if (glProgramEnvParameter4dARB<>0) then n-=1
  glProgramEnvParameter4dvARB = GetProcPtr("glProgramEnvParameter4dvARB") : if (glProgramEnvParameter4dvARB<>0) then n-=1
  glProgramEnvParameter4fARB = GetProcPtr("glProgramEnvParameter4fARB") : if (glProgramEnvParameter4fARB<>0) then n-=1
  glProgramEnvParameter4fvARB = GetProcPtr("glProgramEnvParameter4fvARB") : if (glProgramEnvParameter4fvARB<>0) then n-=1
  glProgramLocalParameter4dARB = GetProcPtr("glProgramLocalParameter4dARB") : if (glProgramLocalParameter4dARB<>0) then n-=1
  glProgramLocalParameter4dvARB = GetProcPtr("glProgramLocalParameter4dvARB") : if (glProgramLocalParameter4dvARB<>0) then n-=1
  glProgramLocalParameter4fARB = GetProcPtr("glProgramLocalParameter4fARB") : if (glProgramLocalParameter4fARB<>0) then n-=1
  glProgramLocalParameter4fvARB = GetProcPtr("glProgramLocalParameter4fvARB") : if (glProgramLocalParameter4fvARB<>0) then n-=1
  glGetProgramEnvParameterdvARB = GetProcPtr("glGetProgramEnvParameterdvARB") : if (glGetProgramEnvParameterdvARB<>0) then n-=1
  glGetProgramEnvParameterfvARB = GetProcPtr("glGetProgramEnvParameterfvARB") : if (glGetProgramEnvParameterfvARB<>0) then n-=1
  glGetProgramLocalParameterdvARB = GetProcPtr("glGetProgramLocalParameterdvARB") : if (glGetProgramLocalParameterdvARB<>0) then n-=1
  glGetProgramLocalParameterfvARB = GetProcPtr("glGetProgramLocalParameterfvARB") : if (glGetProgramLocalParameterfvARB<>0) then n-=1
  glGetProgramivARB = GetProcPtr("glGetProgramivARB") : if (glGetProgramivARB<>0) then n-=1
  glGetProgramStringARB = GetProcPtr("glGetProgramStringARB") : if (glGetProgramStringARB<>0) then n-=1
  glIsProgramARB = GetProcPtr("glIsProgramARB") : if (glIsProgramARB<>0) then n-=1
  glProgramParameteriARB = GetProcPtr("glProgramParameteriARB") : if (glProgramParameteriARB<>0) then n-=1
  glFramebufferTextureARB = GetProcPtr("glFramebufferTextureARB") : if (glFramebufferTextureARB<>0) then n-=1
  glFramebufferTextureLayerARB = GetProcPtr("glFramebufferTextureLayerARB") : if (glFramebufferTextureLayerARB<>0) then n-=1
  glFramebufferTextureFaceARB = GetProcPtr("glFramebufferTextureFaceARB") : if (glFramebufferTextureFaceARB<>0) then n-=1
  glColorTable = GetProcPtr("glColorTable") : if (glColorTable<>0) then n-=1
  glColorTableParameterfv = GetProcPtr("glColorTableParameterfv") : if (glColorTableParameterfv<>0) then n-=1
  glColorTableParameteriv = GetProcPtr("glColorTableParameteriv") : if (glColorTableParameteriv<>0) then n-=1
  glCopyColorTable = GetProcPtr("glCopyColorTable") : if (glCopyColorTable<>0) then n-=1
  glGetColorTable = GetProcPtr("glGetColorTable") : if (glGetColorTable<>0) then n-=1
  glGetColorTableParameterfv = GetProcPtr("glGetColorTableParameterfv") : if (glGetColorTableParameterfv<>0) then n-=1
  glGetColorTableParameteriv = GetProcPtr("glGetColorTableParameteriv") : if (glGetColorTableParameteriv<>0) then n-=1
  glColorSubTable = GetProcPtr("glColorSubTable") : if (glColorSubTable<>0) then n-=1
  glCopyColorSubTable = GetProcPtr("glCopyColorSubTable") : if (glCopyColorSubTable<>0) then n-=1
  glConvolutionFilter1D = GetProcPtr("glConvolutionFilter1D") : if (glConvolutionFilter1D<>0) then n-=1
  glConvolutionFilter2D = GetProcPtr("glConvolutionFilter2D") : if (glConvolutionFilter2D<>0) then n-=1
  glConvolutionParameterf = GetProcPtr("glConvolutionParameterf") : if (glConvolutionParameterf<>0) then n-=1
  glConvolutionParameterfv = GetProcPtr("glConvolutionParameterfv") : if (glConvolutionParameterfv<>0) then n-=1
  glConvolutionParameteri = GetProcPtr("glConvolutionParameteri") : if (glConvolutionParameteri<>0) then n-=1
  glConvolutionParameteriv = GetProcPtr("glConvolutionParameteriv") : if (glConvolutionParameteriv<>0) then n-=1
  glCopyConvolutionFilter1D = GetProcPtr("glCopyConvolutionFilter1D") : if (glCopyConvolutionFilter1D<>0) then n-=1
  glCopyConvolutionFilter2D = GetProcPtr("glCopyConvolutionFilter2D") : if (glCopyConvolutionFilter2D<>0) then n-=1
  glGetConvolutionFilter = GetProcPtr("glGetConvolutionFilter") : if (glGetConvolutionFilter<>0) then n-=1
  glGetConvolutionParameterfv = GetProcPtr("glGetConvolutionParameterfv") : if (glGetConvolutionParameterfv<>0) then n-=1
  glGetConvolutionParameteriv = GetProcPtr("glGetConvolutionParameteriv") : if (glGetConvolutionParameteriv<>0) then n-=1
  glGetSeparableFilter = GetProcPtr("glGetSeparableFilter") : if (glGetSeparableFilter<>0) then n-=1
  glSeparableFilter2D = GetProcPtr("glSeparableFilter2D") : if (glSeparableFilter2D<>0) then n-=1
  glGetHistogram = GetProcPtr("glGetHistogram") : if (glGetHistogram<>0) then n-=1
  glGetHistogramParameterfv = GetProcPtr("glGetHistogramParameterfv") : if (glGetHistogramParameterfv<>0) then n-=1
  glGetHistogramParameteriv = GetProcPtr("glGetHistogramParameteriv") : if (glGetHistogramParameteriv<>0) then n-=1
  glGetMinmax = GetProcPtr("glGetMinmax") : if (glGetMinmax<>0) then n-=1
  glGetMinmaxParameterfv = GetProcPtr("glGetMinmaxParameterfv") : if (glGetMinmaxParameterfv<>0) then n-=1
  glGetMinmaxParameteriv = GetProcPtr("glGetMinmaxParameteriv") : if (glGetMinmaxParameteriv<>0) then n-=1
  glHistogram = GetProcPtr("glHistogram") : if (glHistogram<>0) then n-=1
  glMinmax = GetProcPtr("glMinmax") : if (glMinmax<>0) then n-=1
  glResetHistogram = GetProcPtr("glResetHistogram") : if (glResetHistogram<>0) then n-=1
  glResetMinmax = GetProcPtr("glResetMinmax") : if (glResetMinmax<>0) then n-=1
  glMultiDrawArraysIndirectCountARB = GetProcPtr("glMultiDrawArraysIndirectCountARB") : if (glMultiDrawArraysIndirectCountARB<>0) then n-=1
  glMultiDrawElementsIndirectCountARB = GetProcPtr("glMultiDrawElementsIndirectCountARB") : if (glMultiDrawElementsIndirectCountARB<>0) then n-=1
  glVertexAttribDivisorARB = GetProcPtr("glVertexAttribDivisorARB") : if (glVertexAttribDivisorARB<>0) then n-=1
  glGetInternalformativ = GetProcPtr("glGetInternalformativ") : if (glGetInternalformativ<>0) then n-=1
  glCurrentPaletteMatrixARB = GetProcPtr("glCurrentPaletteMatrixARB") : if (glCurrentPaletteMatrixARB<>0) then n-=1
  glMatrixIndexubvARB = GetProcPtr("glMatrixIndexubvARB") : if (glMatrixIndexubvARB<>0) then n-=1
  glMatrixIndexusvARB = GetProcPtr("glMatrixIndexusvARB") : if (glMatrixIndexusvARB<>0) then n-=1
  glMatrixIndexuivARB = GetProcPtr("glMatrixIndexuivARB") : if (glMatrixIndexuivARB<>0) then n-=1
  glMatrixIndexPointerARB = GetProcPtr("glMatrixIndexPointerARB") : if (glMatrixIndexPointerARB<>0) then n-=1
  glSampleCoverageARB = GetProcPtr("glSampleCoverageARB") : if (glSampleCoverageARB<>0) then n-=1
  glActiveTextureARB = GetProcPtr("glActiveTextureARB") : if (glActiveTextureARB<>0) then n-=1
  glClientActiveTextureARB = GetProcPtr("glClientActiveTextureARB") : if (glClientActiveTextureARB<>0) then n-=1
  glMultiTexCoord1dARB = GetProcPtr("glMultiTexCoord1dARB") : if (glMultiTexCoord1dARB<>0) then n-=1
  glMultiTexCoord1dvARB = GetProcPtr("glMultiTexCoord1dvARB") : if (glMultiTexCoord1dvARB<>0) then n-=1
  glMultiTexCoord1fARB = GetProcPtr("glMultiTexCoord1fARB") : if (glMultiTexCoord1fARB<>0) then n-=1
  glMultiTexCoord1fvARB = GetProcPtr("glMultiTexCoord1fvARB") : if (glMultiTexCoord1fvARB<>0) then n-=1
  glMultiTexCoord1iARB = GetProcPtr("glMultiTexCoord1iARB") : if (glMultiTexCoord1iARB<>0) then n-=1
  glMultiTexCoord1ivARB = GetProcPtr("glMultiTexCoord1ivARB") : if (glMultiTexCoord1ivARB<>0) then n-=1
  glMultiTexCoord1sARB = GetProcPtr("glMultiTexCoord1sARB") : if (glMultiTexCoord1sARB<>0) then n-=1
  glMultiTexCoord1svARB = GetProcPtr("glMultiTexCoord1svARB") : if (glMultiTexCoord1svARB<>0) then n-=1
  glMultiTexCoord2dARB = GetProcPtr("glMultiTexCoord2dARB") : if (glMultiTexCoord2dARB<>0) then n-=1
  glMultiTexCoord2dvARB = GetProcPtr("glMultiTexCoord2dvARB") : if (glMultiTexCoord2dvARB<>0) then n-=1
  glMultiTexCoord2fARB = GetProcPtr("glMultiTexCoord2fARB") : if (glMultiTexCoord2fARB<>0) then n-=1
  glMultiTexCoord2fvARB = GetProcPtr("glMultiTexCoord2fvARB") : if (glMultiTexCoord2fvARB<>0) then n-=1
  glMultiTexCoord2iARB = GetProcPtr("glMultiTexCoord2iARB") : if (glMultiTexCoord2iARB<>0) then n-=1
  glMultiTexCoord2ivARB = GetProcPtr("glMultiTexCoord2ivARB") : if (glMultiTexCoord2ivARB<>0) then n-=1
  glMultiTexCoord2sARB = GetProcPtr("glMultiTexCoord2sARB") : if (glMultiTexCoord2sARB<>0) then n-=1
  glMultiTexCoord2svARB = GetProcPtr("glMultiTexCoord2svARB") : if (glMultiTexCoord2svARB<>0) then n-=1
  glMultiTexCoord3dARB = GetProcPtr("glMultiTexCoord3dARB") : if (glMultiTexCoord3dARB<>0) then n-=1
  glMultiTexCoord3dvARB = GetProcPtr("glMultiTexCoord3dvARB") : if (glMultiTexCoord3dvARB<>0) then n-=1
  glMultiTexCoord3fARB = GetProcPtr("glMultiTexCoord3fARB") : if (glMultiTexCoord3fARB<>0) then n-=1
  glMultiTexCoord3fvARB = GetProcPtr("glMultiTexCoord3fvARB") : if (glMultiTexCoord3fvARB<>0) then n-=1
  glMultiTexCoord3iARB = GetProcPtr("glMultiTexCoord3iARB") : if (glMultiTexCoord3iARB<>0) then n-=1
  glMultiTexCoord3ivARB = GetProcPtr("glMultiTexCoord3ivARB") : if (glMultiTexCoord3ivARB<>0) then n-=1
  glMultiTexCoord3sARB = GetProcPtr("glMultiTexCoord3sARB") : if (glMultiTexCoord3sARB<>0) then n-=1
  glMultiTexCoord3svARB = GetProcPtr("glMultiTexCoord3svARB") : if (glMultiTexCoord3svARB<>0) then n-=1
  glMultiTexCoord4dARB = GetProcPtr("glMultiTexCoord4dARB") : if (glMultiTexCoord4dARB<>0) then n-=1
  glMultiTexCoord4dvARB = GetProcPtr("glMultiTexCoord4dvARB") : if (glMultiTexCoord4dvARB<>0) then n-=1
  glMultiTexCoord4fARB = GetProcPtr("glMultiTexCoord4fARB") : if (glMultiTexCoord4fARB<>0) then n-=1
  glMultiTexCoord4fvARB = GetProcPtr("glMultiTexCoord4fvARB") : if (glMultiTexCoord4fvARB<>0) then n-=1
  glMultiTexCoord4iARB = GetProcPtr("glMultiTexCoord4iARB") : if (glMultiTexCoord4iARB<>0) then n-=1
  glMultiTexCoord4ivARB = GetProcPtr("glMultiTexCoord4ivARB") : if (glMultiTexCoord4ivARB<>0) then n-=1
  glMultiTexCoord4sARB = GetProcPtr("glMultiTexCoord4sARB") : if (glMultiTexCoord4sARB<>0) then n-=1
  glMultiTexCoord4svARB = GetProcPtr("glMultiTexCoord4svARB") : if (glMultiTexCoord4svARB<>0) then n-=1
  glGenQueriesARB = GetProcPtr("glGenQueriesARB") : if (glGenQueriesARB<>0) then n-=1
  glDeleteQueriesARB = GetProcPtr("glDeleteQueriesARB") : if (glDeleteQueriesARB<>0) then n-=1
  glIsQueryARB = GetProcPtr("glIsQueryARB") : if (glIsQueryARB<>0) then n-=1
  glBeginQueryARB = GetProcPtr("glBeginQueryARB") : if (glBeginQueryARB<>0) then n-=1
  glEndQueryARB = GetProcPtr("glEndQueryARB") : if (glEndQueryARB<>0) then n-=1
  glGetQueryivARB = GetProcPtr("glGetQueryivARB") : if (glGetQueryivARB<>0) then n-=1
  glGetQueryObjectivARB = GetProcPtr("glGetQueryObjectivARB") : if (glGetQueryObjectivARB<>0) then n-=1
  glGetQueryObjectuivARB = GetProcPtr("glGetQueryObjectuivARB") : if (glGetQueryObjectuivARB<>0) then n-=1
  glPointParameterfARB = GetProcPtr("glPointParameterfARB") : if (glPointParameterfARB<>0) then n-=1
  glPointParameterfvARB = GetProcPtr("glPointParameterfvARB") : if (glPointParameterfvARB<>0) then n-=1
  glGetGraphicsResetStatusARB = GetProcPtr("glGetGraphicsResetStatusARB") : if (glGetGraphicsResetStatusARB<>0) then n-=1
  glGetnTexImageARB = GetProcPtr("glGetnTexImageARB") : if (glGetnTexImageARB<>0) then n-=1
  glReadnPixelsARB = GetProcPtr("glReadnPixelsARB") : if (glReadnPixelsARB<>0) then n-=1
  glGetnCompressedTexImageARB = GetProcPtr("glGetnCompressedTexImageARB") : if (glGetnCompressedTexImageARB<>0) then n-=1
  glGetnUniformfvARB = GetProcPtr("glGetnUniformfvARB") : if (glGetnUniformfvARB<>0) then n-=1
  glGetnUniformivARB = GetProcPtr("glGetnUniformivARB") : if (glGetnUniformivARB<>0) then n-=1
  glGetnUniformuivARB = GetProcPtr("glGetnUniformuivARB") : if (glGetnUniformuivARB<>0) then n-=1
  glGetnUniformdvARB = GetProcPtr("glGetnUniformdvARB") : if (glGetnUniformdvARB<>0) then n-=1
  glGetnMapdvARB = GetProcPtr("glGetnMapdvARB") : if (glGetnMapdvARB<>0) then n-=1
  glGetnMapfvARB = GetProcPtr("glGetnMapfvARB") : if (glGetnMapfvARB<>0) then n-=1
  glGetnMapivARB = GetProcPtr("glGetnMapivARB") : if (glGetnMapivARB<>0) then n-=1
  glGetnPixelMapfvARB = GetProcPtr("glGetnPixelMapfvARB") : if (glGetnPixelMapfvARB<>0) then n-=1
  glGetnPixelMapuivARB = GetProcPtr("glGetnPixelMapuivARB") : if (glGetnPixelMapuivARB<>0) then n-=1
  glGetnPixelMapusvARB = GetProcPtr("glGetnPixelMapusvARB") : if (glGetnPixelMapusvARB<>0) then n-=1
  glGetnPolygonStippleARB = GetProcPtr("glGetnPolygonStippleARB") : if (glGetnPolygonStippleARB<>0) then n-=1
  glGetnColorTableARB = GetProcPtr("glGetnColorTableARB") : if (glGetnColorTableARB<>0) then n-=1
  glGetnConvolutionFilterARB = GetProcPtr("glGetnConvolutionFilterARB") : if (glGetnConvolutionFilterARB<>0) then n-=1
  glGetnSeparableFilterARB = GetProcPtr("glGetnSeparableFilterARB") : if (glGetnSeparableFilterARB<>0) then n-=1
  glGetnHistogramARB = GetProcPtr("glGetnHistogramARB") : if (glGetnHistogramARB<>0) then n-=1
  glGetnMinmaxARB = GetProcPtr("glGetnMinmaxARB") : if (glGetnMinmaxARB<>0) then n-=1
  glMinSampleShadingARB = GetProcPtr("glMinSampleShadingARB") : if (glMinSampleShadingARB<>0) then n-=1
  glDeleteObjectARB = GetProcPtr("glDeleteObjectARB") : if (glDeleteObjectARB<>0) then n-=1
  glGetHandleARB = GetProcPtr("glGetHandleARB") : if (glGetHandleARB<>0) then n-=1
  glDetachObjectARB = GetProcPtr("glDetachObjectARB") : if (glDetachObjectARB<>0) then n-=1
  glCreateShaderObjectARB = GetProcPtr("glCreateShaderObjectARB") : if (glCreateShaderObjectARB<>0) then n-=1
  glShaderSourceARB = GetProcPtr("glShaderSourceARB") : if (glShaderSourceARB<>0) then n-=1
  glCompileShaderARB = GetProcPtr("glCompileShaderARB") : if (glCompileShaderARB<>0) then n-=1
  glCreateProgramObjectARB = GetProcPtr("glCreateProgramObjectARB") : if (glCreateProgramObjectARB<>0) then n-=1
  glAttachObjectARB = GetProcPtr("glAttachObjectARB") : if (glAttachObjectARB<>0) then n-=1
  glLinkProgramARB = GetProcPtr("glLinkProgramARB") : if (glLinkProgramARB<>0) then n-=1
  glUseProgramObjectARB = GetProcPtr("glUseProgramObjectARB") : if (glUseProgramObjectARB<>0) then n-=1
  glValidateProgramARB = GetProcPtr("glValidateProgramARB") : if (glValidateProgramARB<>0) then n-=1
  glUniform1fARB = GetProcPtr("glUniform1fARB") : if (glUniform1fARB<>0) then n-=1
  glUniform2fARB = GetProcPtr("glUniform2fARB") : if (glUniform2fARB<>0) then n-=1
  glUniform3fARB = GetProcPtr("glUniform3fARB") : if (glUniform3fARB<>0) then n-=1
  glUniform4fARB = GetProcPtr("glUniform4fARB") : if (glUniform4fARB<>0) then n-=1
  glUniform1iARB = GetProcPtr("glUniform1iARB") : if (glUniform1iARB<>0) then n-=1
  glUniform2iARB = GetProcPtr("glUniform2iARB") : if (glUniform2iARB<>0) then n-=1
  glUniform3iARB = GetProcPtr("glUniform3iARB") : if (glUniform3iARB<>0) then n-=1
  glUniform4iARB = GetProcPtr("glUniform4iARB") : if (glUniform4iARB<>0) then n-=1
  glUniform1fvARB = GetProcPtr("glUniform1fvARB") : if (glUniform1fvARB<>0) then n-=1
  glUniform2fvARB = GetProcPtr("glUniform2fvARB") : if (glUniform2fvARB<>0) then n-=1
  glUniform3fvARB = GetProcPtr("glUniform3fvARB") : if (glUniform3fvARB<>0) then n-=1
  glUniform4fvARB = GetProcPtr("glUniform4fvARB") : if (glUniform4fvARB<>0) then n-=1
  glUniform1ivARB = GetProcPtr("glUniform1ivARB") : if (glUniform1ivARB<>0) then n-=1
  glUniform2ivARB = GetProcPtr("glUniform2ivARB") : if (glUniform2ivARB<>0) then n-=1
  glUniform3ivARB = GetProcPtr("glUniform3ivARB") : if (glUniform3ivARB<>0) then n-=1
  glUniform4ivARB = GetProcPtr("glUniform4ivARB") : if (glUniform4ivARB<>0) then n-=1
  glUniformMatrix2fvARB = GetProcPtr("glUniformMatrix2fvARB") : if (glUniformMatrix2fvARB<>0) then n-=1
  glUniformMatrix3fvARB = GetProcPtr("glUniformMatrix3fvARB") : if (glUniformMatrix3fvARB<>0) then n-=1
  glUniformMatrix4fvARB = GetProcPtr("glUniformMatrix4fvARB") : if (glUniformMatrix4fvARB<>0) then n-=1
  glGetObjectParameterfvARB = GetProcPtr("glGetObjectParameterfvARB") : if (glGetObjectParameterfvARB<>0) then n-=1
  glGetObjectParameterivARB = GetProcPtr("glGetObjectParameterivARB") : if (glGetObjectParameterivARB<>0) then n-=1
  glGetInfoLogARB = GetProcPtr("glGetInfoLogARB") : if (glGetInfoLogARB<>0) then n-=1
  glGetAttachedObjectsARB = GetProcPtr("glGetAttachedObjectsARB") : if (glGetAttachedObjectsARB<>0) then n-=1
  glGetUniformLocationARB = GetProcPtr("glGetUniformLocationARB") : if (glGetUniformLocationARB<>0) then n-=1
  glGetActiveUniformARB = GetProcPtr("glGetActiveUniformARB") : if (glGetActiveUniformARB<>0) then n-=1
  glGetUniformfvARB = GetProcPtr("glGetUniformfvARB") : if (glGetUniformfvARB<>0) then n-=1
  glGetUniformivARB = GetProcPtr("glGetUniformivARB") : if (glGetUniformivARB<>0) then n-=1
  glGetShaderSourceARB = GetProcPtr("glGetShaderSourceARB") : if (glGetShaderSourceARB<>0) then n-=1
  glNamedStringARB = GetProcPtr("glNamedStringARB") : if (glNamedStringARB<>0) then n-=1
  glDeleteNamedStringARB = GetProcPtr("glDeleteNamedStringARB") : if (glDeleteNamedStringARB<>0) then n-=1
  glCompileShaderIncludeARB = GetProcPtr("glCompileShaderIncludeARB") : if (glCompileShaderIncludeARB<>0) then n-=1
  glIsNamedStringARB = GetProcPtr("glIsNamedStringARB") : if (glIsNamedStringARB<>0) then n-=1
  glGetNamedStringARB = GetProcPtr("glGetNamedStringARB") : if (glGetNamedStringARB<>0) then n-=1
  glGetNamedStringivARB = GetProcPtr("glGetNamedStringivARB") : if (glGetNamedStringivARB<>0) then n-=1
  glTexPageCommitmentARB = GetProcPtr("glTexPageCommitmentARB") : if (glTexPageCommitmentARB<>0) then n-=1
  glTexBufferARB = GetProcPtr("glTexBufferARB") : if (glTexBufferARB<>0) then n-=1
  glCompressedTexImage3DARB = GetProcPtr("glCompressedTexImage3DARB") : if (glCompressedTexImage3DARB<>0) then n-=1
  glCompressedTexImage2DARB = GetProcPtr("glCompressedTexImage2DARB") : if (glCompressedTexImage2DARB<>0) then n-=1
  glCompressedTexImage1DARB = GetProcPtr("glCompressedTexImage1DARB") : if (glCompressedTexImage1DARB<>0) then n-=1
  glCompressedTexSubImage3DARB = GetProcPtr("glCompressedTexSubImage3DARB") : if (glCompressedTexSubImage3DARB<>0) then n-=1
  glCompressedTexSubImage2DARB = GetProcPtr("glCompressedTexSubImage2DARB") : if (glCompressedTexSubImage2DARB<>0) then n-=1
  glCompressedTexSubImage1DARB = GetProcPtr("glCompressedTexSubImage1DARB") : if (glCompressedTexSubImage1DARB<>0) then n-=1
  glGetCompressedTexImageARB = GetProcPtr("glGetCompressedTexImageARB") : if (glGetCompressedTexImageARB<>0) then n-=1
  glLoadTransposeMatrixfARB = GetProcPtr("glLoadTransposeMatrixfARB") : if (glLoadTransposeMatrixfARB<>0) then n-=1
  glLoadTransposeMatrixdARB = GetProcPtr("glLoadTransposeMatrixdARB") : if (glLoadTransposeMatrixdARB<>0) then n-=1
  glMultTransposeMatrixfARB = GetProcPtr("glMultTransposeMatrixfARB") : if (glMultTransposeMatrixfARB<>0) then n-=1
  glMultTransposeMatrixdARB = GetProcPtr("glMultTransposeMatrixdARB") : if (glMultTransposeMatrixdARB<>0) then n-=1
  glWeightbvARB = GetProcPtr("glWeightbvARB") : if (glWeightbvARB<>0) then n-=1
  glWeightsvARB = GetProcPtr("glWeightsvARB") : if (glWeightsvARB<>0) then n-=1
  glWeightivARB = GetProcPtr("glWeightivARB") : if (glWeightivARB<>0) then n-=1
  glWeightfvARB = GetProcPtr("glWeightfvARB") : if (glWeightfvARB<>0) then n-=1
  glWeightdvARB = GetProcPtr("glWeightdvARB") : if (glWeightdvARB<>0) then n-=1
  glWeightubvARB = GetProcPtr("glWeightubvARB") : if (glWeightubvARB<>0) then n-=1
  glWeightusvARB = GetProcPtr("glWeightusvARB") : if (glWeightusvARB<>0) then n-=1
  glWeightuivARB = GetProcPtr("glWeightuivARB") : if (glWeightuivARB<>0) then n-=1
  glWeightPointerARB = GetProcPtr("glWeightPointerARB") : if (glWeightPointerARB<>0) then n-=1
  glVertexBlendARB = GetProcPtr("glVertexBlendARB") : if (glVertexBlendARB<>0) then n-=1
  glBindBufferARB = GetProcPtr("glBindBufferARB") : if (glBindBufferARB<>0) then n-=1
  glDeleteBuffersARB = GetProcPtr("glDeleteBuffersARB") : if (glDeleteBuffersARB<>0) then n-=1
  glGenBuffersARB = GetProcPtr("glGenBuffersARB") : if (glGenBuffersARB<>0) then n-=1
  glIsBufferARB = GetProcPtr("glIsBufferARB") : if (glIsBufferARB<>0) then n-=1
  glBufferDataARB = GetProcPtr("glBufferDataARB") : if (glBufferDataARB<>0) then n-=1
  glBufferSubDataARB = GetProcPtr("glBufferSubDataARB") : if (glBufferSubDataARB<>0) then n-=1
  glGetBufferSubDataARB = GetProcPtr("glGetBufferSubDataARB") : if (glGetBufferSubDataARB<>0) then n-=1
  glMapBufferARB = GetProcPtr("glMapBufferARB") : if (glMapBufferARB<>0) then n-=1
  glUnmapBufferARB = GetProcPtr("glUnmapBufferARB") : if (glUnmapBufferARB<>0) then n-=1
  glGetBufferParameterivARB = GetProcPtr("glGetBufferParameterivARB") : if (glGetBufferParameterivARB<>0) then n-=1
  glGetBufferPointervARB = GetProcPtr("glGetBufferPointervARB") : if (glGetBufferPointervARB<>0) then n-=1
  glVertexAttrib1dARB = GetProcPtr("glVertexAttrib1dARB") : if (glVertexAttrib1dARB<>0) then n-=1
  glVertexAttrib1dvARB = GetProcPtr("glVertexAttrib1dvARB") : if (glVertexAttrib1dvARB<>0) then n-=1
  glVertexAttrib1fARB = GetProcPtr("glVertexAttrib1fARB") : if (glVertexAttrib1fARB<>0) then n-=1
  glVertexAttrib1fvARB = GetProcPtr("glVertexAttrib1fvARB") : if (glVertexAttrib1fvARB<>0) then n-=1
  glVertexAttrib1sARB = GetProcPtr("glVertexAttrib1sARB") : if (glVertexAttrib1sARB<>0) then n-=1
  glVertexAttrib1svARB = GetProcPtr("glVertexAttrib1svARB") : if (glVertexAttrib1svARB<>0) then n-=1
  glVertexAttrib2dARB = GetProcPtr("glVertexAttrib2dARB") : if (glVertexAttrib2dARB<>0) then n-=1
  glVertexAttrib2dvARB = GetProcPtr("glVertexAttrib2dvARB") : if (glVertexAttrib2dvARB<>0) then n-=1
  glVertexAttrib2fARB = GetProcPtr("glVertexAttrib2fARB") : if (glVertexAttrib2fARB<>0) then n-=1
  glVertexAttrib2fvARB = GetProcPtr("glVertexAttrib2fvARB") : if (glVertexAttrib2fvARB<>0) then n-=1
  glVertexAttrib2sARB = GetProcPtr("glVertexAttrib2sARB") : if (glVertexAttrib2sARB<>0) then n-=1
  glVertexAttrib2svARB = GetProcPtr("glVertexAttrib2svARB") : if (glVertexAttrib2svARB<>0) then n-=1
  glVertexAttrib3dARB = GetProcPtr("glVertexAttrib3dARB") : if (glVertexAttrib3dARB<>0) then n-=1
  glVertexAttrib3dvARB = GetProcPtr("glVertexAttrib3dvARB") : if (glVertexAttrib3dvARB<>0) then n-=1
  glVertexAttrib3fARB = GetProcPtr("glVertexAttrib3fARB") : if (glVertexAttrib3fARB<>0) then n-=1
  glVertexAttrib3fvARB = GetProcPtr("glVertexAttrib3fvARB") : if (glVertexAttrib3fvARB<>0) then n-=1
  glVertexAttrib3sARB = GetProcPtr("glVertexAttrib3sARB") : if (glVertexAttrib3sARB<>0) then n-=1
  glVertexAttrib3svARB = GetProcPtr("glVertexAttrib3svARB") : if (glVertexAttrib3svARB<>0) then n-=1
  glVertexAttrib4NbvARB = GetProcPtr("glVertexAttrib4NbvARB") : if (glVertexAttrib4NbvARB<>0) then n-=1
  glVertexAttrib4NivARB = GetProcPtr("glVertexAttrib4NivARB") : if (glVertexAttrib4NivARB<>0) then n-=1
  glVertexAttrib4NsvARB = GetProcPtr("glVertexAttrib4NsvARB") : if (glVertexAttrib4NsvARB<>0) then n-=1
  glVertexAttrib4NubARB = GetProcPtr("glVertexAttrib4NubARB") : if (glVertexAttrib4NubARB<>0) then n-=1
  glVertexAttrib4NubvARB = GetProcPtr("glVertexAttrib4NubvARB") : if (glVertexAttrib4NubvARB<>0) then n-=1
  glVertexAttrib4NuivARB = GetProcPtr("glVertexAttrib4NuivARB") : if (glVertexAttrib4NuivARB<>0) then n-=1
  glVertexAttrib4NusvARB = GetProcPtr("glVertexAttrib4NusvARB") : if (glVertexAttrib4NusvARB<>0) then n-=1
  glVertexAttrib4bvARB = GetProcPtr("glVertexAttrib4bvARB") : if (glVertexAttrib4bvARB<>0) then n-=1
  glVertexAttrib4dARB = GetProcPtr("glVertexAttrib4dARB") : if (glVertexAttrib4dARB<>0) then n-=1
  glVertexAttrib4dvARB = GetProcPtr("glVertexAttrib4dvARB") : if (glVertexAttrib4dvARB<>0) then n-=1
  glVertexAttrib4fARB = GetProcPtr("glVertexAttrib4fARB") : if (glVertexAttrib4fARB<>0) then n-=1
  glVertexAttrib4fvARB = GetProcPtr("glVertexAttrib4fvARB") : if (glVertexAttrib4fvARB<>0) then n-=1
  glVertexAttrib4ivARB = GetProcPtr("glVertexAttrib4ivARB") : if (glVertexAttrib4ivARB<>0) then n-=1
  glVertexAttrib4sARB = GetProcPtr("glVertexAttrib4sARB") : if (glVertexAttrib4sARB<>0) then n-=1
  glVertexAttrib4svARB = GetProcPtr("glVertexAttrib4svARB") : if (glVertexAttrib4svARB<>0) then n-=1
  glVertexAttrib4ubvARB = GetProcPtr("glVertexAttrib4ubvARB") : if (glVertexAttrib4ubvARB<>0) then n-=1
  glVertexAttrib4uivARB = GetProcPtr("glVertexAttrib4uivARB") : if (glVertexAttrib4uivARB<>0) then n-=1
  glVertexAttrib4usvARB = GetProcPtr("glVertexAttrib4usvARB") : if (glVertexAttrib4usvARB<>0) then n-=1
  glVertexAttribPointerARB = GetProcPtr("glVertexAttribPointerARB") : if (glVertexAttribPointerARB<>0) then n-=1
  glEnableVertexAttribArrayARB = GetProcPtr("glEnableVertexAttribArrayARB") : if (glEnableVertexAttribArrayARB<>0) then n-=1
  glDisableVertexAttribArrayARB = GetProcPtr("glDisableVertexAttribArrayARB") : if (glDisableVertexAttribArrayARB<>0) then n-=1
  glGetVertexAttribdvARB = GetProcPtr("glGetVertexAttribdvARB") : if (glGetVertexAttribdvARB<>0) then n-=1
  glGetVertexAttribfvARB = GetProcPtr("glGetVertexAttribfvARB") : if (glGetVertexAttribfvARB<>0) then n-=1
  glGetVertexAttribivARB = GetProcPtr("glGetVertexAttribivARB") : if (glGetVertexAttribivARB<>0) then n-=1
  glGetVertexAttribPointervARB = GetProcPtr("glGetVertexAttribPointervARB") : if (glGetVertexAttribPointervARB<>0) then n-=1
  glBindAttribLocationARB = GetProcPtr("glBindAttribLocationARB") : if (glBindAttribLocationARB<>0) then n-=1
  glGetActiveAttribARB = GetProcPtr("glGetActiveAttribARB") : if (glGetActiveAttribARB<>0) then n-=1
  glGetAttribLocationARB = GetProcPtr("glGetAttribLocationARB") : if (glGetAttribLocationARB<>0) then n-=1
  glWindowPos2dARB = GetProcPtr("glWindowPos2dARB") : if (glWindowPos2dARB<>0) then n-=1
  glWindowPos2dvARB = GetProcPtr("glWindowPos2dvARB") : if (glWindowPos2dvARB<>0) then n-=1
  glWindowPos2fARB = GetProcPtr("glWindowPos2fARB") : if (glWindowPos2fARB<>0) then n-=1
  glWindowPos2fvARB = GetProcPtr("glWindowPos2fvARB") : if (glWindowPos2fvARB<>0) then n-=1
  glWindowPos2iARB = GetProcPtr("glWindowPos2iARB") : if (glWindowPos2iARB<>0) then n-=1
  glWindowPos2ivARB = GetProcPtr("glWindowPos2ivARB") : if (glWindowPos2ivARB<>0) then n-=1
  glWindowPos2sARB = GetProcPtr("glWindowPos2sARB") : if (glWindowPos2sARB<>0) then n-=1
  glWindowPos2svARB = GetProcPtr("glWindowPos2svARB") : if (glWindowPos2svARB<>0) then n-=1
  glWindowPos3dARB = GetProcPtr("glWindowPos3dARB") : if (glWindowPos3dARB<>0) then n-=1
  glWindowPos3dvARB = GetProcPtr("glWindowPos3dvARB") : if (glWindowPos3dvARB<>0) then n-=1
  glWindowPos3fARB = GetProcPtr("glWindowPos3fARB") : if (glWindowPos3fARB<>0) then n-=1
  glWindowPos3fvARB = GetProcPtr("glWindowPos3fvARB") : if (glWindowPos3fvARB<>0) then n-=1
  glWindowPos3iARB = GetProcPtr("glWindowPos3iARB") : if (glWindowPos3iARB<>0) then n-=1
  glWindowPos3ivARB = GetProcPtr("glWindowPos3ivARB") : if (glWindowPos3ivARB<>0) then n-=1
  glWindowPos3sARB = GetProcPtr("glWindowPos3sARB") : if (glWindowPos3sARB<>0) then n-=1
  glWindowPos3svARB = GetProcPtr("glWindowPos3svARB") : if (glWindowPos3svARB<>0) then n-=1
  glMultiTexCoord1bOES = GetProcPtr("glMultiTexCoord1bOES") : if (glMultiTexCoord1bOES<>0) then n-=1
  glMultiTexCoord1bvOES = GetProcPtr("glMultiTexCoord1bvOES") : if (glMultiTexCoord1bvOES<>0) then n-=1
  glMultiTexCoord2bOES = GetProcPtr("glMultiTexCoord2bOES") : if (glMultiTexCoord2bOES<>0) then n-=1
  glMultiTexCoord2bvOES = GetProcPtr("glMultiTexCoord2bvOES") : if (glMultiTexCoord2bvOES<>0) then n-=1
  glMultiTexCoord3bOES = GetProcPtr("glMultiTexCoord3bOES") : if (glMultiTexCoord3bOES<>0) then n-=1
  glMultiTexCoord3bvOES = GetProcPtr("glMultiTexCoord3bvOES") : if (glMultiTexCoord3bvOES<>0) then n-=1
  glMultiTexCoord4bOES = GetProcPtr("glMultiTexCoord4bOES") : if (glMultiTexCoord4bOES<>0) then n-=1
  glMultiTexCoord4bvOES = GetProcPtr("glMultiTexCoord4bvOES") : if (glMultiTexCoord4bvOES<>0) then n-=1
  glTexCoord1bOES = GetProcPtr("glTexCoord1bOES") : if (glTexCoord1bOES<>0) then n-=1
  glTexCoord1bvOES = GetProcPtr("glTexCoord1bvOES") : if (glTexCoord1bvOES<>0) then n-=1
  glTexCoord2bOES = GetProcPtr("glTexCoord2bOES") : if (glTexCoord2bOES<>0) then n-=1
  glTexCoord2bvOES = GetProcPtr("glTexCoord2bvOES") : if (glTexCoord2bvOES<>0) then n-=1
  glTexCoord3bOES = GetProcPtr("glTexCoord3bOES") : if (glTexCoord3bOES<>0) then n-=1
  glTexCoord3bvOES = GetProcPtr("glTexCoord3bvOES") : if (glTexCoord3bvOES<>0) then n-=1
  glTexCoord4bOES = GetProcPtr("glTexCoord4bOES") : if (glTexCoord4bOES<>0) then n-=1
  glTexCoord4bvOES = GetProcPtr("glTexCoord4bvOES") : if (glTexCoord4bvOES<>0) then n-=1
  glVertex2bOES = GetProcPtr("glVertex2bOES") : if (glVertex2bOES<>0) then n-=1
  glVertex2bvOES = GetProcPtr("glVertex2bvOES") : if (glVertex2bvOES<>0) then n-=1
  glVertex3bOES = GetProcPtr("glVertex3bOES") : if (glVertex3bOES<>0) then n-=1
  glVertex3bvOES = GetProcPtr("glVertex3bvOES") : if (glVertex3bvOES<>0) then n-=1
  glVertex4bOES = GetProcPtr("glVertex4bOES") : if (glVertex4bOES<>0) then n-=1
  glVertex4bvOES = GetProcPtr("glVertex4bvOES") : if (glVertex4bvOES<>0) then n-=1
  glAlphaFuncxOES = GetProcPtr("glAlphaFuncxOES") : if (glAlphaFuncxOES<>0) then n-=1
  glClearColorxOES = GetProcPtr("glClearColorxOES") : if (glClearColorxOES<>0) then n-=1
  glClearDepthxOES = GetProcPtr("glClearDepthxOES") : if (glClearDepthxOES<>0) then n-=1
  glClipPlanexOES = GetProcPtr("glClipPlanexOES") : if (glClipPlanexOES<>0) then n-=1
  glColor4xOES = GetProcPtr("glColor4xOES") : if (glColor4xOES<>0) then n-=1
  glDepthRangexOES = GetProcPtr("glDepthRangexOES") : if (glDepthRangexOES<>0) then n-=1
  glFogxOES = GetProcPtr("glFogxOES") : if (glFogxOES<>0) then n-=1
  glFogxvOES = GetProcPtr("glFogxvOES") : if (glFogxvOES<>0) then n-=1
  glFrustumxOES = GetProcPtr("glFrustumxOES") : if (glFrustumxOES<>0) then n-=1
  glGetClipPlanexOES = GetProcPtr("glGetClipPlanexOES") : if (glGetClipPlanexOES<>0) then n-=1
  glGetFixedvOES = GetProcPtr("glGetFixedvOES") : if (glGetFixedvOES<>0) then n-=1
  glGetTexEnvxvOES = GetProcPtr("glGetTexEnvxvOES") : if (glGetTexEnvxvOES<>0) then n-=1
  glGetTexParameterxvOES = GetProcPtr("glGetTexParameterxvOES") : if (glGetTexParameterxvOES<>0) then n-=1
  glLightModelxOES = GetProcPtr("glLightModelxOES") : if (glLightModelxOES<>0) then n-=1
  glLightModelxvOES = GetProcPtr("glLightModelxvOES") : if (glLightModelxvOES<>0) then n-=1
  glLightxOES = GetProcPtr("glLightxOES") : if (glLightxOES<>0) then n-=1
  glLightxvOES = GetProcPtr("glLightxvOES") : if (glLightxvOES<>0) then n-=1
  glLineWidthxOES = GetProcPtr("glLineWidthxOES") : if (glLineWidthxOES<>0) then n-=1
  glLoadMatrixxOES = GetProcPtr("glLoadMatrixxOES") : if (glLoadMatrixxOES<>0) then n-=1
  glMaterialxOES = GetProcPtr("glMaterialxOES") : if (glMaterialxOES<>0) then n-=1
  glMaterialxvOES = GetProcPtr("glMaterialxvOES") : if (glMaterialxvOES<>0) then n-=1
  glMultMatrixxOES = GetProcPtr("glMultMatrixxOES") : if (glMultMatrixxOES<>0) then n-=1
  glMultiTexCoord4xOES = GetProcPtr("glMultiTexCoord4xOES") : if (glMultiTexCoord4xOES<>0) then n-=1
  glNormal3xOES = GetProcPtr("glNormal3xOES") : if (glNormal3xOES<>0) then n-=1
  glOrthoxOES = GetProcPtr("glOrthoxOES") : if (glOrthoxOES<>0) then n-=1
  glPointParameterxvOES = GetProcPtr("glPointParameterxvOES") : if (glPointParameterxvOES<>0) then n-=1
  glPointSizexOES = GetProcPtr("glPointSizexOES") : if (glPointSizexOES<>0) then n-=1
  glPolygonOffsetxOES = GetProcPtr("glPolygonOffsetxOES") : if (glPolygonOffsetxOES<>0) then n-=1
  glRotatexOES = GetProcPtr("glRotatexOES") : if (glRotatexOES<>0) then n-=1
  glSampleCoverageOES = GetProcPtr("glSampleCoverageOES") : if (glSampleCoverageOES<>0) then n-=1
  glScalexOES = GetProcPtr("glScalexOES") : if (glScalexOES<>0) then n-=1
  glTexEnvxOES = GetProcPtr("glTexEnvxOES") : if (glTexEnvxOES<>0) then n-=1
  glTexEnvxvOES = GetProcPtr("glTexEnvxvOES") : if (glTexEnvxvOES<>0) then n-=1
  glTexParameterxOES = GetProcPtr("glTexParameterxOES") : if (glTexParameterxOES<>0) then n-=1
  glTexParameterxvOES = GetProcPtr("glTexParameterxvOES") : if (glTexParameterxvOES<>0) then n-=1
  glTranslatexOES = GetProcPtr("glTranslatexOES") : if (glTranslatexOES<>0) then n-=1
  glAccumxOES = GetProcPtr("glAccumxOES") : if (glAccumxOES<>0) then n-=1
  glBitmapxOES = GetProcPtr("glBitmapxOES") : if (glBitmapxOES<>0) then n-=1
  glBlendColorxOES = GetProcPtr("glBlendColorxOES") : if (glBlendColorxOES<>0) then n-=1
  glClearAccumxOES = GetProcPtr("glClearAccumxOES") : if (glClearAccumxOES<>0) then n-=1
  glColor3xOES = GetProcPtr("glColor3xOES") : if (glColor3xOES<>0) then n-=1
  glColor3xvOES = GetProcPtr("glColor3xvOES") : if (glColor3xvOES<>0) then n-=1
  glColor4xvOES = GetProcPtr("glColor4xvOES") : if (glColor4xvOES<>0) then n-=1
  glConvolutionParameterxOES = GetProcPtr("glConvolutionParameterxOES") : if (glConvolutionParameterxOES<>0) then n-=1
  glConvolutionParameterxvOES = GetProcPtr("glConvolutionParameterxvOES") : if (glConvolutionParameterxvOES<>0) then n-=1
  glEvalCoord1xOES = GetProcPtr("glEvalCoord1xOES") : if (glEvalCoord1xOES<>0) then n-=1
  glEvalCoord1xvOES = GetProcPtr("glEvalCoord1xvOES") : if (glEvalCoord1xvOES<>0) then n-=1
  glEvalCoord2xOES = GetProcPtr("glEvalCoord2xOES") : if (glEvalCoord2xOES<>0) then n-=1
  glEvalCoord2xvOES = GetProcPtr("glEvalCoord2xvOES") : if (glEvalCoord2xvOES<>0) then n-=1
  glFeedbackBufferxOES = GetProcPtr("glFeedbackBufferxOES") : if (glFeedbackBufferxOES<>0) then n-=1
  glGetConvolutionParameterxvOES = GetProcPtr("glGetConvolutionParameterxvOES") : if (glGetConvolutionParameterxvOES<>0) then n-=1
  glGetHistogramParameterxvOES = GetProcPtr("glGetHistogramParameterxvOES") : if (glGetHistogramParameterxvOES<>0) then n-=1
  glGetLightxOES = GetProcPtr("glGetLightxOES") : if (glGetLightxOES<>0) then n-=1
  glGetMapxvOES = GetProcPtr("glGetMapxvOES") : if (glGetMapxvOES<>0) then n-=1
  glGetMaterialxOES = GetProcPtr("glGetMaterialxOES") : if (glGetMaterialxOES<>0) then n-=1
  glGetPixelMapxv = GetProcPtr("glGetPixelMapxv") : if (glGetPixelMapxv<>0) then n-=1
  glGetTexGenxvOES = GetProcPtr("glGetTexGenxvOES") : if (glGetTexGenxvOES<>0) then n-=1
  glGetTexLevelParameterxvOES = GetProcPtr("glGetTexLevelParameterxvOES") : if (glGetTexLevelParameterxvOES<>0) then n-=1
  glIndexxOES = GetProcPtr("glIndexxOES") : if (glIndexxOES<>0) then n-=1
  glIndexxvOES = GetProcPtr("glIndexxvOES") : if (glIndexxvOES<>0) then n-=1
  glLoadTransposeMatrixxOES = GetProcPtr("glLoadTransposeMatrixxOES") : if (glLoadTransposeMatrixxOES<>0) then n-=1
  glMap1xOES = GetProcPtr("glMap1xOES") : if (glMap1xOES<>0) then n-=1
  glMap2xOES = GetProcPtr("glMap2xOES") : if (glMap2xOES<>0) then n-=1
  glMapGrid1xOES = GetProcPtr("glMapGrid1xOES") : if (glMapGrid1xOES<>0) then n-=1
  glMapGrid2xOES = GetProcPtr("glMapGrid2xOES") : if (glMapGrid2xOES<>0) then n-=1
  glMultTransposeMatrixxOES = GetProcPtr("glMultTransposeMatrixxOES") : if (glMultTransposeMatrixxOES<>0) then n-=1
  glMultiTexCoord1xOES = GetProcPtr("glMultiTexCoord1xOES") : if (glMultiTexCoord1xOES<>0) then n-=1
  glMultiTexCoord1xvOES = GetProcPtr("glMultiTexCoord1xvOES") : if (glMultiTexCoord1xvOES<>0) then n-=1
  glMultiTexCoord2xOES = GetProcPtr("glMultiTexCoord2xOES") : if (glMultiTexCoord2xOES<>0) then n-=1
  glMultiTexCoord2xvOES = GetProcPtr("glMultiTexCoord2xvOES") : if (glMultiTexCoord2xvOES<>0) then n-=1
  glMultiTexCoord3xOES = GetProcPtr("glMultiTexCoord3xOES") : if (glMultiTexCoord3xOES<>0) then n-=1
  glMultiTexCoord3xvOES = GetProcPtr("glMultiTexCoord3xvOES") : if (glMultiTexCoord3xvOES<>0) then n-=1
  glMultiTexCoord4xvOES = GetProcPtr("glMultiTexCoord4xvOES") : if (glMultiTexCoord4xvOES<>0) then n-=1
  glNormal3xvOES = GetProcPtr("glNormal3xvOES") : if (glNormal3xvOES<>0) then n-=1
  glPassThroughxOES = GetProcPtr("glPassThroughxOES") : if (glPassThroughxOES<>0) then n-=1
  glPixelMapx = GetProcPtr("glPixelMapx") : if (glPixelMapx<>0) then n-=1
  glPixelStorex = GetProcPtr("glPixelStorex") : if (glPixelStorex<>0) then n-=1
  glPixelTransferxOES = GetProcPtr("glPixelTransferxOES") : if (glPixelTransferxOES<>0) then n-=1
  glPixelZoomxOES = GetProcPtr("glPixelZoomxOES") : if (glPixelZoomxOES<>0) then n-=1
  glPrioritizeTexturesxOES = GetProcPtr("glPrioritizeTexturesxOES") : if (glPrioritizeTexturesxOES<>0) then n-=1
  glRasterPos2xOES = GetProcPtr("glRasterPos2xOES") : if (glRasterPos2xOES<>0) then n-=1
  glRasterPos2xvOES = GetProcPtr("glRasterPos2xvOES") : if (glRasterPos2xvOES<>0) then n-=1
  glRasterPos3xOES = GetProcPtr("glRasterPos3xOES") : if (glRasterPos3xOES<>0) then n-=1
  glRasterPos3xvOES = GetProcPtr("glRasterPos3xvOES") : if (glRasterPos3xvOES<>0) then n-=1
  glRasterPos4xOES = GetProcPtr("glRasterPos4xOES") : if (glRasterPos4xOES<>0) then n-=1
  glRasterPos4xvOES = GetProcPtr("glRasterPos4xvOES") : if (glRasterPos4xvOES<>0) then n-=1
  glRectxOES = GetProcPtr("glRectxOES") : if (glRectxOES<>0) then n-=1
  glRectxvOES = GetProcPtr("glRectxvOES") : if (glRectxvOES<>0) then n-=1
  glTexCoord1xOES = GetProcPtr("glTexCoord1xOES") : if (glTexCoord1xOES<>0) then n-=1
  glTexCoord1xvOES = GetProcPtr("glTexCoord1xvOES") : if (glTexCoord1xvOES<>0) then n-=1
  glTexCoord2xOES = GetProcPtr("glTexCoord2xOES") : if (glTexCoord2xOES<>0) then n-=1
  glTexCoord2xvOES = GetProcPtr("glTexCoord2xvOES") : if (glTexCoord2xvOES<>0) then n-=1
  glTexCoord3xOES = GetProcPtr("glTexCoord3xOES") : if (glTexCoord3xOES<>0) then n-=1
  glTexCoord3xvOES = GetProcPtr("glTexCoord3xvOES") : if (glTexCoord3xvOES<>0) then n-=1
  glTexCoord4xOES = GetProcPtr("glTexCoord4xOES") : if (glTexCoord4xOES<>0) then n-=1
  glTexCoord4xvOES = GetProcPtr("glTexCoord4xvOES") : if (glTexCoord4xvOES<>0) then n-=1
  glTexGenxOES = GetProcPtr("glTexGenxOES") : if (glTexGenxOES<>0) then n-=1
  glTexGenxvOES = GetProcPtr("glTexGenxvOES") : if (glTexGenxvOES<>0) then n-=1
  glVertex2xOES = GetProcPtr("glVertex2xOES") : if (glVertex2xOES<>0) then n-=1
  glVertex2xvOES = GetProcPtr("glVertex2xvOES") : if (glVertex2xvOES<>0) then n-=1
  glVertex3xOES = GetProcPtr("glVertex3xOES") : if (glVertex3xOES<>0) then n-=1
  glVertex3xvOES = GetProcPtr("glVertex3xvOES") : if (glVertex3xvOES<>0) then n-=1
  glVertex4xOES = GetProcPtr("glVertex4xOES") : if (glVertex4xOES<>0) then n-=1
  glVertex4xvOES = GetProcPtr("glVertex4xvOES") : if (glVertex4xvOES<>0) then n-=1
  glQueryMatrixxOES = GetProcPtr("glQueryMatrixxOES") : if (glQueryMatrixxOES<>0) then n-=1
  glClearDepthfOES = GetProcPtr("glClearDepthfOES") : if (glClearDepthfOES<>0) then n-=1
  glClipPlanefOES = GetProcPtr("glClipPlanefOES") : if (glClipPlanefOES<>0) then n-=1
  glDepthRangefOES = GetProcPtr("glDepthRangefOES") : if (glDepthRangefOES<>0) then n-=1
  glFrustumfOES = GetProcPtr("glFrustumfOES") : if (glFrustumfOES<>0) then n-=1
  glGetClipPlanefOES = GetProcPtr("glGetClipPlanefOES") : if (glGetClipPlanefOES<>0) then n-=1
  glOrthofOES = GetProcPtr("glOrthofOES") : if (glOrthofOES<>0) then n-=1
  glTbufferMask3DFX = GetProcPtr("glTbufferMask3DFX") : if (glTbufferMask3DFX<>0) then n-=1
  glDebugMessageEnableAMD = GetProcPtr("glDebugMessageEnableAMD") : if (glDebugMessageEnableAMD<>0) then n-=1
  glDebugMessageInsertAMD = GetProcPtr("glDebugMessageInsertAMD") : if (glDebugMessageInsertAMD<>0) then n-=1
  glDebugMessageCallbackAMD = GetProcPtr("glDebugMessageCallbackAMD") : if (glDebugMessageCallbackAMD<>0) then n-=1
  glGetDebugMessageLogAMD = GetProcPtr("glGetDebugMessageLogAMD") : if (glGetDebugMessageLogAMD<>0) then n-=1
  glBlendFuncIndexedAMD = GetProcPtr("glBlendFuncIndexedAMD") : if (glBlendFuncIndexedAMD<>0) then n-=1
  glBlendFuncSeparateIndexedAMD = GetProcPtr("glBlendFuncSeparateIndexedAMD") : if (glBlendFuncSeparateIndexedAMD<>0) then n-=1
  glBlendEquationIndexedAMD = GetProcPtr("glBlendEquationIndexedAMD") : if (glBlendEquationIndexedAMD<>0) then n-=1
  glBlendEquationSeparateIndexedAMD = GetProcPtr("glBlendEquationSeparateIndexedAMD") : if (glBlendEquationSeparateIndexedAMD<>0) then n-=1
  glVertexAttribParameteriAMD = GetProcPtr("glVertexAttribParameteriAMD") : if (glVertexAttribParameteriAMD<>0) then n-=1
  glMultiDrawArraysIndirectAMD = GetProcPtr("glMultiDrawArraysIndirectAMD") : if (glMultiDrawArraysIndirectAMD<>0) then n-=1
  glMultiDrawElementsIndirectAMD = GetProcPtr("glMultiDrawElementsIndirectAMD") : if (glMultiDrawElementsIndirectAMD<>0) then n-=1
  glGenNamesAMD = GetProcPtr("glGenNamesAMD") : if (glGenNamesAMD<>0) then n-=1
  glDeleteNamesAMD = GetProcPtr("glDeleteNamesAMD") : if (glDeleteNamesAMD<>0) then n-=1
  glIsNameAMD = GetProcPtr("glIsNameAMD") : if (glIsNameAMD<>0) then n-=1
  glGetPerfMonitorGroupsAMD = GetProcPtr("glGetPerfMonitorGroupsAMD") : if (glGetPerfMonitorGroupsAMD<>0) then n-=1
  glGetPerfMonitorCountersAMD = GetProcPtr("glGetPerfMonitorCountersAMD") : if (glGetPerfMonitorCountersAMD<>0) then n-=1
  glGetPerfMonitorGroupStringAMD = GetProcPtr("glGetPerfMonitorGroupStringAMD") : if (glGetPerfMonitorGroupStringAMD<>0) then n-=1
  glGetPerfMonitorCounterStringAMD = GetProcPtr("glGetPerfMonitorCounterStringAMD") : if (glGetPerfMonitorCounterStringAMD<>0) then n-=1
  glGetPerfMonitorCounterInfoAMD = GetProcPtr("glGetPerfMonitorCounterInfoAMD") : if (glGetPerfMonitorCounterInfoAMD<>0) then n-=1
  glGenPerfMonitorsAMD = GetProcPtr("glGenPerfMonitorsAMD") : if (glGenPerfMonitorsAMD<>0) then n-=1
  glDeletePerfMonitorsAMD = GetProcPtr("glDeletePerfMonitorsAMD") : if (glDeletePerfMonitorsAMD<>0) then n-=1
  glSelectPerfMonitorCountersAMD = GetProcPtr("glSelectPerfMonitorCountersAMD") : if (glSelectPerfMonitorCountersAMD<>0) then n-=1
  glBeginPerfMonitorAMD = GetProcPtr("glBeginPerfMonitorAMD") : if (glBeginPerfMonitorAMD<>0) then n-=1
  glEndPerfMonitorAMD = GetProcPtr("glEndPerfMonitorAMD") : if (glEndPerfMonitorAMD<>0) then n-=1
  glGetPerfMonitorCounterDataAMD = GetProcPtr("glGetPerfMonitorCounterDataAMD") : if (glGetPerfMonitorCounterDataAMD<>0) then n-=1
  glSetMultisamplefvAMD = GetProcPtr("glSetMultisamplefvAMD") : if (glSetMultisamplefvAMD<>0) then n-=1
  glTexStorageSparseAMD = GetProcPtr("glTexStorageSparseAMD") : if (glTexStorageSparseAMD<>0) then n-=1
  glTextureStorageSparseAMD = GetProcPtr("glTextureStorageSparseAMD") : if (glTextureStorageSparseAMD<>0) then n-=1
  glStencilOpValueAMD = GetProcPtr("glStencilOpValueAMD") : if (glStencilOpValueAMD<>0) then n-=1
  glTessellationFactorAMD = GetProcPtr("glTessellationFactorAMD") : if (glTessellationFactorAMD<>0) then n-=1
  glTessellationModeAMD = GetProcPtr("glTessellationModeAMD") : if (glTessellationModeAMD<>0) then n-=1
  glElementPointerAPPLE = GetProcPtr("glElementPointerAPPLE") : if (glElementPointerAPPLE<>0) then n-=1
  glDrawElementArrayAPPLE = GetProcPtr("glDrawElementArrayAPPLE") : if (glDrawElementArrayAPPLE<>0) then n-=1
  glDrawRangeElementArrayAPPLE = GetProcPtr("glDrawRangeElementArrayAPPLE") : if (glDrawRangeElementArrayAPPLE<>0) then n-=1
  glMultiDrawElementArrayAPPLE = GetProcPtr("glMultiDrawElementArrayAPPLE") : if (glMultiDrawElementArrayAPPLE<>0) then n-=1
  glMultiDrawRangeElementArrayAPPLE = GetProcPtr("glMultiDrawRangeElementArrayAPPLE") : if (glMultiDrawRangeElementArrayAPPLE<>0) then n-=1
  glGenFencesAPPLE = GetProcPtr("glGenFencesAPPLE") : if (glGenFencesAPPLE<>0) then n-=1
  glDeleteFencesAPPLE = GetProcPtr("glDeleteFencesAPPLE") : if (glDeleteFencesAPPLE<>0) then n-=1
  glSetFenceAPPLE = GetProcPtr("glSetFenceAPPLE") : if (glSetFenceAPPLE<>0) then n-=1
  glIsFenceAPPLE = GetProcPtr("glIsFenceAPPLE") : if (glIsFenceAPPLE<>0) then n-=1
  glTestFenceAPPLE = GetProcPtr("glTestFenceAPPLE") : if (glTestFenceAPPLE<>0) then n-=1
  glFinishFenceAPPLE = GetProcPtr("glFinishFenceAPPLE") : if (glFinishFenceAPPLE<>0) then n-=1
  glTestObjectAPPLE = GetProcPtr("glTestObjectAPPLE") : if (glTestObjectAPPLE<>0) then n-=1
  glFinishObjectAPPLE = GetProcPtr("glFinishObjectAPPLE") : if (glFinishObjectAPPLE<>0) then n-=1
  glBufferParameteriAPPLE = GetProcPtr("glBufferParameteriAPPLE") : if (glBufferParameteriAPPLE<>0) then n-=1
  glFlushMappedBufferRangeAPPLE = GetProcPtr("glFlushMappedBufferRangeAPPLE") : if (glFlushMappedBufferRangeAPPLE<>0) then n-=1
  glObjectPurgeableAPPLE = GetProcPtr("glObjectPurgeableAPPLE") : if (glObjectPurgeableAPPLE<>0) then n-=1
  glObjectUnpurgeableAPPLE = GetProcPtr("glObjectUnpurgeableAPPLE") : if (glObjectUnpurgeableAPPLE<>0) then n-=1
  glGetObjectParameterivAPPLE = GetProcPtr("glGetObjectParameterivAPPLE") : if (glGetObjectParameterivAPPLE<>0) then n-=1
  glTextureRangeAPPLE = GetProcPtr("glTextureRangeAPPLE") : if (glTextureRangeAPPLE<>0) then n-=1
  glGetTexParameterPointervAPPLE = GetProcPtr("glGetTexParameterPointervAPPLE") : if (glGetTexParameterPointervAPPLE<>0) then n-=1
  glBindVertexArrayAPPLE = GetProcPtr("glBindVertexArrayAPPLE") : if (glBindVertexArrayAPPLE<>0) then n-=1
  glDeleteVertexArraysAPPLE = GetProcPtr("glDeleteVertexArraysAPPLE") : if (glDeleteVertexArraysAPPLE<>0) then n-=1
  glGenVertexArraysAPPLE = GetProcPtr("glGenVertexArraysAPPLE") : if (glGenVertexArraysAPPLE<>0) then n-=1
  glIsVertexArrayAPPLE = GetProcPtr("glIsVertexArrayAPPLE") : if (glIsVertexArrayAPPLE<>0) then n-=1
  glVertexArrayRangeAPPLE = GetProcPtr("glVertexArrayRangeAPPLE") : if (glVertexArrayRangeAPPLE<>0) then n-=1
  glFlushVertexArrayRangeAPPLE = GetProcPtr("glFlushVertexArrayRangeAPPLE") : if (glFlushVertexArrayRangeAPPLE<>0) then n-=1
  glVertexArrayParameteriAPPLE = GetProcPtr("glVertexArrayParameteriAPPLE") : if (glVertexArrayParameteriAPPLE<>0) then n-=1
  glEnableVertexAttribAPPLE = GetProcPtr("glEnableVertexAttribAPPLE") : if (glEnableVertexAttribAPPLE<>0) then n-=1
  glDisableVertexAttribAPPLE = GetProcPtr("glDisableVertexAttribAPPLE") : if (glDisableVertexAttribAPPLE<>0) then n-=1
  glIsVertexAttribEnabledAPPLE = GetProcPtr("glIsVertexAttribEnabledAPPLE") : if (glIsVertexAttribEnabledAPPLE<>0) then n-=1
  glMapVertexAttrib1dAPPLE = GetProcPtr("glMapVertexAttrib1dAPPLE") : if (glMapVertexAttrib1dAPPLE<>0) then n-=1
  glMapVertexAttrib1fAPPLE = GetProcPtr("glMapVertexAttrib1fAPPLE") : if (glMapVertexAttrib1fAPPLE<>0) then n-=1
  glMapVertexAttrib2dAPPLE = GetProcPtr("glMapVertexAttrib2dAPPLE") : if (glMapVertexAttrib2dAPPLE<>0) then n-=1
  glMapVertexAttrib2fAPPLE = GetProcPtr("glMapVertexAttrib2fAPPLE") : if (glMapVertexAttrib2fAPPLE<>0) then n-=1
  glDrawBuffersATI = GetProcPtr("glDrawBuffersATI") : if (glDrawBuffersATI<>0) then n-=1
  glElementPointerATI = GetProcPtr("glElementPointerATI") : if (glElementPointerATI<>0) then n-=1
  glDrawElementArrayATI = GetProcPtr("glDrawElementArrayATI") : if (glDrawElementArrayATI<>0) then n-=1
  glDrawRangeElementArrayATI = GetProcPtr("glDrawRangeElementArrayATI") : if (glDrawRangeElementArrayATI<>0) then n-=1
  glTexBumpParameterivATI = GetProcPtr("glTexBumpParameterivATI") : if (glTexBumpParameterivATI<>0) then n-=1
  glTexBumpParameterfvATI = GetProcPtr("glTexBumpParameterfvATI") : if (glTexBumpParameterfvATI<>0) then n-=1
  glGetTexBumpParameterivATI = GetProcPtr("glGetTexBumpParameterivATI") : if (glGetTexBumpParameterivATI<>0) then n-=1
  glGetTexBumpParameterfvATI = GetProcPtr("glGetTexBumpParameterfvATI") : if (glGetTexBumpParameterfvATI<>0) then n-=1
  glGenFragmentShadersATI = GetProcPtr("glGenFragmentShadersATI") : if (glGenFragmentShadersATI<>0) then n-=1
  glBindFragmentShaderATI = GetProcPtr("glBindFragmentShaderATI") : if (glBindFragmentShaderATI<>0) then n-=1
  glDeleteFragmentShaderATI = GetProcPtr("glDeleteFragmentShaderATI") : if (glDeleteFragmentShaderATI<>0) then n-=1
  glBeginFragmentShaderATI = GetProcPtr("glBeginFragmentShaderATI") : if (glBeginFragmentShaderATI<>0) then n-=1
  glEndFragmentShaderATI = GetProcPtr("glEndFragmentShaderATI") : if (glEndFragmentShaderATI<>0) then n-=1
  glPassTexCoordATI = GetProcPtr("glPassTexCoordATI") : if (glPassTexCoordATI<>0) then n-=1
  glSampleMapATI = GetProcPtr("glSampleMapATI") : if (glSampleMapATI<>0) then n-=1
  glColorFragmentOp1ATI = GetProcPtr("glColorFragmentOp1ATI") : if (glColorFragmentOp1ATI<>0) then n-=1
  glColorFragmentOp2ATI = GetProcPtr("glColorFragmentOp2ATI") : if (glColorFragmentOp2ATI<>0) then n-=1
  glColorFragmentOp3ATI = GetProcPtr("glColorFragmentOp3ATI") : if (glColorFragmentOp3ATI<>0) then n-=1
  glAlphaFragmentOp1ATI = GetProcPtr("glAlphaFragmentOp1ATI") : if (glAlphaFragmentOp1ATI<>0) then n-=1
  glAlphaFragmentOp2ATI = GetProcPtr("glAlphaFragmentOp2ATI") : if (glAlphaFragmentOp2ATI<>0) then n-=1
  glAlphaFragmentOp3ATI = GetProcPtr("glAlphaFragmentOp3ATI") : if (glAlphaFragmentOp3ATI<>0) then n-=1
  glSetFragmentShaderConstantATI = GetProcPtr("glSetFragmentShaderConstantATI") : if (glSetFragmentShaderConstantATI<>0) then n-=1
  glMapObjectBufferATI = GetProcPtr("glMapObjectBufferATI") : if (glMapObjectBufferATI<>0) then n-=1
  glUnmapObjectBufferATI = GetProcPtr("glUnmapObjectBufferATI") : if (glUnmapObjectBufferATI<>0) then n-=1
  glPNTrianglesiATI = GetProcPtr("glPNTrianglesiATI") : if (glPNTrianglesiATI<>0) then n-=1
  glPNTrianglesfATI = GetProcPtr("glPNTrianglesfATI") : if (glPNTrianglesfATI<>0) then n-=1
  glStencilOpSeparateATI = GetProcPtr("glStencilOpSeparateATI") : if (glStencilOpSeparateATI<>0) then n-=1
  glStencilFuncSeparateATI = GetProcPtr("glStencilFuncSeparateATI") : if (glStencilFuncSeparateATI<>0) then n-=1
  glNewObjectBufferATI = GetProcPtr("glNewObjectBufferATI") : if (glNewObjectBufferATI<>0) then n-=1
  glIsObjectBufferATI = GetProcPtr("glIsObjectBufferATI") : if (glIsObjectBufferATI<>0) then n-=1
  glUpdateObjectBufferATI = GetProcPtr("glUpdateObjectBufferATI") : if (glUpdateObjectBufferATI<>0) then n-=1
  glGetObjectBufferfvATI = GetProcPtr("glGetObjectBufferfvATI") : if (glGetObjectBufferfvATI<>0) then n-=1
  glGetObjectBufferivATI = GetProcPtr("glGetObjectBufferivATI") : if (glGetObjectBufferivATI<>0) then n-=1
  glFreeObjectBufferATI = GetProcPtr("glFreeObjectBufferATI") : if (glFreeObjectBufferATI<>0) then n-=1
  glArrayObjectATI = GetProcPtr("glArrayObjectATI") : if (glArrayObjectATI<>0) then n-=1
  glGetArrayObjectfvATI = GetProcPtr("glGetArrayObjectfvATI") : if (glGetArrayObjectfvATI<>0) then n-=1
  glGetArrayObjectivATI = GetProcPtr("glGetArrayObjectivATI") : if (glGetArrayObjectivATI<>0) then n-=1
  glVariantArrayObjectATI = GetProcPtr("glVariantArrayObjectATI") : if (glVariantArrayObjectATI<>0) then n-=1
  glGetVariantArrayObjectfvATI = GetProcPtr("glGetVariantArrayObjectfvATI") : if (glGetVariantArrayObjectfvATI<>0) then n-=1
  glGetVariantArrayObjectivATI = GetProcPtr("glGetVariantArrayObjectivATI") : if (glGetVariantArrayObjectivATI<>0) then n-=1
  glVertexAttribArrayObjectATI = GetProcPtr("glVertexAttribArrayObjectATI") : if (glVertexAttribArrayObjectATI<>0) then n-=1
  glGetVertexAttribArrayObjectfvATI = GetProcPtr("glGetVertexAttribArrayObjectfvATI") : if (glGetVertexAttribArrayObjectfvATI<>0) then n-=1
  glGetVertexAttribArrayObjectivATI = GetProcPtr("glGetVertexAttribArrayObjectivATI") : if (glGetVertexAttribArrayObjectivATI<>0) then n-=1
  glVertexStream1sATI = GetProcPtr("glVertexStream1sATI") : if (glVertexStream1sATI<>0) then n-=1
  glVertexStream1svATI = GetProcPtr("glVertexStream1svATI") : if (glVertexStream1svATI<>0) then n-=1
  glVertexStream1iATI = GetProcPtr("glVertexStream1iATI") : if (glVertexStream1iATI<>0) then n-=1
  glVertexStream1ivATI = GetProcPtr("glVertexStream1ivATI") : if (glVertexStream1ivATI<>0) then n-=1
  glVertexStream1fATI = GetProcPtr("glVertexStream1fATI") : if (glVertexStream1fATI<>0) then n-=1
  glVertexStream1fvATI = GetProcPtr("glVertexStream1fvATI") : if (glVertexStream1fvATI<>0) then n-=1
  glVertexStream1dATI = GetProcPtr("glVertexStream1dATI") : if (glVertexStream1dATI<>0) then n-=1
  glVertexStream1dvATI = GetProcPtr("glVertexStream1dvATI") : if (glVertexStream1dvATI<>0) then n-=1
  glVertexStream2sATI = GetProcPtr("glVertexStream2sATI") : if (glVertexStream2sATI<>0) then n-=1
  glVertexStream2svATI = GetProcPtr("glVertexStream2svATI") : if (glVertexStream2svATI<>0) then n-=1
  glVertexStream2iATI = GetProcPtr("glVertexStream2iATI") : if (glVertexStream2iATI<>0) then n-=1
  glVertexStream2ivATI = GetProcPtr("glVertexStream2ivATI") : if (glVertexStream2ivATI<>0) then n-=1
  glVertexStream2fATI = GetProcPtr("glVertexStream2fATI") : if (glVertexStream2fATI<>0) then n-=1
  glVertexStream2fvATI = GetProcPtr("glVertexStream2fvATI") : if (glVertexStream2fvATI<>0) then n-=1
  glVertexStream2dATI = GetProcPtr("glVertexStream2dATI") : if (glVertexStream2dATI<>0) then n-=1
  glVertexStream2dvATI = GetProcPtr("glVertexStream2dvATI") : if (glVertexStream2dvATI<>0) then n-=1
  glVertexStream3sATI = GetProcPtr("glVertexStream3sATI") : if (glVertexStream3sATI<>0) then n-=1
  glVertexStream3svATI = GetProcPtr("glVertexStream3svATI") : if (glVertexStream3svATI<>0) then n-=1
  glVertexStream3iATI = GetProcPtr("glVertexStream3iATI") : if (glVertexStream3iATI<>0) then n-=1
  glVertexStream3ivATI = GetProcPtr("glVertexStream3ivATI") : if (glVertexStream3ivATI<>0) then n-=1
  glVertexStream3fATI = GetProcPtr("glVertexStream3fATI") : if (glVertexStream3fATI<>0) then n-=1
  glVertexStream3fvATI = GetProcPtr("glVertexStream3fvATI") : if (glVertexStream3fvATI<>0) then n-=1
  glVertexStream3dATI = GetProcPtr("glVertexStream3dATI") : if (glVertexStream3dATI<>0) then n-=1
  glVertexStream3dvATI = GetProcPtr("glVertexStream3dvATI") : if (glVertexStream3dvATI<>0) then n-=1
  glVertexStream4sATI = GetProcPtr("glVertexStream4sATI") : if (glVertexStream4sATI<>0) then n-=1
  glVertexStream4svATI = GetProcPtr("glVertexStream4svATI") : if (glVertexStream4svATI<>0) then n-=1
  glVertexStream4iATI = GetProcPtr("glVertexStream4iATI") : if (glVertexStream4iATI<>0) then n-=1
  glVertexStream4ivATI = GetProcPtr("glVertexStream4ivATI") : if (glVertexStream4ivATI<>0) then n-=1
  glVertexStream4fATI = GetProcPtr("glVertexStream4fATI") : if (glVertexStream4fATI<>0) then n-=1
  glVertexStream4fvATI = GetProcPtr("glVertexStream4fvATI") : if (glVertexStream4fvATI<>0) then n-=1
  glVertexStream4dATI = GetProcPtr("glVertexStream4dATI") : if (glVertexStream4dATI<>0) then n-=1
  glVertexStream4dvATI = GetProcPtr("glVertexStream4dvATI") : if (glVertexStream4dvATI<>0) then n-=1
  glNormalStream3bATI = GetProcPtr("glNormalStream3bATI") : if (glNormalStream3bATI<>0) then n-=1
  glNormalStream3bvATI = GetProcPtr("glNormalStream3bvATI") : if (glNormalStream3bvATI<>0) then n-=1
  glNormalStream3sATI = GetProcPtr("glNormalStream3sATI") : if (glNormalStream3sATI<>0) then n-=1
  glNormalStream3svATI = GetProcPtr("glNormalStream3svATI") : if (glNormalStream3svATI<>0) then n-=1
  glNormalStream3iATI = GetProcPtr("glNormalStream3iATI") : if (glNormalStream3iATI<>0) then n-=1
  glNormalStream3ivATI = GetProcPtr("glNormalStream3ivATI") : if (glNormalStream3ivATI<>0) then n-=1
  glNormalStream3fATI = GetProcPtr("glNormalStream3fATI") : if (glNormalStream3fATI<>0) then n-=1
  glNormalStream3fvATI = GetProcPtr("glNormalStream3fvATI") : if (glNormalStream3fvATI<>0) then n-=1
  glNormalStream3dATI = GetProcPtr("glNormalStream3dATI") : if (glNormalStream3dATI<>0) then n-=1
  glNormalStream3dvATI = GetProcPtr("glNormalStream3dvATI") : if (glNormalStream3dvATI<>0) then n-=1
  glClientActiveVertexStreamATI = GetProcPtr("glClientActiveVertexStreamATI") : if (glClientActiveVertexStreamATI<>0) then n-=1
  glVertexBlendEnviATI = GetProcPtr("glVertexBlendEnviATI") : if (glVertexBlendEnviATI<>0) then n-=1
  glVertexBlendEnvfATI = GetProcPtr("glVertexBlendEnvfATI") : if (glVertexBlendEnvfATI<>0) then n-=1
  glUniformBufferEXT = GetProcPtr("glUniformBufferEXT") : if (glUniformBufferEXT<>0) then n-=1
  glGetUniformBufferSizeEXT = GetProcPtr("glGetUniformBufferSizeEXT") : if (glGetUniformBufferSizeEXT<>0) then n-=1
  glGetUniformOffsetEXT = GetProcPtr("glGetUniformOffsetEXT") : if (glGetUniformOffsetEXT<>0) then n-=1
  glBlendColorEXT = GetProcPtr("glBlendColorEXT") : if (glBlendColorEXT<>0) then n-=1
  glBlendEquationSeparateEXT = GetProcPtr("glBlendEquationSeparateEXT") : if (glBlendEquationSeparateEXT<>0) then n-=1
  glBlendFuncSeparateEXT = GetProcPtr("glBlendFuncSeparateEXT") : if (glBlendFuncSeparateEXT<>0) then n-=1
  glBlendEquationEXT = GetProcPtr("glBlendEquationEXT") : if (glBlendEquationEXT<>0) then n-=1
  glColorSubTableEXT = GetProcPtr("glColorSubTableEXT") : if (glColorSubTableEXT<>0) then n-=1
  glCopyColorSubTableEXT = GetProcPtr("glCopyColorSubTableEXT") : if (glCopyColorSubTableEXT<>0) then n-=1
  glLockArraysEXT = GetProcPtr("glLockArraysEXT") : if (glLockArraysEXT<>0) then n-=1
  glUnlockArraysEXT = GetProcPtr("glUnlockArraysEXT") : if (glUnlockArraysEXT<>0) then n-=1
  glConvolutionFilter1DEXT = GetProcPtr("glConvolutionFilter1DEXT") : if (glConvolutionFilter1DEXT<>0) then n-=1
  glConvolutionFilter2DEXT = GetProcPtr("glConvolutionFilter2DEXT") : if (glConvolutionFilter2DEXT<>0) then n-=1
  glConvolutionParameterfEXT = GetProcPtr("glConvolutionParameterfEXT") : if (glConvolutionParameterfEXT<>0) then n-=1
  glConvolutionParameterfvEXT = GetProcPtr("glConvolutionParameterfvEXT") : if (glConvolutionParameterfvEXT<>0) then n-=1
  glConvolutionParameteriEXT = GetProcPtr("glConvolutionParameteriEXT") : if (glConvolutionParameteriEXT<>0) then n-=1
  glConvolutionParameterivEXT = GetProcPtr("glConvolutionParameterivEXT") : if (glConvolutionParameterivEXT<>0) then n-=1
  glCopyConvolutionFilter1DEXT = GetProcPtr("glCopyConvolutionFilter1DEXT") : if (glCopyConvolutionFilter1DEXT<>0) then n-=1
  glCopyConvolutionFilter2DEXT = GetProcPtr("glCopyConvolutionFilter2DEXT") : if (glCopyConvolutionFilter2DEXT<>0) then n-=1
  glGetConvolutionFilterEXT = GetProcPtr("glGetConvolutionFilterEXT") : if (glGetConvolutionFilterEXT<>0) then n-=1
  glGetConvolutionParameterfvEXT = GetProcPtr("glGetConvolutionParameterfvEXT") : if (glGetConvolutionParameterfvEXT<>0) then n-=1
  glGetConvolutionParameterivEXT = GetProcPtr("glGetConvolutionParameterivEXT") : if (glGetConvolutionParameterivEXT<>0) then n-=1
  glGetSeparableFilterEXT = GetProcPtr("glGetSeparableFilterEXT") : if (glGetSeparableFilterEXT<>0) then n-=1
  glSeparableFilter2DEXT = GetProcPtr("glSeparableFilter2DEXT") : if (glSeparableFilter2DEXT<>0) then n-=1
  glTangent3bEXT = GetProcPtr("glTangent3bEXT") : if (glTangent3bEXT<>0) then n-=1
  glTangent3bvEXT = GetProcPtr("glTangent3bvEXT") : if (glTangent3bvEXT<>0) then n-=1
  glTangent3dEXT = GetProcPtr("glTangent3dEXT") : if (glTangent3dEXT<>0) then n-=1
  glTangent3dvEXT = GetProcPtr("glTangent3dvEXT") : if (glTangent3dvEXT<>0) then n-=1
  glTangent3fEXT = GetProcPtr("glTangent3fEXT") : if (glTangent3fEXT<>0) then n-=1
  glTangent3fvEXT = GetProcPtr("glTangent3fvEXT") : if (glTangent3fvEXT<>0) then n-=1
  glTangent3iEXT = GetProcPtr("glTangent3iEXT") : if (glTangent3iEXT<>0) then n-=1
  glTangent3ivEXT = GetProcPtr("glTangent3ivEXT") : if (glTangent3ivEXT<>0) then n-=1
  glTangent3sEXT = GetProcPtr("glTangent3sEXT") : if (glTangent3sEXT<>0) then n-=1
  glTangent3svEXT = GetProcPtr("glTangent3svEXT") : if (glTangent3svEXT<>0) then n-=1
  glBinormal3bEXT = GetProcPtr("glBinormal3bEXT") : if (glBinormal3bEXT<>0) then n-=1
  glBinormal3bvEXT = GetProcPtr("glBinormal3bvEXT") : if (glBinormal3bvEXT<>0) then n-=1
  glBinormal3dEXT = GetProcPtr("glBinormal3dEXT") : if (glBinormal3dEXT<>0) then n-=1
  glBinormal3dvEXT = GetProcPtr("glBinormal3dvEXT") : if (glBinormal3dvEXT<>0) then n-=1
  glBinormal3fEXT = GetProcPtr("glBinormal3fEXT") : if (glBinormal3fEXT<>0) then n-=1
  glBinormal3fvEXT = GetProcPtr("glBinormal3fvEXT") : if (glBinormal3fvEXT<>0) then n-=1
  glBinormal3iEXT = GetProcPtr("glBinormal3iEXT") : if (glBinormal3iEXT<>0) then n-=1
  glBinormal3ivEXT = GetProcPtr("glBinormal3ivEXT") : if (glBinormal3ivEXT<>0) then n-=1
  glBinormal3sEXT = GetProcPtr("glBinormal3sEXT") : if (glBinormal3sEXT<>0) then n-=1
  glBinormal3svEXT = GetProcPtr("glBinormal3svEXT") : if (glBinormal3svEXT<>0) then n-=1
  glTangentPointerEXT = GetProcPtr("glTangentPointerEXT") : if (glTangentPointerEXT<>0) then n-=1
  glBinormalPointerEXT = GetProcPtr("glBinormalPointerEXT") : if (glBinormalPointerEXT<>0) then n-=1
  glCopyTexImage1DEXT = GetProcPtr("glCopyTexImage1DEXT") : if (glCopyTexImage1DEXT<>0) then n-=1
  glCopyTexImage2DEXT = GetProcPtr("glCopyTexImage2DEXT") : if (glCopyTexImage2DEXT<>0) then n-=1
  glCopyTexSubImage1DEXT = GetProcPtr("glCopyTexSubImage1DEXT") : if (glCopyTexSubImage1DEXT<>0) then n-=1
  glCopyTexSubImage2DEXT = GetProcPtr("glCopyTexSubImage2DEXT") : if (glCopyTexSubImage2DEXT<>0) then n-=1
  glCopyTexSubImage3DEXT = GetProcPtr("glCopyTexSubImage3DEXT") : if (glCopyTexSubImage3DEXT<>0) then n-=1
  glCullParameterdvEXT = GetProcPtr("glCullParameterdvEXT") : if (glCullParameterdvEXT<>0) then n-=1
  glCullParameterfvEXT = GetProcPtr("glCullParameterfvEXT") : if (glCullParameterfvEXT<>0) then n-=1
  glDepthBoundsEXT = GetProcPtr("glDepthBoundsEXT") : if (glDepthBoundsEXT<>0) then n-=1
  glMatrixLoadfEXT = GetProcPtr("glMatrixLoadfEXT") : if (glMatrixLoadfEXT<>0) then n-=1
  glMatrixLoaddEXT = GetProcPtr("glMatrixLoaddEXT") : if (glMatrixLoaddEXT<>0) then n-=1
  glMatrixMultfEXT = GetProcPtr("glMatrixMultfEXT") : if (glMatrixMultfEXT<>0) then n-=1
  glMatrixMultdEXT = GetProcPtr("glMatrixMultdEXT") : if (glMatrixMultdEXT<>0) then n-=1
  glMatrixLoadIdentityEXT = GetProcPtr("glMatrixLoadIdentityEXT") : if (glMatrixLoadIdentityEXT<>0) then n-=1
  glMatrixRotatefEXT = GetProcPtr("glMatrixRotatefEXT") : if (glMatrixRotatefEXT<>0) then n-=1
  glMatrixRotatedEXT = GetProcPtr("glMatrixRotatedEXT") : if (glMatrixRotatedEXT<>0) then n-=1
  glMatrixScalefEXT = GetProcPtr("glMatrixScalefEXT") : if (glMatrixScalefEXT<>0) then n-=1
  glMatrixScaledEXT = GetProcPtr("glMatrixScaledEXT") : if (glMatrixScaledEXT<>0) then n-=1
  glMatrixTranslatefEXT = GetProcPtr("glMatrixTranslatefEXT") : if (glMatrixTranslatefEXT<>0) then n-=1
  glMatrixTranslatedEXT = GetProcPtr("glMatrixTranslatedEXT") : if (glMatrixTranslatedEXT<>0) then n-=1
  glMatrixFrustumEXT = GetProcPtr("glMatrixFrustumEXT") : if (glMatrixFrustumEXT<>0) then n-=1
  glMatrixOrthoEXT = GetProcPtr("glMatrixOrthoEXT") : if (glMatrixOrthoEXT<>0) then n-=1
  glMatrixPopEXT = GetProcPtr("glMatrixPopEXT") : if (glMatrixPopEXT<>0) then n-=1
  glMatrixPushEXT = GetProcPtr("glMatrixPushEXT") : if (glMatrixPushEXT<>0) then n-=1
  glClientAttribDefaultEXT = GetProcPtr("glClientAttribDefaultEXT") : if (glClientAttribDefaultEXT<>0) then n-=1
  glPushClientAttribDefaultEXT = GetProcPtr("glPushClientAttribDefaultEXT") : if (glPushClientAttribDefaultEXT<>0) then n-=1
  glTextureParameterfEXT = GetProcPtr("glTextureParameterfEXT") : if (glTextureParameterfEXT<>0) then n-=1
  glTextureParameterfvEXT = GetProcPtr("glTextureParameterfvEXT") : if (glTextureParameterfvEXT<>0) then n-=1
  glTextureParameteriEXT = GetProcPtr("glTextureParameteriEXT") : if (glTextureParameteriEXT<>0) then n-=1
  glTextureParameterivEXT = GetProcPtr("glTextureParameterivEXT") : if (glTextureParameterivEXT<>0) then n-=1
  glTextureImage1DEXT = GetProcPtr("glTextureImage1DEXT") : if (glTextureImage1DEXT<>0) then n-=1
  glTextureImage2DEXT = GetProcPtr("glTextureImage2DEXT") : if (glTextureImage2DEXT<>0) then n-=1
  glTextureSubImage1DEXT = GetProcPtr("glTextureSubImage1DEXT") : if (glTextureSubImage1DEXT<>0) then n-=1
  glTextureSubImage2DEXT = GetProcPtr("glTextureSubImage2DEXT") : if (glTextureSubImage2DEXT<>0) then n-=1
  glCopyTextureImage1DEXT = GetProcPtr("glCopyTextureImage1DEXT") : if (glCopyTextureImage1DEXT<>0) then n-=1
  glCopyTextureImage2DEXT = GetProcPtr("glCopyTextureImage2DEXT") : if (glCopyTextureImage2DEXT<>0) then n-=1
  glCopyTextureSubImage1DEXT = GetProcPtr("glCopyTextureSubImage1DEXT") : if (glCopyTextureSubImage1DEXT<>0) then n-=1
  glCopyTextureSubImage2DEXT = GetProcPtr("glCopyTextureSubImage2DEXT") : if (glCopyTextureSubImage2DEXT<>0) then n-=1
  glGetTextureImageEXT = GetProcPtr("glGetTextureImageEXT") : if (glGetTextureImageEXT<>0) then n-=1
  glGetTextureParameterfvEXT = GetProcPtr("glGetTextureParameterfvEXT") : if (glGetTextureParameterfvEXT<>0) then n-=1
  glGetTextureParameterivEXT = GetProcPtr("glGetTextureParameterivEXT") : if (glGetTextureParameterivEXT<>0) then n-=1
  glGetTextureLevelParameterfvEXT = GetProcPtr("glGetTextureLevelParameterfvEXT") : if (glGetTextureLevelParameterfvEXT<>0) then n-=1
  glGetTextureLevelParameterivEXT = GetProcPtr("glGetTextureLevelParameterivEXT") : if (glGetTextureLevelParameterivEXT<>0) then n-=1
  glTextureImage3DEXT = GetProcPtr("glTextureImage3DEXT") : if (glTextureImage3DEXT<>0) then n-=1
  glTextureSubImage3DEXT = GetProcPtr("glTextureSubImage3DEXT") : if (glTextureSubImage3DEXT<>0) then n-=1
  glCopyTextureSubImage3DEXT = GetProcPtr("glCopyTextureSubImage3DEXT") : if (glCopyTextureSubImage3DEXT<>0) then n-=1
  glBindMultiTextureEXT = GetProcPtr("glBindMultiTextureEXT") : if (glBindMultiTextureEXT<>0) then n-=1
  glMultiTexCoordPointerEXT = GetProcPtr("glMultiTexCoordPointerEXT") : if (glMultiTexCoordPointerEXT<>0) then n-=1
  glMultiTexEnvfEXT = GetProcPtr("glMultiTexEnvfEXT") : if (glMultiTexEnvfEXT<>0) then n-=1
  glMultiTexEnvfvEXT = GetProcPtr("glMultiTexEnvfvEXT") : if (glMultiTexEnvfvEXT<>0) then n-=1
  glMultiTexEnviEXT = GetProcPtr("glMultiTexEnviEXT") : if (glMultiTexEnviEXT<>0) then n-=1
  glMultiTexEnvivEXT = GetProcPtr("glMultiTexEnvivEXT") : if (glMultiTexEnvivEXT<>0) then n-=1
  glMultiTexGendEXT = GetProcPtr("glMultiTexGendEXT") : if (glMultiTexGendEXT<>0) then n-=1
  glMultiTexGendvEXT = GetProcPtr("glMultiTexGendvEXT") : if (glMultiTexGendvEXT<>0) then n-=1
  glMultiTexGenfEXT = GetProcPtr("glMultiTexGenfEXT") : if (glMultiTexGenfEXT<>0) then n-=1
  glMultiTexGenfvEXT = GetProcPtr("glMultiTexGenfvEXT") : if (glMultiTexGenfvEXT<>0) then n-=1
  glMultiTexGeniEXT = GetProcPtr("glMultiTexGeniEXT") : if (glMultiTexGeniEXT<>0) then n-=1
  glMultiTexGenivEXT = GetProcPtr("glMultiTexGenivEXT") : if (glMultiTexGenivEXT<>0) then n-=1
  glGetMultiTexEnvfvEXT = GetProcPtr("glGetMultiTexEnvfvEXT") : if (glGetMultiTexEnvfvEXT<>0) then n-=1
  glGetMultiTexEnvivEXT = GetProcPtr("glGetMultiTexEnvivEXT") : if (glGetMultiTexEnvivEXT<>0) then n-=1
  glGetMultiTexGendvEXT = GetProcPtr("glGetMultiTexGendvEXT") : if (glGetMultiTexGendvEXT<>0) then n-=1
  glGetMultiTexGenfvEXT = GetProcPtr("glGetMultiTexGenfvEXT") : if (glGetMultiTexGenfvEXT<>0) then n-=1
  glGetMultiTexGenivEXT = GetProcPtr("glGetMultiTexGenivEXT") : if (glGetMultiTexGenivEXT<>0) then n-=1
  glMultiTexParameteriEXT = GetProcPtr("glMultiTexParameteriEXT") : if (glMultiTexParameteriEXT<>0) then n-=1
  glMultiTexParameterivEXT = GetProcPtr("glMultiTexParameterivEXT") : if (glMultiTexParameterivEXT<>0) then n-=1
  glMultiTexParameterfEXT = GetProcPtr("glMultiTexParameterfEXT") : if (glMultiTexParameterfEXT<>0) then n-=1
  glMultiTexParameterfvEXT = GetProcPtr("glMultiTexParameterfvEXT") : if (glMultiTexParameterfvEXT<>0) then n-=1
  glMultiTexImage1DEXT = GetProcPtr("glMultiTexImage1DEXT") : if (glMultiTexImage1DEXT<>0) then n-=1
  glMultiTexImage2DEXT = GetProcPtr("glMultiTexImage2DEXT") : if (glMultiTexImage2DEXT<>0) then n-=1
  glMultiTexSubImage1DEXT = GetProcPtr("glMultiTexSubImage1DEXT") : if (glMultiTexSubImage1DEXT<>0) then n-=1
  glMultiTexSubImage2DEXT = GetProcPtr("glMultiTexSubImage2DEXT") : if (glMultiTexSubImage2DEXT<>0) then n-=1
  glCopyMultiTexImage1DEXT = GetProcPtr("glCopyMultiTexImage1DEXT") : if (glCopyMultiTexImage1DEXT<>0) then n-=1
  glCopyMultiTexImage2DEXT = GetProcPtr("glCopyMultiTexImage2DEXT") : if (glCopyMultiTexImage2DEXT<>0) then n-=1
  glCopyMultiTexSubImage1DEXT = GetProcPtr("glCopyMultiTexSubImage1DEXT") : if (glCopyMultiTexSubImage1DEXT<>0) then n-=1
  glCopyMultiTexSubImage2DEXT = GetProcPtr("glCopyMultiTexSubImage2DEXT") : if (glCopyMultiTexSubImage2DEXT<>0) then n-=1
  glGetMultiTexImageEXT = GetProcPtr("glGetMultiTexImageEXT") : if (glGetMultiTexImageEXT<>0) then n-=1
  glGetMultiTexParameterfvEXT = GetProcPtr("glGetMultiTexParameterfvEXT") : if (glGetMultiTexParameterfvEXT<>0) then n-=1
  glGetMultiTexParameterivEXT = GetProcPtr("glGetMultiTexParameterivEXT") : if (glGetMultiTexParameterivEXT<>0) then n-=1
  glGetMultiTexLevelParameterfvEXT = GetProcPtr("glGetMultiTexLevelParameterfvEXT") : if (glGetMultiTexLevelParameterfvEXT<>0) then n-=1
  glGetMultiTexLevelParameterivEXT = GetProcPtr("glGetMultiTexLevelParameterivEXT") : if (glGetMultiTexLevelParameterivEXT<>0) then n-=1
  glMultiTexImage3DEXT = GetProcPtr("glMultiTexImage3DEXT") : if (glMultiTexImage3DEXT<>0) then n-=1
  glMultiTexSubImage3DEXT = GetProcPtr("glMultiTexSubImage3DEXT") : if (glMultiTexSubImage3DEXT<>0) then n-=1
  glCopyMultiTexSubImage3DEXT = GetProcPtr("glCopyMultiTexSubImage3DEXT") : if (glCopyMultiTexSubImage3DEXT<>0) then n-=1
  glEnableClientStateIndexedEXT = GetProcPtr("glEnableClientStateIndexedEXT") : if (glEnableClientStateIndexedEXT<>0) then n-=1
  glDisableClientStateIndexedEXT = GetProcPtr("glDisableClientStateIndexedEXT") : if (glDisableClientStateIndexedEXT<>0) then n-=1
  glGetFloatIndexedvEXT = GetProcPtr("glGetFloatIndexedvEXT") : if (glGetFloatIndexedvEXT<>0) then n-=1
  glGetDoubleIndexedvEXT = GetProcPtr("glGetDoubleIndexedvEXT") : if (glGetDoubleIndexedvEXT<>0) then n-=1
  glGetPointerIndexedvEXT = GetProcPtr("glGetPointerIndexedvEXT") : if (glGetPointerIndexedvEXT<>0) then n-=1
  glEnableIndexedEXT = GetProcPtr("glEnableIndexedEXT") : if (glEnableIndexedEXT<>0) then n-=1
  glDisableIndexedEXT = GetProcPtr("glDisableIndexedEXT") : if (glDisableIndexedEXT<>0) then n-=1
  glIsEnabledIndexedEXT = GetProcPtr("glIsEnabledIndexedEXT") : if (glIsEnabledIndexedEXT<>0) then n-=1
  glGetIntegerIndexedvEXT = GetProcPtr("glGetIntegerIndexedvEXT") : if (glGetIntegerIndexedvEXT<>0) then n-=1
  glGetBooleanIndexedvEXT = GetProcPtr("glGetBooleanIndexedvEXT") : if (glGetBooleanIndexedvEXT<>0) then n-=1
  glCompressedTextureImage3DEXT = GetProcPtr("glCompressedTextureImage3DEXT") : if (glCompressedTextureImage3DEXT<>0) then n-=1
  glCompressedTextureImage2DEXT = GetProcPtr("glCompressedTextureImage2DEXT") : if (glCompressedTextureImage2DEXT<>0) then n-=1
  glCompressedTextureImage1DEXT = GetProcPtr("glCompressedTextureImage1DEXT") : if (glCompressedTextureImage1DEXT<>0) then n-=1
  glCompressedTextureSubImage3DEXT = GetProcPtr("glCompressedTextureSubImage3DEXT") : if (glCompressedTextureSubImage3DEXT<>0) then n-=1
  glCompressedTextureSubImage2DEXT = GetProcPtr("glCompressedTextureSubImage2DEXT") : if (glCompressedTextureSubImage2DEXT<>0) then n-=1
  glCompressedTextureSubImage1DEXT = GetProcPtr("glCompressedTextureSubImage1DEXT") : if (glCompressedTextureSubImage1DEXT<>0) then n-=1
  glGetCompressedTextureImageEXT = GetProcPtr("glGetCompressedTextureImageEXT") : if (glGetCompressedTextureImageEXT<>0) then n-=1
  glCompressedMultiTexImage3DEXT = GetProcPtr("glCompressedMultiTexImage3DEXT") : if (glCompressedMultiTexImage3DEXT<>0) then n-=1
  glCompressedMultiTexImage2DEXT = GetProcPtr("glCompressedMultiTexImage2DEXT") : if (glCompressedMultiTexImage2DEXT<>0) then n-=1
  glCompressedMultiTexImage1DEXT = GetProcPtr("glCompressedMultiTexImage1DEXT") : if (glCompressedMultiTexImage1DEXT<>0) then n-=1
  glCompressedMultiTexSubImage3DEXT = GetProcPtr("glCompressedMultiTexSubImage3DEXT") : if (glCompressedMultiTexSubImage3DEXT<>0) then n-=1
  glCompressedMultiTexSubImage2DEXT = GetProcPtr("glCompressedMultiTexSubImage2DEXT") : if (glCompressedMultiTexSubImage2DEXT<>0) then n-=1
  glCompressedMultiTexSubImage1DEXT = GetProcPtr("glCompressedMultiTexSubImage1DEXT") : if (glCompressedMultiTexSubImage1DEXT<>0) then n-=1
  glGetCompressedMultiTexImageEXT = GetProcPtr("glGetCompressedMultiTexImageEXT") : if (glGetCompressedMultiTexImageEXT<>0) then n-=1
  glMatrixLoadTransposefEXT = GetProcPtr("glMatrixLoadTransposefEXT") : if (glMatrixLoadTransposefEXT<>0) then n-=1
  glMatrixLoadTransposedEXT = GetProcPtr("glMatrixLoadTransposedEXT") : if (glMatrixLoadTransposedEXT<>0) then n-=1
  glMatrixMultTransposefEXT = GetProcPtr("glMatrixMultTransposefEXT") : if (glMatrixMultTransposefEXT<>0) then n-=1
  glMatrixMultTransposedEXT = GetProcPtr("glMatrixMultTransposedEXT") : if (glMatrixMultTransposedEXT<>0) then n-=1
  glNamedBufferDataEXT = GetProcPtr("glNamedBufferDataEXT") : if (glNamedBufferDataEXT<>0) then n-=1
  glNamedBufferSubDataEXT = GetProcPtr("glNamedBufferSubDataEXT") : if (glNamedBufferSubDataEXT<>0) then n-=1
  glMapNamedBufferEXT = GetProcPtr("glMapNamedBufferEXT") : if (glMapNamedBufferEXT<>0) then n-=1
  glUnmapNamedBufferEXT = GetProcPtr("glUnmapNamedBufferEXT") : if (glUnmapNamedBufferEXT<>0) then n-=1
  glGetNamedBufferParameterivEXT = GetProcPtr("glGetNamedBufferParameterivEXT") : if (glGetNamedBufferParameterivEXT<>0) then n-=1
  glGetNamedBufferPointervEXT = GetProcPtr("glGetNamedBufferPointervEXT") : if (glGetNamedBufferPointervEXT<>0) then n-=1
  glGetNamedBufferSubDataEXT = GetProcPtr("glGetNamedBufferSubDataEXT") : if (glGetNamedBufferSubDataEXT<>0) then n-=1
  glProgramUniform1fEXT = GetProcPtr("glProgramUniform1fEXT") : if (glProgramUniform1fEXT<>0) then n-=1
  glProgramUniform2fEXT = GetProcPtr("glProgramUniform2fEXT") : if (glProgramUniform2fEXT<>0) then n-=1
  glProgramUniform3fEXT = GetProcPtr("glProgramUniform3fEXT") : if (glProgramUniform3fEXT<>0) then n-=1
  glProgramUniform4fEXT = GetProcPtr("glProgramUniform4fEXT") : if (glProgramUniform4fEXT<>0) then n-=1
  glProgramUniform1iEXT = GetProcPtr("glProgramUniform1iEXT") : if (glProgramUniform1iEXT<>0) then n-=1
  glProgramUniform2iEXT = GetProcPtr("glProgramUniform2iEXT") : if (glProgramUniform2iEXT<>0) then n-=1
  glProgramUniform3iEXT = GetProcPtr("glProgramUniform3iEXT") : if (glProgramUniform3iEXT<>0) then n-=1
  glProgramUniform4iEXT = GetProcPtr("glProgramUniform4iEXT") : if (glProgramUniform4iEXT<>0) then n-=1
  glProgramUniform1fvEXT = GetProcPtr("glProgramUniform1fvEXT") : if (glProgramUniform1fvEXT<>0) then n-=1
  glProgramUniform2fvEXT = GetProcPtr("glProgramUniform2fvEXT") : if (glProgramUniform2fvEXT<>0) then n-=1
  glProgramUniform3fvEXT = GetProcPtr("glProgramUniform3fvEXT") : if (glProgramUniform3fvEXT<>0) then n-=1
  glProgramUniform4fvEXT = GetProcPtr("glProgramUniform4fvEXT") : if (glProgramUniform4fvEXT<>0) then n-=1
  glProgramUniform1ivEXT = GetProcPtr("glProgramUniform1ivEXT") : if (glProgramUniform1ivEXT<>0) then n-=1
  glProgramUniform2ivEXT = GetProcPtr("glProgramUniform2ivEXT") : if (glProgramUniform2ivEXT<>0) then n-=1
  glProgramUniform3ivEXT = GetProcPtr("glProgramUniform3ivEXT") : if (glProgramUniform3ivEXT<>0) then n-=1
  glProgramUniform4ivEXT = GetProcPtr("glProgramUniform4ivEXT") : if (glProgramUniform4ivEXT<>0) then n-=1
  glProgramUniformMatrix2fvEXT = GetProcPtr("glProgramUniformMatrix2fvEXT") : if (glProgramUniformMatrix2fvEXT<>0) then n-=1
  glProgramUniformMatrix3fvEXT = GetProcPtr("glProgramUniformMatrix3fvEXT") : if (glProgramUniformMatrix3fvEXT<>0) then n-=1
  glProgramUniformMatrix4fvEXT = GetProcPtr("glProgramUniformMatrix4fvEXT") : if (glProgramUniformMatrix4fvEXT<>0) then n-=1
  glProgramUniformMatrix2x3fvEXT = GetProcPtr("glProgramUniformMatrix2x3fvEXT") : if (glProgramUniformMatrix2x3fvEXT<>0) then n-=1
  glProgramUniformMatrix3x2fvEXT = GetProcPtr("glProgramUniformMatrix3x2fvEXT") : if (glProgramUniformMatrix3x2fvEXT<>0) then n-=1
  glProgramUniformMatrix2x4fvEXT = GetProcPtr("glProgramUniformMatrix2x4fvEXT") : if (glProgramUniformMatrix2x4fvEXT<>0) then n-=1
  glProgramUniformMatrix4x2fvEXT = GetProcPtr("glProgramUniformMatrix4x2fvEXT") : if (glProgramUniformMatrix4x2fvEXT<>0) then n-=1
  glProgramUniformMatrix3x4fvEXT = GetProcPtr("glProgramUniformMatrix3x4fvEXT") : if (glProgramUniformMatrix3x4fvEXT<>0) then n-=1
  glProgramUniformMatrix4x3fvEXT = GetProcPtr("glProgramUniformMatrix4x3fvEXT") : if (glProgramUniformMatrix4x3fvEXT<>0) then n-=1
  glTextureBufferEXT = GetProcPtr("glTextureBufferEXT") : if (glTextureBufferEXT<>0) then n-=1
  glMultiTexBufferEXT = GetProcPtr("glMultiTexBufferEXT") : if (glMultiTexBufferEXT<>0) then n-=1
  glTextureParameterIivEXT = GetProcPtr("glTextureParameterIivEXT") : if (glTextureParameterIivEXT<>0) then n-=1
  glTextureParameterIuivEXT = GetProcPtr("glTextureParameterIuivEXT") : if (glTextureParameterIuivEXT<>0) then n-=1
  glGetTextureParameterIivEXT = GetProcPtr("glGetTextureParameterIivEXT") : if (glGetTextureParameterIivEXT<>0) then n-=1
  glGetTextureParameterIuivEXT = GetProcPtr("glGetTextureParameterIuivEXT") : if (glGetTextureParameterIuivEXT<>0) then n-=1
  glMultiTexParameterIivEXT = GetProcPtr("glMultiTexParameterIivEXT") : if (glMultiTexParameterIivEXT<>0) then n-=1
  glMultiTexParameterIuivEXT = GetProcPtr("glMultiTexParameterIuivEXT") : if (glMultiTexParameterIuivEXT<>0) then n-=1
  glGetMultiTexParameterIivEXT = GetProcPtr("glGetMultiTexParameterIivEXT") : if (glGetMultiTexParameterIivEXT<>0) then n-=1
  glGetMultiTexParameterIuivEXT = GetProcPtr("glGetMultiTexParameterIuivEXT") : if (glGetMultiTexParameterIuivEXT<>0) then n-=1
  glProgramUniform1uiEXT = GetProcPtr("glProgramUniform1uiEXT") : if (glProgramUniform1uiEXT<>0) then n-=1
  glProgramUniform2uiEXT = GetProcPtr("glProgramUniform2uiEXT") : if (glProgramUniform2uiEXT<>0) then n-=1
  glProgramUniform3uiEXT = GetProcPtr("glProgramUniform3uiEXT") : if (glProgramUniform3uiEXT<>0) then n-=1
  glProgramUniform4uiEXT = GetProcPtr("glProgramUniform4uiEXT") : if (glProgramUniform4uiEXT<>0) then n-=1
  glProgramUniform1uivEXT = GetProcPtr("glProgramUniform1uivEXT") : if (glProgramUniform1uivEXT<>0) then n-=1
  glProgramUniform2uivEXT = GetProcPtr("glProgramUniform2uivEXT") : if (glProgramUniform2uivEXT<>0) then n-=1
  glProgramUniform3uivEXT = GetProcPtr("glProgramUniform3uivEXT") : if (glProgramUniform3uivEXT<>0) then n-=1
  glProgramUniform4uivEXT = GetProcPtr("glProgramUniform4uivEXT") : if (glProgramUniform4uivEXT<>0) then n-=1
  glNamedProgramLocalParameters4fvEXT = GetProcPtr("glNamedProgramLocalParameters4fvEXT") : if (glNamedProgramLocalParameters4fvEXT<>0) then n-=1
  glNamedProgramLocalParameterI4iEXT = GetProcPtr("glNamedProgramLocalParameterI4iEXT") : if (glNamedProgramLocalParameterI4iEXT<>0) then n-=1
  glNamedProgramLocalParameterI4ivEXT = GetProcPtr("glNamedProgramLocalParameterI4ivEXT") : if (glNamedProgramLocalParameterI4ivEXT<>0) then n-=1
  glNamedProgramLocalParametersI4ivEXT = GetProcPtr("glNamedProgramLocalParametersI4ivEXT") : if (glNamedProgramLocalParametersI4ivEXT<>0) then n-=1
  glNamedProgramLocalParameterI4uiEXT = GetProcPtr("glNamedProgramLocalParameterI4uiEXT") : if (glNamedProgramLocalParameterI4uiEXT<>0) then n-=1
  glNamedProgramLocalParameterI4uivEXT = GetProcPtr("glNamedProgramLocalParameterI4uivEXT") : if (glNamedProgramLocalParameterI4uivEXT<>0) then n-=1
  glNamedProgramLocalParametersI4uivEXT = GetProcPtr("glNamedProgramLocalParametersI4uivEXT") : if (glNamedProgramLocalParametersI4uivEXT<>0) then n-=1
  glGetNamedProgramLocalParameterIivEXT = GetProcPtr("glGetNamedProgramLocalParameterIivEXT") : if (glGetNamedProgramLocalParameterIivEXT<>0) then n-=1
  glGetNamedProgramLocalParameterIuivEXT = GetProcPtr("glGetNamedProgramLocalParameterIuivEXT") : if (glGetNamedProgramLocalParameterIuivEXT<>0) then n-=1
  glEnableClientStateiEXT = GetProcPtr("glEnableClientStateiEXT") : if (glEnableClientStateiEXT<>0) then n-=1
  glDisableClientStateiEXT = GetProcPtr("glDisableClientStateiEXT") : if (glDisableClientStateiEXT<>0) then n-=1
  glGetFloati_vEXT = GetProcPtr("glGetFloati_vEXT") : if (glGetFloati_vEXT<>0) then n-=1
  glGetDoublei_vEXT = GetProcPtr("glGetDoublei_vEXT") : if (glGetDoublei_vEXT<>0) then n-=1
  glGetPointeri_vEXT = GetProcPtr("glGetPointeri_vEXT") : if (glGetPointeri_vEXT<>0) then n-=1
  glNamedProgramStringEXT = GetProcPtr("glNamedProgramStringEXT") : if (glNamedProgramStringEXT<>0) then n-=1
  glNamedProgramLocalParameter4dEXT = GetProcPtr("glNamedProgramLocalParameter4dEXT") : if (glNamedProgramLocalParameter4dEXT<>0) then n-=1
  glNamedProgramLocalParameter4dvEXT = GetProcPtr("glNamedProgramLocalParameter4dvEXT") : if (glNamedProgramLocalParameter4dvEXT<>0) then n-=1
  glNamedProgramLocalParameter4fEXT = GetProcPtr("glNamedProgramLocalParameter4fEXT") : if (glNamedProgramLocalParameter4fEXT<>0) then n-=1
  glNamedProgramLocalParameter4fvEXT = GetProcPtr("glNamedProgramLocalParameter4fvEXT") : if (glNamedProgramLocalParameter4fvEXT<>0) then n-=1
  glGetNamedProgramLocalParameterdvEXT = GetProcPtr("glGetNamedProgramLocalParameterdvEXT") : if (glGetNamedProgramLocalParameterdvEXT<>0) then n-=1
  glGetNamedProgramLocalParameterfvEXT = GetProcPtr("glGetNamedProgramLocalParameterfvEXT") : if (glGetNamedProgramLocalParameterfvEXT<>0) then n-=1
  glGetNamedProgramivEXT = GetProcPtr("glGetNamedProgramivEXT") : if (glGetNamedProgramivEXT<>0) then n-=1
  glGetNamedProgramStringEXT = GetProcPtr("glGetNamedProgramStringEXT") : if (glGetNamedProgramStringEXT<>0) then n-=1
  glNamedRenderbufferStorageEXT = GetProcPtr("glNamedRenderbufferStorageEXT") : if (glNamedRenderbufferStorageEXT<>0) then n-=1
  glGetNamedRenderbufferParameterivEXT = GetProcPtr("glGetNamedRenderbufferParameterivEXT") : if (glGetNamedRenderbufferParameterivEXT<>0) then n-=1
  glNamedRenderbufferStorageMultisampleEXT = GetProcPtr("glNamedRenderbufferStorageMultisampleEXT") : if (glNamedRenderbufferStorageMultisampleEXT<>0) then n-=1
  glNamedRenderbufferStorageMultisampleCoverageEXT = GetProcPtr("glNamedRenderbufferStorageMultisampleCoverageEXT") : if (glNamedRenderbufferStorageMultisampleCoverageEXT<>0) then n-=1
  glCheckNamedFramebufferStatusEXT = GetProcPtr("glCheckNamedFramebufferStatusEXT") : if (glCheckNamedFramebufferStatusEXT<>0) then n-=1
  glNamedFramebufferTexture1DEXT = GetProcPtr("glNamedFramebufferTexture1DEXT") : if (glNamedFramebufferTexture1DEXT<>0) then n-=1
  glNamedFramebufferTexture2DEXT = GetProcPtr("glNamedFramebufferTexture2DEXT") : if (glNamedFramebufferTexture2DEXT<>0) then n-=1
  glNamedFramebufferTexture3DEXT = GetProcPtr("glNamedFramebufferTexture3DEXT") : if (glNamedFramebufferTexture3DEXT<>0) then n-=1
  glNamedFramebufferRenderbufferEXT = GetProcPtr("glNamedFramebufferRenderbufferEXT") : if (glNamedFramebufferRenderbufferEXT<>0) then n-=1
  glGetNamedFramebufferAttachmentParameterivEXT = GetProcPtr("glGetNamedFramebufferAttachmentParameterivEXT") : if (glGetNamedFramebufferAttachmentParameterivEXT<>0) then n-=1
  glGenerateTextureMipmapEXT = GetProcPtr("glGenerateTextureMipmapEXT") : if (glGenerateTextureMipmapEXT<>0) then n-=1
  glGenerateMultiTexMipmapEXT = GetProcPtr("glGenerateMultiTexMipmapEXT") : if (glGenerateMultiTexMipmapEXT<>0) then n-=1
  glFramebufferDrawBufferEXT = GetProcPtr("glFramebufferDrawBufferEXT") : if (glFramebufferDrawBufferEXT<>0) then n-=1
  glFramebufferDrawBuffersEXT = GetProcPtr("glFramebufferDrawBuffersEXT") : if (glFramebufferDrawBuffersEXT<>0) then n-=1
  glFramebufferReadBufferEXT = GetProcPtr("glFramebufferReadBufferEXT") : if (glFramebufferReadBufferEXT<>0) then n-=1
  glGetFramebufferParameterivEXT = GetProcPtr("glGetFramebufferParameterivEXT") : if (glGetFramebufferParameterivEXT<>0) then n-=1
  glNamedCopyBufferSubDataEXT = GetProcPtr("glNamedCopyBufferSubDataEXT") : if (glNamedCopyBufferSubDataEXT<>0) then n-=1
  glNamedFramebufferTextureEXT = GetProcPtr("glNamedFramebufferTextureEXT") : if (glNamedFramebufferTextureEXT<>0) then n-=1
  glNamedFramebufferTextureLayerEXT = GetProcPtr("glNamedFramebufferTextureLayerEXT") : if (glNamedFramebufferTextureLayerEXT<>0) then n-=1
  glNamedFramebufferTextureFaceEXT = GetProcPtr("glNamedFramebufferTextureFaceEXT") : if (glNamedFramebufferTextureFaceEXT<>0) then n-=1
  glTextureRenderbufferEXT = GetProcPtr("glTextureRenderbufferEXT") : if (glTextureRenderbufferEXT<>0) then n-=1
  glMultiTexRenderbufferEXT = GetProcPtr("glMultiTexRenderbufferEXT") : if (glMultiTexRenderbufferEXT<>0) then n-=1
  glVertexArrayVertexOffsetEXT = GetProcPtr("glVertexArrayVertexOffsetEXT") : if (glVertexArrayVertexOffsetEXT<>0) then n-=1
  glVertexArrayColorOffsetEXT = GetProcPtr("glVertexArrayColorOffsetEXT") : if (glVertexArrayColorOffsetEXT<>0) then n-=1
  glVertexArrayEdgeFlagOffsetEXT = GetProcPtr("glVertexArrayEdgeFlagOffsetEXT") : if (glVertexArrayEdgeFlagOffsetEXT<>0) then n-=1
  glVertexArrayIndexOffsetEXT = GetProcPtr("glVertexArrayIndexOffsetEXT") : if (glVertexArrayIndexOffsetEXT<>0) then n-=1
  glVertexArrayNormalOffsetEXT = GetProcPtr("glVertexArrayNormalOffsetEXT") : if (glVertexArrayNormalOffsetEXT<>0) then n-=1
  glVertexArrayTexCoordOffsetEXT = GetProcPtr("glVertexArrayTexCoordOffsetEXT") : if (glVertexArrayTexCoordOffsetEXT<>0) then n-=1
  glVertexArrayMultiTexCoordOffsetEXT = GetProcPtr("glVertexArrayMultiTexCoordOffsetEXT") : if (glVertexArrayMultiTexCoordOffsetEXT<>0) then n-=1
  glVertexArrayFogCoordOffsetEXT = GetProcPtr("glVertexArrayFogCoordOffsetEXT") : if (glVertexArrayFogCoordOffsetEXT<>0) then n-=1
  glVertexArraySecondaryColorOffsetEXT = GetProcPtr("glVertexArraySecondaryColorOffsetEXT") : if (glVertexArraySecondaryColorOffsetEXT<>0) then n-=1
  glVertexArrayVertexAttribOffsetEXT = GetProcPtr("glVertexArrayVertexAttribOffsetEXT") : if (glVertexArrayVertexAttribOffsetEXT<>0) then n-=1
  glVertexArrayVertexAttribIOffsetEXT = GetProcPtr("glVertexArrayVertexAttribIOffsetEXT") : if (glVertexArrayVertexAttribIOffsetEXT<>0) then n-=1
  glEnableVertexArrayEXT = GetProcPtr("glEnableVertexArrayEXT") : if (glEnableVertexArrayEXT<>0) then n-=1
  glDisableVertexArrayEXT = GetProcPtr("glDisableVertexArrayEXT") : if (glDisableVertexArrayEXT<>0) then n-=1
  glEnableVertexArrayAttribEXT = GetProcPtr("glEnableVertexArrayAttribEXT") : if (glEnableVertexArrayAttribEXT<>0) then n-=1
  glDisableVertexArrayAttribEXT = GetProcPtr("glDisableVertexArrayAttribEXT") : if (glDisableVertexArrayAttribEXT<>0) then n-=1
  glGetVertexArrayIntegervEXT = GetProcPtr("glGetVertexArrayIntegervEXT") : if (glGetVertexArrayIntegervEXT<>0) then n-=1
  glGetVertexArrayPointervEXT = GetProcPtr("glGetVertexArrayPointervEXT") : if (glGetVertexArrayPointervEXT<>0) then n-=1
  glGetVertexArrayIntegeri_vEXT = GetProcPtr("glGetVertexArrayIntegeri_vEXT") : if (glGetVertexArrayIntegeri_vEXT<>0) then n-=1
  glGetVertexArrayPointeri_vEXT = GetProcPtr("glGetVertexArrayPointeri_vEXT") : if (glGetVertexArrayPointeri_vEXT<>0) then n-=1
  glMapNamedBufferRangeEXT = GetProcPtr("glMapNamedBufferRangeEXT") : if (glMapNamedBufferRangeEXT<>0) then n-=1
  glFlushMappedNamedBufferRangeEXT = GetProcPtr("glFlushMappedNamedBufferRangeEXT") : if (glFlushMappedNamedBufferRangeEXT<>0) then n-=1
  glClearNamedBufferDataEXT = GetProcPtr("glClearNamedBufferDataEXT") : if (glClearNamedBufferDataEXT<>0) then n-=1
  glClearNamedBufferSubDataEXT = GetProcPtr("glClearNamedBufferSubDataEXT") : if (glClearNamedBufferSubDataEXT<>0) then n-=1
  glNamedFramebufferParameteriEXT = GetProcPtr("glNamedFramebufferParameteriEXT") : if (glNamedFramebufferParameteriEXT<>0) then n-=1
  glGetNamedFramebufferParameterivEXT = GetProcPtr("glGetNamedFramebufferParameterivEXT") : if (glGetNamedFramebufferParameterivEXT<>0) then n-=1
  glProgramUniform1dEXT = GetProcPtr("glProgramUniform1dEXT") : if (glProgramUniform1dEXT<>0) then n-=1
  glProgramUniform2dEXT = GetProcPtr("glProgramUniform2dEXT") : if (glProgramUniform2dEXT<>0) then n-=1
  glProgramUniform3dEXT = GetProcPtr("glProgramUniform3dEXT") : if (glProgramUniform3dEXT<>0) then n-=1
  glProgramUniform4dEXT = GetProcPtr("glProgramUniform4dEXT") : if (glProgramUniform4dEXT<>0) then n-=1
  glProgramUniform1dvEXT = GetProcPtr("glProgramUniform1dvEXT") : if (glProgramUniform1dvEXT<>0) then n-=1
  glProgramUniform2dvEXT = GetProcPtr("glProgramUniform2dvEXT") : if (glProgramUniform2dvEXT<>0) then n-=1
  glProgramUniform3dvEXT = GetProcPtr("glProgramUniform3dvEXT") : if (glProgramUniform3dvEXT<>0) then n-=1
  glProgramUniform4dvEXT = GetProcPtr("glProgramUniform4dvEXT") : if (glProgramUniform4dvEXT<>0) then n-=1
  glProgramUniformMatrix2dvEXT = GetProcPtr("glProgramUniformMatrix2dvEXT") : if (glProgramUniformMatrix2dvEXT<>0) then n-=1
  glProgramUniformMatrix3dvEXT = GetProcPtr("glProgramUniformMatrix3dvEXT") : if (glProgramUniformMatrix3dvEXT<>0) then n-=1
  glProgramUniformMatrix4dvEXT = GetProcPtr("glProgramUniformMatrix4dvEXT") : if (glProgramUniformMatrix4dvEXT<>0) then n-=1
  glProgramUniformMatrix2x3dvEXT = GetProcPtr("glProgramUniformMatrix2x3dvEXT") : if (glProgramUniformMatrix2x3dvEXT<>0) then n-=1
  glProgramUniformMatrix2x4dvEXT = GetProcPtr("glProgramUniformMatrix2x4dvEXT") : if (glProgramUniformMatrix2x4dvEXT<>0) then n-=1
  glProgramUniformMatrix3x2dvEXT = GetProcPtr("glProgramUniformMatrix3x2dvEXT") : if (glProgramUniformMatrix3x2dvEXT<>0) then n-=1
  glProgramUniformMatrix3x4dvEXT = GetProcPtr("glProgramUniformMatrix3x4dvEXT") : if (glProgramUniformMatrix3x4dvEXT<>0) then n-=1
  glProgramUniformMatrix4x2dvEXT = GetProcPtr("glProgramUniformMatrix4x2dvEXT") : if (glProgramUniformMatrix4x2dvEXT<>0) then n-=1
  glProgramUniformMatrix4x3dvEXT = GetProcPtr("glProgramUniformMatrix4x3dvEXT") : if (glProgramUniformMatrix4x3dvEXT<>0) then n-=1
  glTextureBufferRangeEXT = GetProcPtr("glTextureBufferRangeEXT") : if (glTextureBufferRangeEXT<>0) then n-=1
  glTextureStorage1DEXT = GetProcPtr("glTextureStorage1DEXT") : if (glTextureStorage1DEXT<>0) then n-=1
  glTextureStorage2DEXT = GetProcPtr("glTextureStorage2DEXT") : if (glTextureStorage2DEXT<>0) then n-=1
  glTextureStorage3DEXT = GetProcPtr("glTextureStorage3DEXT") : if (glTextureStorage3DEXT<>0) then n-=1
  glTextureStorage2DMultisampleEXT = GetProcPtr("glTextureStorage2DMultisampleEXT") : if (glTextureStorage2DMultisampleEXT<>0) then n-=1
  glTextureStorage3DMultisampleEXT = GetProcPtr("glTextureStorage3DMultisampleEXT") : if (glTextureStorage3DMultisampleEXT<>0) then n-=1
  glVertexArrayBindVertexBufferEXT = GetProcPtr("glVertexArrayBindVertexBufferEXT") : if (glVertexArrayBindVertexBufferEXT<>0) then n-=1
  glVertexArrayVertexAttribFormatEXT = GetProcPtr("glVertexArrayVertexAttribFormatEXT") : if (glVertexArrayVertexAttribFormatEXT<>0) then n-=1
  glVertexArrayVertexAttribIFormatEXT = GetProcPtr("glVertexArrayVertexAttribIFormatEXT") : if (glVertexArrayVertexAttribIFormatEXT<>0) then n-=1
  glVertexArrayVertexAttribLFormatEXT = GetProcPtr("glVertexArrayVertexAttribLFormatEXT") : if (glVertexArrayVertexAttribLFormatEXT<>0) then n-=1
  glVertexArrayVertexAttribBindingEXT = GetProcPtr("glVertexArrayVertexAttribBindingEXT") : if (glVertexArrayVertexAttribBindingEXT<>0) then n-=1
  glVertexArrayVertexBindingDivisorEXT = GetProcPtr("glVertexArrayVertexBindingDivisorEXT") : if (glVertexArrayVertexBindingDivisorEXT<>0) then n-=1
  glVertexArrayVertexAttribLOffsetEXT = GetProcPtr("glVertexArrayVertexAttribLOffsetEXT") : if (glVertexArrayVertexAttribLOffsetEXT<>0) then n-=1
  glTexturePageCommitmentEXT = GetProcPtr("glTexturePageCommitmentEXT") : if (glTexturePageCommitmentEXT<>0) then n-=1
  glColorMaskIndexedEXT = GetProcPtr("glColorMaskIndexedEXT") : if (glColorMaskIndexedEXT<>0) then n-=1
  glDrawArraysInstancedEXT = GetProcPtr("glDrawArraysInstancedEXT") : if (glDrawArraysInstancedEXT<>0) then n-=1
  glDrawElementsInstancedEXT = GetProcPtr("glDrawElementsInstancedEXT") : if (glDrawElementsInstancedEXT<>0) then n-=1
  glDrawRangeElementsEXT = GetProcPtr("glDrawRangeElementsEXT") : if (glDrawRangeElementsEXT<>0) then n-=1
  glFogCoordfEXT = GetProcPtr("glFogCoordfEXT") : if (glFogCoordfEXT<>0) then n-=1
  glFogCoordfvEXT = GetProcPtr("glFogCoordfvEXT") : if (glFogCoordfvEXT<>0) then n-=1
  glFogCoorddEXT = GetProcPtr("glFogCoorddEXT") : if (glFogCoorddEXT<>0) then n-=1
  glFogCoorddvEXT = GetProcPtr("glFogCoorddvEXT") : if (glFogCoorddvEXT<>0) then n-=1
  glFogCoordPointerEXT = GetProcPtr("glFogCoordPointerEXT") : if (glFogCoordPointerEXT<>0) then n-=1
  glBlitFramebufferEXT = GetProcPtr("glBlitFramebufferEXT") : if (glBlitFramebufferEXT<>0) then n-=1
  glRenderbufferStorageMultisampleEXT = GetProcPtr("glRenderbufferStorageMultisampleEXT") : if (glRenderbufferStorageMultisampleEXT<>0) then n-=1
  glIsRenderbufferEXT = GetProcPtr("glIsRenderbufferEXT") : if (glIsRenderbufferEXT<>0) then n-=1
  glBindRenderbufferEXT = GetProcPtr("glBindRenderbufferEXT") : if (glBindRenderbufferEXT<>0) then n-=1
  glDeleteRenderbuffersEXT = GetProcPtr("glDeleteRenderbuffersEXT") : if (glDeleteRenderbuffersEXT<>0) then n-=1
  glGenRenderbuffersEXT = GetProcPtr("glGenRenderbuffersEXT") : if (glGenRenderbuffersEXT<>0) then n-=1
  glRenderbufferStorageEXT = GetProcPtr("glRenderbufferStorageEXT") : if (glRenderbufferStorageEXT<>0) then n-=1
  glGetRenderbufferParameterivEXT = GetProcPtr("glGetRenderbufferParameterivEXT") : if (glGetRenderbufferParameterivEXT<>0) then n-=1
  glIsFramebufferEXT = GetProcPtr("glIsFramebufferEXT") : if (glIsFramebufferEXT<>0) then n-=1
  glBindFramebufferEXT = GetProcPtr("glBindFramebufferEXT") : if (glBindFramebufferEXT<>0) then n-=1
  glDeleteFramebuffersEXT = GetProcPtr("glDeleteFramebuffersEXT") : if (glDeleteFramebuffersEXT<>0) then n-=1
  glGenFramebuffersEXT = GetProcPtr("glGenFramebuffersEXT") : if (glGenFramebuffersEXT<>0) then n-=1
  glCheckFramebufferStatusEXT = GetProcPtr("glCheckFramebufferStatusEXT") : if (glCheckFramebufferStatusEXT<>0) then n-=1
  glFramebufferTexture1DEXT = GetProcPtr("glFramebufferTexture1DEXT") : if (glFramebufferTexture1DEXT<>0) then n-=1
  glFramebufferTexture2DEXT = GetProcPtr("glFramebufferTexture2DEXT") : if (glFramebufferTexture2DEXT<>0) then n-=1
  glFramebufferTexture3DEXT = GetProcPtr("glFramebufferTexture3DEXT") : if (glFramebufferTexture3DEXT<>0) then n-=1
  glFramebufferRenderbufferEXT = GetProcPtr("glFramebufferRenderbufferEXT") : if (glFramebufferRenderbufferEXT<>0) then n-=1
  glGetFramebufferAttachmentParameterivEXT = GetProcPtr("glGetFramebufferAttachmentParameterivEXT") : if (glGetFramebufferAttachmentParameterivEXT<>0) then n-=1
  glGenerateMipmapEXT = GetProcPtr("glGenerateMipmapEXT") : if (glGenerateMipmapEXT<>0) then n-=1
  glProgramParameteriEXT = GetProcPtr("glProgramParameteriEXT") : if (glProgramParameteriEXT<>0) then n-=1
  glProgramEnvParameters4fvEXT = GetProcPtr("glProgramEnvParameters4fvEXT") : if (glProgramEnvParameters4fvEXT<>0) then n-=1
  glProgramLocalParameters4fvEXT = GetProcPtr("glProgramLocalParameters4fvEXT") : if (glProgramLocalParameters4fvEXT<>0) then n-=1
  glGetUniformuivEXT = GetProcPtr("glGetUniformuivEXT") : if (glGetUniformuivEXT<>0) then n-=1
  glBindFragDataLocationEXT = GetProcPtr("glBindFragDataLocationEXT") : if (glBindFragDataLocationEXT<>0) then n-=1
  glGetFragDataLocationEXT = GetProcPtr("glGetFragDataLocationEXT") : if (glGetFragDataLocationEXT<>0) then n-=1
  glUniform1uiEXT = GetProcPtr("glUniform1uiEXT") : if (glUniform1uiEXT<>0) then n-=1
  glUniform2uiEXT = GetProcPtr("glUniform2uiEXT") : if (glUniform2uiEXT<>0) then n-=1
  glUniform3uiEXT = GetProcPtr("glUniform3uiEXT") : if (glUniform3uiEXT<>0) then n-=1
  glUniform4uiEXT = GetProcPtr("glUniform4uiEXT") : if (glUniform4uiEXT<>0) then n-=1
  glUniform1uivEXT = GetProcPtr("glUniform1uivEXT") : if (glUniform1uivEXT<>0) then n-=1
  glUniform2uivEXT = GetProcPtr("glUniform2uivEXT") : if (glUniform2uivEXT<>0) then n-=1
  glUniform3uivEXT = GetProcPtr("glUniform3uivEXT") : if (glUniform3uivEXT<>0) then n-=1
  glUniform4uivEXT = GetProcPtr("glUniform4uivEXT") : if (glUniform4uivEXT<>0) then n-=1
  glGetHistogramEXT = GetProcPtr("glGetHistogramEXT") : if (glGetHistogramEXT<>0) then n-=1
  glGetHistogramParameterfvEXT = GetProcPtr("glGetHistogramParameterfvEXT") : if (glGetHistogramParameterfvEXT<>0) then n-=1
  glGetHistogramParameterivEXT = GetProcPtr("glGetHistogramParameterivEXT") : if (glGetHistogramParameterivEXT<>0) then n-=1
  glGetMinmaxEXT = GetProcPtr("glGetMinmaxEXT") : if (glGetMinmaxEXT<>0) then n-=1
  glGetMinmaxParameterfvEXT = GetProcPtr("glGetMinmaxParameterfvEXT") : if (glGetMinmaxParameterfvEXT<>0) then n-=1
  glGetMinmaxParameterivEXT = GetProcPtr("glGetMinmaxParameterivEXT") : if (glGetMinmaxParameterivEXT<>0) then n-=1
  glHistogramEXT = GetProcPtr("glHistogramEXT") : if (glHistogramEXT<>0) then n-=1
  glMinmaxEXT = GetProcPtr("glMinmaxEXT") : if (glMinmaxEXT<>0) then n-=1
  glResetHistogramEXT = GetProcPtr("glResetHistogramEXT") : if (glResetHistogramEXT<>0) then n-=1
  glResetMinmaxEXT = GetProcPtr("glResetMinmaxEXT") : if (glResetMinmaxEXT<>0) then n-=1
  glIndexFuncEXT = GetProcPtr("glIndexFuncEXT") : if (glIndexFuncEXT<>0) then n-=1
  glIndexMaterialEXT = GetProcPtr("glIndexMaterialEXT") : if (glIndexMaterialEXT<>0) then n-=1
  glApplyTextureEXT = GetProcPtr("glApplyTextureEXT") : if (glApplyTextureEXT<>0) then n-=1
  glTextureLightEXT = GetProcPtr("glTextureLightEXT") : if (glTextureLightEXT<>0) then n-=1
  glTextureMaterialEXT = GetProcPtr("glTextureMaterialEXT") : if (glTextureMaterialEXT<>0) then n-=1
  glMultiDrawArraysEXT = GetProcPtr("glMultiDrawArraysEXT") : if (glMultiDrawArraysEXT<>0) then n-=1
  glMultiDrawElementsEXT = GetProcPtr("glMultiDrawElementsEXT") : if (glMultiDrawElementsEXT<>0) then n-=1
  glSampleMaskEXT = GetProcPtr("glSampleMaskEXT") : if (glSampleMaskEXT<>0) then n-=1
  glSamplePatternEXT = GetProcPtr("glSamplePatternEXT") : if (glSamplePatternEXT<>0) then n-=1
  glPixelTransformParameteriEXT = GetProcPtr("glPixelTransformParameteriEXT") : if (glPixelTransformParameteriEXT<>0) then n-=1
  glPixelTransformParameterfEXT = GetProcPtr("glPixelTransformParameterfEXT") : if (glPixelTransformParameterfEXT<>0) then n-=1
  glPixelTransformParameterivEXT = GetProcPtr("glPixelTransformParameterivEXT") : if (glPixelTransformParameterivEXT<>0) then n-=1
  glPixelTransformParameterfvEXT = GetProcPtr("glPixelTransformParameterfvEXT") : if (glPixelTransformParameterfvEXT<>0) then n-=1
  glGetPixelTransformParameterivEXT = GetProcPtr("glGetPixelTransformParameterivEXT") : if (glGetPixelTransformParameterivEXT<>0) then n-=1
  glGetPixelTransformParameterfvEXT = GetProcPtr("glGetPixelTransformParameterfvEXT") : if (glGetPixelTransformParameterfvEXT<>0) then n-=1
  glPointParameterfEXT = GetProcPtr("glPointParameterfEXT") : if (glPointParameterfEXT<>0) then n-=1
  glPointParameterfvEXT = GetProcPtr("glPointParameterfvEXT") : if (glPointParameterfvEXT<>0) then n-=1
  glPolygonOffsetEXT = GetProcPtr("glPolygonOffsetEXT") : if (glPolygonOffsetEXT<>0) then n-=1
  glProvokingVertexEXT = GetProcPtr("glProvokingVertexEXT") : if (glProvokingVertexEXT<>0) then n-=1
  glSecondaryColor3bEXT = GetProcPtr("glSecondaryColor3bEXT") : if (glSecondaryColor3bEXT<>0) then n-=1
  glSecondaryColor3bvEXT = GetProcPtr("glSecondaryColor3bvEXT") : if (glSecondaryColor3bvEXT<>0) then n-=1
  glSecondaryColor3dEXT = GetProcPtr("glSecondaryColor3dEXT") : if (glSecondaryColor3dEXT<>0) then n-=1
  glSecondaryColor3dvEXT = GetProcPtr("glSecondaryColor3dvEXT") : if (glSecondaryColor3dvEXT<>0) then n-=1
  glSecondaryColor3fEXT = GetProcPtr("glSecondaryColor3fEXT") : if (glSecondaryColor3fEXT<>0) then n-=1
  glSecondaryColor3fvEXT = GetProcPtr("glSecondaryColor3fvEXT") : if (glSecondaryColor3fvEXT<>0) then n-=1
  glSecondaryColor3iEXT = GetProcPtr("glSecondaryColor3iEXT") : if (glSecondaryColor3iEXT<>0) then n-=1
  glSecondaryColor3ivEXT = GetProcPtr("glSecondaryColor3ivEXT") : if (glSecondaryColor3ivEXT<>0) then n-=1
  glSecondaryColor3sEXT = GetProcPtr("glSecondaryColor3sEXT") : if (glSecondaryColor3sEXT<>0) then n-=1
  glSecondaryColor3svEXT = GetProcPtr("glSecondaryColor3svEXT") : if (glSecondaryColor3svEXT<>0) then n-=1
  glSecondaryColor3ubEXT = GetProcPtr("glSecondaryColor3ubEXT") : if (glSecondaryColor3ubEXT<>0) then n-=1
  glSecondaryColor3ubvEXT = GetProcPtr("glSecondaryColor3ubvEXT") : if (glSecondaryColor3ubvEXT<>0) then n-=1
  glSecondaryColor3uiEXT = GetProcPtr("glSecondaryColor3uiEXT") : if (glSecondaryColor3uiEXT<>0) then n-=1
  glSecondaryColor3uivEXT = GetProcPtr("glSecondaryColor3uivEXT") : if (glSecondaryColor3uivEXT<>0) then n-=1
  glSecondaryColor3usEXT = GetProcPtr("glSecondaryColor3usEXT") : if (glSecondaryColor3usEXT<>0) then n-=1
  glSecondaryColor3usvEXT = GetProcPtr("glSecondaryColor3usvEXT") : if (glSecondaryColor3usvEXT<>0) then n-=1
  glSecondaryColorPointerEXT = GetProcPtr("glSecondaryColorPointerEXT") : if (glSecondaryColorPointerEXT<>0) then n-=1
  glUseShaderProgramEXT = GetProcPtr("glUseShaderProgramEXT") : if (glUseShaderProgramEXT<>0) then n-=1
  glActiveProgramEXT = GetProcPtr("glActiveProgramEXT") : if (glActiveProgramEXT<>0) then n-=1
  glCreateShaderProgramEXT = GetProcPtr("glCreateShaderProgramEXT") : if (glCreateShaderProgramEXT<>0) then n-=1
  glBindImageTextureEXT = GetProcPtr("glBindImageTextureEXT") : if (glBindImageTextureEXT<>0) then n-=1
  glMemoryBarrierEXT = GetProcPtr("glMemoryBarrierEXT") : if (glMemoryBarrierEXT<>0) then n-=1
  glStencilClearTagEXT = GetProcPtr("glStencilClearTagEXT") : if (glStencilClearTagEXT<>0) then n-=1
  glActiveStencilFaceEXT = GetProcPtr("glActiveStencilFaceEXT") : if (glActiveStencilFaceEXT<>0) then n-=1
  glTexSubImage1DEXT = GetProcPtr("glTexSubImage1DEXT") : if (glTexSubImage1DEXT<>0) then n-=1
  glTexSubImage2DEXT = GetProcPtr("glTexSubImage2DEXT") : if (glTexSubImage2DEXT<>0) then n-=1
  glTexImage3DEXT = GetProcPtr("glTexImage3DEXT") : if (glTexImage3DEXT<>0) then n-=1
  glTexSubImage3DEXT = GetProcPtr("glTexSubImage3DEXT") : if (glTexSubImage3DEXT<>0) then n-=1
  glTexBufferEXT = GetProcPtr("glTexBufferEXT") : if (glTexBufferEXT<>0) then n-=1
  glTexParameterIivEXT = GetProcPtr("glTexParameterIivEXT") : if (glTexParameterIivEXT<>0) then n-=1
  glTexParameterIuivEXT = GetProcPtr("glTexParameterIuivEXT") : if (glTexParameterIuivEXT<>0) then n-=1
  glGetTexParameterIivEXT = GetProcPtr("glGetTexParameterIivEXT") : if (glGetTexParameterIivEXT<>0) then n-=1
  glGetTexParameterIuivEXT = GetProcPtr("glGetTexParameterIuivEXT") : if (glGetTexParameterIuivEXT<>0) then n-=1
  glClearColorIiEXT = GetProcPtr("glClearColorIiEXT") : if (glClearColorIiEXT<>0) then n-=1
  glClearColorIuiEXT = GetProcPtr("glClearColorIuiEXT") : if (glClearColorIuiEXT<>0) then n-=1
  glAreTexturesResidentEXT = GetProcPtr("glAreTexturesResidentEXT") : if (glAreTexturesResidentEXT<>0) then n-=1
  glBindTextureEXT = GetProcPtr("glBindTextureEXT") : if (glBindTextureEXT<>0) then n-=1
  glDeleteTexturesEXT = GetProcPtr("glDeleteTexturesEXT") : if (glDeleteTexturesEXT<>0) then n-=1
  glGenTexturesEXT = GetProcPtr("glGenTexturesEXT") : if (glGenTexturesEXT<>0) then n-=1
  glIsTextureEXT = GetProcPtr("glIsTextureEXT") : if (glIsTextureEXT<>0) then n-=1
  glPrioritizeTexturesEXT = GetProcPtr("glPrioritizeTexturesEXT") : if (glPrioritizeTexturesEXT<>0) then n-=1
  glTextureNormalEXT = GetProcPtr("glTextureNormalEXT") : if (glTextureNormalEXT<>0) then n-=1
  glGetQueryObjecti64vEXT = GetProcPtr("glGetQueryObjecti64vEXT") : if (glGetQueryObjecti64vEXT<>0) then n-=1
  glGetQueryObjectui64vEXT = GetProcPtr("glGetQueryObjectui64vEXT") : if (glGetQueryObjectui64vEXT<>0) then n-=1
  glBeginTransformFeedbackEXT = GetProcPtr("glBeginTransformFeedbackEXT") : if (glBeginTransformFeedbackEXT<>0) then n-=1
  glEndTransformFeedbackEXT = GetProcPtr("glEndTransformFeedbackEXT") : if (glEndTransformFeedbackEXT<>0) then n-=1
  glBindBufferRangeEXT = GetProcPtr("glBindBufferRangeEXT") : if (glBindBufferRangeEXT<>0) then n-=1
  glBindBufferOffsetEXT = GetProcPtr("glBindBufferOffsetEXT") : if (glBindBufferOffsetEXT<>0) then n-=1
  glBindBufferBaseEXT = GetProcPtr("glBindBufferBaseEXT") : if (glBindBufferBaseEXT<>0) then n-=1
  glTransformFeedbackVaryingsEXT = GetProcPtr("glTransformFeedbackVaryingsEXT") : if (glTransformFeedbackVaryingsEXT<>0) then n-=1
  glGetTransformFeedbackVaryingEXT = GetProcPtr("glGetTransformFeedbackVaryingEXT") : if (glGetTransformFeedbackVaryingEXT<>0) then n-=1
  glVertexAttribL1dEXT = GetProcPtr("glVertexAttribL1dEXT") : if (glVertexAttribL1dEXT<>0) then n-=1
  glVertexAttribL2dEXT = GetProcPtr("glVertexAttribL2dEXT") : if (glVertexAttribL2dEXT<>0) then n-=1
  glVertexAttribL3dEXT = GetProcPtr("glVertexAttribL3dEXT") : if (glVertexAttribL3dEXT<>0) then n-=1
  glVertexAttribL4dEXT = GetProcPtr("glVertexAttribL4dEXT") : if (glVertexAttribL4dEXT<>0) then n-=1
  glVertexAttribL1dvEXT = GetProcPtr("glVertexAttribL1dvEXT") : if (glVertexAttribL1dvEXT<>0) then n-=1
  glVertexAttribL2dvEXT = GetProcPtr("glVertexAttribL2dvEXT") : if (glVertexAttribL2dvEXT<>0) then n-=1
  glVertexAttribL3dvEXT = GetProcPtr("glVertexAttribL3dvEXT") : if (glVertexAttribL3dvEXT<>0) then n-=1
  glVertexAttribL4dvEXT = GetProcPtr("glVertexAttribL4dvEXT") : if (glVertexAttribL4dvEXT<>0) then n-=1
  glVertexAttribLPointerEXT = GetProcPtr("glVertexAttribLPointerEXT") : if (glVertexAttribLPointerEXT<>0) then n-=1
  glGetVertexAttribLdvEXT = GetProcPtr("glGetVertexAttribLdvEXT") : if (glGetVertexAttribLdvEXT<>0) then n-=1
  glBeginVertexShaderEXT = GetProcPtr("glBeginVertexShaderEXT") : if (glBeginVertexShaderEXT<>0) then n-=1
  glEndVertexShaderEXT = GetProcPtr("glEndVertexShaderEXT") : if (glEndVertexShaderEXT<>0) then n-=1
  glBindVertexShaderEXT = GetProcPtr("glBindVertexShaderEXT") : if (glBindVertexShaderEXT<>0) then n-=1
  glGenVertexShadersEXT = GetProcPtr("glGenVertexShadersEXT") : if (glGenVertexShadersEXT<>0) then n-=1
  glDeleteVertexShaderEXT = GetProcPtr("glDeleteVertexShaderEXT") : if (glDeleteVertexShaderEXT<>0) then n-=1
  glShaderOp1EXT = GetProcPtr("glShaderOp1EXT") : if (glShaderOp1EXT<>0) then n-=1
  glShaderOp2EXT = GetProcPtr("glShaderOp2EXT") : if (glShaderOp2EXT<>0) then n-=1
  glShaderOp3EXT = GetProcPtr("glShaderOp3EXT") : if (glShaderOp3EXT<>0) then n-=1
  glSwizzleEXT = GetProcPtr("glSwizzleEXT") : if (glSwizzleEXT<>0) then n-=1
  glWriteMaskEXT = GetProcPtr("glWriteMaskEXT") : if (glWriteMaskEXT<>0) then n-=1
  glInsertComponentEXT = GetProcPtr("glInsertComponentEXT") : if (glInsertComponentEXT<>0) then n-=1
  glExtractComponentEXT = GetProcPtr("glExtractComponentEXT") : if (glExtractComponentEXT<>0) then n-=1
  glGenSymbolsEXT = GetProcPtr("glGenSymbolsEXT") : if (glGenSymbolsEXT<>0) then n-=1
  glSetInvariantEXT = GetProcPtr("glSetInvariantEXT") : if (glSetInvariantEXT<>0) then n-=1
  glSetLocalConstantEXT = GetProcPtr("glSetLocalConstantEXT") : if (glSetLocalConstantEXT<>0) then n-=1
  glVariantbvEXT = GetProcPtr("glVariantbvEXT") : if (glVariantbvEXT<>0) then n-=1
  glVariantsvEXT = GetProcPtr("glVariantsvEXT") : if (glVariantsvEXT<>0) then n-=1
  glVariantivEXT = GetProcPtr("glVariantivEXT") : if (glVariantivEXT<>0) then n-=1
  glVariantfvEXT = GetProcPtr("glVariantfvEXT") : if (glVariantfvEXT<>0) then n-=1
  glVariantdvEXT = GetProcPtr("glVariantdvEXT") : if (glVariantdvEXT<>0) then n-=1
  glVariantubvEXT = GetProcPtr("glVariantubvEXT") : if (glVariantubvEXT<>0) then n-=1
  glVariantusvEXT = GetProcPtr("glVariantusvEXT") : if (glVariantusvEXT<>0) then n-=1
  glVariantuivEXT = GetProcPtr("glVariantuivEXT") : if (glVariantuivEXT<>0) then n-=1
  glVariantPointerEXT = GetProcPtr("glVariantPointerEXT") : if (glVariantPointerEXT<>0) then n-=1
  glEnableVariantClientStateEXT = GetProcPtr("glEnableVariantClientStateEXT") : if (glEnableVariantClientStateEXT<>0) then n-=1
  glDisableVariantClientStateEXT = GetProcPtr("glDisableVariantClientStateEXT") : if (glDisableVariantClientStateEXT<>0) then n-=1
  glBindLightParameterEXT = GetProcPtr("glBindLightParameterEXT") : if (glBindLightParameterEXT<>0) then n-=1
  glBindMaterialParameterEXT = GetProcPtr("glBindMaterialParameterEXT") : if (glBindMaterialParameterEXT<>0) then n-=1
  glBindTexGenParameterEXT = GetProcPtr("glBindTexGenParameterEXT") : if (glBindTexGenParameterEXT<>0) then n-=1
  glBindTextureUnitParameterEXT = GetProcPtr("glBindTextureUnitParameterEXT") : if (glBindTextureUnitParameterEXT<>0) then n-=1
  glBindParameterEXT = GetProcPtr("glBindParameterEXT") : if (glBindParameterEXT<>0) then n-=1
  glIsVariantEnabledEXT = GetProcPtr("glIsVariantEnabledEXT") : if (glIsVariantEnabledEXT<>0) then n-=1
  glGetVariantBooleanvEXT = GetProcPtr("glGetVariantBooleanvEXT") : if (glGetVariantBooleanvEXT<>0) then n-=1
  glGetVariantIntegervEXT = GetProcPtr("glGetVariantIntegervEXT") : if (glGetVariantIntegervEXT<>0) then n-=1
  glGetVariantFloatvEXT = GetProcPtr("glGetVariantFloatvEXT") : if (glGetVariantFloatvEXT<>0) then n-=1
  glGetVariantPointervEXT = GetProcPtr("glGetVariantPointervEXT") : if (glGetVariantPointervEXT<>0) then n-=1
  glGetInvariantBooleanvEXT = GetProcPtr("glGetInvariantBooleanvEXT") : if (glGetInvariantBooleanvEXT<>0) then n-=1
  glGetInvariantIntegervEXT = GetProcPtr("glGetInvariantIntegervEXT") : if (glGetInvariantIntegervEXT<>0) then n-=1
  glGetInvariantFloatvEXT = GetProcPtr("glGetInvariantFloatvEXT") : if (glGetInvariantFloatvEXT<>0) then n-=1
  glGetLocalConstantBooleanvEXT = GetProcPtr("glGetLocalConstantBooleanvEXT") : if (glGetLocalConstantBooleanvEXT<>0) then n-=1
  glGetLocalConstantIntegervEXT = GetProcPtr("glGetLocalConstantIntegervEXT") : if (glGetLocalConstantIntegervEXT<>0) then n-=1
  glGetLocalConstantFloatvEXT = GetProcPtr("glGetLocalConstantFloatvEXT") : if (glGetLocalConstantFloatvEXT<>0) then n-=1
  glVertexWeightfEXT = GetProcPtr("glVertexWeightfEXT") : if (glVertexWeightfEXT<>0) then n-=1
  glVertexWeightfvEXT = GetProcPtr("glVertexWeightfvEXT") : if (glVertexWeightfvEXT<>0) then n-=1
  glVertexWeightPointerEXT = GetProcPtr("glVertexWeightPointerEXT") : if (glVertexWeightPointerEXT<>0) then n-=1
  glImportSyncEXT = GetProcPtr("glImportSyncEXT") : if (glImportSyncEXT<>0) then n-=1
  glFrameTerminatorGREMEDY = GetProcPtr("glFrameTerminatorGREMEDY") : if (glFrameTerminatorGREMEDY<>0) then n-=1
  glStringMarkerGREMEDY = GetProcPtr("glStringMarkerGREMEDY") : if (glStringMarkerGREMEDY<>0) then n-=1
  glImageTransformParameteriHP = GetProcPtr("glImageTransformParameteriHP") : if (glImageTransformParameteriHP<>0) then n-=1
  glImageTransformParameterfHP = GetProcPtr("glImageTransformParameterfHP") : if (glImageTransformParameterfHP<>0) then n-=1
  glImageTransformParameterivHP = GetProcPtr("glImageTransformParameterivHP") : if (glImageTransformParameterivHP<>0) then n-=1
  glImageTransformParameterfvHP = GetProcPtr("glImageTransformParameterfvHP") : if (glImageTransformParameterfvHP<>0) then n-=1
  glGetImageTransformParameterivHP = GetProcPtr("glGetImageTransformParameterivHP") : if (glGetImageTransformParameterivHP<>0) then n-=1
  glGetImageTransformParameterfvHP = GetProcPtr("glGetImageTransformParameterfvHP") : if (glGetImageTransformParameterfvHP<>0) then n-=1
  glMultiModeDrawArraysIBM = GetProcPtr("glMultiModeDrawArraysIBM") : if (glMultiModeDrawArraysIBM<>0) then n-=1
  glMultiModeDrawElementsIBM = GetProcPtr("glMultiModeDrawElementsIBM") : if (glMultiModeDrawElementsIBM<>0) then n-=1
  glFlushStaticDataIBM = GetProcPtr("glFlushStaticDataIBM") : if (glFlushStaticDataIBM<>0) then n-=1
  glColorPointerListIBM = GetProcPtr("glColorPointerListIBM") : if (glColorPointerListIBM<>0) then n-=1
  glSecondaryColorPointerListIBM = GetProcPtr("glSecondaryColorPointerListIBM") : if (glSecondaryColorPointerListIBM<>0) then n-=1
  glEdgeFlagPointerListIBM = GetProcPtr("glEdgeFlagPointerListIBM") : if (glEdgeFlagPointerListIBM<>0) then n-=1
  glFogCoordPointerListIBM = GetProcPtr("glFogCoordPointerListIBM") : if (glFogCoordPointerListIBM<>0) then n-=1
  glIndexPointerListIBM = GetProcPtr("glIndexPointerListIBM") : if (glIndexPointerListIBM<>0) then n-=1
  glNormalPointerListIBM = GetProcPtr("glNormalPointerListIBM") : if (glNormalPointerListIBM<>0) then n-=1
  glTexCoordPointerListIBM = GetProcPtr("glTexCoordPointerListIBM") : if (glTexCoordPointerListIBM<>0) then n-=1
  glVertexPointerListIBM = GetProcPtr("glVertexPointerListIBM") : if (glVertexPointerListIBM<>0) then n-=1
  glBlendFuncSeparateINGR = GetProcPtr("glBlendFuncSeparateINGR") : if (glBlendFuncSeparateINGR<>0) then n-=1
  glSyncTextureINTEL = GetProcPtr("glSyncTextureINTEL") : if (glSyncTextureINTEL<>0) then n-=1
  glUnmapTexture2DINTEL = GetProcPtr("glUnmapTexture2DINTEL") : if (glUnmapTexture2DINTEL<>0) then n-=1
  glMapTexture2DINTEL = GetProcPtr("glMapTexture2DINTEL") : if (glMapTexture2DINTEL<>0) then n-=1
  glVertexPointervINTEL = GetProcPtr("glVertexPointervINTEL") : if (glVertexPointervINTEL<>0) then n-=1
  glNormalPointervINTEL = GetProcPtr("glNormalPointervINTEL") : if (glNormalPointervINTEL<>0) then n-=1
  glColorPointervINTEL = GetProcPtr("glColorPointervINTEL") : if (glColorPointervINTEL<>0) then n-=1
  glTexCoordPointervINTEL = GetProcPtr("glTexCoordPointervINTEL") : if (glTexCoordPointervINTEL<>0) then n-=1
  glResizeBuffersMESA = GetProcPtr("glResizeBuffersMESA") : if (glResizeBuffersMESA<>0) then n-=1
  glWindowPos2dMESA = GetProcPtr("glWindowPos2dMESA") : if (glWindowPos2dMESA<>0) then n-=1
  glWindowPos2dvMESA = GetProcPtr("glWindowPos2dvMESA") : if (glWindowPos2dvMESA<>0) then n-=1
  glWindowPos2fMESA = GetProcPtr("glWindowPos2fMESA") : if (glWindowPos2fMESA<>0) then n-=1
  glWindowPos2fvMESA = GetProcPtr("glWindowPos2fvMESA") : if (glWindowPos2fvMESA<>0) then n-=1
  glWindowPos2iMESA = GetProcPtr("glWindowPos2iMESA") : if (glWindowPos2iMESA<>0) then n-=1
  glWindowPos2ivMESA = GetProcPtr("glWindowPos2ivMESA") : if (glWindowPos2ivMESA<>0) then n-=1
  glWindowPos2sMESA = GetProcPtr("glWindowPos2sMESA") : if (glWindowPos2sMESA<>0) then n-=1
  glWindowPos2svMESA = GetProcPtr("glWindowPos2svMESA") : if (glWindowPos2svMESA<>0) then n-=1
  glWindowPos3dMESA = GetProcPtr("glWindowPos3dMESA") : if (glWindowPos3dMESA<>0) then n-=1
  glWindowPos3dvMESA = GetProcPtr("glWindowPos3dvMESA") : if (glWindowPos3dvMESA<>0) then n-=1
  glWindowPos3fMESA = GetProcPtr("glWindowPos3fMESA") : if (glWindowPos3fMESA<>0) then n-=1
  glWindowPos3fvMESA = GetProcPtr("glWindowPos3fvMESA") : if (glWindowPos3fvMESA<>0) then n-=1
  glWindowPos3iMESA = GetProcPtr("glWindowPos3iMESA") : if (glWindowPos3iMESA<>0) then n-=1
  glWindowPos3ivMESA = GetProcPtr("glWindowPos3ivMESA") : if (glWindowPos3ivMESA<>0) then n-=1
  glWindowPos3sMESA = GetProcPtr("glWindowPos3sMESA") : if (glWindowPos3sMESA<>0) then n-=1
  glWindowPos3svMESA = GetProcPtr("glWindowPos3svMESA") : if (glWindowPos3svMESA<>0) then n-=1
  glWindowPos4dMESA = GetProcPtr("glWindowPos4dMESA") : if (glWindowPos4dMESA<>0) then n-=1
  glWindowPos4dvMESA = GetProcPtr("glWindowPos4dvMESA") : if (glWindowPos4dvMESA<>0) then n-=1
  glWindowPos4fMESA = GetProcPtr("glWindowPos4fMESA") : if (glWindowPos4fMESA<>0) then n-=1
  glWindowPos4fvMESA = GetProcPtr("glWindowPos4fvMESA") : if (glWindowPos4fvMESA<>0) then n-=1
  glWindowPos4iMESA = GetProcPtr("glWindowPos4iMESA") : if (glWindowPos4iMESA<>0) then n-=1
  glWindowPos4ivMESA = GetProcPtr("glWindowPos4ivMESA") : if (glWindowPos4ivMESA<>0) then n-=1
  glWindowPos4sMESA = GetProcPtr("glWindowPos4sMESA") : if (glWindowPos4sMESA<>0) then n-=1
  glWindowPos4svMESA = GetProcPtr("glWindowPos4svMESA") : if (glWindowPos4svMESA<>0) then n-=1
  glBeginConditionalRenderNVX = GetProcPtr("glBeginConditionalRenderNVX") : if (glBeginConditionalRenderNVX<>0) then n-=1
  glEndConditionalRenderNVX = GetProcPtr("glEndConditionalRenderNVX") : if (glEndConditionalRenderNVX<>0) then n-=1
  glMultiDrawArraysIndirectBindlessNV = GetProcPtr("glMultiDrawArraysIndirectBindlessNV") : if (glMultiDrawArraysIndirectBindlessNV<>0) then n-=1
  glMultiDrawElementsIndirectBindlessNV = GetProcPtr("glMultiDrawElementsIndirectBindlessNV") : if (glMultiDrawElementsIndirectBindlessNV<>0) then n-=1
  glGetTextureHandleNV = GetProcPtr("glGetTextureHandleNV") : if (glGetTextureHandleNV<>0) then n-=1
  glGetTextureSamplerHandleNV = GetProcPtr("glGetTextureSamplerHandleNV") : if (glGetTextureSamplerHandleNV<>0) then n-=1
  glMakeTextureHandleResidentNV = GetProcPtr("glMakeTextureHandleResidentNV") : if (glMakeTextureHandleResidentNV<>0) then n-=1
  glMakeTextureHandleNonResidentNV = GetProcPtr("glMakeTextureHandleNonResidentNV") : if (glMakeTextureHandleNonResidentNV<>0) then n-=1
  glGetImageHandleNV = GetProcPtr("glGetImageHandleNV") : if (glGetImageHandleNV<>0) then n-=1
  glMakeImageHandleResidentNV = GetProcPtr("glMakeImageHandleResidentNV") : if (glMakeImageHandleResidentNV<>0) then n-=1
  glMakeImageHandleNonResidentNV = GetProcPtr("glMakeImageHandleNonResidentNV") : if (glMakeImageHandleNonResidentNV<>0) then n-=1
  glUniformHandleui64NV = GetProcPtr("glUniformHandleui64NV") : if (glUniformHandleui64NV<>0) then n-=1
  glUniformHandleui64vNV = GetProcPtr("glUniformHandleui64vNV") : if (glUniformHandleui64vNV<>0) then n-=1
  glProgramUniformHandleui64NV = GetProcPtr("glProgramUniformHandleui64NV") : if (glProgramUniformHandleui64NV<>0) then n-=1
  glProgramUniformHandleui64vNV = GetProcPtr("glProgramUniformHandleui64vNV") : if (glProgramUniformHandleui64vNV<>0) then n-=1
  glIsTextureHandleResidentNV = GetProcPtr("glIsTextureHandleResidentNV") : if (glIsTextureHandleResidentNV<>0) then n-=1
  glIsImageHandleResidentNV = GetProcPtr("glIsImageHandleResidentNV") : if (glIsImageHandleResidentNV<>0) then n-=1
  glBlendParameteriNV = GetProcPtr("glBlendParameteriNV") : if (glBlendParameteriNV<>0) then n-=1
  glBlendBarrierNV = GetProcPtr("glBlendBarrierNV") : if (glBlendBarrierNV<>0) then n-=1
  glBeginConditionalRenderNV = GetProcPtr("glBeginConditionalRenderNV") : if (glBeginConditionalRenderNV<>0) then n-=1
  glEndConditionalRenderNV = GetProcPtr("glEndConditionalRenderNV") : if (glEndConditionalRenderNV<>0) then n-=1
  glCopyImageSubDataNV = GetProcPtr("glCopyImageSubDataNV") : if (glCopyImageSubDataNV<>0) then n-=1
  glDepthRangedNV = GetProcPtr("glDepthRangedNV") : if (glDepthRangedNV<>0) then n-=1
  glClearDepthdNV = GetProcPtr("glClearDepthdNV") : if (glClearDepthdNV<>0) then n-=1
  glDepthBoundsdNV = GetProcPtr("glDepthBoundsdNV") : if (glDepthBoundsdNV<>0) then n-=1
  glDrawTextureNV = GetProcPtr("glDrawTextureNV") : if (glDrawTextureNV<>0) then n-=1
  glMapControlPointsNV = GetProcPtr("glMapControlPointsNV") : if (glMapControlPointsNV<>0) then n-=1
  glMapParameterivNV = GetProcPtr("glMapParameterivNV") : if (glMapParameterivNV<>0) then n-=1
  glMapParameterfvNV = GetProcPtr("glMapParameterfvNV") : if (glMapParameterfvNV<>0) then n-=1
  glGetMapControlPointsNV = GetProcPtr("glGetMapControlPointsNV") : if (glGetMapControlPointsNV<>0) then n-=1
  glGetMapParameterivNV = GetProcPtr("glGetMapParameterivNV") : if (glGetMapParameterivNV<>0) then n-=1
  glGetMapParameterfvNV = GetProcPtr("glGetMapParameterfvNV") : if (glGetMapParameterfvNV<>0) then n-=1
  glGetMapAttribParameterivNV = GetProcPtr("glGetMapAttribParameterivNV") : if (glGetMapAttribParameterivNV<>0) then n-=1
  glGetMapAttribParameterfvNV = GetProcPtr("glGetMapAttribParameterfvNV") : if (glGetMapAttribParameterfvNV<>0) then n-=1
  glEvalMapsNV = GetProcPtr("glEvalMapsNV") : if (glEvalMapsNV<>0) then n-=1
  glGetMultisamplefvNV = GetProcPtr("glGetMultisamplefvNV") : if (glGetMultisamplefvNV<>0) then n-=1
  glSampleMaskIndexedNV = GetProcPtr("glSampleMaskIndexedNV") : if (glSampleMaskIndexedNV<>0) then n-=1
  glTexRenderbufferNV = GetProcPtr("glTexRenderbufferNV") : if (glTexRenderbufferNV<>0) then n-=1
  glDeleteFencesNV = GetProcPtr("glDeleteFencesNV") : if (glDeleteFencesNV<>0) then n-=1
  glGenFencesNV = GetProcPtr("glGenFencesNV") : if (glGenFencesNV<>0) then n-=1
  glIsFenceNV = GetProcPtr("glIsFenceNV") : if (glIsFenceNV<>0) then n-=1
  glTestFenceNV = GetProcPtr("glTestFenceNV") : if (glTestFenceNV<>0) then n-=1
  glGetFenceivNV = GetProcPtr("glGetFenceivNV") : if (glGetFenceivNV<>0) then n-=1
  glFinishFenceNV = GetProcPtr("glFinishFenceNV") : if (glFinishFenceNV<>0) then n-=1
  glSetFenceNV = GetProcPtr("glSetFenceNV") : if (glSetFenceNV<>0) then n-=1
  glProgramNamedParameter4fNV = GetProcPtr("glProgramNamedParameter4fNV") : if (glProgramNamedParameter4fNV<>0) then n-=1
  glProgramNamedParameter4fvNV = GetProcPtr("glProgramNamedParameter4fvNV") : if (glProgramNamedParameter4fvNV<>0) then n-=1
  glProgramNamedParameter4dNV = GetProcPtr("glProgramNamedParameter4dNV") : if (glProgramNamedParameter4dNV<>0) then n-=1
  glProgramNamedParameter4dvNV = GetProcPtr("glProgramNamedParameter4dvNV") : if (glProgramNamedParameter4dvNV<>0) then n-=1
  glGetProgramNamedParameterfvNV = GetProcPtr("glGetProgramNamedParameterfvNV") : if (glGetProgramNamedParameterfvNV<>0) then n-=1
  glGetProgramNamedParameterdvNV = GetProcPtr("glGetProgramNamedParameterdvNV") : if (glGetProgramNamedParameterdvNV<>0) then n-=1
  glRenderbufferStorageMultisampleCoverageNV = GetProcPtr("glRenderbufferStorageMultisampleCoverageNV") : if (glRenderbufferStorageMultisampleCoverageNV<>0) then n-=1
  glProgramVertexLimitNV = GetProcPtr("glProgramVertexLimitNV") : if (glProgramVertexLimitNV<>0) then n-=1
  glFramebufferTextureEXT = GetProcPtr("glFramebufferTextureEXT") : if (glFramebufferTextureEXT<>0) then n-=1
  glFramebufferTextureLayerEXT = GetProcPtr("glFramebufferTextureLayerEXT") : if (glFramebufferTextureLayerEXT<>0) then n-=1
  glFramebufferTextureFaceEXT = GetProcPtr("glFramebufferTextureFaceEXT") : if (glFramebufferTextureFaceEXT<>0) then n-=1
  glProgramLocalParameterI4iNV = GetProcPtr("glProgramLocalParameterI4iNV") : if (glProgramLocalParameterI4iNV<>0) then n-=1
  glProgramLocalParameterI4ivNV = GetProcPtr("glProgramLocalParameterI4ivNV") : if (glProgramLocalParameterI4ivNV<>0) then n-=1
  glProgramLocalParametersI4ivNV = GetProcPtr("glProgramLocalParametersI4ivNV") : if (glProgramLocalParametersI4ivNV<>0) then n-=1
  glProgramLocalParameterI4uiNV = GetProcPtr("glProgramLocalParameterI4uiNV") : if (glProgramLocalParameterI4uiNV<>0) then n-=1
  glProgramLocalParameterI4uivNV = GetProcPtr("glProgramLocalParameterI4uivNV") : if (glProgramLocalParameterI4uivNV<>0) then n-=1
  glProgramLocalParametersI4uivNV = GetProcPtr("glProgramLocalParametersI4uivNV") : if (glProgramLocalParametersI4uivNV<>0) then n-=1
  glProgramEnvParameterI4iNV = GetProcPtr("glProgramEnvParameterI4iNV") : if (glProgramEnvParameterI4iNV<>0) then n-=1
  glProgramEnvParameterI4ivNV = GetProcPtr("glProgramEnvParameterI4ivNV") : if (glProgramEnvParameterI4ivNV<>0) then n-=1
  glProgramEnvParametersI4ivNV = GetProcPtr("glProgramEnvParametersI4ivNV") : if (glProgramEnvParametersI4ivNV<>0) then n-=1
  glProgramEnvParameterI4uiNV = GetProcPtr("glProgramEnvParameterI4uiNV") : if (glProgramEnvParameterI4uiNV<>0) then n-=1
  glProgramEnvParameterI4uivNV = GetProcPtr("glProgramEnvParameterI4uivNV") : if (glProgramEnvParameterI4uivNV<>0) then n-=1
  glProgramEnvParametersI4uivNV = GetProcPtr("glProgramEnvParametersI4uivNV") : if (glProgramEnvParametersI4uivNV<>0) then n-=1
  glGetProgramLocalParameterIivNV = GetProcPtr("glGetProgramLocalParameterIivNV") : if (glGetProgramLocalParameterIivNV<>0) then n-=1
  glGetProgramLocalParameterIuivNV = GetProcPtr("glGetProgramLocalParameterIuivNV") : if (glGetProgramLocalParameterIuivNV<>0) then n-=1
  glGetProgramEnvParameterIivNV = GetProcPtr("glGetProgramEnvParameterIivNV") : if (glGetProgramEnvParameterIivNV<>0) then n-=1
  glGetProgramEnvParameterIuivNV = GetProcPtr("glGetProgramEnvParameterIuivNV") : if (glGetProgramEnvParameterIuivNV<>0) then n-=1
  glProgramSubroutineParametersuivNV = GetProcPtr("glProgramSubroutineParametersuivNV") : if (glProgramSubroutineParametersuivNV<>0) then n-=1
  glGetProgramSubroutineParameteruivNV = GetProcPtr("glGetProgramSubroutineParameteruivNV") : if (glGetProgramSubroutineParameteruivNV<>0) then n-=1
  glUniform1i64NV = GetProcPtr("glUniform1i64NV") : if (glUniform1i64NV<>0) then n-=1
  glUniform2i64NV = GetProcPtr("glUniform2i64NV") : if (glUniform2i64NV<>0) then n-=1
  glUniform3i64NV = GetProcPtr("glUniform3i64NV") : if (glUniform3i64NV<>0) then n-=1
  glUniform4i64NV = GetProcPtr("glUniform4i64NV") : if (glUniform4i64NV<>0) then n-=1
  glUniform1i64vNV = GetProcPtr("glUniform1i64vNV") : if (glUniform1i64vNV<>0) then n-=1
  glUniform2i64vNV = GetProcPtr("glUniform2i64vNV") : if (glUniform2i64vNV<>0) then n-=1
  glUniform3i64vNV = GetProcPtr("glUniform3i64vNV") : if (glUniform3i64vNV<>0) then n-=1
  glUniform4i64vNV = GetProcPtr("glUniform4i64vNV") : if (glUniform4i64vNV<>0) then n-=1
  glUniform1ui64NV = GetProcPtr("glUniform1ui64NV") : if (glUniform1ui64NV<>0) then n-=1
  glUniform2ui64NV = GetProcPtr("glUniform2ui64NV") : if (glUniform2ui64NV<>0) then n-=1
  glUniform3ui64NV = GetProcPtr("glUniform3ui64NV") : if (glUniform3ui64NV<>0) then n-=1
  glUniform4ui64NV = GetProcPtr("glUniform4ui64NV") : if (glUniform4ui64NV<>0) then n-=1
  glUniform1ui64vNV = GetProcPtr("glUniform1ui64vNV") : if (glUniform1ui64vNV<>0) then n-=1
  glUniform2ui64vNV = GetProcPtr("glUniform2ui64vNV") : if (glUniform2ui64vNV<>0) then n-=1
  glUniform3ui64vNV = GetProcPtr("glUniform3ui64vNV") : if (glUniform3ui64vNV<>0) then n-=1
  glUniform4ui64vNV = GetProcPtr("glUniform4ui64vNV") : if (glUniform4ui64vNV<>0) then n-=1
  glGetUniformi64vNV = GetProcPtr("glGetUniformi64vNV") : if (glGetUniformi64vNV<>0) then n-=1
  glProgramUniform1i64NV = GetProcPtr("glProgramUniform1i64NV") : if (glProgramUniform1i64NV<>0) then n-=1
  glProgramUniform2i64NV = GetProcPtr("glProgramUniform2i64NV") : if (glProgramUniform2i64NV<>0) then n-=1
  glProgramUniform3i64NV = GetProcPtr("glProgramUniform3i64NV") : if (glProgramUniform3i64NV<>0) then n-=1
  glProgramUniform4i64NV = GetProcPtr("glProgramUniform4i64NV") : if (glProgramUniform4i64NV<>0) then n-=1
  glProgramUniform1i64vNV = GetProcPtr("glProgramUniform1i64vNV") : if (glProgramUniform1i64vNV<>0) then n-=1
  glProgramUniform2i64vNV = GetProcPtr("glProgramUniform2i64vNV") : if (glProgramUniform2i64vNV<>0) then n-=1
  glProgramUniform3i64vNV = GetProcPtr("glProgramUniform3i64vNV") : if (glProgramUniform3i64vNV<>0) then n-=1
  glProgramUniform4i64vNV = GetProcPtr("glProgramUniform4i64vNV") : if (glProgramUniform4i64vNV<>0) then n-=1
  glProgramUniform1ui64NV = GetProcPtr("glProgramUniform1ui64NV") : if (glProgramUniform1ui64NV<>0) then n-=1
  glProgramUniform2ui64NV = GetProcPtr("glProgramUniform2ui64NV") : if (glProgramUniform2ui64NV<>0) then n-=1
  glProgramUniform3ui64NV = GetProcPtr("glProgramUniform3ui64NV") : if (glProgramUniform3ui64NV<>0) then n-=1
  glProgramUniform4ui64NV = GetProcPtr("glProgramUniform4ui64NV") : if (glProgramUniform4ui64NV<>0) then n-=1
  glProgramUniform1ui64vNV = GetProcPtr("glProgramUniform1ui64vNV") : if (glProgramUniform1ui64vNV<>0) then n-=1
  glProgramUniform2ui64vNV = GetProcPtr("glProgramUniform2ui64vNV") : if (glProgramUniform2ui64vNV<>0) then n-=1
  glProgramUniform3ui64vNV = GetProcPtr("glProgramUniform3ui64vNV") : if (glProgramUniform3ui64vNV<>0) then n-=1
  glProgramUniform4ui64vNV = GetProcPtr("glProgramUniform4ui64vNV") : if (glProgramUniform4ui64vNV<>0) then n-=1
  glVertex2hNV = GetProcPtr("glVertex2hNV") : if (glVertex2hNV<>0) then n-=1
  glVertex2hvNV = GetProcPtr("glVertex2hvNV") : if (glVertex2hvNV<>0) then n-=1
  glVertex3hNV = GetProcPtr("glVertex3hNV") : if (glVertex3hNV<>0) then n-=1
  glVertex3hvNV = GetProcPtr("glVertex3hvNV") : if (glVertex3hvNV<>0) then n-=1
  glVertex4hNV = GetProcPtr("glVertex4hNV") : if (glVertex4hNV<>0) then n-=1
  glVertex4hvNV = GetProcPtr("glVertex4hvNV") : if (glVertex4hvNV<>0) then n-=1
  glNormal3hNV = GetProcPtr("glNormal3hNV") : if (glNormal3hNV<>0) then n-=1
  glNormal3hvNV = GetProcPtr("glNormal3hvNV") : if (glNormal3hvNV<>0) then n-=1
  glColor3hNV = GetProcPtr("glColor3hNV") : if (glColor3hNV<>0) then n-=1
  glColor3hvNV = GetProcPtr("glColor3hvNV") : if (glColor3hvNV<>0) then n-=1
  glColor4hNV = GetProcPtr("glColor4hNV") : if (glColor4hNV<>0) then n-=1
  glColor4hvNV = GetProcPtr("glColor4hvNV") : if (glColor4hvNV<>0) then n-=1
  glTexCoord1hNV = GetProcPtr("glTexCoord1hNV") : if (glTexCoord1hNV<>0) then n-=1
  glTexCoord1hvNV = GetProcPtr("glTexCoord1hvNV") : if (glTexCoord1hvNV<>0) then n-=1
  glTexCoord2hNV = GetProcPtr("glTexCoord2hNV") : if (glTexCoord2hNV<>0) then n-=1
  glTexCoord2hvNV = GetProcPtr("glTexCoord2hvNV") : if (glTexCoord2hvNV<>0) then n-=1
  glTexCoord3hNV = GetProcPtr("glTexCoord3hNV") : if (glTexCoord3hNV<>0) then n-=1
  glTexCoord3hvNV = GetProcPtr("glTexCoord3hvNV") : if (glTexCoord3hvNV<>0) then n-=1
  glTexCoord4hNV = GetProcPtr("glTexCoord4hNV") : if (glTexCoord4hNV<>0) then n-=1
  glTexCoord4hvNV = GetProcPtr("glTexCoord4hvNV") : if (glTexCoord4hvNV<>0) then n-=1
  glMultiTexCoord1hNV = GetProcPtr("glMultiTexCoord1hNV") : if (glMultiTexCoord1hNV<>0) then n-=1
  glMultiTexCoord1hvNV = GetProcPtr("glMultiTexCoord1hvNV") : if (glMultiTexCoord1hvNV<>0) then n-=1
  glMultiTexCoord2hNV = GetProcPtr("glMultiTexCoord2hNV") : if (glMultiTexCoord2hNV<>0) then n-=1
  glMultiTexCoord2hvNV = GetProcPtr("glMultiTexCoord2hvNV") : if (glMultiTexCoord2hvNV<>0) then n-=1
  glMultiTexCoord3hNV = GetProcPtr("glMultiTexCoord3hNV") : if (glMultiTexCoord3hNV<>0) then n-=1
  glMultiTexCoord3hvNV = GetProcPtr("glMultiTexCoord3hvNV") : if (glMultiTexCoord3hvNV<>0) then n-=1
  glMultiTexCoord4hNV = GetProcPtr("glMultiTexCoord4hNV") : if (glMultiTexCoord4hNV<>0) then n-=1
  glMultiTexCoord4hvNV = GetProcPtr("glMultiTexCoord4hvNV") : if (glMultiTexCoord4hvNV<>0) then n-=1
  glFogCoordhNV = GetProcPtr("glFogCoordhNV") : if (glFogCoordhNV<>0) then n-=1
  glFogCoordhvNV = GetProcPtr("glFogCoordhvNV") : if (glFogCoordhvNV<>0) then n-=1
  glSecondaryColor3hNV = GetProcPtr("glSecondaryColor3hNV") : if (glSecondaryColor3hNV<>0) then n-=1
  glSecondaryColor3hvNV = GetProcPtr("glSecondaryColor3hvNV") : if (glSecondaryColor3hvNV<>0) then n-=1
  glVertexWeighthNV = GetProcPtr("glVertexWeighthNV") : if (glVertexWeighthNV<>0) then n-=1
  glVertexWeighthvNV = GetProcPtr("glVertexWeighthvNV") : if (glVertexWeighthvNV<>0) then n-=1
  glVertexAttrib1hNV = GetProcPtr("glVertexAttrib1hNV") : if (glVertexAttrib1hNV<>0) then n-=1
  glVertexAttrib1hvNV = GetProcPtr("glVertexAttrib1hvNV") : if (glVertexAttrib1hvNV<>0) then n-=1
  glVertexAttrib2hNV = GetProcPtr("glVertexAttrib2hNV") : if (glVertexAttrib2hNV<>0) then n-=1
  glVertexAttrib2hvNV = GetProcPtr("glVertexAttrib2hvNV") : if (glVertexAttrib2hvNV<>0) then n-=1
  glVertexAttrib3hNV = GetProcPtr("glVertexAttrib3hNV") : if (glVertexAttrib3hNV<>0) then n-=1
  glVertexAttrib3hvNV = GetProcPtr("glVertexAttrib3hvNV") : if (glVertexAttrib3hvNV<>0) then n-=1
  glVertexAttrib4hNV = GetProcPtr("glVertexAttrib4hNV") : if (glVertexAttrib4hNV<>0) then n-=1
  glVertexAttrib4hvNV = GetProcPtr("glVertexAttrib4hvNV") : if (glVertexAttrib4hvNV<>0) then n-=1
  glVertexAttribs1hvNV = GetProcPtr("glVertexAttribs1hvNV") : if (glVertexAttribs1hvNV<>0) then n-=1
  glVertexAttribs2hvNV = GetProcPtr("glVertexAttribs2hvNV") : if (glVertexAttribs2hvNV<>0) then n-=1
  glVertexAttribs3hvNV = GetProcPtr("glVertexAttribs3hvNV") : if (glVertexAttribs3hvNV<>0) then n-=1
  glVertexAttribs4hvNV = GetProcPtr("glVertexAttribs4hvNV") : if (glVertexAttribs4hvNV<>0) then n-=1
  glGenOcclusionQueriesNV = GetProcPtr("glGenOcclusionQueriesNV") : if (glGenOcclusionQueriesNV<>0) then n-=1
  glDeleteOcclusionQueriesNV = GetProcPtr("glDeleteOcclusionQueriesNV") : if (glDeleteOcclusionQueriesNV<>0) then n-=1
  glIsOcclusionQueryNV = GetProcPtr("glIsOcclusionQueryNV") : if (glIsOcclusionQueryNV<>0) then n-=1
  glBeginOcclusionQueryNV = GetProcPtr("glBeginOcclusionQueryNV") : if (glBeginOcclusionQueryNV<>0) then n-=1
  glEndOcclusionQueryNV = GetProcPtr("glEndOcclusionQueryNV") : if (glEndOcclusionQueryNV<>0) then n-=1
  glGetOcclusionQueryivNV = GetProcPtr("glGetOcclusionQueryivNV") : if (glGetOcclusionQueryivNV<>0) then n-=1
  glGetOcclusionQueryuivNV = GetProcPtr("glGetOcclusionQueryuivNV") : if (glGetOcclusionQueryuivNV<>0) then n-=1
  glProgramBufferParametersfvNV = GetProcPtr("glProgramBufferParametersfvNV") : if (glProgramBufferParametersfvNV<>0) then n-=1
  glProgramBufferParametersIivNV = GetProcPtr("glProgramBufferParametersIivNV") : if (glProgramBufferParametersIivNV<>0) then n-=1
  glProgramBufferParametersIuivNV = GetProcPtr("glProgramBufferParametersIuivNV") : if (glProgramBufferParametersIuivNV<>0) then n-=1
  glGenPathsNV = GetProcPtr("glGenPathsNV") : if (glGenPathsNV<>0) then n-=1
  glDeletePathsNV = GetProcPtr("glDeletePathsNV") : if (glDeletePathsNV<>0) then n-=1
  glIsPathNV = GetProcPtr("glIsPathNV") : if (glIsPathNV<>0) then n-=1
  glPathCommandsNV = GetProcPtr("glPathCommandsNV") : if (glPathCommandsNV<>0) then n-=1
  glPathCoordsNV = GetProcPtr("glPathCoordsNV") : if (glPathCoordsNV<>0) then n-=1
  glPathSubCommandsNV = GetProcPtr("glPathSubCommandsNV") : if (glPathSubCommandsNV<>0) then n-=1
  glPathSubCoordsNV = GetProcPtr("glPathSubCoordsNV") : if (glPathSubCoordsNV<>0) then n-=1
  glPathStringNV = GetProcPtr("glPathStringNV") : if (glPathStringNV<>0) then n-=1
  glPathGlyphsNV = GetProcPtr("glPathGlyphsNV") : if (glPathGlyphsNV<>0) then n-=1
  glPathGlyphRangeNV = GetProcPtr("glPathGlyphRangeNV") : if (glPathGlyphRangeNV<>0) then n-=1
  glWeightPathsNV = GetProcPtr("glWeightPathsNV") : if (glWeightPathsNV<>0) then n-=1
  glCopyPathNV = GetProcPtr("glCopyPathNV") : if (glCopyPathNV<>0) then n-=1
  glInterpolatePathsNV = GetProcPtr("glInterpolatePathsNV") : if (glInterpolatePathsNV<>0) then n-=1
  glTransformPathNV = GetProcPtr("glTransformPathNV") : if (glTransformPathNV<>0) then n-=1
  glPathParameterivNV = GetProcPtr("glPathParameterivNV") : if (glPathParameterivNV<>0) then n-=1
  glPathParameteriNV = GetProcPtr("glPathParameteriNV") : if (glPathParameteriNV<>0) then n-=1
  glPathParameterfvNV = GetProcPtr("glPathParameterfvNV") : if (glPathParameterfvNV<>0) then n-=1
  glPathParameterfNV = GetProcPtr("glPathParameterfNV") : if (glPathParameterfNV<>0) then n-=1
  glPathDashArrayNV = GetProcPtr("glPathDashArrayNV") : if (glPathDashArrayNV<>0) then n-=1
  glPathStencilFuncNV = GetProcPtr("glPathStencilFuncNV") : if (glPathStencilFuncNV<>0) then n-=1
  glPathStencilDepthOffsetNV = GetProcPtr("glPathStencilDepthOffsetNV") : if (glPathStencilDepthOffsetNV<>0) then n-=1
  glStencilFillPathNV = GetProcPtr("glStencilFillPathNV") : if (glStencilFillPathNV<>0) then n-=1
  glStencilStrokePathNV = GetProcPtr("glStencilStrokePathNV") : if (glStencilStrokePathNV<>0) then n-=1
  glStencilFillPathInstancedNV = GetProcPtr("glStencilFillPathInstancedNV") : if (glStencilFillPathInstancedNV<>0) then n-=1
  glStencilStrokePathInstancedNV = GetProcPtr("glStencilStrokePathInstancedNV") : if (glStencilStrokePathInstancedNV<>0) then n-=1
  glPathCoverDepthFuncNV = GetProcPtr("glPathCoverDepthFuncNV") : if (glPathCoverDepthFuncNV<>0) then n-=1
  glPathColorGenNV = GetProcPtr("glPathColorGenNV") : if (glPathColorGenNV<>0) then n-=1
  glPathTexGenNV = GetProcPtr("glPathTexGenNV") : if (glPathTexGenNV<>0) then n-=1
  glPathFogGenNV = GetProcPtr("glPathFogGenNV") : if (glPathFogGenNV<>0) then n-=1
  glCoverFillPathNV = GetProcPtr("glCoverFillPathNV") : if (glCoverFillPathNV<>0) then n-=1
  glCoverStrokePathNV = GetProcPtr("glCoverStrokePathNV") : if (glCoverStrokePathNV<>0) then n-=1
  glCoverFillPathInstancedNV = GetProcPtr("glCoverFillPathInstancedNV") : if (glCoverFillPathInstancedNV<>0) then n-=1
  glCoverStrokePathInstancedNV = GetProcPtr("glCoverStrokePathInstancedNV") : if (glCoverStrokePathInstancedNV<>0) then n-=1
  glGetPathParameterivNV = GetProcPtr("glGetPathParameterivNV") : if (glGetPathParameterivNV<>0) then n-=1
  glGetPathParameterfvNV = GetProcPtr("glGetPathParameterfvNV") : if (glGetPathParameterfvNV<>0) then n-=1
  glGetPathCommandsNV = GetProcPtr("glGetPathCommandsNV") : if (glGetPathCommandsNV<>0) then n-=1
  glGetPathCoordsNV = GetProcPtr("glGetPathCoordsNV") : if (glGetPathCoordsNV<>0) then n-=1
  glGetPathDashArrayNV = GetProcPtr("glGetPathDashArrayNV") : if (glGetPathDashArrayNV<>0) then n-=1
  glGetPathMetricsNV = GetProcPtr("glGetPathMetricsNV") : if (glGetPathMetricsNV<>0) then n-=1
  glGetPathMetricRangeNV = GetProcPtr("glGetPathMetricRangeNV") : if (glGetPathMetricRangeNV<>0) then n-=1
  glGetPathSpacingNV = GetProcPtr("glGetPathSpacingNV") : if (glGetPathSpacingNV<>0) then n-=1
  glGetPathColorGenivNV = GetProcPtr("glGetPathColorGenivNV") : if (glGetPathColorGenivNV<>0) then n-=1
  glGetPathColorGenfvNV = GetProcPtr("glGetPathColorGenfvNV") : if (glGetPathColorGenfvNV<>0) then n-=1
  glGetPathTexGenivNV = GetProcPtr("glGetPathTexGenivNV") : if (glGetPathTexGenivNV<>0) then n-=1
  glGetPathTexGenfvNV = GetProcPtr("glGetPathTexGenfvNV") : if (glGetPathTexGenfvNV<>0) then n-=1
  glIsPointInFillPathNV = GetProcPtr("glIsPointInFillPathNV") : if (glIsPointInFillPathNV<>0) then n-=1
  glIsPointInStrokePathNV = GetProcPtr("glIsPointInStrokePathNV") : if (glIsPointInStrokePathNV<>0) then n-=1
  glGetPathLengthNV = GetProcPtr("glGetPathLengthNV") : if (glGetPathLengthNV<>0) then n-=1
  glPointAlongPathNV = GetProcPtr("glPointAlongPathNV") : if (glPointAlongPathNV<>0) then n-=1
  glPixelDataRangeNV = GetProcPtr("glPixelDataRangeNV") : if (glPixelDataRangeNV<>0) then n-=1
  glFlushPixelDataRangeNV = GetProcPtr("glFlushPixelDataRangeNV") : if (glFlushPixelDataRangeNV<>0) then n-=1
  glPointParameteriNV = GetProcPtr("glPointParameteriNV") : if (glPointParameteriNV<>0) then n-=1
  glPointParameterivNV = GetProcPtr("glPointParameterivNV") : if (glPointParameterivNV<>0) then n-=1
  glPresentFrameKeyedNV = GetProcPtr("glPresentFrameKeyedNV") : if (glPresentFrameKeyedNV<>0) then n-=1
  glPresentFrameDualFillNV = GetProcPtr("glPresentFrameDualFillNV") : if (glPresentFrameDualFillNV<>0) then n-=1
  glGetVideoivNV = GetProcPtr("glGetVideoivNV") : if (glGetVideoivNV<>0) then n-=1
  glGetVideouivNV = GetProcPtr("glGetVideouivNV") : if (glGetVideouivNV<>0) then n-=1
  glGetVideoi64vNV = GetProcPtr("glGetVideoi64vNV") : if (glGetVideoi64vNV<>0) then n-=1
  glGetVideoui64vNV = GetProcPtr("glGetVideoui64vNV") : if (glGetVideoui64vNV<>0) then n-=1
  glPrimitiveRestartNV = GetProcPtr("glPrimitiveRestartNV") : if (glPrimitiveRestartNV<>0) then n-=1
  glPrimitiveRestartIndexNV = GetProcPtr("glPrimitiveRestartIndexNV") : if (glPrimitiveRestartIndexNV<>0) then n-=1
  glCombinerParameterfvNV = GetProcPtr("glCombinerParameterfvNV") : if (glCombinerParameterfvNV<>0) then n-=1
  glCombinerParameterfNV = GetProcPtr("glCombinerParameterfNV") : if (glCombinerParameterfNV<>0) then n-=1
  glCombinerParameterivNV = GetProcPtr("glCombinerParameterivNV") : if (glCombinerParameterivNV<>0) then n-=1
  glCombinerParameteriNV = GetProcPtr("glCombinerParameteriNV") : if (glCombinerParameteriNV<>0) then n-=1
  glCombinerInputNV = GetProcPtr("glCombinerInputNV") : if (glCombinerInputNV<>0) then n-=1
  glCombinerOutputNV = GetProcPtr("glCombinerOutputNV") : if (glCombinerOutputNV<>0) then n-=1
  glFinalCombinerInputNV = GetProcPtr("glFinalCombinerInputNV") : if (glFinalCombinerInputNV<>0) then n-=1
  glGetCombinerInputParameterfvNV = GetProcPtr("glGetCombinerInputParameterfvNV") : if (glGetCombinerInputParameterfvNV<>0) then n-=1
  glGetCombinerInputParameterivNV = GetProcPtr("glGetCombinerInputParameterivNV") : if (glGetCombinerInputParameterivNV<>0) then n-=1
  glGetCombinerOutputParameterfvNV = GetProcPtr("glGetCombinerOutputParameterfvNV") : if (glGetCombinerOutputParameterfvNV<>0) then n-=1
  glGetCombinerOutputParameterivNV = GetProcPtr("glGetCombinerOutputParameterivNV") : if (glGetCombinerOutputParameterivNV<>0) then n-=1
  glGetFinalCombinerInputParameterfvNV = GetProcPtr("glGetFinalCombinerInputParameterfvNV") : if (glGetFinalCombinerInputParameterfvNV<>0) then n-=1
  glGetFinalCombinerInputParameterivNV = GetProcPtr("glGetFinalCombinerInputParameterivNV") : if (glGetFinalCombinerInputParameterivNV<>0) then n-=1
  glCombinerStageParameterfvNV = GetProcPtr("glCombinerStageParameterfvNV") : if (glCombinerStageParameterfvNV<>0) then n-=1
  glGetCombinerStageParameterfvNV = GetProcPtr("glGetCombinerStageParameterfvNV") : if (glGetCombinerStageParameterfvNV<>0) then n-=1
  glMakeBufferResidentNV = GetProcPtr("glMakeBufferResidentNV") : if (glMakeBufferResidentNV<>0) then n-=1
  glMakeBufferNonResidentNV = GetProcPtr("glMakeBufferNonResidentNV") : if (glMakeBufferNonResidentNV<>0) then n-=1
  glIsBufferResidentNV = GetProcPtr("glIsBufferResidentNV") : if (glIsBufferResidentNV<>0) then n-=1
  glMakeNamedBufferResidentNV = GetProcPtr("glMakeNamedBufferResidentNV") : if (glMakeNamedBufferResidentNV<>0) then n-=1
  glMakeNamedBufferNonResidentNV = GetProcPtr("glMakeNamedBufferNonResidentNV") : if (glMakeNamedBufferNonResidentNV<>0) then n-=1
  glIsNamedBufferResidentNV = GetProcPtr("glIsNamedBufferResidentNV") : if (glIsNamedBufferResidentNV<>0) then n-=1
  glGetBufferParameterui64vNV = GetProcPtr("glGetBufferParameterui64vNV") : if (glGetBufferParameterui64vNV<>0) then n-=1
  glGetNamedBufferParameterui64vNV = GetProcPtr("glGetNamedBufferParameterui64vNV") : if (glGetNamedBufferParameterui64vNV<>0) then n-=1
  glGetIntegerui64vNV = GetProcPtr("glGetIntegerui64vNV") : if (glGetIntegerui64vNV<>0) then n-=1
  glUniformui64NV = GetProcPtr("glUniformui64NV") : if (glUniformui64NV<>0) then n-=1
  glUniformui64vNV = GetProcPtr("glUniformui64vNV") : if (glUniformui64vNV<>0) then n-=1
  glGetUniformui64vNV = GetProcPtr("glGetUniformui64vNV") : if (glGetUniformui64vNV<>0) then n-=1
  glProgramUniformui64NV = GetProcPtr("glProgramUniformui64NV") : if (glProgramUniformui64NV<>0) then n-=1
  glProgramUniformui64vNV = GetProcPtr("glProgramUniformui64vNV") : if (glProgramUniformui64vNV<>0) then n-=1
  glTextureBarrierNV = GetProcPtr("glTextureBarrierNV") : if (glTextureBarrierNV<>0) then n-=1
  glTexImage2DMultisampleCoverageNV = GetProcPtr("glTexImage2DMultisampleCoverageNV") : if (glTexImage2DMultisampleCoverageNV<>0) then n-=1
  glTexImage3DMultisampleCoverageNV = GetProcPtr("glTexImage3DMultisampleCoverageNV") : if (glTexImage3DMultisampleCoverageNV<>0) then n-=1
  glTextureImage2DMultisampleNV = GetProcPtr("glTextureImage2DMultisampleNV") : if (glTextureImage2DMultisampleNV<>0) then n-=1
  glTextureImage3DMultisampleNV = GetProcPtr("glTextureImage3DMultisampleNV") : if (glTextureImage3DMultisampleNV<>0) then n-=1
  glTextureImage2DMultisampleCoverageNV = GetProcPtr("glTextureImage2DMultisampleCoverageNV") : if (glTextureImage2DMultisampleCoverageNV<>0) then n-=1
  glTextureImage3DMultisampleCoverageNV = GetProcPtr("glTextureImage3DMultisampleCoverageNV") : if (glTextureImage3DMultisampleCoverageNV<>0) then n-=1
  glBeginTransformFeedbackNV = GetProcPtr("glBeginTransformFeedbackNV") : if (glBeginTransformFeedbackNV<>0) then n-=1
  glEndTransformFeedbackNV = GetProcPtr("glEndTransformFeedbackNV") : if (glEndTransformFeedbackNV<>0) then n-=1
  glTransformFeedbackAttribsNV = GetProcPtr("glTransformFeedbackAttribsNV") : if (glTransformFeedbackAttribsNV<>0) then n-=1
  glBindBufferRangeNV = GetProcPtr("glBindBufferRangeNV") : if (glBindBufferRangeNV<>0) then n-=1
  glBindBufferOffsetNV = GetProcPtr("glBindBufferOffsetNV") : if (glBindBufferOffsetNV<>0) then n-=1
  glBindBufferBaseNV = GetProcPtr("glBindBufferBaseNV") : if (glBindBufferBaseNV<>0) then n-=1
  glTransformFeedbackVaryingsNV = GetProcPtr("glTransformFeedbackVaryingsNV") : if (glTransformFeedbackVaryingsNV<>0) then n-=1
  glActiveVaryingNV = GetProcPtr("glActiveVaryingNV") : if (glActiveVaryingNV<>0) then n-=1
  glGetVaryingLocationNV = GetProcPtr("glGetVaryingLocationNV") : if (glGetVaryingLocationNV<>0) then n-=1
  glGetActiveVaryingNV = GetProcPtr("glGetActiveVaryingNV") : if (glGetActiveVaryingNV<>0) then n-=1
  glGetTransformFeedbackVaryingNV = GetProcPtr("glGetTransformFeedbackVaryingNV") : if (glGetTransformFeedbackVaryingNV<>0) then n-=1
  glTransformFeedbackStreamAttribsNV = GetProcPtr("glTransformFeedbackStreamAttribsNV") : if (glTransformFeedbackStreamAttribsNV<>0) then n-=1
  glBindTransformFeedbackNV = GetProcPtr("glBindTransformFeedbackNV") : if (glBindTransformFeedbackNV<>0) then n-=1
  glDeleteTransformFeedbacksNV = GetProcPtr("glDeleteTransformFeedbacksNV") : if (glDeleteTransformFeedbacksNV<>0) then n-=1
  glGenTransformFeedbacksNV = GetProcPtr("glGenTransformFeedbacksNV") : if (glGenTransformFeedbacksNV<>0) then n-=1
  glIsTransformFeedbackNV = GetProcPtr("glIsTransformFeedbackNV") : if (glIsTransformFeedbackNV<>0) then n-=1
  glPauseTransformFeedbackNV = GetProcPtr("glPauseTransformFeedbackNV") : if (glPauseTransformFeedbackNV<>0) then n-=1
  glResumeTransformFeedbackNV = GetProcPtr("glResumeTransformFeedbackNV") : if (glResumeTransformFeedbackNV<>0) then n-=1
  glDrawTransformFeedbackNV = GetProcPtr("glDrawTransformFeedbackNV") : if (glDrawTransformFeedbackNV<>0) then n-=1
  glVDPAUInitNV = GetProcPtr("glVDPAUInitNV") : if (glVDPAUInitNV<>0) then n-=1
  glVDPAUFiniNV = GetProcPtr("glVDPAUFiniNV") : if (glVDPAUFiniNV<>0) then n-=1
  glVDPAURegisterVideoSurfaceNV = GetProcPtr("glVDPAURegisterVideoSurfaceNV") : if (glVDPAURegisterVideoSurfaceNV<>0) then n-=1
  glVDPAURegisterOutputSurfaceNV = GetProcPtr("glVDPAURegisterOutputSurfaceNV") : if (glVDPAURegisterOutputSurfaceNV<>0) then n-=1
  glVDPAUIsSurfaceNV = GetProcPtr("glVDPAUIsSurfaceNV") : if (glVDPAUIsSurfaceNV<>0) then n-=1
  glVDPAUUnregisterSurfaceNV = GetProcPtr("glVDPAUUnregisterSurfaceNV") : if (glVDPAUUnregisterSurfaceNV<>0) then n-=1
  glVDPAUGetSurfaceivNV = GetProcPtr("glVDPAUGetSurfaceivNV") : if (glVDPAUGetSurfaceivNV<>0) then n-=1
  glVDPAUSurfaceAccessNV = GetProcPtr("glVDPAUSurfaceAccessNV") : if (glVDPAUSurfaceAccessNV<>0) then n-=1
  glVDPAUMapSurfacesNV = GetProcPtr("glVDPAUMapSurfacesNV") : if (glVDPAUMapSurfacesNV<>0) then n-=1
  glVDPAUUnmapSurfacesNV = GetProcPtr("glVDPAUUnmapSurfacesNV") : if (glVDPAUUnmapSurfacesNV<>0) then n-=1
  glFlushVertexArrayRangeNV = GetProcPtr("glFlushVertexArrayRangeNV") : if (glFlushVertexArrayRangeNV<>0) then n-=1
  glVertexArrayRangeNV = GetProcPtr("glVertexArrayRangeNV") : if (glVertexArrayRangeNV<>0) then n-=1
  glVertexAttribL1i64NV = GetProcPtr("glVertexAttribL1i64NV") : if (glVertexAttribL1i64NV<>0) then n-=1
  glVertexAttribL2i64NV = GetProcPtr("glVertexAttribL2i64NV") : if (glVertexAttribL2i64NV<>0) then n-=1
  glVertexAttribL3i64NV = GetProcPtr("glVertexAttribL3i64NV") : if (glVertexAttribL3i64NV<>0) then n-=1
  glVertexAttribL4i64NV = GetProcPtr("glVertexAttribL4i64NV") : if (glVertexAttribL4i64NV<>0) then n-=1
  glVertexAttribL1i64vNV = GetProcPtr("glVertexAttribL1i64vNV") : if (glVertexAttribL1i64vNV<>0) then n-=1
  glVertexAttribL2i64vNV = GetProcPtr("glVertexAttribL2i64vNV") : if (glVertexAttribL2i64vNV<>0) then n-=1
  glVertexAttribL3i64vNV = GetProcPtr("glVertexAttribL3i64vNV") : if (glVertexAttribL3i64vNV<>0) then n-=1
  glVertexAttribL4i64vNV = GetProcPtr("glVertexAttribL4i64vNV") : if (glVertexAttribL4i64vNV<>0) then n-=1
  glVertexAttribL1ui64NV = GetProcPtr("glVertexAttribL1ui64NV") : if (glVertexAttribL1ui64NV<>0) then n-=1
  glVertexAttribL2ui64NV = GetProcPtr("glVertexAttribL2ui64NV") : if (glVertexAttribL2ui64NV<>0) then n-=1
  glVertexAttribL3ui64NV = GetProcPtr("glVertexAttribL3ui64NV") : if (glVertexAttribL3ui64NV<>0) then n-=1
  glVertexAttribL4ui64NV = GetProcPtr("glVertexAttribL4ui64NV") : if (glVertexAttribL4ui64NV<>0) then n-=1
  glVertexAttribL1ui64vNV = GetProcPtr("glVertexAttribL1ui64vNV") : if (glVertexAttribL1ui64vNV<>0) then n-=1
  glVertexAttribL2ui64vNV = GetProcPtr("glVertexAttribL2ui64vNV") : if (glVertexAttribL2ui64vNV<>0) then n-=1
  glVertexAttribL3ui64vNV = GetProcPtr("glVertexAttribL3ui64vNV") : if (glVertexAttribL3ui64vNV<>0) then n-=1
  glVertexAttribL4ui64vNV = GetProcPtr("glVertexAttribL4ui64vNV") : if (glVertexAttribL4ui64vNV<>0) then n-=1
  glGetVertexAttribLi64vNV = GetProcPtr("glGetVertexAttribLi64vNV") : if (glGetVertexAttribLi64vNV<>0) then n-=1
  glGetVertexAttribLui64vNV = GetProcPtr("glGetVertexAttribLui64vNV") : if (glGetVertexAttribLui64vNV<>0) then n-=1
  glVertexAttribLFormatNV = GetProcPtr("glVertexAttribLFormatNV") : if (glVertexAttribLFormatNV<>0) then n-=1
  glBufferAddressRangeNV = GetProcPtr("glBufferAddressRangeNV") : if (glBufferAddressRangeNV<>0) then n-=1
  glVertexFormatNV = GetProcPtr("glVertexFormatNV") : if (glVertexFormatNV<>0) then n-=1
  glNormalFormatNV = GetProcPtr("glNormalFormatNV") : if (glNormalFormatNV<>0) then n-=1
  glColorFormatNV = GetProcPtr("glColorFormatNV") : if (glColorFormatNV<>0) then n-=1
  glIndexFormatNV = GetProcPtr("glIndexFormatNV") : if (glIndexFormatNV<>0) then n-=1
  glTexCoordFormatNV = GetProcPtr("glTexCoordFormatNV") : if (glTexCoordFormatNV<>0) then n-=1
  glEdgeFlagFormatNV = GetProcPtr("glEdgeFlagFormatNV") : if (glEdgeFlagFormatNV<>0) then n-=1
  glSecondaryColorFormatNV = GetProcPtr("glSecondaryColorFormatNV") : if (glSecondaryColorFormatNV<>0) then n-=1
  glFogCoordFormatNV = GetProcPtr("glFogCoordFormatNV") : if (glFogCoordFormatNV<>0) then n-=1
  glVertexAttribFormatNV = GetProcPtr("glVertexAttribFormatNV") : if (glVertexAttribFormatNV<>0) then n-=1
  glVertexAttribIFormatNV = GetProcPtr("glVertexAttribIFormatNV") : if (glVertexAttribIFormatNV<>0) then n-=1
  glGetIntegerui64i_vNV = GetProcPtr("glGetIntegerui64i_vNV") : if (glGetIntegerui64i_vNV<>0) then n-=1
  glAreProgramsResidentNV = GetProcPtr("glAreProgramsResidentNV") : if (glAreProgramsResidentNV<>0) then n-=1
  glBindProgramNV = GetProcPtr("glBindProgramNV") : if (glBindProgramNV<>0) then n-=1
  glDeleteProgramsNV = GetProcPtr("glDeleteProgramsNV") : if (glDeleteProgramsNV<>0) then n-=1
  glExecuteProgramNV = GetProcPtr("glExecuteProgramNV") : if (glExecuteProgramNV<>0) then n-=1
  glGenProgramsNV = GetProcPtr("glGenProgramsNV") : if (glGenProgramsNV<>0) then n-=1
  glGetProgramParameterdvNV = GetProcPtr("glGetProgramParameterdvNV") : if (glGetProgramParameterdvNV<>0) then n-=1
  glGetProgramParameterfvNV = GetProcPtr("glGetProgramParameterfvNV") : if (glGetProgramParameterfvNV<>0) then n-=1
  glGetProgramivNV = GetProcPtr("glGetProgramivNV") : if (glGetProgramivNV<>0) then n-=1
  glGetProgramStringNV = GetProcPtr("glGetProgramStringNV") : if (glGetProgramStringNV<>0) then n-=1
  glGetTrackMatrixivNV = GetProcPtr("glGetTrackMatrixivNV") : if (glGetTrackMatrixivNV<>0) then n-=1
  glGetVertexAttribdvNV = GetProcPtr("glGetVertexAttribdvNV") : if (glGetVertexAttribdvNV<>0) then n-=1
  glGetVertexAttribfvNV = GetProcPtr("glGetVertexAttribfvNV") : if (glGetVertexAttribfvNV<>0) then n-=1
  glGetVertexAttribivNV = GetProcPtr("glGetVertexAttribivNV") : if (glGetVertexAttribivNV<>0) then n-=1
  glGetVertexAttribPointervNV = GetProcPtr("glGetVertexAttribPointervNV") : if (glGetVertexAttribPointervNV<>0) then n-=1
  glIsProgramNV = GetProcPtr("glIsProgramNV") : if (glIsProgramNV<>0) then n-=1
  glLoadProgramNV = GetProcPtr("glLoadProgramNV") : if (glLoadProgramNV<>0) then n-=1
  glProgramParameter4dNV = GetProcPtr("glProgramParameter4dNV") : if (glProgramParameter4dNV<>0) then n-=1
  glProgramParameter4dvNV = GetProcPtr("glProgramParameter4dvNV") : if (glProgramParameter4dvNV<>0) then n-=1
  glProgramParameter4fNV = GetProcPtr("glProgramParameter4fNV") : if (glProgramParameter4fNV<>0) then n-=1
  glProgramParameter4fvNV = GetProcPtr("glProgramParameter4fvNV") : if (glProgramParameter4fvNV<>0) then n-=1
  glProgramParameters4dvNV = GetProcPtr("glProgramParameters4dvNV") : if (glProgramParameters4dvNV<>0) then n-=1
  glProgramParameters4fvNV = GetProcPtr("glProgramParameters4fvNV") : if (glProgramParameters4fvNV<>0) then n-=1
  glRequestResidentProgramsNV = GetProcPtr("glRequestResidentProgramsNV") : if (glRequestResidentProgramsNV<>0) then n-=1
  glTrackMatrixNV = GetProcPtr("glTrackMatrixNV") : if (glTrackMatrixNV<>0) then n-=1
  glVertexAttribPointerNV = GetProcPtr("glVertexAttribPointerNV") : if (glVertexAttribPointerNV<>0) then n-=1
  glVertexAttrib1dNV = GetProcPtr("glVertexAttrib1dNV") : if (glVertexAttrib1dNV<>0) then n-=1
  glVertexAttrib1dvNV = GetProcPtr("glVertexAttrib1dvNV") : if (glVertexAttrib1dvNV<>0) then n-=1
  glVertexAttrib1fNV = GetProcPtr("glVertexAttrib1fNV") : if (glVertexAttrib1fNV<>0) then n-=1
  glVertexAttrib1fvNV = GetProcPtr("glVertexAttrib1fvNV") : if (glVertexAttrib1fvNV<>0) then n-=1
  glVertexAttrib1sNV = GetProcPtr("glVertexAttrib1sNV") : if (glVertexAttrib1sNV<>0) then n-=1
  glVertexAttrib1svNV = GetProcPtr("glVertexAttrib1svNV") : if (glVertexAttrib1svNV<>0) then n-=1
  glVertexAttrib2dNV = GetProcPtr("glVertexAttrib2dNV") : if (glVertexAttrib2dNV<>0) then n-=1
  glVertexAttrib2dvNV = GetProcPtr("glVertexAttrib2dvNV") : if (glVertexAttrib2dvNV<>0) then n-=1
  glVertexAttrib2fNV = GetProcPtr("glVertexAttrib2fNV") : if (glVertexAttrib2fNV<>0) then n-=1
  glVertexAttrib2fvNV = GetProcPtr("glVertexAttrib2fvNV") : if (glVertexAttrib2fvNV<>0) then n-=1
  glVertexAttrib2sNV = GetProcPtr("glVertexAttrib2sNV") : if (glVertexAttrib2sNV<>0) then n-=1
  glVertexAttrib2svNV = GetProcPtr("glVertexAttrib2svNV") : if (glVertexAttrib2svNV<>0) then n-=1
  glVertexAttrib3dNV = GetProcPtr("glVertexAttrib3dNV") : if (glVertexAttrib3dNV<>0) then n-=1
  glVertexAttrib3dvNV = GetProcPtr("glVertexAttrib3dvNV") : if (glVertexAttrib3dvNV<>0) then n-=1
  glVertexAttrib3fNV = GetProcPtr("glVertexAttrib3fNV") : if (glVertexAttrib3fNV<>0) then n-=1
  glVertexAttrib3fvNV = GetProcPtr("glVertexAttrib3fvNV") : if (glVertexAttrib3fvNV<>0) then n-=1
  glVertexAttrib3sNV = GetProcPtr("glVertexAttrib3sNV") : if (glVertexAttrib3sNV<>0) then n-=1
  glVertexAttrib3svNV = GetProcPtr("glVertexAttrib3svNV") : if (glVertexAttrib3svNV<>0) then n-=1
  glVertexAttrib4dNV = GetProcPtr("glVertexAttrib4dNV") : if (glVertexAttrib4dNV<>0) then n-=1
  glVertexAttrib4dvNV = GetProcPtr("glVertexAttrib4dvNV") : if (glVertexAttrib4dvNV<>0) then n-=1
  glVertexAttrib4fNV = GetProcPtr("glVertexAttrib4fNV") : if (glVertexAttrib4fNV<>0) then n-=1
  glVertexAttrib4fvNV = GetProcPtr("glVertexAttrib4fvNV") : if (glVertexAttrib4fvNV<>0) then n-=1
  glVertexAttrib4sNV = GetProcPtr("glVertexAttrib4sNV") : if (glVertexAttrib4sNV<>0) then n-=1
  glVertexAttrib4svNV = GetProcPtr("glVertexAttrib4svNV") : if (glVertexAttrib4svNV<>0) then n-=1
  glVertexAttrib4ubNV = GetProcPtr("glVertexAttrib4ubNV") : if (glVertexAttrib4ubNV<>0) then n-=1
  glVertexAttrib4ubvNV = GetProcPtr("glVertexAttrib4ubvNV") : if (glVertexAttrib4ubvNV<>0) then n-=1
  glVertexAttribs1dvNV = GetProcPtr("glVertexAttribs1dvNV") : if (glVertexAttribs1dvNV<>0) then n-=1
  glVertexAttribs1fvNV = GetProcPtr("glVertexAttribs1fvNV") : if (glVertexAttribs1fvNV<>0) then n-=1
  glVertexAttribs1svNV = GetProcPtr("glVertexAttribs1svNV") : if (glVertexAttribs1svNV<>0) then n-=1
  glVertexAttribs2dvNV = GetProcPtr("glVertexAttribs2dvNV") : if (glVertexAttribs2dvNV<>0) then n-=1
  glVertexAttribs2fvNV = GetProcPtr("glVertexAttribs2fvNV") : if (glVertexAttribs2fvNV<>0) then n-=1
  glVertexAttribs2svNV = GetProcPtr("glVertexAttribs2svNV") : if (glVertexAttribs2svNV<>0) then n-=1
  glVertexAttribs3dvNV = GetProcPtr("glVertexAttribs3dvNV") : if (glVertexAttribs3dvNV<>0) then n-=1
  glVertexAttribs3fvNV = GetProcPtr("glVertexAttribs3fvNV") : if (glVertexAttribs3fvNV<>0) then n-=1
  glVertexAttribs3svNV = GetProcPtr("glVertexAttribs3svNV") : if (glVertexAttribs3svNV<>0) then n-=1
  glVertexAttribs4dvNV = GetProcPtr("glVertexAttribs4dvNV") : if (glVertexAttribs4dvNV<>0) then n-=1
  glVertexAttribs4fvNV = GetProcPtr("glVertexAttribs4fvNV") : if (glVertexAttribs4fvNV<>0) then n-=1
  glVertexAttribs4svNV = GetProcPtr("glVertexAttribs4svNV") : if (glVertexAttribs4svNV<>0) then n-=1
  glVertexAttribs4ubvNV = GetProcPtr("glVertexAttribs4ubvNV") : if (glVertexAttribs4ubvNV<>0) then n-=1
  glVertexAttribI1iEXT = GetProcPtr("glVertexAttribI1iEXT") : if (glVertexAttribI1iEXT<>0) then n-=1
  glVertexAttribI2iEXT = GetProcPtr("glVertexAttribI2iEXT") : if (glVertexAttribI2iEXT<>0) then n-=1
  glVertexAttribI3iEXT = GetProcPtr("glVertexAttribI3iEXT") : if (glVertexAttribI3iEXT<>0) then n-=1
  glVertexAttribI4iEXT = GetProcPtr("glVertexAttribI4iEXT") : if (glVertexAttribI4iEXT<>0) then n-=1
  glVertexAttribI1uiEXT = GetProcPtr("glVertexAttribI1uiEXT") : if (glVertexAttribI1uiEXT<>0) then n-=1
  glVertexAttribI2uiEXT = GetProcPtr("glVertexAttribI2uiEXT") : if (glVertexAttribI2uiEXT<>0) then n-=1
  glVertexAttribI3uiEXT = GetProcPtr("glVertexAttribI3uiEXT") : if (glVertexAttribI3uiEXT<>0) then n-=1
  glVertexAttribI4uiEXT = GetProcPtr("glVertexAttribI4uiEXT") : if (glVertexAttribI4uiEXT<>0) then n-=1
  glVertexAttribI1ivEXT = GetProcPtr("glVertexAttribI1ivEXT") : if (glVertexAttribI1ivEXT<>0) then n-=1
  glVertexAttribI2ivEXT = GetProcPtr("glVertexAttribI2ivEXT") : if (glVertexAttribI2ivEXT<>0) then n-=1
  glVertexAttribI3ivEXT = GetProcPtr("glVertexAttribI3ivEXT") : if (glVertexAttribI3ivEXT<>0) then n-=1
  glVertexAttribI4ivEXT = GetProcPtr("glVertexAttribI4ivEXT") : if (glVertexAttribI4ivEXT<>0) then n-=1
  glVertexAttribI1uivEXT = GetProcPtr("glVertexAttribI1uivEXT") : if (glVertexAttribI1uivEXT<>0) then n-=1
  glVertexAttribI2uivEXT = GetProcPtr("glVertexAttribI2uivEXT") : if (glVertexAttribI2uivEXT<>0) then n-=1
  glVertexAttribI3uivEXT = GetProcPtr("glVertexAttribI3uivEXT") : if (glVertexAttribI3uivEXT<>0) then n-=1
  glVertexAttribI4uivEXT = GetProcPtr("glVertexAttribI4uivEXT") : if (glVertexAttribI4uivEXT<>0) then n-=1
  glVertexAttribI4bvEXT = GetProcPtr("glVertexAttribI4bvEXT") : if (glVertexAttribI4bvEXT<>0) then n-=1
  glVertexAttribI4svEXT = GetProcPtr("glVertexAttribI4svEXT") : if (glVertexAttribI4svEXT<>0) then n-=1
  glVertexAttribI4ubvEXT = GetProcPtr("glVertexAttribI4ubvEXT") : if (glVertexAttribI4ubvEXT<>0) then n-=1
  glVertexAttribI4usvEXT = GetProcPtr("glVertexAttribI4usvEXT") : if (glVertexAttribI4usvEXT<>0) then n-=1
  glVertexAttribIPointerEXT = GetProcPtr("glVertexAttribIPointerEXT") : if (glVertexAttribIPointerEXT<>0) then n-=1
  glGetVertexAttribIivEXT = GetProcPtr("glGetVertexAttribIivEXT") : if (glGetVertexAttribIivEXT<>0) then n-=1
  glGetVertexAttribIuivEXT = GetProcPtr("glGetVertexAttribIuivEXT") : if (glGetVertexAttribIuivEXT<>0) then n-=1
  glBeginVideoCaptureNV = GetProcPtr("glBeginVideoCaptureNV") : if (glBeginVideoCaptureNV<>0) then n-=1
  glBindVideoCaptureStreamBufferNV = GetProcPtr("glBindVideoCaptureStreamBufferNV") : if (glBindVideoCaptureStreamBufferNV<>0) then n-=1
  glBindVideoCaptureStreamTextureNV = GetProcPtr("glBindVideoCaptureStreamTextureNV") : if (glBindVideoCaptureStreamTextureNV<>0) then n-=1
  glEndVideoCaptureNV = GetProcPtr("glEndVideoCaptureNV") : if (glEndVideoCaptureNV<>0) then n-=1
  glGetVideoCaptureivNV = GetProcPtr("glGetVideoCaptureivNV") : if (glGetVideoCaptureivNV<>0) then n-=1
  glGetVideoCaptureStreamivNV = GetProcPtr("glGetVideoCaptureStreamivNV") : if (glGetVideoCaptureStreamivNV<>0) then n-=1
  glGetVideoCaptureStreamfvNV = GetProcPtr("glGetVideoCaptureStreamfvNV") : if (glGetVideoCaptureStreamfvNV<>0) then n-=1
  glGetVideoCaptureStreamdvNV = GetProcPtr("glGetVideoCaptureStreamdvNV") : if (glGetVideoCaptureStreamdvNV<>0) then n-=1
  glVideoCaptureNV = GetProcPtr("glVideoCaptureNV") : if (glVideoCaptureNV<>0) then n-=1
  glVideoCaptureStreamParameterivNV = GetProcPtr("glVideoCaptureStreamParameterivNV") : if (glVideoCaptureStreamParameterivNV<>0) then n-=1
  glVideoCaptureStreamParameterfvNV = GetProcPtr("glVideoCaptureStreamParameterfvNV") : if (glVideoCaptureStreamParameterfvNV<>0) then n-=1
  glVideoCaptureStreamParameterdvNV = GetProcPtr("glVideoCaptureStreamParameterdvNV") : if (glVideoCaptureStreamParameterdvNV<>0) then n-=1
  glHintPGI = GetProcPtr("glHintPGI") : if (glHintPGI<>0) then n-=1
  glDetailTexFuncSGIS = GetProcPtr("glDetailTexFuncSGIS") : if (glDetailTexFuncSGIS<>0) then n-=1
  glGetDetailTexFuncSGIS = GetProcPtr("glGetDetailTexFuncSGIS") : if (glGetDetailTexFuncSGIS<>0) then n-=1
  glFogFuncSGIS = GetProcPtr("glFogFuncSGIS") : if (glFogFuncSGIS<>0) then n-=1
  glGetFogFuncSGIS = GetProcPtr("glGetFogFuncSGIS") : if (glGetFogFuncSGIS<>0) then n-=1
  glSampleMaskSGIS = GetProcPtr("glSampleMaskSGIS") : if (glSampleMaskSGIS<>0) then n-=1
  glSamplePatternSGIS = GetProcPtr("glSamplePatternSGIS") : if (glSamplePatternSGIS<>0) then n-=1
  glPixelTexGenParameteriSGIS = GetProcPtr("glPixelTexGenParameteriSGIS") : if (glPixelTexGenParameteriSGIS<>0) then n-=1
  glPixelTexGenParameterivSGIS = GetProcPtr("glPixelTexGenParameterivSGIS") : if (glPixelTexGenParameterivSGIS<>0) then n-=1
  glPixelTexGenParameterfSGIS = GetProcPtr("glPixelTexGenParameterfSGIS") : if (glPixelTexGenParameterfSGIS<>0) then n-=1
  glPixelTexGenParameterfvSGIS = GetProcPtr("glPixelTexGenParameterfvSGIS") : if (glPixelTexGenParameterfvSGIS<>0) then n-=1
  glGetPixelTexGenParameterivSGIS = GetProcPtr("glGetPixelTexGenParameterivSGIS") : if (glGetPixelTexGenParameterivSGIS<>0) then n-=1
  glGetPixelTexGenParameterfvSGIS = GetProcPtr("glGetPixelTexGenParameterfvSGIS") : if (glGetPixelTexGenParameterfvSGIS<>0) then n-=1
  glPointParameterfSGIS = GetProcPtr("glPointParameterfSGIS") : if (glPointParameterfSGIS<>0) then n-=1
  glPointParameterfvSGIS = GetProcPtr("glPointParameterfvSGIS") : if (glPointParameterfvSGIS<>0) then n-=1
  glSharpenTexFuncSGIS = GetProcPtr("glSharpenTexFuncSGIS") : if (glSharpenTexFuncSGIS<>0) then n-=1
  glGetSharpenTexFuncSGIS = GetProcPtr("glGetSharpenTexFuncSGIS") : if (glGetSharpenTexFuncSGIS<>0) then n-=1
  glTexImage4DSGIS = GetProcPtr("glTexImage4DSGIS") : if (glTexImage4DSGIS<>0) then n-=1
  glTexSubImage4DSGIS = GetProcPtr("glTexSubImage4DSGIS") : if (glTexSubImage4DSGIS<>0) then n-=1
  glTextureColorMaskSGIS = GetProcPtr("glTextureColorMaskSGIS") : if (glTextureColorMaskSGIS<>0) then n-=1
  glGetTexFilterFuncSGIS = GetProcPtr("glGetTexFilterFuncSGIS") : if (glGetTexFilterFuncSGIS<>0) then n-=1
  glTexFilterFuncSGIS = GetProcPtr("glTexFilterFuncSGIS") : if (glTexFilterFuncSGIS<>0) then n-=1
  glAsyncMarkerSGIX = GetProcPtr("glAsyncMarkerSGIX") : if (glAsyncMarkerSGIX<>0) then n-=1
  glFinishAsyncSGIX = GetProcPtr("glFinishAsyncSGIX") : if (glFinishAsyncSGIX<>0) then n-=1
  glPollAsyncSGIX = GetProcPtr("glPollAsyncSGIX") : if (glPollAsyncSGIX<>0) then n-=1
  glGenAsyncMarkersSGIX = GetProcPtr("glGenAsyncMarkersSGIX") : if (glGenAsyncMarkersSGIX<>0) then n-=1
  glDeleteAsyncMarkersSGIX = GetProcPtr("glDeleteAsyncMarkersSGIX") : if (glDeleteAsyncMarkersSGIX<>0) then n-=1
  glIsAsyncMarkerSGIX = GetProcPtr("glIsAsyncMarkerSGIX") : if (glIsAsyncMarkerSGIX<>0) then n-=1
  glFlushRasterSGIX = GetProcPtr("glFlushRasterSGIX") : if (glFlushRasterSGIX<>0) then n-=1
  glFragmentColorMaterialSGIX = GetProcPtr("glFragmentColorMaterialSGIX") : if (glFragmentColorMaterialSGIX<>0) then n-=1
  glFragmentLightfSGIX = GetProcPtr("glFragmentLightfSGIX") : if (glFragmentLightfSGIX<>0) then n-=1
  glFragmentLightfvSGIX = GetProcPtr("glFragmentLightfvSGIX") : if (glFragmentLightfvSGIX<>0) then n-=1
  glFragmentLightiSGIX = GetProcPtr("glFragmentLightiSGIX") : if (glFragmentLightiSGIX<>0) then n-=1
  glFragmentLightivSGIX = GetProcPtr("glFragmentLightivSGIX") : if (glFragmentLightivSGIX<>0) then n-=1
  glFragmentLightModelfSGIX = GetProcPtr("glFragmentLightModelfSGIX") : if (glFragmentLightModelfSGIX<>0) then n-=1
  glFragmentLightModelfvSGIX = GetProcPtr("glFragmentLightModelfvSGIX") : if (glFragmentLightModelfvSGIX<>0) then n-=1
  glFragmentLightModeliSGIX = GetProcPtr("glFragmentLightModeliSGIX") : if (glFragmentLightModeliSGIX<>0) then n-=1
  glFragmentLightModelivSGIX = GetProcPtr("glFragmentLightModelivSGIX") : if (glFragmentLightModelivSGIX<>0) then n-=1
  glFragmentMaterialfSGIX = GetProcPtr("glFragmentMaterialfSGIX") : if (glFragmentMaterialfSGIX<>0) then n-=1
  glFragmentMaterialfvSGIX = GetProcPtr("glFragmentMaterialfvSGIX") : if (glFragmentMaterialfvSGIX<>0) then n-=1
  glFragmentMaterialiSGIX = GetProcPtr("glFragmentMaterialiSGIX") : if (glFragmentMaterialiSGIX<>0) then n-=1
  glFragmentMaterialivSGIX = GetProcPtr("glFragmentMaterialivSGIX") : if (glFragmentMaterialivSGIX<>0) then n-=1
  glGetFragmentLightfvSGIX = GetProcPtr("glGetFragmentLightfvSGIX") : if (glGetFragmentLightfvSGIX<>0) then n-=1
  glGetFragmentLightivSGIX = GetProcPtr("glGetFragmentLightivSGIX") : if (glGetFragmentLightivSGIX<>0) then n-=1
  glGetFragmentMaterialfvSGIX = GetProcPtr("glGetFragmentMaterialfvSGIX") : if (glGetFragmentMaterialfvSGIX<>0) then n-=1
  glGetFragmentMaterialivSGIX = GetProcPtr("glGetFragmentMaterialivSGIX") : if (glGetFragmentMaterialivSGIX<>0) then n-=1
  glLightEnviSGIX = GetProcPtr("glLightEnviSGIX") : if (glLightEnviSGIX<>0) then n-=1
  glFrameZoomSGIX = GetProcPtr("glFrameZoomSGIX") : if (glFrameZoomSGIX<>0) then n-=1
  glIglooInterfaceSGIX = GetProcPtr("glIglooInterfaceSGIX") : if (glIglooInterfaceSGIX<>0) then n-=1
  glGetInstrumentsSGIX = GetProcPtr("glGetInstrumentsSGIX") : if (glGetInstrumentsSGIX<>0) then n-=1
  glInstrumentsBufferSGIX = GetProcPtr("glInstrumentsBufferSGIX") : if (glInstrumentsBufferSGIX<>0) then n-=1
  glPollInstrumentsSGIX = GetProcPtr("glPollInstrumentsSGIX") : if (glPollInstrumentsSGIX<>0) then n-=1
  glReadInstrumentsSGIX = GetProcPtr("glReadInstrumentsSGIX") : if (glReadInstrumentsSGIX<>0) then n-=1
  glStartInstrumentsSGIX = GetProcPtr("glStartInstrumentsSGIX") : if (glStartInstrumentsSGIX<>0) then n-=1
  glStopInstrumentsSGIX = GetProcPtr("glStopInstrumentsSGIX") : if (glStopInstrumentsSGIX<>0) then n-=1
  glGetListParameterfvSGIX = GetProcPtr("glGetListParameterfvSGIX") : if (glGetListParameterfvSGIX<>0) then n-=1
  glGetListParameterivSGIX = GetProcPtr("glGetListParameterivSGIX") : if (glGetListParameterivSGIX<>0) then n-=1
  glListParameterfSGIX = GetProcPtr("glListParameterfSGIX") : if (glListParameterfSGIX<>0) then n-=1
  glListParameterfvSGIX = GetProcPtr("glListParameterfvSGIX") : if (glListParameterfvSGIX<>0) then n-=1
  glListParameteriSGIX = GetProcPtr("glListParameteriSGIX") : if (glListParameteriSGIX<>0) then n-=1
  glListParameterivSGIX = GetProcPtr("glListParameterivSGIX") : if (glListParameterivSGIX<>0) then n-=1
  glPixelTexGenSGIX = GetProcPtr("glPixelTexGenSGIX") : if (glPixelTexGenSGIX<>0) then n-=1
  glDeformationMap3dSGIX = GetProcPtr("glDeformationMap3dSGIX") : if (glDeformationMap3dSGIX<>0) then n-=1
  glDeformationMap3fSGIX = GetProcPtr("glDeformationMap3fSGIX") : if (glDeformationMap3fSGIX<>0) then n-=1
  glDeformSGIX = GetProcPtr("glDeformSGIX") : if (glDeformSGIX<>0) then n-=1
  glLoadIdentityDeformationMapSGIX = GetProcPtr("glLoadIdentityDeformationMapSGIX") : if (glLoadIdentityDeformationMapSGIX<>0) then n-=1
  glReferencePlaneSGIX = GetProcPtr("glReferencePlaneSGIX") : if (glReferencePlaneSGIX<>0) then n-=1
  glSpriteParameterfSGIX = GetProcPtr("glSpriteParameterfSGIX") : if (glSpriteParameterfSGIX<>0) then n-=1
  glSpriteParameterfvSGIX = GetProcPtr("glSpriteParameterfvSGIX") : if (glSpriteParameterfvSGIX<>0) then n-=1
  glSpriteParameteriSGIX = GetProcPtr("glSpriteParameteriSGIX") : if (glSpriteParameteriSGIX<>0) then n-=1
  glSpriteParameterivSGIX = GetProcPtr("glSpriteParameterivSGIX") : if (glSpriteParameterivSGIX<>0) then n-=1
  glTagSampleBufferSGIX = GetProcPtr("glTagSampleBufferSGIX") : if (glTagSampleBufferSGIX<>0) then n-=1
  glColorTableSGI = GetProcPtr("glColorTableSGI") : if (glColorTableSGI<>0) then n-=1
  glColorTableParameterfvSGI = GetProcPtr("glColorTableParameterfvSGI") : if (glColorTableParameterfvSGI<>0) then n-=1
  glColorTableParameterivSGI = GetProcPtr("glColorTableParameterivSGI") : if (glColorTableParameterivSGI<>0) then n-=1
  glCopyColorTableSGI = GetProcPtr("glCopyColorTableSGI") : if (glCopyColorTableSGI<>0) then n-=1
  glGetColorTableSGI = GetProcPtr("glGetColorTableSGI") : if (glGetColorTableSGI<>0) then n-=1
  glGetColorTableParameterfvSGI = GetProcPtr("glGetColorTableParameterfvSGI") : if (glGetColorTableParameterfvSGI<>0) then n-=1
  glGetColorTableParameterivSGI = GetProcPtr("glGetColorTableParameterivSGI") : if (glGetColorTableParameterivSGI<>0) then n-=1
  glFinishTextureSUNX = GetProcPtr("glFinishTextureSUNX") : if (glFinishTextureSUNX<>0) then n-=1
  glGlobalAlphaFactorbSUN = GetProcPtr("glGlobalAlphaFactorbSUN") : if (glGlobalAlphaFactorbSUN<>0) then n-=1
  glGlobalAlphaFactorsSUN = GetProcPtr("glGlobalAlphaFactorsSUN") : if (glGlobalAlphaFactorsSUN<>0) then n-=1
  glGlobalAlphaFactoriSUN = GetProcPtr("glGlobalAlphaFactoriSUN") : if (glGlobalAlphaFactoriSUN<>0) then n-=1
  glGlobalAlphaFactorfSUN = GetProcPtr("glGlobalAlphaFactorfSUN") : if (glGlobalAlphaFactorfSUN<>0) then n-=1
  glGlobalAlphaFactordSUN = GetProcPtr("glGlobalAlphaFactordSUN") : if (glGlobalAlphaFactordSUN<>0) then n-=1
  glGlobalAlphaFactorubSUN = GetProcPtr("glGlobalAlphaFactorubSUN") : if (glGlobalAlphaFactorubSUN<>0) then n-=1
  glGlobalAlphaFactorusSUN = GetProcPtr("glGlobalAlphaFactorusSUN") : if (glGlobalAlphaFactorusSUN<>0) then n-=1
  glGlobalAlphaFactoruiSUN = GetProcPtr("glGlobalAlphaFactoruiSUN") : if (glGlobalAlphaFactoruiSUN<>0) then n-=1
  glDrawMeshArraysSUN = GetProcPtr("glDrawMeshArraysSUN") : if (glDrawMeshArraysSUN<>0) then n-=1
  glReplacementCodeuiSUN = GetProcPtr("glReplacementCodeuiSUN") : if (glReplacementCodeuiSUN<>0) then n-=1
  glReplacementCodeusSUN = GetProcPtr("glReplacementCodeusSUN") : if (glReplacementCodeusSUN<>0) then n-=1
  glReplacementCodeubSUN = GetProcPtr("glReplacementCodeubSUN") : if (glReplacementCodeubSUN<>0) then n-=1
  glReplacementCodeuivSUN = GetProcPtr("glReplacementCodeuivSUN") : if (glReplacementCodeuivSUN<>0) then n-=1
  glReplacementCodeusvSUN = GetProcPtr("glReplacementCodeusvSUN") : if (glReplacementCodeusvSUN<>0) then n-=1
  glReplacementCodeubvSUN = GetProcPtr("glReplacementCodeubvSUN") : if (glReplacementCodeubvSUN<>0) then n-=1
  glReplacementCodePointerSUN = GetProcPtr("glReplacementCodePointerSUN") : if (glReplacementCodePointerSUN<>0) then n-=1
  glColor4ubVertex2fSUN = GetProcPtr("glColor4ubVertex2fSUN") : if (glColor4ubVertex2fSUN<>0) then n-=1
  glColor4ubVertex2fvSUN = GetProcPtr("glColor4ubVertex2fvSUN") : if (glColor4ubVertex2fvSUN<>0) then n-=1
  glColor4ubVertex3fSUN = GetProcPtr("glColor4ubVertex3fSUN") : if (glColor4ubVertex3fSUN<>0) then n-=1
  glColor4ubVertex3fvSUN = GetProcPtr("glColor4ubVertex3fvSUN") : if (glColor4ubVertex3fvSUN<>0) then n-=1
  glColor3fVertex3fSUN = GetProcPtr("glColor3fVertex3fSUN") : if (glColor3fVertex3fSUN<>0) then n-=1
  glColor3fVertex3fvSUN = GetProcPtr("glColor3fVertex3fvSUN") : if (glColor3fVertex3fvSUN<>0) then n-=1
  glNormal3fVertex3fSUN = GetProcPtr("glNormal3fVertex3fSUN") : if (glNormal3fVertex3fSUN<>0) then n-=1
  glNormal3fVertex3fvSUN = GetProcPtr("glNormal3fVertex3fvSUN") : if (glNormal3fVertex3fvSUN<>0) then n-=1
  glColor4fNormal3fVertex3fSUN = GetProcPtr("glColor4fNormal3fVertex3fSUN") : if (glColor4fNormal3fVertex3fSUN<>0) then n-=1
  glColor4fNormal3fVertex3fvSUN = GetProcPtr("glColor4fNormal3fVertex3fvSUN") : if (glColor4fNormal3fVertex3fvSUN<>0) then n-=1
  glTexCoord2fVertex3fSUN = GetProcPtr("glTexCoord2fVertex3fSUN") : if (glTexCoord2fVertex3fSUN<>0) then n-=1
  glTexCoord2fVertex3fvSUN = GetProcPtr("glTexCoord2fVertex3fvSUN") : if (glTexCoord2fVertex3fvSUN<>0) then n-=1
  glTexCoord4fVertex4fSUN = GetProcPtr("glTexCoord4fVertex4fSUN") : if (glTexCoord4fVertex4fSUN<>0) then n-=1
  glTexCoord4fVertex4fvSUN = GetProcPtr("glTexCoord4fVertex4fvSUN") : if (glTexCoord4fVertex4fvSUN<>0) then n-=1
  glTexCoord2fColor4ubVertex3fSUN = GetProcPtr("glTexCoord2fColor4ubVertex3fSUN") : if (glTexCoord2fColor4ubVertex3fSUN<>0) then n-=1
  glTexCoord2fColor4ubVertex3fvSUN = GetProcPtr("glTexCoord2fColor4ubVertex3fvSUN") : if (glTexCoord2fColor4ubVertex3fvSUN<>0) then n-=1
  glTexCoord2fColor3fVertex3fSUN = GetProcPtr("glTexCoord2fColor3fVertex3fSUN") : if (glTexCoord2fColor3fVertex3fSUN<>0) then n-=1
  glTexCoord2fColor3fVertex3fvSUN = GetProcPtr("glTexCoord2fColor3fVertex3fvSUN") : if (glTexCoord2fColor3fVertex3fvSUN<>0) then n-=1
  glTexCoord2fNormal3fVertex3fSUN = GetProcPtr("glTexCoord2fNormal3fVertex3fSUN") : if (glTexCoord2fNormal3fVertex3fSUN<>0) then n-=1
  glTexCoord2fNormal3fVertex3fvSUN = GetProcPtr("glTexCoord2fNormal3fVertex3fvSUN") : if (glTexCoord2fNormal3fVertex3fvSUN<>0) then n-=1
  glTexCoord2fColor4fNormal3fVertex3fSUN = GetProcPtr("glTexCoord2fColor4fNormal3fVertex3fSUN") : if (glTexCoord2fColor4fNormal3fVertex3fSUN<>0) then n-=1
  glTexCoord2fColor4fNormal3fVertex3fvSUN = GetProcPtr("glTexCoord2fColor4fNormal3fVertex3fvSUN") : if (glTexCoord2fColor4fNormal3fVertex3fvSUN<>0) then n-=1
  glTexCoord4fColor4fNormal3fVertex4fSUN = GetProcPtr("glTexCoord4fColor4fNormal3fVertex4fSUN") : if (glTexCoord4fColor4fNormal3fVertex4fSUN<>0) then n-=1
  glTexCoord4fColor4fNormal3fVertex4fvSUN = GetProcPtr("glTexCoord4fColor4fNormal3fVertex4fvSUN") : if (glTexCoord4fColor4fNormal3fVertex4fvSUN<>0) then n-=1
  glReplacementCodeuiVertex3fSUN = GetProcPtr("glReplacementCodeuiVertex3fSUN") : if (glReplacementCodeuiVertex3fSUN<>0) then n-=1
  glReplacementCodeuiVertex3fvSUN = GetProcPtr("glReplacementCodeuiVertex3fvSUN") : if (glReplacementCodeuiVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiColor4ubVertex3fSUN = GetProcPtr("glReplacementCodeuiColor4ubVertex3fSUN") : if (glReplacementCodeuiColor4ubVertex3fSUN<>0) then n-=1
  glReplacementCodeuiColor4ubVertex3fvSUN = GetProcPtr("glReplacementCodeuiColor4ubVertex3fvSUN") : if (glReplacementCodeuiColor4ubVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiColor3fVertex3fSUN = GetProcPtr("glReplacementCodeuiColor3fVertex3fSUN") : if (glReplacementCodeuiColor3fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiColor3fVertex3fvSUN = GetProcPtr("glReplacementCodeuiColor3fVertex3fvSUN") : if (glReplacementCodeuiColor3fVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiNormal3fVertex3fSUN = GetProcPtr("glReplacementCodeuiNormal3fVertex3fSUN") : if (glReplacementCodeuiNormal3fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiNormal3fVertex3fvSUN = GetProcPtr("glReplacementCodeuiNormal3fVertex3fvSUN") : if (glReplacementCodeuiNormal3fVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiColor4fNormal3fVertex3fSUN = GetProcPtr("glReplacementCodeuiColor4fNormal3fVertex3fSUN") : if (glReplacementCodeuiColor4fNormal3fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiColor4fNormal3fVertex3fvSUN = GetProcPtr("glReplacementCodeuiColor4fNormal3fVertex3fvSUN") : if (glReplacementCodeuiColor4fNormal3fVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fVertex3fSUN = GetProcPtr("glReplacementCodeuiTexCoord2fVertex3fSUN") : if (glReplacementCodeuiTexCoord2fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fVertex3fvSUN = GetProcPtr("glReplacementCodeuiTexCoord2fVertex3fvSUN") : if (glReplacementCodeuiTexCoord2fVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN = GetProcPtr("glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN") : if (glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN = GetProcPtr("glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN") : if (glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN = GetProcPtr("glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN") : if (glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN<>0) then n-=1
  glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN = GetProcPtr("glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN") : if (glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN<>0) then n-=1
#endif

 #ifndef __GLFW__   
  if glCreated=true then screen 0  
 #endif 
  return GL_TRUE
end function

