# labview_quickdrop
Quick Drop Shortcuts for LabVIEW IDE


## Quick Drop Shortcuts - Front Panel & Block Diagram 
1.a. Copy these keys to `<LABVIEW>\LabVIEW.ini`:
```ini
QuickDropDiagramShortcuts="!=:Not Equal?;!=0:Not Equal To 0?;':Empty String/Path?;<:Less?;<0:Less Than 0?;<=:Less Or Equal?;<=0:Less Or Equal To 0?;=:Equal?;=0:Equal To 0?;>:Greater?;>0:Greater Than 0?;>=:Greater Or Equal?;>=0:Greater Or Equal To 0?;a:Build Array;aa:Index Array;ac:Array Constant;b:Bundle By Name;bb:False Constant;c:Cluster Constant;case:Case Structure;dbl:Numeric Constant;dia:Diagram Disable Structure;f:Format Into String;for:For Loop;fs:Flatten To String;i:Invoke Node;mer:Merge Errors;nan:Not A Number/Path/Refnum?;op:Open VI Reference;p:Property Node;s:Scan From String;se:Select;str:String Constant;tdbl:To Double Precision Float;text:To Extended Precision Float;this:VI Server Reference;t1:To Byte Integer;t2:To Word Integer;t3:To Long Integer;t4:To Quad Integer;tsgl:To Single Precision Float;tt1:To Unsigned Byte Integer;tt2:To Unsigned Word Integer;tt3:To Unsigned Long Integer;tt4:To Unsigned Quad Integer;u:Unbundle By Name;un:Unflatten From String;wh:While Loop;"
QuickDropPanelShortcuts="a:Array;b:Push Button;bb:Round LED;c:Cluster;d:Numeric Control;dd:Numeric Indicator;en:Enum;er:Error In 3D.ctl;err:Error Out 3D.ctl;p:File Path Control;pp:File Path Indicator;s:String Control;ss:String Indicator;var:Variant;vi:VI Refnum;visa:VISA resource name;"
```

1.b. Or, run this VI snippet: [Download rp_shortcuts.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rp_shortcuts.vi)

![Quick Drop Shortcuts](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rp_shortcuts_snippet.png?raw=true "Ryan's Quick Drop Shortcuts")


## Quick Drop Shortcuts - Plugins
Copy these VIs to `<LABVIEW>\resource\dialog\QuickDrop\plugins`:

| Key | Plugin | Download |
| --- | --- | --- |
| `Ctrl-A` | [Arrange Diagram](#ctrl-a-arrange-diagram) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rp_arrange_diagram.vi) |
| `Ctrl-E` | [Resize Diagram](#ctrl-e-resize-diagram) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_resize_diagram.vi) |
| `Ctrl-L` | [Inline SubVI](#ctrl-l-inline-subvi) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_inline_subvi.vi) |
| `Ctrl-M` | [Merge Icon Layers](#ctrl-m-merge-icon-layers) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_merge_icon.vi) |
| `Ctrl-U` | [Wire Error Structure](#ctrl-u-wire-error-structure) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_error_structure.vi) |
| `Ctrl-V` | [Change Representation & Visualizations](#ctrl-change-representation-visualizations) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_change_representation.vi) |
| `Ctrl-X` | [Quick Align Objects](#ctrl-x-quick-align-objects) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_align_objects.vi) |
| `Ctrl-0` | [Open in Explore...](#ctrl-0-open-in-explore) | [Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_explore.vi) |


### Ctrl-A | Arrange Diagram

[Download rp_arrange_diagram.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rp_arrange_diagram.vi)

Arranges the diagram according to the source & destination terminals (left to right). If nothing is selected, this horizontally aligns the top level diagram control and indicator terminals. Ctrl-Shift reverses the order to arrange the digram (right to left). Use these in combintation to clean up the block diagram quickly.

![Arrange Diagram gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_arrange_diagram.gif)


### Ctrl-E | Resize Diagram

[Download rp_resize_diagram.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_resize_diagram.vi)

Resizes the block diagram window to fit the content. (Front Panel focus does nothing).

![Resize Diagram gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_resize_diagram.gif)


### Ctrl-L | Inline SubVI

[Download rp_inline_subvi.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_inline_subvi.vi)

Inlines the selected SubVI to the parent diagram.

![Inline SubVI gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_inline_subvi.gif)


### Ctrl-M | Merge Icon Layers

[Download rp_merge_icon.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_merge_icon.vi)

Merges the VI icon layers to minimize size and avoid icon layer template collisions.

![Merge Icon gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_merge_icon.gif)


### Ctrl-U | Wire Error Structure

[Download rp_error_structure.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_error_structure.vi)

Wires the error terminal to the selected case structure and connects any unwired error tunnels.

![Wire Error Structure gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_error_structure.gif)


### Ctrl-V | Change Representation & Visualizations

[Download rp_change_representation.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_change_representation.vi)

Changes the data type representation (i.e. U8, I64, DBL...), radix (i.e. decimal, hex, binary) and other modifiers on a numeric or string control/constant using the Quick Drop text input formatted as `[TYPE[ MOD...]]` where 

`TYPE` = `u8`, `u16`, `u32`, `u64`, `i8`, `i16`, `i32`, `i64`, `sgl`, `dbl`, `ext`, `csg`, `cdb` or `cxt`

`MOD` = 
* `d`: decimal/default, 
* `x`: hex, 
* `b`: binary/backslash, 
* `r`: toggle radix hide/show, 
* `h`: hide inc/dec buttons, 
* `s`: show inc/dec buttons

Examples:

Numeric selected + `u8 h x` = Change data type to unsigned 8-bit integer, hide the inc/dec buttons, display radix in hex

String selected + `b` = Display string as backslash radix

![Change Representation gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_change_representation.gif)


### Ctrl-X | Quick Align Objects

[Download rp_align_objects.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_align_objects.vi)

Aligns selected objects by keyboard shortcuts.

* Align Left = `Left` or `A`
* Align Right = `Right` or `D`
* Align Top = `Up` or `W`
* Align Bottom = `Bottom` or `S`
* Distribute Vertical Compress = `X`

![Align Objects gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_align_objects.gif)


### Ctrl-0 | Open in Explore

[Download rp_explore.vi](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/plugins/rp_explore.vi)

Navigate to the active VI in File Explore...

![Explore gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/rp_explore.gif)

