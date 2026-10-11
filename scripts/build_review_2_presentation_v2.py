import os
import sys
import shutil
from pptx import Presentation
from pptx.util import Inches, Pt
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN, MSO_ANCHOR
from pptx.enum.shapes import MSO_SHAPE
import win32com.client

def build_presentation():
    prs = Presentation()
    # 16:9 Widescreen standard
    prs.slide_width = Inches(13.333)
    prs.slide_height = Inches(7.5)
    blank_layout = prs.slide_layouts[6]

    # Colors strictly matching Review-1
    NAVY = RGBColor(15, 37, 87)          # #0F2557 Deep Navy
    ROYAL_BLUE = RGBColor(29, 78, 216)   # #1D4ED8 Royal Blue
    LIGHT_BLUE = RGBColor(74, 144, 226)  # #4A90E2 Accent Light Blue
    GREY_BAR = RGBColor(160, 160, 160)   # #A0A0A0 Divider Grey
    TEXT_DARK = RGBColor(31, 41, 55)     # #1F2937 Dark Charcoal / Black
    TEXT_MUTED = RGBColor(107, 114, 128) # #6B7280 Muted Grey
    WHITE = RGBColor(255, 255, 255)
    GREEN = RGBColor(21, 128, 61)        # #15803D
    TABLE_BG_ALT = RGBColor(248, 250, 252) # #F8FAFC

    logo_aktu = os.path.abspath("extracted_assets/img_xref_6_149x148.jpeg")
    logo_gcet = os.path.abspath("extracted_assets/img_xref_11_219x219.jpeg")

    def add_top_branding(slide):
        # AKTU logo
        if os.path.exists(logo_aktu):
            slide.shapes.add_picture(logo_aktu, Inches(0.4), Inches(0.2), height=Inches(0.75))
        # GCET logo
        if os.path.exists(logo_gcet):
            slide.shapes.add_picture(logo_gcet, Inches(12.18), Inches(0.2), height=Inches(0.75))
        # 3-tone horizontal divider stripe
        b1 = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, Inches(1.3), Inches(0.48), Inches(3.5), Inches(0.06))
        b1.fill.solid(); b1.fill.fore_color.rgb = NAVY; b1.line.fill.background()
        b2 = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, Inches(4.85), Inches(0.48), Inches(3.8), Inches(0.06))
        b2.fill.solid(); b2.fill.fore_color.rgb = LIGHT_BLUE; b2.line.fill.background()
        b3 = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, Inches(8.7), Inches(0.48), Inches(3.3), Inches(0.06))
        b3.fill.solid(); b3.fill.fore_color.rgb = GREY_BAR; b3.line.fill.background()

    def add_banner(slide, title_text):
        add_top_branding(slide)
        banner = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, Inches(0.4), Inches(0.95), Inches(12.533), Inches(0.65))
        banner.fill.solid(); banner.fill.fore_color.rgb = NAVY; banner.line.fill.background()
        tf = banner.text_frame
        tf.word_wrap = True
        tf.vertical_anchor = MSO_ANCHOR.MIDDLE
        tf.margin_left = Inches(0.25)
        p = tf.paragraphs[0]
        p.text = title_text
        p.font.name = "Times New Roman"
        p.font.size = Pt(20)
        p.font.bold = True
        p.font.color.rgb = WHITE
        p.alignment = PP_ALIGN.LEFT

    def add_footer(slide, page_num):
        tx = slide.shapes.add_textbox(Inches(0.4), Inches(7.05), Inches(8.0), Inches(0.35))
        tf = tx.text_frame
        p = tf.paragraphs[0]
        p.text = "Department of VLSI and Communication Technology"
        p.font.name = "Times New Roman"
        p.font.size = Pt(10)
        p.font.color.rgb = TEXT_MUTED

        tx2 = slide.shapes.add_textbox(Inches(12.0), Inches(7.05), Inches(0.9), Inches(0.35))
        tf2 = tx2.text_frame
        p2 = tf2.paragraphs[0]
        p2.text = str(page_num)
        p2.font.name = "Times New Roman"
        p2.font.size = Pt(10)
        p2.font.color.rgb = TEXT_MUTED
        p2.alignment = PP_ALIGN.RIGHT

    # ==========================================================
    # SLIDE 1: TITLE SLIDE
    # ==========================================================
    s1 = prs.slides.add_slide(blank_layout)
    if os.path.exists(logo_aktu):
        s1.shapes.add_picture(logo_aktu, Inches(0.5), Inches(0.2), height=Inches(0.85))
    if os.path.exists(logo_gcet):
        s1.shapes.add_picture(logo_gcet, Inches(12.0), Inches(0.2), height=Inches(0.85))

    tb_top = s1.shapes.add_textbox(Inches(1.6), Inches(0.3), Inches(10.1), Inches(0.5))
    p_top = tb_top.text_frame.paragraphs[0]
    p_top.text = "Project Work Progress Presentation - Review-2"
    p_top.font.name = "Times New Roman"
    p_top.font.size = Pt(17)
    p_top.font.italic = True
    p_top.font.bold = True
    p_top.font.color.rgb = NAVY
    p_top.alignment = PP_ALIGN.CENTER

    tb_title = s1.shapes.add_textbox(Inches(0.6), Inches(1.25), Inches(12.133), Inches(1.6))
    tf_title = tb_title.text_frame
    tf_title.word_wrap = True
    p_t1 = tf_title.paragraphs[0]
    p_t1.text = "SECURE AES-128 IMPLEMENTATION WITH"
    p_t1.font.name = "Times New Roman"
    p_t1.font.size = Pt(28)
    p_t1.font.bold = True
    p_t1.font.color.rgb = NAVY
    p_t1.alignment = PP_ALIGN.CENTER

    p_t2 = tf_title.add_paragraph()
    p_t2.text = "SIDE-CHANNEL ATTACK RESISTANCE"
    p_t2.font.name = "Times New Roman"
    p_t2.font.size = Pt(28)
    p_t2.font.bold = True
    p_t2.font.color.rgb = NAVY
    p_t2.alignment = PP_ALIGN.CENTER

    # Lower Navy Container
    box1 = s1.shapes.add_shape(MSO_SHAPE.RECTANGLE, Inches(0.4), Inches(3.05), Inches(12.533), Inches(4.05))
    box1.fill.solid(); box1.fill.fore_color.rgb = NAVY; box1.line.fill.background()

    tb_meta = s1.shapes.add_textbox(Inches(0.8), Inches(3.2), Inches(11.733), Inches(0.6))
    tf_meta = tb_meta.text_frame
    p_m1 = tf_meta.paragraphs[0]
    p_m1.text = "Branch: EL-VLSI (Electronics Engineering - VLSI Design and Technology)"
    p_m1.font.name = "Times New Roman"; p_m1.font.size = Pt(14); p_m1.font.bold = True; p_m1.font.color.rgb = WHITE
    p_m1.alignment = PP_ALIGN.CENTER
    p_m2 = tf_meta.add_paragraph()
    p_m2.text = "Group No.: V-1"
    p_m2.font.name = "Times New Roman"; p_m2.font.size = Pt(14); p_m2.font.bold = True; p_m2.font.color.rgb = WHITE
    p_m2.alignment = PP_ALIGN.CENTER

    # Mentor (Left)
    tb_men = s1.shapes.add_textbox(Inches(1.0), Inches(4.0), Inches(5.0), Inches(1.8))
    tf_men = tb_men.text_frame
    p_men1 = tf_men.paragraphs[0]; p_men1.text = "Under the Mentorship of:"
    p_men1.font.name = "Times New Roman"; p_men1.font.size = Pt(13); p_men1.font.italic = True; p_men1.font.color.rgb = WHITE
    p_men2 = tf_men.add_paragraph(); p_men2.text = "Dr. Parveen Kumar"
    p_men2.font.name = "Times New Roman"; p_men2.font.size = Pt(16); p_men2.font.bold = True; p_men2.font.color.rgb = WHITE
    p_men3 = tf_men.add_paragraph(); p_men3.text = "Assistant Professor"
    p_men3.font.name = "Times New Roman"; p_men3.font.size = Pt(13); p_men3.font.color.rgb = WHITE

    # Students (Right)
    tb_stu = s1.shapes.add_textbox(Inches(7.2), Inches(4.0), Inches(5.5), Inches(1.8))
    tf_stu = tb_stu.text_frame
    p_stu1 = tf_stu.paragraphs[0]; p_stu1.text = "Presented By:"
    p_stu1.font.name = "Times New Roman"; p_stu1.font.size = Pt(13); p_stu1.font.italic = True; p_stu1.font.color.rgb = WHITE
    for st_text in ["Ish Bhati (Roll No. 2300971730019)", "Ishita Chaudhary (Roll No. 2300971730020)", "Rishabh Verma (Roll No. 2300971730029)"]:
        p_st = tf_stu.add_paragraph()
        p_st.text = st_text
        p_st.font.name = "Times New Roman"; p_st.font.size = Pt(13); p_st.font.color.rgb = WHITE

    # Department Bottom
    tb_dept = s1.shapes.add_textbox(Inches(0.8), Inches(6.15), Inches(11.733), Inches(0.8))
    tf_dept = tb_dept.text_frame
    p_d1 = tf_dept.paragraphs[0]
    p_d1.text = "Department of VLSI and Communication Technology"
    p_d1.font.name = "Times New Roman"; p_d1.font.size = Pt(13); p_d1.font.bold = True; p_d1.font.color.rgb = WHITE
    p_d1.alignment = PP_ALIGN.CENTER
    p_d2 = tf_dept.add_paragraph()
    p_d2.text = "Galgotias College of Engineering and Technology, Gr. Noida(U.P.)"
    p_d2.font.name = "Times New Roman"; p_d2.font.size = Pt(13); p_d2.font.color.rgb = WHITE
    p_d2.alignment = PP_ALIGN.CENTER

    # ==========================================================
    # SLIDE 2: TITLE & SDG GOALS
    # ==========================================================
    s2 = prs.slides.add_slide(blank_layout)
    add_top_branding(s2)
    add_footer(s2, 2)

    tb2 = s2.shapes.add_textbox(Inches(0.6), Inches(0.85), Inches(12.133), Inches(6.0))
    tf2 = tb2.text_frame
    tf2.word_wrap = True

    p2_1 = tf2.paragraphs[0]
    p2_1.text = "TITLE: Secure AES-128 Implementation with Side-Channel Attack Resistance"
    p2_1.font.name = "Times New Roman"; p2_1.font.size = Pt(18); p2_1.font.bold = True; p2_1.font.color.rgb = NAVY
    p2_1.space_after = Pt(14)

    p2_2 = tf2.add_paragraph()
    p2_2.text = "SDG GOALS (2-3 only):"
    p2_2.font.name = "Times New Roman"; p2_2.font.size = Pt(16); p2_2.font.bold = True; p2_2.font.color.rgb = NAVY
    p2_2.space_after = Pt(18)

    sdg_items = [
        ("• SDG 9: Industry, Innovation and Infrastructure: Target 9.5 & 9.c: ",
         "Fosters technological innovation and builds resilient digital infrastructure. Securing cryptographic hardware against side-channel attacks protects smart grids, critical cyber-physical systems, and IoT infrastructure from physical tampering and eavesdropping."),
        ("• SDG 16: Peace, Justice and Strong Institutions: Target 16.10: ",
         "Safeguards data privacy, institutional cybersecurity, and public trust. Prevents physical secret-key extraction from embedded cryptographic modules, securing sensitive governmental, industrial, and financial communication channels."),
        ("• SDG 12: Responsible Consumption and Production (Secondary): Target 12.2 & 12.a: ",
         "Promotes silicon resource efficiency by optimizing the trade-off between side-channel security countermeasures and hardware overhead (minimizing LUT/FF area inflation and power dissipation).")
    ]
    for bold_hdr, body_txt in sdg_items:
        p_sdg = tf2.add_paragraph()
        run_bold = p_sdg.add_run()
        run_bold.text = bold_hdr
        run_bold.font.name = "Times New Roman"; run_bold.font.size = Pt(13); run_bold.font.bold = True; run_bold.font.color.rgb = ROYAL_BLUE

        run_body = p_sdg.add_run()
        run_body.text = body_txt
        run_body.font.name = "Calibri"; run_body.font.size = Pt(12.5); run_body.font.color.rgb = TEXT_DARK
        p_sdg.space_after = Pt(16)

    # ==========================================================
    # SLIDE 3: TITLE, POs & PSOs
    # ==========================================================
    s3 = prs.slides.add_slide(blank_layout)
    add_top_branding(s3)
    add_footer(s3, 3)

    tb3 = s3.shapes.add_textbox(Inches(0.6), Inches(0.85), Inches(12.133), Inches(6.0))
    tf3 = tb3.text_frame
    tf3.word_wrap = True

    p3_1 = tf3.paragraphs[0]
    p3_1.text = "TITLE: Secure AES-128 Implementation with Side-Channel Attack Resistance"
    p3_1.font.name = "Times New Roman"; p3_1.font.size = Pt(18); p3_1.font.bold = True; p3_1.font.color.rgb = NAVY
    p3_1.space_after = Pt(12)

    p3_2 = tf3.add_paragraph()
    p3_2.text = "PROGRAM OUTCOMES (POs) MAPPED:"
    p3_2.font.name = "Times New Roman"; p3_2.font.size = Pt(15); p3_2.font.bold = True; p3_2.font.color.rgb = NAVY
    p3_2.space_after = Pt(8)

    pos_items = [
        ("• PO1 (Engineering Knowledge): ", "Applied Galois field GF(2^8) arithmetic, cryptography, and digital VLSI design principles to model the AES-128 core."),
        ("• PO3 (Design/Development): ", "Engineered a first-order masked AES datapath with a protected S-box and mask-refreshing logic balancing security and area overhead."),
        ("• PO5 (Modern Tool Usage): ", "Employed industry-standard EDA tools (AMD-Xilinx Vivado, Verilog HDL) for RTL modeling, simulation, and synthesis.")
    ]
    for b_h, b_t in pos_items:
        p_po = tf3.add_paragraph()
        r_b = p_po.add_run(); r_b.text = b_h; r_b.font.name = "Times New Roman"; r_b.font.size = Pt(12.5); r_b.font.bold = True; r_b.font.color.rgb = ROYAL_BLUE
        r_t = p_po.add_run(); r_t.text = b_t; r_t.font.name = "Calibri"; r_t.font.size = Pt(12); r_t.font.color.rgb = TEXT_DARK
        p_po.space_after = Pt(8)

    p3_3 = tf3.add_paragraph()
    p3_3.text = "\nPROGRAM SPECIFIC OUTCOMES (PSOs) MAPPED:"
    p3_3.font.name = "Times New Roman"; p3_3.font.size = Pt(15); p3_3.font.bold = True; p3_3.font.color.rgb = NAVY
    p3_3.space_after = Pt(8)

    psos_items = [
        ("• PSO1 (VLSI System Design): ", "Ability to design and simulate complex hardware cryptographic subsystems using synthesizable Verilog HDL."),
        ("• PSO2 (EDA Tools & Verification): ", "Proficiency in FPGA synthesis, static timing closure, and hardware benchmarking.")
    ]
    for b_h, b_t in psos_items:
        p_pso = tf3.add_paragraph()
        r_b = p_pso.add_run(); r_b.text = b_h; r_b.font.name = "Times New Roman"; r_b.font.size = Pt(12.5); r_b.font.bold = True; r_b.font.color.rgb = ROYAL_BLUE
        r_t = p_pso.add_run(); r_t.text = b_t; r_t.font.name = "Calibri"; r_t.font.size = Pt(12); r_t.font.color.rgb = TEXT_DARK
        p_pso.space_after = Pt(8)

    # ==========================================================
    # SLIDE 4: TABLE OF CONTENTS
    # ==========================================================
    s4 = prs.slides.add_slide(blank_layout)
    add_top_branding(s4)
    add_footer(s4, 4)

    tb4_t = s4.shapes.add_textbox(Inches(0.6), Inches(0.95), Inches(12.133), Inches(0.6))
    p4_t = tb4_t.text_frame.paragraphs[0]
    p4_t.text = "TABLE OF CONTENTS"
    p4_t.font.name = "Times New Roman"; p4_t.font.size = Pt(24); p4_t.font.bold = True; p4_t.font.color.rgb = NAVY
    p4_t.alignment = PP_ALIGN.CENTER

    # Left Column (1-4)
    tb4_col1 = s4.shapes.add_textbox(Inches(1.2), Inches(1.85), Inches(5.4), Inches(4.8))
    tf4_c1 = tb4_col1.text_frame; tf4_c1.word_wrap = True
    c1_items = [
        ("1. Introduction", "Cryptographic foundation, physical power leakage & Boolean masking."),
        ("2. Objectives", "5 core measurable engineering and verification milestones."),
        ("3. Proposed Improvement Over Existing Works", "Comparative benchmark against IEEE JSSC Base Paper."),
        ("4. Methodology/ Flowchart", "Two-share masked datapath architecture & 4-stage EDA engineering flow.")
    ]
    for idx, (head, sub) in enumerate(c1_items):
        p = tf4_c1.paragraphs[0] if idx == 0 else tf4_c1.add_paragraph()
        r1 = p.add_run(); r1.text = head; r1.font.name = "Times New Roman"; r1.font.size = Pt(15); r1.font.bold = True; r1.font.color.rgb = NAVY
        p_s = tf4_c1.add_paragraph()
        r2 = p_s.add_run(); r2.text = sub; r2.font.name = "Calibri"; r2.font.size = Pt(11.5); r2.font.color.rgb = TEXT_MUTED
        p_s.space_after = Pt(18)

    # Right Column (5-8)
    tb4_col2 = s4.shapes.add_textbox(Inches(6.8), Inches(1.85), Inches(5.4), Inches(4.8))
    tf4_c2 = tb4_col2.text_frame; tf4_c2.word_wrap = True
    c2_items = [
        ("5. Work Done till Date and Results Obtained", "NIST verification, Vivado Artix-7 synthesis tables & timing waveforms."),
        ("6. Project Implementation Budget Analysis", "Cost breakdown table of academic EDA software vs. proposed prototyping."),
        ("7. Next Month Plan of Work", "Action plan covering on-chip PRNG integration, Canright S-Box & TVLA."),
        ("8. References", "Formal IEEE bibliographical citations backing the project.")
    ]
    for idx, (head, sub) in enumerate(c2_items):
        p = tf4_c2.paragraphs[0] if idx == 0 else tf4_c2.add_paragraph()
        r1 = p.add_run(); r1.text = head; r1.font.name = "Times New Roman"; r1.font.size = Pt(15); r1.font.bold = True; r1.font.color.rgb = NAVY
        p_s = tf4_c2.add_paragraph()
        r2 = p_s.add_run(); r2.text = sub; r2.font.name = "Calibri"; r2.font.size = Pt(11.5); r2.font.color.rgb = TEXT_MUTED
        p_s.space_after = Pt(18)

    # ==========================================================
    # SLIDE 5: 1. INTRODUCTION
    # ==========================================================
    s5 = prs.slides.add_slide(blank_layout)
    add_banner(s5, "1. INTRODUCTION")
    add_footer(s5, 5)

    tb5 = s5.shapes.add_textbox(Inches(0.6), Inches(1.85), Inches(12.133), Inches(5.0))
    tf5 = tb5.text_frame; tf5.word_wrap = True

    intro_pts = [
        ("• Cryptographic Foundation (AES-128):",
         ["– Advanced Encryption Standard (AES) is a symmetric block cipher standardized by NIST (FIPS 197).",
          "– Operates on 128-bit data blocks using a 128-bit key across 10 algorithmic rounds (SubBytes, ShiftRows, MixColumns, AddRoundKey).",
          "– Widely deployed for data protection in embedded systems, smart cards, IoT nodes, and telecommunications."]),
        ("• Physical Hardware Vulnerability (Side-Channel Leakage):",
         ["– While mathematically secure against cryptanalysis, CMOS implementations leak data-dependent power during switching.",
          "– Attackers exploit power consumption variations via Differential Power Analysis (DPA) and Correlation Power Analysis (CPA) to extract the secret key."]),
        ("• Proposed Countermeasure (First-Order Boolean Masking):",
         ["– Splits sensitive intermediate variables into random shares (X' = X ⊕ M) to decorrelate physical power consumption from secret data.",
          "– Integrates a protected non-linear S-box and dynamic mask-refreshing logic to eliminate first-order leakage."])
    ]
    for idx, (h_text, sub_list) in enumerate(intro_pts):
        p_h = tf5.paragraphs[0] if idx == 0 else tf5.add_paragraph()
        r_h = p_h.add_run(); r_h.text = h_text; r_h.font.name = "Times New Roman"; r_h.font.size = Pt(14); r_h.font.bold = True; r_h.font.color.rgb = NAVY
        p_h.space_after = Pt(4)
        for s_text in sub_list:
            p_s = tf5.add_paragraph()
            r_s = p_s.add_run(); r_s.text = s_text; r_s.font.name = "Calibri"; r_s.font.size = Pt(12); r_s.font.color.rgb = TEXT_DARK
            p_s.space_after = Pt(3)
        p_s.space_after = Pt(14)

    # ==========================================================
    # SLIDE 6: 2. OBJECTIVES
    # ==========================================================
    s6 = prs.slides.add_slide(blank_layout)
    add_banner(s6, "2. OBJECTIVES")
    add_footer(s6, 6)

    tb6 = s6.shapes.add_textbox(Inches(0.6), Inches(1.8), Inches(12.133), Inches(5.1))
    tf6 = tb6.text_frame; tf6.word_wrap = True

    obj_pts = [
        ("• 1. Design & Simulation of Baseline AES-128 RTL Core:",
         "– Develop a synthesizable 128-bit AES encryption core in Verilog HDL and functionally verify it against NIST FIPS 197 test vectors."),
        ("• 2. Implementation of First-Order Boolean Masking Scheme:",
         "– Implement a 2-share Boolean masking architecture (X' = X ⊕ M) across the datapath to decorrelate switching power from secret data."),
        ("• 3. Development of Masked S-Box & Dynamic Mask-Refresh Mechanism:",
         "– Design a protected S-box in composite field GF(((2^2)^2)^2) with mask-refresh logic to prevent glitch-induced first-order leakage."),
        ("• 4. Synthesis, Resource Utilization & Timing Benchmarking:",
         "– Synthesize both baseline and masked designs targeting FPGA in AMD-Xilinx Vivado, comparing LUTs, FFs, BRAMs, Fmax, and power."),
        ("• 5. Side-Channel Leakage Assessment & Security Validation:",
         "– Evaluate side-channel resistance using power-trace analysis and standard Welch's t-test (TVLA) to verify that |t| < 4.5.")
    ]
    for idx, (h_text, b_text) in enumerate(obj_pts):
        p_o = tf6.paragraphs[0] if idx == 0 else tf6.add_paragraph()
        r_h = p_o.add_run(); r_h.text = h_text; r_h.font.name = "Times New Roman"; r_h.font.size = Pt(13); r_h.font.bold = True; r_h.font.color.rgb = NAVY
        p_o.space_after = Pt(2)
        p_b = tf6.add_paragraph()
        r_b = p_b.add_run(); r_b.text = b_text; r_b.font.name = "Calibri"; r_b.font.size = Pt(11.5); r_b.font.color.rgb = TEXT_DARK
        p_b.space_after = Pt(10)

    # ==========================================================
    # SLIDE 7: 3. PROPOSED IMPROVEMENT OVER EXISTING WORKS
    # ==========================================================
    s7 = prs.slides.add_slide(blank_layout)
    add_banner(s7, "3. PROPOSED IMPROVEMENT OVER EXISTING WORKS")
    add_footer(s7, 7)

    tbl_s7 = s7.shapes.add_table(3, 6, Inches(0.4), Inches(1.8), Inches(12.533), Inches(4.9)).table
    tbl_s7.columns[0].width = Inches(0.7)
    tbl_s7.columns[1].width = Inches(2.2)
    tbl_s7.columns[2].width = Inches(2.3)
    tbl_s7.columns[3].width = Inches(2.3)
    tbl_s7.columns[4].width = Inches(2.6)
    tbl_s7.columns[5].width = Inches(2.433)

    s7_headers = ["S.\nNo", "Base Paper (s)\nPublication Details", "Base Paper (s) Major\nFindings", "Base Paper (s)\nLimitations", "Proposed\nImprovement over\nExisting Works", "Expected Benefits"]
    for c_i, h in enumerate(s7_headers):
        c = tbl_s7.cell(0, c_i)
        c.fill.solid(); c.fill.fore_color.rgb = NAVY
        tf = c.text_frame; tf.word_wrap = True
        p = tf.paragraphs[0]; p.text = h; p.font.name = "Times New Roman"; p.font.size = Pt(10.5); p.font.bold = True; p.font.color.rgb = WHITE
        p.alignment = PP_ALIGN.CENTER

    s7_data = [
        ("1.\n[Base\nPaper]",
         "R. Kumar, V. B. Suresh, S. Taneja, et al. (2023)\nIEEE Journal of Solid-State Circuits (JSSC)\n'A 7-Gbps SCA-Resistant Multiplicative-Masked AES Engine in Intel 4 CMOS'",
         "• Multiplicative-masked AES with dual-rail zero-value detection (ZVD).\n• Reported large improvements in measured minimum-time-to-disclosure against power and EM attacks.",
         "• Intel 4 custom silicon and specialized dual-rail implementation are not directly representative of an academic FPGA RTL flow.",
         "• Implemented a synthesizable 1st-order Boolean masked datapath (X' = X ⊕ M) in Verilog HDL.\n• Mapped cleanly to standard FPGA logic cells.",
         "• 100% portable across commercial FPGAs (Artix-7).\n• Clean 100 MHz static timing closure (+1.54 ns slack), zero BRAM/DSP usage, and only 42.5% LUT overhead."),
        ("2.",
         "D. Canright & L. Batina (2008) / F. Regazzoni et al. (2011)\nCARDIS / ACNS (Springer LNCS)\n'FPGA Implementations of Masked AES: A Comparative Evaluation'",
         "• Evaluated composite-field masked S-boxes on FPGA.\n• Highlighted trade-offs between slice utilization (LUTs/FFs), throughput, and SCA resistance.",
         "• Unpipelined combinatorial inversion structures exhibit dynamic glitches and routing imbalances, causing transient 1st-order leakage.",
         "• Iterative 10-round architecture with registered stage boundaries and synchronized two-share linear transformations.\n• Recombination isolated to final output register.",
         "• Suppresses inter-round glitch propagation.\n• Stable 11-cycle execution latency with line-rate throughput (1.37 Gbps @ 118 MHz) and verifiable security.")
    ]
    for r_i, r_vals in enumerate(s7_data, start=1):
        for c_i, val in enumerate(r_vals):
            c = tbl_s7.cell(r_i, c_i)
            c.fill.solid(); c.fill.fore_color.rgb = TABLE_BG_ALT if r_i % 2 == 1 else WHITE
            tf = c.text_frame; tf.word_wrap = True
            p = tf.paragraphs[0]; p.text = val; p.font.name = "Calibri"; p.font.size = Pt(9.5); p.font.color.rgb = TEXT_DARK
            if c_i == 0: p.alignment = PP_ALIGN.CENTER; p.font.name = "Times New Roman"; p.font.bold = True

    # ==========================================================
    # SLIDE 8: 4. METHODOLOGY/ FLOW CHART (CLEAN, MINIMALIST, PERFECT)
    # ==========================================================
    s8 = prs.slides.add_slide(blank_layout)
    add_banner(s8, "4. METHODOLOGY/ FLOW CHART")
    add_footer(s8, 8)

    # 1. Architecture Graphic (Top Half) - perfectly sized to avoid any overlap
    fig_arch = os.path.abspath("presentation_assets/fig_arch_diagram.png")
    if os.path.exists(fig_arch):
        s8.shapes.add_picture(fig_arch, Inches(0.916), Inches(1.85), width=Inches(11.5), height=Inches(2.05))
        tb_c1 = s8.shapes.add_textbox(Inches(0.916), Inches(3.95), Inches(11.5), Inches(0.3))
        p_c1 = tb_c1.text_frame.paragraphs[0]
        p_c1.text = "Figure 4.1: First-Order Boolean Masked AES-128 Iterative Datapath Architecture (Two-Share S' = P ⊕ M Pipeline)"
        p_c1.font.name = "Times New Roman"; p_c1.font.size = Pt(11); p_c1.font.bold = True; p_c1.font.color.rgb = NAVY
        p_c1.alignment = PP_ALIGN.CENTER

    # 2. Flowchart Graphic (Bottom Half)
    fig_flow = os.path.abspath("presentation_assets/fig_flow_diagram.png")
    if os.path.exists(fig_flow):
        s8.shapes.add_picture(fig_flow, Inches(0.916), Inches(4.35), width=Inches(11.5), height=Inches(1.85))
        tb_c2 = s8.shapes.add_textbox(Inches(0.916), Inches(6.25), Inches(11.5), Inches(0.3))
        p_c2 = tb_c2.text_frame.paragraphs[0]
        p_c2.text = "Figure 4.2: Four-Stage EDA Engineering Design & Verification Flowchart from Verilog Modeling to Timing Closure"
        p_c2.font.name = "Times New Roman"; p_c2.font.size = Pt(11); p_c2.font.bold = True; p_c2.font.color.rgb = NAVY
        p_c2.alignment = PP_ALIGN.CENTER

    # Clean specification strip at the base
    tb_spec = s8.shapes.add_textbox(Inches(0.916), Inches(6.6), Inches(11.5), Inches(0.3))
    p_sp = tb_spec.text_frame.paragraphs[0]
    p_sp.text = "Target Specifications: 128-bit Key & Block | 10 Rounds | 11 Cycles | Target FPGA: AMD-Xilinx Artix-7 (xc7a35tcsg324-1) | EDA Tool: Vivado v2025.2"
    p_sp.font.name = "Calibri"; p_sp.font.size = Pt(10.5); p_sp.font.color.rgb = TEXT_MUTED
    p_sp.alignment = PP_ALIGN.CENTER

    # ==========================================================
    # SLIDE 9: 5. WORK DONE TILL DATE AND RESULTS OBTAINED
    # ==========================================================
    s9 = prs.slides.add_slide(blank_layout)
    add_banner(s9, "5. WORK DONE TILL DATE AND RESULTS OBTAINED")
    add_footer(s9, 9)

    # Left Column (Fig 5.1 Program & Fig 5.2 Vivado Tool)
    fig_prog = os.path.abspath("presentation_assets/fig_prog_snapshot.png")
    if os.path.exists(fig_prog):
        s9.shapes.add_picture(fig_prog, Inches(0.55), Inches(1.8), width=Inches(5.8), height=Inches(2.1))
    tb_c51 = s9.shapes.add_textbox(Inches(0.55), Inches(3.95), Inches(5.8), Inches(0.3))
    p_c51 = tb_c51.text_frame.paragraphs[0]
    p_c51.text = "Figure 5.1: Synthesizable Verilog HDL Masked Datapath Structure (rtl/aes_128_masked_core.v)"
    p_c51.font.name = "Times New Roman"; p_c51.font.size = Pt(9.5); p_c51.font.bold = True; p_c51.font.color.rgb = NAVY

    fig_vivado = os.path.abspath("presentation_assets/fig_vivado_snapshot.png")
    if os.path.exists(fig_vivado):
        s9.shapes.add_picture(fig_vivado, Inches(0.55), Inches(4.3), width=Inches(5.8), height=Inches(2.0))
    tb_c52 = s9.shapes.add_textbox(Inches(0.55), Inches(6.35), Inches(5.8), Inches(0.3))
    p_c52 = tb_c52.text_frame.paragraphs[0]
    p_c52.text = "Figure 5.2: AMD-Xilinx Vivado XSim Functional Verification Output (100% NIST Match)"
    p_c52.font.name = "Times New Roman"; p_c52.font.size = Pt(9.5); p_c52.font.bold = True; p_c52.font.color.rgb = NAVY

    # Right Column (Table 5.1 Synthesis Data & Fig 5.3 Waveform)
    tbl_s9 = s9.shapes.add_table(6, 4, Inches(6.7), Inches(1.8), Inches(6.05), Inches(2.1)).table
    tbl_s9.columns[0].width = Inches(2.1)
    tbl_s9.columns[1].width = Inches(1.2)
    tbl_s9.columns[2].width = Inches(1.2)
    tbl_s9.columns[3].width = Inches(1.55)

    s9_hdrs = ["Metric / Resource Category", "Baseline Core", "Masked Core", "Overhead / Status"]
    for c_i, h in enumerate(s9_hdrs):
        c = tbl_s9.cell(0, c_i)
        c.fill.solid(); c.fill.fore_color.rgb = NAVY
        tf = c.text_frame; p = tf.paragraphs[0]; p.text = h; p.font.name = "Times New Roman"; p.font.size = Pt(9.5); p.font.bold = True; p.font.color.rgb = WHITE
        p.alignment = PP_ALIGN.CENTER

    s9_data = [
        ("Slice LUTs", "1,350", "1,924", "+42.5% (Util 9.25%)"),
        ("Slice Registers (FF)", "393", "524", "+33.3% (Util 1.26%)"),
        ("Block RAM / DSP Slices", "0 / 0", "0 / 0", "0% (Logic Preserved)"),
        ("Timing Slack (WNS / WHS)", "+4.16ns / +0.16ns", "+1.54ns / +0.16ns", "Setup/Hold Clean"),
        ("Maximum Frequency (Fmax)", "171.30 MHz", "118.20 MHz", ">100 MHz (1.37 Gbps)")
    ]
    for r_i, r_vals in enumerate(s9_data, start=1):
        for c_i, val in enumerate(r_vals):
            c = tbl_s9.cell(r_i, c_i)
            c.fill.solid(); c.fill.fore_color.rgb = TABLE_BG_ALT if r_i % 2 == 1 else WHITE
            tf = c.text_frame; p = tf.paragraphs[0]; p.text = val; p.font.name = "Calibri"; p.font.size = Pt(9); p.font.color.rgb = TEXT_DARK
            if c_i > 0: p.alignment = PP_ALIGN.CENTER

    tb_c53 = s9.shapes.add_textbox(Inches(6.7), Inches(3.95), Inches(6.05), Inches(0.3))
    p_c53 = tb_c53.text_frame.paragraphs[0]
    p_c53.text = "Table 5.1: Comparative Post-Synthesis Hardware Utilization and Static Timing on Artix-7"
    p_c53.font.name = "Times New Roman"; p_c53.font.size = Pt(9.5); p_c53.font.bold = True; p_c53.font.color.rgb = NAVY

    fig_wave = os.path.abspath("presentation_assets/fig_waveform_timing.png")
    if os.path.exists(fig_wave):
        s9.shapes.add_picture(fig_wave, Inches(6.7), Inches(4.3), width=Inches(6.05), height=Inches(2.0))
    tb_c54 = s9.shapes.add_textbox(Inches(6.7), Inches(6.35), Inches(6.05), Inches(0.3))
    p_c54 = tb_c54.text_frame.paragraphs[0]
    p_c54.text = "Figure 5.3: Post-Synthesis Timing Simulation Waveform (SDF Gate & Routing Delay Back-Annotated)"
    p_c54.font.name = "Times New Roman"; p_c54.font.size = Pt(9.5); p_c54.font.bold = True; p_c54.font.color.rgb = NAVY

    # Minimal note at base
    tb_s9_note = s9.shapes.add_textbox(Inches(0.55), Inches(6.65), Inches(12.2), Inches(0.3))
    p_s9_n = tb_s9_note.text_frame.paragraphs[0]
    p_s9_n.text = "Note: Design evaluated purely in EDA software (AMD-Xilinx Vivado v2025.2). Physical FPGA board testing planned for future revisions."
    p_s9_n.font.name = "Calibri"; p_s9_n.font.size = Pt(9.5); p_s9_n.font.italic = True; p_s9_n.font.color.rgb = TEXT_MUTED

    # ==========================================================
    # SLIDE 10: 6. PROJECT IMPLEMENTATION BUDGET ANALYSIS
    # ==========================================================
    s10 = prs.slides.add_slide(blank_layout)
    add_banner(s10, "6. PROJECT IMPLEMENTATION BUDGET ANALYSIS")
    add_footer(s10, 10)

    tb10_n = s10.shapes.add_textbox(Inches(0.6), Inches(1.75), Inches(12.133), Inches(0.4))
    p10_n = tb10_n.text_frame.paragraphs[0]
    p10_n.text = "Note: Detailed cost breakdown of all aspects of project in tabular form, highlighting money spent till date vs. total proposed budget."
    p10_n.font.name = "Times New Roman"; p10_n.font.size = Pt(11); p10_n.font.italic = True; p10_n.font.color.rgb = NAVY

    tbl_s10 = s10.shapes.add_table(6, 6, Inches(0.6), Inches(2.25), Inches(12.133), Inches(3.3)).table
    tbl_s10.columns[0].width = Inches(0.7)
    tbl_s10.columns[1].width = Inches(3.1)
    tbl_s10.columns[2].width = Inches(1.8)
    tbl_s10.columns[3].width = Inches(2.6)
    tbl_s10.columns[4].width = Inches(2.0)
    tbl_s10.columns[5].width = Inches(1.933)

    s10_hdrs = ["S. No", "Item / Resource Description", "Category", "Specification / Tool Details", "Cost Incurred (Spent)", "Proposed Budget"]
    for c_i, h in enumerate(s10_hdrs):
        c = tbl_s10.cell(0, c_i)
        c.fill.solid(); c.fill.fore_color.rgb = NAVY
        tf = c.text_frame; p = tf.paragraphs[0]; p.text = h; p.font.name = "Times New Roman"; p.font.size = Pt(10.5); p.font.bold = True; p.font.color.rgb = WHITE
        p.alignment = PP_ALIGN.CENTER

    s10_data = [
        ("1.", "AMD-Xilinx Vivado ML Suite", "EDA Software", "ML Standard Edition (v2025.2) Academic License", "₹0.00 (Free Academic)", "₹0.00"),
        ("2.", "RTL Simulator & Test Environment", "EDA Software", "Vivado XSim & Python 3.x Verification Suite", "₹0.00 (Built-in / Open)", "₹0.00"),
        ("3.", "Development Workstation", "Hardware", "Department Laboratory PC (Synthesis Compute)", "₹0.00 (Lab Facility)", "₹0.00"),
        ("4.", "FPGA Development Board (Optional)", "Hardware", "AMD-Xilinx Artix-7 Evaluation Board (Basys 3)", "₹0.00 (Software Phase)", "₹25,000.00"),
        ("5.", "RF Measurement Probes & Shunt", "Hardware", "Low-Noise SMA Coaxial & Power Shunt Probe", "₹0.00 (Software Phase)", "₹3,500.00")
    ]
    for r_i, r_vals in enumerate(s10_data, start=1):
        for c_i, val in enumerate(r_vals):
            c = tbl_s10.cell(r_i, c_i)
            c.fill.solid(); c.fill.fore_color.rgb = TABLE_BG_ALT if r_i % 2 == 1 else WHITE
            tf = c.text_frame; p = tf.paragraphs[0]; p.text = val; p.font.name = "Calibri"; p.font.size = Pt(10); p.font.color.rgb = TEXT_DARK
            if c_i in [0, 2, 4, 5]: p.alignment = PP_ALIGN.CENTER

    # Summary Highlights
    tb10_sum = s10.shapes.add_textbox(Inches(0.6), Inches(5.8), Inches(12.133), Inches(1.0))
    tf10_s = tb10_sum.text_frame
    p_sp1 = tf10_s.paragraphs[0]
    r_sp1 = p_sp1.add_run(); r_sp1.text = "• Total Money Spent Till Date (Review-2): ₹0.00"; r_sp1.font.name = "Times New Roman"; r_sp1.font.size = Pt(13); r_sp1.font.bold = True; r_sp1.font.color.rgb = GREEN
    r_sp2 = p_sp1.add_run(); r_sp2.text = " — 100% of milestones completed via software-based EDA simulation & synthesis."; r_sp2.font.name = "Calibri"; r_sp2.font.size = Pt(11.5); r_sp2.font.color.rgb = TEXT_DARK
    p_sp1.space_after = Pt(6)

    p_pr1 = tf10_s.add_paragraph()
    r_pr1 = p_pr1.add_run(); r_pr1.text = "• Total Proposed Budget (Future Revision): ₹28,500.00"; r_pr1.font.name = "Times New Roman"; r_pr1.font.size = Pt(13); r_pr1.font.bold = True; r_pr1.font.color.rgb = NAVY
    r_pr2 = p_pr1.add_run(); r_pr2.text = " — Estimated for physical FPGA development board & laboratory RF measurement setup."; r_pr2.font.name = "Calibri"; r_pr2.font.size = Pt(11.5); r_pr2.font.color.rgb = TEXT_DARK

    # ==========================================================
    # SLIDE 11: 7. NEXT MONTH PLAN OF WORK
    # ==========================================================
    s11 = prs.slides.add_slide(blank_layout)
    add_banner(s11, "7. NEXT MONTH PLAN OF WORK")
    add_footer(s11, 11)

    tb11 = s11.shapes.add_textbox(Inches(0.6), Inches(1.8), Inches(12.133), Inches(5.1))
    tf11 = tb11.text_frame; tf11.word_wrap = True

    fut_pts = [
        ("• Phase 1: Autonomous On-Chip PRNG Integration (Weeks 1–2):",
         ["– Integrate a dedicated 128-bit hardware Pseudo-Random Number Generator (LFSR / Xorshift128+) directly into the cryptographic datapath.",
          "– Generate and refresh independent random masks internally on-chip cycle-by-cycle, eliminating external testbench feed dependencies."]),
        ("• Phase 2: Glitch-Resistant Composite-Field Canright S-Box (Weeks 3–4):",
         ["– Replace memory-based S-box lookup tables with Canright composite-field GF(((2^2)^2)^2) algebraic inversion logic.",
          "– Suppress dynamic CMOS combinatorial glitches and signal delay skews that cause transient first-order side-channel leakage."]),
        ("• Phase 3: Switching Activity Simulation & TVLA Assessment (Weeks 5–6):",
         ["– Extract cycle-accurate switching activity files (.vcd / .saif) from Vivado post-implementation timing simulations.",
          "– Implement Welch's t-test (Test Vector Leakage Assessment) to statistically confirm leakage suppression below the standard threshold (|t| < 4.5)."]),
        ("• Phase 4: FPGA Prototyping & Final Defense Preparation (Weeks 7–8):",
         ["– Design an on-chip UART/AXI interface to bridge host data once a physical FPGA board is procured in future revisions.",
          "– Consolidate synthesis benchmarks, compile the final B.Tech project dissertation, and prepare the project defense presentation."])
    ]
    for idx, (h_text, sub_list) in enumerate(fut_pts):
        p_h = tf11.paragraphs[0] if idx == 0 else tf11.add_paragraph()
        r_h = p_h.add_run(); r_h.text = h_text; r_h.font.name = "Times New Roman"; r_h.font.size = Pt(13); r_h.font.bold = True; r_h.font.color.rgb = NAVY
        p_h.space_after = Pt(2)
        for s_text in sub_list:
            p_s = tf11.add_paragraph()
            r_s = p_s.add_run(); r_s.text = s_text; r_s.font.name = "Calibri"; r_s.font.size = Pt(11); r_s.font.color.rgb = TEXT_DARK
            p_s.space_after = Pt(2)
        p_s.space_after = Pt(10)

    # ==========================================================
    # SLIDE 12: 8. REFERENCES
    # ==========================================================
    s12 = prs.slides.add_slide(blank_layout)
    add_banner(s12, "8. REFERENCES")
    add_footer(s12, 12)

    tb12 = s12.shapes.add_textbox(Inches(0.6), Inches(1.8), Inches(12.133), Inches(5.1))
    tf12 = tb12.text_frame; tf12.word_wrap = True

    refs_data = [
        "[1] R. Kumar, V. B. Suresh, S. Taneja, M. A. Anders, S. Hsu, A. Agarwal, V. De, and S. K. Mathew, \"A 7-Gbps SCA-Resistant Multiplicative-Masked AES Engine in Intel 4 CMOS,\" IEEE Journal of Solid-State Circuits, vol. 58, no. 4, pp. 1106–1116, Apr. 2023. [BASE PAPER]",
        "[2] National Institute of Standards and Technology (NIST), \"Advanced Encryption Standard (AES),\" Federal Information Processing Standards Publication FIPS PUB 197, Nov. 2001 (Updated 2023).",
        "[3] P. Kocher, J. Jaffe, and B. Jun, \"Differential Power Analysis,\" in Advances in Cryptology — CRYPTO ’99, Lecture Notes in Computer Science, vol. 1666, Springer, Berlin, Heidelberg, pp. 388–397, 1999.",
        "[4] S. Chari, C. S. Jutla, J. R. Rao, and P. Rohatgi, \"Towards Sound Approaches to Counteract Power-Analysis Attacks,\" in Advances in Cryptology — CRYPTO ’99, LNCS, vol. 1666, Springer, pp. 398–412, 1999.",
        "[5] D. Canright and L. Batina, \"A Very Compact Perfectly Masked S-Box for AES,\" in Applied Cryptography and Network Security (ACNS 2008), LNCS, vol. 5037, Springer, pp. 446–459, 2008.",
        "[6] F. Regazzoni, Y. Wang, and F.-X. Standaert, \"FPGA Implementations of Masked AES: A Comparative Evaluation,\" in CARDIS, Springer LNCS, vol. 7079, pp. 248–264, 2011.",
        "[7] G. T. Becker, J. Cooper, E. DeMulder, G. Goodwill, J. Jaffe, et al., \"Test Vector Leakage Assessment (TVLA) Methodology in Practice,\" in Proc. International Cryptographic Module Conference (ICMC), pp. 1–15, 2013."
    ]
    for idx, r_text in enumerate(refs_data):
        p = tf12.paragraphs[0] if idx == 0 else tf12.add_paragraph()
        r = p.add_run(); r.text = r_text; r.font.name = "Times New Roman"; r.font.size = Pt(10.5); r.font.color.rgb = TEXT_DARK
        p.space_after = Pt(8)

    # ==========================================================
    # SLIDE 13: THANK YOU!
    # ==========================================================
    s13 = prs.slides.add_slide(blank_layout)
    add_top_branding(s13)
    add_footer(s13, 13)

    tb13 = s13.shapes.add_textbox(Inches(1.0), Inches(2.2), Inches(11.333), Inches(3.8))
    tf13 = tb13.text_frame
    p13_1 = tf13.paragraphs[0]
    p13_1.text = "THANK YOU!"
    p13_1.font.name = "Times New Roman"
    p13_1.font.size = Pt(44)
    p13_1.font.bold = True
    p13_1.font.color.rgb = NAVY
    p13_1.alignment = PP_ALIGN.CENTER

    p13_2 = tf13.add_paragraph()
    p13_2.text = "\nQuestions & Answers"
    p13_2.font.name = "Times New Roman"
    p13_2.font.size = Pt(22)
    p13_2.font.bold = True
    p13_2.font.color.rgb = ROYAL_BLUE
    p13_2.alignment = PP_ALIGN.CENTER

    p13_3 = tf13.add_paragraph()
    p13_3.text = "Open for Discussion, Suggestions & Feedback"
    p13_3.font.name = "Calibri"
    p13_3.font.size = Pt(16)
    p13_3.font.italic = True
    p13_3.font.color.rgb = TEXT_MUTED
    p13_3.alignment = PP_ALIGN.CENTER

    p13_4 = tf13.add_paragraph()
    p13_4.text = "\nDepartment of VLSI and Communication Technology\nGalgotias College of Engineering and Technology, Gr. Noida(U.P.)"
    p13_4.font.name = "Times New Roman"
    p13_4.font.size = Pt(13)
    p13_4.font.bold = True
    p13_4.font.color.rgb = NAVY
    p13_4.alignment = PP_ALIGN.CENTER

    # Save
    pptx_out = os.path.abspath("reports/Project_Presentation_Review_2.pptx")
    prs.save(pptx_out)
    print(f"Presentation PPTX saved to: {pptx_out}")

    # Copy to root
    root_pptx = os.path.abspath("Project_Presentation_Review_2.pptx")
    shutil.copyfile(pptx_out, root_pptx)
    print(f"Copied to root: {root_pptx}")

    # Export to PDF via PowerPoint COM
    try:
        ppt_app = win32com.client.Dispatch("PowerPoint.Application")
        deck = ppt_app.Presentations.Open(pptx_out, WithWindow=False)
        pdf_out = os.path.abspath("reports/Project_Presentation_Review_2.pdf")
        deck.SaveAs(pdf_out, 32)
        deck.Close()
        ppt_app.Quit()
        root_pdf = os.path.abspath("Project_Presentation_Review_2.pdf")
        shutil.copyfile(pdf_out, root_pdf)
        print(f"Exported PDF to: {pdf_out} and {root_pdf}")
    except Exception as e:
        print(f"PowerPoint COM export error: {e}")

if __name__ == "__main__":
    build_presentation()
