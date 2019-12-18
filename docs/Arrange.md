# `Ctrl-A` = Arrange Panel or Diagram
Arrange Panel or Diagram (`Ctrl-A`) cleans up the selected block diagram
or front panel objects using their position relative to the adjacent object.

There are a few variations depending on the Front Panel (`FP`) or Block Diagram
(`BD`) focus, if objects are selected (`Objects`), and alternate action
(`Shift`).

| Variations | Description |
| --- | --- |
| `FP` | [Arrange controls and indicators to grid](#fp--ctrl-a) |
| `FP` + `Shift` | [Arrange controls and indicators to connector pane position](#fp--shift--ctrl-a) |
| `FP` + `Objects` | [Align selected to left edge](#fp--objects--ctrl-a) |
| `FP` + `Objects` + `Shift` | [Align selected to top edge](#fp--objects--shift--ctrl-a) |
| `BD` | [Arrange terminals](#bd--ctrl-a) |
| `BD` + `Shift` | [Arrange terminals horizontally only](#bd--shift--ctrl-a) |
| `BD` + `Objects` | [Arrange selected left-to-right](#bd--objects--ctrl-a) |
| `BD` + `Objects` + `Shift` | [Arrange selected right-to-left](#bd--objects--shift--ctrl-a) |


## `FP` + `Ctrl-A`
Arrange all controls and indicators to grid map. Error clusters are
prioritized to map to the bottom left and bottom right positions. The controls and indicators are offset from the panel origin. The panel origin is reset to (0, 0).

## `FP` + `Shift` + `Ctrl-A`
Arrange all controls and indicators to connector pane positions.

## `FP` + `Objects` + `Ctrl-A`
Align selected to left edge and snap to nearest grid.

## `FP` + `Objects` + `Shift` + `Ctrl-A`
Align selected to top edge and snap to nearest grid..

## `BD` + `Ctrl-A`
Align controls and indicators to left and right sides and arrange terminals
vertically to adjacent object.

## `BD` + `Shift` + `Ctrl-A`
Align controls and indicators to left and right sides only.

## `BD` + `Objects` + `Ctrl-A`
Arrange selected objects to the adjacent object sorted left-to-right.
Constants are arranged adjacent source terminal position (Centered left, top
or bottom to the destination terminal).

## `BD` + `Objects` + `Shift` + `Ctrl-A`
Arrange selected objects to the adjacent object sorted right-to-left.


On the diagram, of the source or destination terminals (left-to-right
or right-to-left). If nothing is selected, this horizontally aligns the top
level diagram control and indicator terminals. `Ctrl-Shift-A` reverses the
order to arrange the diagram (right-to-left). Use these in combination to clean
up the block diagram quickly.

Object alignment depends on the **number of connected terminals** and the
**arrange order (Left-to-Right or Right-to-Left)**. If more that one terminal
is connected, the following defines which terminal used to align:

| # Ins | # Outs | `Ctrl=-A` (L2R) | `Ctrl-Shift-A` (R2L) |
| --- | --- | --- | --- |
| 1+ | 0 | Bottom-Left Input | Top-Left Input |
| 0 | 1+ | Bottom-Right Output | Top-Right Output |
| 1+ | 1+ | Bottom-Left Input | Bottom-Right Output |

![Arrange Diagram gif](docs/ArrangeDiagram.gif)
