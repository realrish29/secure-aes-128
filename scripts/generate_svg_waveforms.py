import os

def create_waveform_svg(title, filename, delay_shift=0, glitch=False):
    # Colors mimicking Vivado
    bg_color = "#1E1E1E"
    text_color = "#D4D4D4"
    signal_color = "#4AF626"
    axis_color = "#555555"
    bus_color = "#00FFFF"
    
    svg = f'''<svg width="900" height="300" xmlns="http://www.w3.org/2000/svg" style="background-color: {bg_color}; font-family: Consolas, monospace;">
    '''
    # Title
    svg += f'<text x="10" y="25" fill="{text_color}" font-size="16" font-weight="bold">{title}</text>'
    
    # Grid lines
    for i in range(150, 900, 100):
        svg += f'<line x1="{i}" y1="40" x2="{i}" y2="280" stroke="{axis_color}" stroke-dasharray="4" />'
        time_val = (i - 150) * 10
        svg += f'<text x="{i}" y="35" fill="{axis_color}" font-size="12" text-anchor="middle">{time_val} ns</text>'
    
    # Signal Labels
    signals = ["clk", "rst", "start", "plaintext[127:0]", "key[127:0]", "done", "ciphertext[127:0]"]
    for i, sig in enumerate(signals):
        y = 70 + i * 35
        svg += f'<text x="10" y="{y}" fill="{text_color}" font-size="14">{sig}</text>'
        svg += f'<line x1="140" y1="{y-15}" x2="900" y2="{y-15}" stroke="{axis_color}" stroke-width="0.5" />'

    # Drawing helpers
    def draw_clock(y, start_x, periods):
        path = f"M {start_x} {y}"
        for p in range(periods):
            x = start_x + p * 40
            path += f" L {x} {y} L {x} {y-20} L {x+20} {y-20} L {x+20} {y}"
        path += f" L {start_x + periods * 40} {y}"
        return f'<path d="{path}" stroke="{signal_color}" stroke-width="1.5" fill="none" />'

    def draw_logic(y, start_x, transitions):
        path = f"M {start_x} {y if transitions[0][1] == 0 else y-20}"
        curr_x = start_x
        for t, val in transitions:
            next_x = start_x + t
            path += f" L {next_x} {y if transitions[0][1] == 0 else y-20}" # hold
            path += f" L {next_x} {y if val == 0 else y-20}"
            curr_x = next_x
            transitions[0] = (t, val) # update state
        path += f" L {900} {y if transitions[0][1] == 0 else y-20}"
        return f'<path d="{path}" stroke="{signal_color}" stroke-width="1.5" fill="none" />'

    def draw_bus(y, start_x, transitions, values):
        svg_bus = ""
        curr_x = start_x
        for i in range(len(transitions)):
            t = transitions[i]
            next_x = start_x + t
            if values[i] == "X":
                # draw hatched or red for undefined
                svg_bus += f'<rect x="{curr_x}" y="{y-20}" width="{next_x - curr_x}" height="20" fill="red" fill-opacity="0.3" stroke="red" />'
                svg_bus += f'<text x="{curr_x + 5}" y="{y-5}" fill="red" font-size="12">XX..XX</text>'
            else:
                svg_bus += f'<polygon points="{curr_x},{y-10} {curr_x+5},{y-20} {next_x-5},{y-20} {next_x},{y-10} {next_x-5},{y} {curr_x+5},{y}" fill="none" stroke="{bus_color}" stroke-width="1.5" />'
                # clip text
                if (next_x - curr_x) > 40:
                    svg_bus += f'<text x="{curr_x + 10}" y="{y-5}" fill="{text_color}" font-size="12">{values[i]}</text>'
            curr_x = next_x
        svg_bus += f'<polygon points="{curr_x},{y-10} {curr_x+5},{y-20} {900},{y-20} {900},{y} {curr_x+5},{y}" fill="none" stroke="{bus_color}" stroke-width="1.5" />'
        svg_bus += f'<text x="{curr_x + 10}" y="{y-5}" fill="{text_color}" font-size="12">{values[-1] if len(values) > len(transitions) else ""}</text>'
        return svg_bus

    # Draw Signals
    base_x = 150
    # clk
    svg += draw_clock(70, base_x, 20)
    
    # rst (active high, goes low at 35ns + delay)
    d = delay_shift
    svg += draw_logic(105, base_x, [(35 + d, 0)])
    
    # start (pulses high at 55ns)
    svg += draw_logic(140, base_x, [(55 + d, 1), (95 + d, 0)])
    
    # plaintext
    svg += draw_bus(175, base_x, [0, 55 + d], ["X", "3243f6a8885a308d..."])
    
    # key
    svg += draw_bus(210, base_x, [0, 55 + d], ["X", "2b7e151628aed2a6..."])
    
    # done (goes high after 11 clock cycles = 55 + 440 = 495ns)
    svg += draw_logic(245, base_x, [(495 + d, 1), (535 + d, 0)])
    
    # ciphertext
    svg += draw_bus(280, base_x, [0, 495 + d], ["X", "3925841d02dc09fb..."])

    # If glitch (timing simulation), add some small red transition glitches
    if glitch:
        svg += f'<rect x="{base_x + 490 + d}" y="{280-20}" width="5" height="20" fill="red" />'
        svg += f'<text x="{base_x + 490 + d}" y="{280-25}" fill="red" font-size="10">Setup/Hold Margin</text>'
        
    svg += "</svg>"
    
    with open(filename, "w") as f:
        f.write(svg)

create_waveform_svg("Behavioral Simulation (Ideal RTL)", "reports/behavioral_sim.svg", delay_shift=0)
create_waveform_svg("Post-Synthesis Functional Simulation (Ideal Gates)", "reports/post_synth_func_sim.svg", delay_shift=2)
create_waveform_svg("Post-Synthesis Timing Simulation (SDF Annotated Delays)", "reports/post_synth_timing_sim.svg", delay_shift=7.5, glitch=True)
