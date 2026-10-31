# Farzan Rahmani's M.Sc. Thesis, Version 2

This version uses the supplied edited Sharif University template with the
existing thesis content: seven chapters, appendix, abstracts, acknowledgements,
glossary, bibliography, and research figures. The original thesis and its PDF
are preserved in `../v1/`.

- Main source: `thesis.tex`; compiled document: `thesis.pdf`.
- Bibliography database: `bibs/research.bib`.
- Research-specific definitions: `styles/custom.tex`.
- Metadata: `front/info.tex`; examiner names and defense dates remain unspecified.
- Both covers include the Artificial Intelligence and Robotics specialization.
- The approval form has supervisor, internal examiner, and external examiner rows.
- The references heading is Persian; the optional Sharif font remains disabled.
- Besmellah, approval, and declaration pages follow the edited template.

Build from the repository root with `build_documents.cmd Thesis`, or run
`compile.bat` from this directory. See the [repository README](../../README.md)
for prerequisites and manual build commands. The figure preparation tool resolves
the source paper and slide directories from the repository root.

The original edited-template guide follows; its sample-content instructions
describe the generic template, while this version uses the thesis files above.

# قالب عمومی پایان‌نامه و رسالهٔ دانشگاه صنعتی شریف

این بسته یک نقطهٔ شروع قابل‌ویرایش برای نگارش پایان‌نامه یا رسالهٔ فارسی با
LaTeX است. صفحه‌های عنوان فارسی و انگلیسی، تصویب‌نامه، اظهارنامه، چکیده‌ها،
فهرست‌ها، فصل‌ها، الگوریتم فارسی، واژه‌نامه و مراجع در آن آماده شده‌اند. تمام
نام‌ها، عنوان پژوهش، نتایج، شکل‌ها و منابع اختصاصی نسخه‌ای که این قالب از آن
استخراج شده، حذف شده‌اند.

## شروع سریع

1. فایل `front/info.tex` را باز کنید و فقط مقادیر اطلاعات فارسی و انگلیسی را
   تغییر دهید.
2. متن‌های راهنما را در `front/abstract.tex`، `front/abstract-eng.tex` و
   `front/acknowledge.tex` با متن خود جایگزین کنید.
3. متن فصل‌ها را در پوشهٔ `chapters/` بنویسید.
4. شکل‌ها را در `figs/` و منابع BibTeX را در `bibs/refs.bib` قرار دهید.
5. پروژه را فقط با XeLaTeX کامپایل کنید.

## کامپایل

- ویندوز: `compile.bat`
- لینوکس و macOS: `./compile.sh`
- دستور مستقیم: `latexmk -xelatex thesis.tex`

اگر `latexmk` در دسترس نیست، ترتیب دستی زیر را اجرا کنید:

```bash
xelatex -interaction=nonstopmode -file-line-error thesis.tex
bibtex thesis
xelatex -interaction=nonstopmode -file-line-error thesis.tex
xelatex -interaction=nonstopmode -file-line-error thesis.tex
```

این قالب با pdfLaTeX سازگار نیست. خطای `xepersian ... can not use pdftex`
به این معناست که موتور کامپایل اشتباه انتخاب شده است.

### تنظیم ویرایشگر

- در TeXstudio، گزینهٔ `Default Compiler` را روی `XeLaTeX` قرار دهید.
- در Overleaf، از منوی پروژه `Compiler: XeLaTeX` را انتخاب کنید.
- در VS Code/LaTeX Workshop، `thesis.tex` را فایل اصلی قرار دهید. دستور جادویی
  ابتدای فایل و `.latexmkrc` نیز موتور مناسب را مشخص می‌کنند.

برای نصب روی Debian/Ubuntu معمولاً بسته‌های زیر کافی‌اند:

```bash
sudo apt install texlive-xetex texlive-lang-arabic texlive-latex-extra latexmk
```

در MiKTeX، نصب خودکار بسته‌های `xepersian`، `bidi` و `fontspec` را فعال و همهٔ
بسته‌ها را از MiKTeX Console به‌روزرسانی کنید. فونت‌های لازم داخل `styles/fonts`
قرار دارند و نصب جداگانه نمی‌خواهند.

## تنظیم پایان‌نامه یا رساله

در `front/info.tex`:

- برای کارشناسی ارشد، `ThesisType` را «پایان‌نامه»، `ThesisDegree` را
  «کارشناسی ارشد»، `EnglishThesisDegree` را `M.Sc.` و `EnglishThesisType` را
  `Thesis` بگذارید.
- برای دکتری، مقادیر متناظر «رساله»، «دکتری»، `Ph.D.` و `Dissertation` را
  وارد کنید.
- اگر استاد مشاور ندارید، مقدار `ThesisAdvisor` را خط تیره نگه دارید.
- نام اعضای کمیتهٔ ممتحنین را در همان فایل وارد کنید؛ نیازی به ویرایش مستقیم
  فایل‌های پوشهٔ `front/template` نیست.

## ساختار فایل‌ها

- `thesis.tex`: فایل اصلی و ترتیب اجزای پایان‌نامه
- `front/info.tex`: همهٔ اطلاعات متغیر صفحه‌های ابتدایی
- `front/template/`: صفحه‌های رسمی و اجزای ثابت قالب
- `chapters/`: فصل‌ها و پیوست اختیاری
- `bibs/refs.bib`: پایگاه منابع
- `figs/`: شکل‌ها
- `styles/custom.tex`: فرمان‌های اختصاصی هر پژوهش
- `styles/common.tex`: تنظیمات عمومی؛ معمولاً نیازی به تغییر ندارد

## ارجاع‌دهی

هر منبع را با یک شناسه در `bibs/refs.bib` تعریف و در متن با `\مرجع{شناسه}` یا
`\cite{شناسه}` فراخوانی کنید. در نثر فارسی، بهتر است نام نویسنده در جمله بیاید؛
برای نمونه: «نام خانوادگی نویسندهٔ اول و همکاران \مرجع{شناسه} نشان دادند که
...». عنوان «مراجع» در
خروجی فارسی در سمت راست صفحه قرار می‌گیرد و خود مدخل‌ها چپ‌به‌راست می‌مانند.

## نکات تحویل

- همهٔ متن‌های راهنما و جای‌نگهدارها را حذف کنید.
- فهرست‌ها و شماره‌های ارجاع را با دست ویرایش نکنید؛ کامپایل کامل آن‌ها را
  به‌روز می‌کند.
- پیش از تحویل، `CHECKLIST_FA.md` را مرور کنید.
- فایل‌های موقت مانند `aux`، `log`، `out` و `xdv` را در بستهٔ منبع نهایی قرار
  ندهید.

## اعتبار و مجوز

هستهٔ اولیهٔ این قالب توسط Hamid Zarrabi-Zadeh و مشارکت‌کنندگان پروژهٔ
`zarrabi/thesis-template` تهیه و با مجوز Creative Commons Attribution 4.0
منتشر شده است. توضیحات بیشتر در `LICENSE.md` آمده است.
