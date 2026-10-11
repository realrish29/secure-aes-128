import subprocess
import os

chrome_path = r"C:\Program Files\Google\Chrome\Application\chrome.exe"
cwd = r"C:\Users\LENOVO\Documents\antigravity\fervent-kepler"

jobs = [
    ("presentation_assets/arch_diagram.html", "presentation_assets/fig_arch_diagram.png", "1200,320"),
    ("presentation_assets/flow_diagram.html", "presentation_assets/fig_flow_diagram.png", "1200,300"),
    ("presentation_assets/prog_snapshot.html", "presentation_assets/fig_prog_snapshot.png", "800,450"),
    ("presentation_assets/vivado_snapshot.html", "presentation_assets/fig_vivado_snapshot.png", "800,450"),
    ("reports/post_synth_timing_sim.svg", "presentation_assets/fig_waveform_timing.png", "1100,380"),
    ("reports/behavioral_sim.svg", "presentation_assets/fig_waveform_behav.png", "1100,380"),
]

for html_rel, png_rel, size in jobs:
    html_abs = os.path.join(cwd, html_rel)
    png_abs = os.path.join(cwd, png_rel)
    cmd = [
        chrome_path,
        "--headless",
        "--disable-gpu",
        f"--window-size={size}",
        f"--screenshot={png_abs}",
        f"file:///{html_abs.replace(os.sep, '/')}"
    ]
    print(f"Rendering {png_rel}...")
    res = subprocess.run(cmd, capture_output=True, text=True)
    if os.path.exists(png_abs):
        print(f" -> SUCCESS: {png_rel} ({os.path.getsize(png_abs)} bytes)")
    else:
        print(f" -> FAILED: {png_rel}, err: {res.stderr}")

print("All graphic renders complete!")
