# Ctrl-S | Execute Script
Executes a series of VI scripts (i.e. macros) using the Quick Drop textbox arguments (separated by space) on the selected panel or diagram objects. By default, there are a bunch of [Built-in Scripts](#script-built-ins) for common operations, such as: align + distribute objects, connect terminals to pane, change representation, hide/show display objects, etc. <br>

Getting Started: `Ctrl-Space` + type "`help`" + `Ctrl-S`

## Background
I quickly realized there aren't enough keys on the keyboard for each Quick Drop Plugin needed. So instead, I created the Execute Script plugin which uses the Quick Drop Textbox to define a series of commands to execute on the selected panel or diagram objects. The plugin includes built-in help and a shortcut configuration dialog (similar to the Quick-Drop Plugins dialog) to manage the shortcuts. Refer to [Custom Plugins](#custom-plugins) for support on how to add your own scripts.

## Script Built-ins
The following are Built-in shortcuts supported out of the box.

| Shortcut | Short Name |
| --- | --- |
| `-- LABEL` | Rename Label |
| `--icon T1 T2 T3 T4` | Edit VI Icon |
| `0` | Open in File Explore |
| `a` | Arrange Diagram |
| `aa` | Align Left Edges |
| `as` | Align Bottom Edges |
| `ad` | Align Right Edges |
| `aw` | Align Top Edges |
| `aq` | Align Vertical Centers |
| `ae` | Align Horizontal Centers |
| `asg` | Align Controls Left and Snap to Grid |
| `c` | Connect Pane |
| `cn` | Cluster Size None |
| `cf` | Cluster Size Fit |
| `ch` | Cluster Size Horizontally |
| `cv` | Cluster Size Vertically |
| `dw` | Distribute Top Edges |
| `dq` | Distribute Vertical Centers |
| `vds` | Distribute Bottom Edges |
| `dg` | Distribute Vertical Gap |
| `d` | Distribute Vertical Compress |
| `da` | Distribute Left Edges |
| `de` | Distribute Horizontal Centers |
| `dd` | Distribute Right Edges |
| `dh` | Distribute Horizontal Gap |
| `df` | Distribute Horizontal Compress |
| `e` | Resize Diagram Window |
| `er` | Wire Error Structure |
| `h` | Inc/Dec Buttons Hide |
| `hh` | Inc/Dec Buttons Show |
| `in` | Inline SubVI |
| `m` | Merge Icon Layers |
| `o` | Reset Panel Origins |
| `r` | Radix Hide |
| `rd` | Radix Decimal or Normal |
| `rx` | Radix Hex |
| `rb` | Radix Binary or Backslash |
| `sc` | Select Controls |
| `si` | Select Indicators |
| `sci` | Select Controls and Indicators |
| `sn` | Select None |
| `sg` | Snap to Panel Grid |
| `u8` | Change to U8 |
| `u16` | Change to U16 |
| `u32` | Change to U32 |
| `u64` | Change to U64 |
| `i8` | Change to I8 |
| `i16` | Change to I16 |
| `i32` | Change to I32 |
| `i64` | Change to I64 |
| `sgl` | Change to SGL |
| `dbl` | Change to DBL |
| `ext` | Change to EXT |
| `csg` | Change to CSG |
| `cdb` | Change to CDB |
| `cxt` | Change to CXT |
| `v` | Show Label |
| `vv` | Hide Label |


Supports | GObject | Selection

### `aa` = Align Left Edges
Support: `FP / BD` | GObject: `Any` | Selection: `2+`

Aligns the selected panel or diagram objects by edges or centers. This ignores any display objects (i.e. labels, captions, +/- buttons, index display, etc.) during alignment. Requires 2 or more objects selected.

![Built-in Align gif](docs/BuiltinAlign.gif)

### `as` = Align Bottom Edges
See [Align Left Edges](#aa-=-align-left-edges).

### `ad` = Align Right Edges
See [Align Left Edges](#aa-=-align-left-edges).

### `aw` = Align Top Edges
See [Align Left Edges](#aa-=-align-left-edges).

### `aq` = Align Vertical Centers
See [Align Left Edges](#aa-=-align-left-edges).

### `ae` = Align Horizontal Centers
See [Align Left Edges](#aa-=-align-left-edges).

### `asg` = Align Controls Left and Snap to Grid
Support: `FP / BD` | GObject: `Any` | Selection: `1+`

Aligns the selected panel or diagram objects by the left edge and if panel focused, snaps each control top-left position to the nearest whole grid size (default is 12 px). This is useful to align Sub VI controls and indicators on the Front Panel.

![Built-in AlignSnap gif](docs/BuiltinAlignSnap.gif)

### `c` = Connect Pane
Support: `FP` | GObject: `Controls` | Selection: `1+`

Connects the selected panel controls or indicators to the VI connector pane.  The controls panel position (top-to-bottom, left-to-right) determine the connector pane order, with the exception of the error in/out controls which are always connected bottom-left and bottom-right connector pane positions respectively. Controls are ignored if there are no available connector pane terminals or if the control is already wired on the connector pane. By default, the input connections are set to `Required`.

### `cn` = Cluster Size None
Support: `FP` | GObject: `Cluster / Cluster Constant` | Selection: `1+`

### `cf` = Cluster Size Fit
### `ch` = Cluster Size Horizontally
### `cv` = Cluster Size Vertically

## Script Plugins
Create your own script plugins by using the `_Script\Script_Template.vit`. Unlike, Quick Drop plugins which can only have single key shortcuts, Script Plugins can handle more than one key characters specified in the VI Description. The VI Description must include a `[SCRIPT]` configuration section formatted with `shortcut=Short Name` key, value pairs.

Script Plugin VIs:
1. Must have the same connector pane as `QuickDrop\plugins\_Script\Script_Template.vit`
2. Must be placed in the `QuickDrop\plugins\_Script` directory (as a VI or in an LLB)
3.

```
\_Script\MyCustomPlugin.vi
    VI Description:
        '''Add description of plugin here

        // Add key=value pairs for each shortcut supported by this plugin
        [SCRIPT]
        shortcut=Short Name
        abc=Create Local Variable
        '''
```

## Script Plugin Execution
Here is the order of operations when the Execute Script Quick Drop plugin is called:
1. Create the default shortcut map all VI Descriptions located in the `QuickDrop\plugins\_Script` directory
2. Import the `QuickDrop\plugins\_Script\shortcuts.txt` to load the user modified shortcut actions.
3. Parse the Quick Drop textbox arguments and execute the corresponding vi + argument
4. Export any modifications to the `shortcuts.txt`
