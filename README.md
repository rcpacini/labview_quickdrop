# labview_quickdrop
Ryans Quick Drop Shortcuts for LabVIEW "that you'll actually use..."


## Quick Drop - Panel & Diagram Shortcuts
Download and run the following VI to replace the Quick Drop Panel & Diagram Shortcuts in the LabVIEW.ini configuration file:
![Ryans Quick Drop Shortcuts](https://raw.github.com/rcpacini/labview_quickdrop/master/QuickDrop/PanelDiagramShortcuts.vi?raw=true "Ryan's Panel and Diagram Shortcuts")


## Quick Drop Shortcuts - Plugins
Here's

| Key | Plugin |
| --- | --- |
| `Ctrl-A` | [Arrange Diagram](#ctrl-a-arrange-diagram) |
| `Ctrl-E` | [Resize Diagram](#ctrl-e-resize-diagram) |
| `Ctrl-G` | [Get Object Info](#ctrl-g-get-object-info) |
| `Ctrl-S` | [Execute Script](#ctrl-s-execute-script) |


### Ctrl-A | Arrange Diagram
Arranges the diagram according to the source & destination terminals (left to right). If nothing is selected, this horizontally aligns the top level diagram control and indicator terminals. Ctrl-Shift reverses the order to arrange the digram (right to left). Use these in combintation to clean up the block diagram quickly.

![Arrange Diagram gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/ctrl-a.gif)


### Ctrl-E | Resize Diagram
Resizes the block diagram window to fit the content. (Front Panel focus does nothing).

![Resize Diagram gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/ctrl-e.gif)


### Ctrl-G | Get Object Info
Displays basic information about the panel or diagram object selected such as VI Server Class ID, Class Name, Class Hierarchy, Master Bound Rectangle, etc. This is useful during development of VI Scripting. 

![Get Object Info gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/ctrl-g.gif)


### Ctrl-S | Execute Script
Execute a series of VI scripts using the Quick Drop textbox arguments (separated by space), for example: `Ctrl-Space + "u16 h rx" + Ctrl-S` will change any selected numerics to U16 representation, hide the inc/dec buttons and display the radix in hex. Add your own plugins using the `<labview>\resource\dialog\QuickDrop\plugins\_Script\Script_Template.vit`. 

Refer to the built-in help: `Ctrl-Space + "help" + Ctrl-S`.

![Execute Script gif](https://raw.github.com/rcpacini/labview_quickdrop/master/docs/ctrl-s.gif)

#### Script Built-ins
Some common actions are pre-packaged with the Execute Script Quick Drop plugin. From the `"help" + Ctrl-S`, drop down the `Script.llb\Builtins.vi` to see more information.

```
0=Open in File Explore
a=Arrange Diagram
aa=Align Left Edges
as=Align Bottom Edges
ad=Align Right Edges
aw=Align Top Edges
aq=Align Vertical Centers
ae=Align Horizontal Centers
c=Connect Pane
cn=Cluster Size None
cf=Cluster Size Fit
ch=Cluster Size Horizontally
cv=Cluster Size Vertically
dw=Distribute Top Edges
dq=Distribute Vertical Centers
ds=Distribute Bottom Edges
dg=Distribute Vertical Gap
d=Distribute Vertical Compress
da=Distribute Left Edges
de=Distribute Horizontal Centers
dd=Distribute Right Edges
dh=Distribute Horizontal Gap
df=Distribute Horizontal Compress 
e=Resize Diagram Window
er=Wire Error Structure
h=Inc/Dec Buttons Hide
hh=Inc/Dec Buttons Show
in=Inline SubVI
m=Merge Icon Layers
o=Reset Panel Origins
r=Radix Hide
rd=Radix Decimal or Normal
rx=Radix Hex
rb=Radix Binary or Backslash
sg=Snap to Panel Grid
u8=Change to U8
u16=Change to U16
u32=Change to U32
u64=Change to U64
i8=Change to I8
i16=Change to I16
i32=Change to I32
i64=Change to I64
sgl=Change to SGL
dbl=Change to DBL
ext=Change to EXT
csg=Change to CSG
cdb=Change to CDB
cxt=Change to CXT
```

#### Script Plugins
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

#### Script Plugin Execution
Here is the order of operations when the Execute Script Quick Drop plugin is called: 
1. Create the default shortcut map all VI Descriptions located in the `QuickDrop\plugins\_Script` directory
2. Import the `QuickDrop\plugins\_Script\shortcuts.txt` to load the user modified shortcut actions.
3. Parse the Quick Drop textbox arguments and execute the corresponding vi + argument
4. Export any modifications to the `shortcuts.txt`

