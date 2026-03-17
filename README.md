# Pittsburgh Daylight Explorer

A DesignExplorer-style parallel coordinates tool for exploring parametric daylighting results.
Built for CMU MS Sustainable Design thesis: Office-to-Residential Daylighting, Pittsburgh.

## Files
- `index.html`   — the full tool (open this in a browser)
- `data.csv`     — simulation data (replace with your real ClimateStudio results)
- `img/`         — folder for illuminance heatmap images (R001.png, R002.png, etc.)

## CSV Column Format
Your data.csv must have these columns (from Colibri/ClimateStudio):

| Column           | Type   | Description                     |
|------------------|--------|---------------------------------|
| IN:Depth_ft      | number | Unit depth in feet              |
| IN:WWR           | number | Window-to-wall ratio (0–1)      |
| IN:VLT           | number | Glazing visible light transmit. |
| IN:Ceiling_ft    | number | Ceiling height in feet          |
| IN:Orientation   | string | N, NE, E, SE, S, SW, W, NW     |
| IN:Shading_m     | number | Overhang depth in meters        |
| OUT:sDA_%        | number | Spatial Daylight Autonomy %     |
| OUT:DA_%         | number | Daylight Autonomy %             |
| OUT:UDI_%        | number | Useful Daylight Illuminance %   |
| OUT:ASE_%        | number | Annual Sunlight Exposure %      |
| img              | string | Path to heatmap image           |

## Colibri Setup (Grasshopper)
1. Install TT Toolbox from Food4Rhino
2. Add Colibri Iterator to each slider
3. Add Colibri Aggregator — wire all inputs + outputs
4. Set output folder, run Fly
5. Rename columns in exported data.csv to match format above
6. Place heatmap PNGs in img/ folder named R001.png, R002.png, etc.

## Usage
- Drag on any axis to brush-filter (shows matching runs, dims others)
- Click Reset to clear all filters
- Click any thumbnail to open detail panel
- Click Save Selection to export filtered runs as CSV
- Click Load CSV to replace demo data with your real results
