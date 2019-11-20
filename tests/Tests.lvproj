<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="test_Builtins.vi" Type="VI" URL="../test_Builtins.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Get GObject Label.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/Get GObject Label.vi"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
			</Item>
			<Item Name="_builtins_align.ctl" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_align.ctl"/>
			<Item Name="_builtins_align_selected.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_align_selected.vi"/>
			<Item Name="_builtins_arrange.ctl" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange.ctl"/>
			<Item Name="_builtins_arrange_diagram.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_diagram.vi"/>
			<Item Name="_builtins_arrange_node_offsets.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_node_offsets.vi"/>
			<Item Name="_builtins_arrange_object.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_object.vi"/>
			<Item Name="_builtins_arrange_terminal_index.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_terminal_index.vi"/>
			<Item Name="_builtins_arrange_terminals.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_terminals.vi"/>
			<Item Name="_builtins_arrange_wire_joints.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_arrange_wire_joints.vi"/>
			<Item Name="_builtins_cluster_autosize.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_cluster_autosize.vi"/>
			<Item Name="_builtins_connect_pane.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_connect_pane.vi"/>
			<Item Name="_builtins_connect_pane_lookup.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_connect_pane_lookup.vi"/>
			<Item Name="_builtins_distribute.ctl" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_distribute.ctl"/>
			<Item Name="_builtins_distribute_selected.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_distribute_selected.vi"/>
			<Item Name="_builtins_inline_sub_vi.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_inline_sub_vi.vi"/>
			<Item Name="_builtins_label_move.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_label_move.vi"/>
			<Item Name="_builtins_label_position.ctl" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_label_position.ctl"/>
			<Item Name="_builtins_label_rename.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_label_rename.vi"/>
			<Item Name="_builtins_merge_icon_layers.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_merge_icon_layers.vi"/>
			<Item Name="_builtins_numeric_representation.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_numeric_representation.vi"/>
			<Item Name="_builtins_radix.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_radix.vi"/>
			<Item Name="_builtins_reset_to_origin.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_reset_to_origin.vi"/>
			<Item Name="_builtins_resize_diagram_window.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_resize_diagram_window.vi"/>
			<Item Name="_builtins_snap_to_panel_grid.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_snap_to_panel_grid.vi"/>
			<Item Name="_builtins_visible_caption.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visible_caption.vi"/>
			<Item Name="_builtins_visible_inc_dec.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visible_inc_dec.vi"/>
			<Item Name="_builtins_visible_index.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visible_index.vi"/>
			<Item Name="_builtins_visible_label.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visible_label.vi"/>
			<Item Name="_builtins_visibles_hide.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visibles_hide.vi"/>
			<Item Name="_builtins_visibles_reset.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_visibles_reset.vi"/>
			<Item Name="_builtins_wire_error_structure.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_builtins_wire_error_structure.vi"/>
			<Item Name="_script_defs.ctl" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_defs.ctl"/>
			<Item Name="_script_execute.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_execute.vi"/>
			<Item Name="_script_help.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_help.vi"/>
			<Item Name="_script_parse_arg.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_parse_arg.vi"/>
			<Item Name="_script_rel_path.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_rel_path.vi"/>
			<Item Name="_script_uid_display.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_uid_display.vi"/>
			<Item Name="_script_vi_paths.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/_script_vi_paths.vi"/>
			<Item Name="Builtins.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/_Script/Script.llb/Builtins.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
