# labview_quickdrop
Quick Drop Shortcuts for LabVIEW IDE

## Quick Drop Shortcuts - Front Panel & Block Diagram 
1.a. Copy these keys to `<LABVIEW>\LabVIEW.ini`:
```ini
QuickDropDiagramShortcuts="!=:Not Equal?;!=0:Not Equal To 0?;':Empty String/Path?;<:Less?;<0:Less Than 0?;<=:Less Or Equal?;<=0:Less Or Equal To 0?;=:Equal?;=0:Equal To 0?;>:Greater?;>0:Greater Than 0?;>=:Greater Or Equal?;>=0:Greater Or Equal To 0?;a:Build Array;aa:Index Array;ac:Array Constant;b:Bundle By Name;bb:False Constant;c:Cluster Constant;case:Case Structure;dbl:Numeric Constant;dia:Diagram Disable Structure;f:Format Into String;for:For Loop;fs:Flatten To String;i:Invoke Node;mer:Merge Errors;nan:Not A Number/Path/Refnum?;op:Open VI Reference;p:Property Node;s:Scan From String;se:Select;str:String Constant;tdbl:To Double Precision Float;text:To Extended Precision Float;this:VI Server Reference;t1:To Byte Integer;t2:To Word Integer;t3:To Long Integer;t4:To Quad Integer;tsgl:To Single Precision Float;tt1:To Unsigned Byte Integer;tt2:To Unsigned Word Integer;tt3:To Unsigned Long Integer;tt4:To Unsigned Quad Integer;u:Unbundle By Name;un:Unflatten From String;wh:While Loop;"
QuickDropPanelShortcuts="a:Array;b:Push Button;bb:Round LED;c:Cluster;d:Numeric Control;dd:Numeric Indicator;en:Enum;er:Error In 3D.ctl;err:Error Out 3D.ctl;p:File Path Control;pp:File Path Indicator;s:String Control;ss:String Indicator;var:Variant;vi:VI Refnum;visa:VISA resource name;"
```

1.b. Or, run this VI snippet:

![Quick Drop Shortcuts](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rcpacini_shortcuts_snippet.png?raw=true "Ryan's Quick Drop Shortcuts")

1.c. Or, download the file directly:

[Quick Drop Shortcuts Download](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/rcpacini_shortcuts.vi)

## Quick Drop Shortcuts - Plugins
Copy these VIs to `<LABVIEW>\resource\dialog\QuickDrop\plugins`:

**Ctrl-V** Representation, Radix & Modifiers

Changes the data type representation (i.e. U8, I64, DBL...), radix (i.e. decimal, hex, binary) and other modifiers on a numeric or string control/constant using the Quick Drop text input formatted as `TYPE[ MOD...]` where 

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
