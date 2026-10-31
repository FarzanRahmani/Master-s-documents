"""Extract the seven published SORA figures as vector PDFs.

Requires PyMuPDF. Run from any directory with `python tools/prepare_figures.py`.
Coordinates exclude the English captions so each document supplies its own caption.
The source PDF is kept unchanged. Figure numbers refer to the main ICML paper.
The seminar project is not modified; both defense languages have local figures.
"""

from pathlib import Path

import fitz


def main():
    thesis = Path(__file__).resolve().parents[1]
    root = thesis.parent.parent
    source = root / "published paper" / (
        "SORA_Free_Second_Order_Attacks_in_Fast_Adversarial_Training-removed_appendix.pdf"
    )
    figures = [
        ("paper_geometry", 2, (54, 63, 558, 239)),
        ("paper_epsilon", 4, (54, 63, 558, 211)),
        ("paper_pertalign", 5, (54, 63, 558, 212)),
        ("paper_recovery", 7, (54, 63, 558, 189)),
        ("paper_stepsize", 7, (54, 241, 558, 399)),
        ("paper_generalization", 8, (54, 63, 558, 232)),
        ("paper_efficiency", 8, (54, 264, 558, 434)),
    ]
    destinations = [
        thesis / "images",
        root / "Master's Thesis Slides - Farzan Rahmani" / "Persian" / "images",
        root / "Master's Thesis Slides - Farzan Rahmani" / "English" / "images",
    ]
    with fitz.open(source) as paper:
        for destination in destinations:
            destination.mkdir(parents=True, exist_ok=True)
            for name, page_number, bounds in figures:
                rectangle = fitz.Rect(bounds)
                with fitz.open() as output:
                    page = output.new_page(width=rectangle.width, height=rectangle.height)
                    page.show_pdf_page(page.rect, paper, page_number - 1, clip=rectangle)
                    output.save(destination / f"{name}.pdf", garbage=4, deflate=True)
                print(f"Figure {name}: page {page_number} -> {destination.relative_to(root)}")


if __name__ == "__main__":
    main()
