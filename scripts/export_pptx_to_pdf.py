import os
import shutil
import win32com.client

cwd = r"C:\Users\LENOVO\Documents\antigravity\fervent-kepler"
pptx_src = os.path.join(cwd, "reports", "Project_Presentation_Review_2.pptx")
pptx_dst = os.path.join(cwd, "Project_Presentation_Review_2.pptx")
pdf_dst1 = os.path.join(cwd, "reports", "Project_Presentation_Review_2.pdf")
pdf_dst2 = os.path.join(cwd, "Project_Presentation_Review_2.pdf")

# Copy pptx to root
shutil.copyfile(pptx_src, pptx_dst)
print("Copied PPTX to root directory.")

# Convert to PDF using PowerPoint Application COM
try:
    ppt_app = win32com.client.Dispatch("PowerPoint.Application")
    # Open presentation (read-only, untitled, with window = False)
    deck = ppt_app.Presentations.Open(pptx_src, WithWindow=False)
    # FormatType 32 = ppSaveAsPDF
    deck.SaveAs(pdf_dst1, 32)
    deck.Close()
    ppt_app.Quit()
    shutil.copyfile(pdf_dst1, pdf_dst2)
    print(f"Exported PDF to: {pdf_dst1} and {pdf_dst2}")
except Exception as e:
    print(f"PowerPoint COM export error: {e}")
