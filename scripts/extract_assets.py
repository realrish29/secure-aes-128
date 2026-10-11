import pymupdf
import os

pdf_path = r'C:\Users\LENOVO\.gemini\antigravity\brain\ae845df5-62ec-44c7-9389-85ecd26c0894\.user_uploaded\media_1791737089806_f189fc4f.pdf'
doc = pymupdf.open(pdf_path)
os.makedirs('extracted_assets', exist_ok=True)

seen_xrefs = set()
for i, page in enumerate(doc):
    for j, img in enumerate(page.get_images()):
        xref = img[0]
        if xref in seen_xrefs:
            continue
        seen_xrefs.add(xref)
        base_img = doc.extract_image(xref)
        image_bytes = base_img['image']
        image_ext = base_img['ext']
        w = base_img['width']
        h = base_img['height']
        path = f'extracted_assets/img_xref_{xref}_{w}x{h}.{image_ext}'
        with open(path, 'wb') as f:
            f.write(image_bytes)
        print(f"Extracted {path} ({w}x{h})")

# Also render Page 1 background or banner if needed
print("Extraction complete!")
