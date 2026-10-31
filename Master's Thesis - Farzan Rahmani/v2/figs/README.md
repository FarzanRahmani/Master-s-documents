# پوشهٔ شکل‌ها

فایل‌های تصویری پایان‌نامه را در این پوشه قرار دهید. قالب به‌طور پیش‌فرض مسیر
`figs/` را برای شکل‌ها می‌شناسد. بهتر است نام فایل‌ها انگلیسی، کوتاه و بدون فاصله
باشد و برای نمودارها در صورت امکان از PDF برداری استفاده شود.

نمونه:

```latex
\begin{figure}[t]
    \centering
    \includegraphics[width=0.8\textwidth]{my-figure.pdf}
    \caption{عنوان فارسی شکل}
    \label{fig:my-figure}
\end{figure}
```
