#import "@preview/modern-cv:0.10.0": *
#import "@preview/fontawesome:0.6.0": *

#let youtube-icon = box(fa-icon("youtube", font: "Font Awesome 7 Brands"))

#let impl-language = sys.inputs.at("impl-language", default: "en")
#let tr(en, ru) = if impl-language == "ru" { ru } else { en }

#show: resume.with(
  author: (
    firstname: tr("Hariton", "Харитон"),
    lastname: tr("Pitsik", "Пицик"),
    email: tr("pitsikhariton@gmail.com", "pitsikhariton@yandex.ru"),
    // phone: "(+7)-902-043-86-38",
    github: "haritonn",
    custom: (
      (text: "@hariton_p", icon: "telegram", link: "https://t.me/hariton_p"),
    ),
    // linkedin: "Example",
    birth: "25.04.2005",
    address: tr("Saratov, Russia", "Саратов, Россия"),
    positions: ("ML Engineer", "AI Researcher", "Data Scientist"),
  ),

  profile-picture: image("photka.jpg", width: 4cm, height: 4cm, fit: "cover"),
  date: "2026",
  paper-size: "us-letter",
  accent-color: rgb("#65b95f"),
  language: tr("en", "ru"),
)

= #tr("Education", "Образование")

#resume-entry(
  title: tr("Saratov State University", "Саратовский государственный университет"),
  location: tr("Saratov, Russia", "Саратов, Россия"),
  date: tr("September 2023 - June 2027", "Сентябрь 2023 — июнь 2027"),
  description: tr(
    "Bachelor | Fundamental Computer Science and Information Technology",
    "Бакалавриат | Фундаментальная информатика и информационные технологии",
  ),
)

= #tr("Skills", "Навыки")

#resume-skill-item(
  tr("Programming languages", "Языки программирования"),
  ("Python", "Rust", "SQL"),
)

#resume-skill-item(
  tr("Spoken languages", "Языки общения"),
  tr(("Russian (native)", "English (B1-B2)"), ("Русский (родной)", "английский (B1-B2)")),
)

#resume-skill-item(
  tr("Technologies", "Технологии"),
  (
    "Git & GitHub",
    "Docker",
    "Linux",
    "LaTeX",
    "Typst",
    "Jupyter",
    "NumPy",
    "Pandas",
    "Matplotlib & Seaborn",
    "Scikit-learn",
    "XGBoost",
    "CatBoost",
    "FastAPI",
    "ClearML",
    "Streamlit",
    "PyTorch",
    "Transformers",
    "PostgreSQL",
  ),
)

#resume-skill-item(
  tr("Concepts", "Концепции"),
  tr(
    (
      "Linear Algebra",
      "Mathematical Analysis",
      "Probability Theory & Statistics",
      "Computer Science",
      "Classical ML Algorithms (Supervised & Unsupervised)",
      "Deep Learning",
      "Natural Language Processing (NLP)",
      "Large Language Models (LLM)",
    ),
    (
      "Линейная алгебра",
      "Математический анализ",
      "Теория вероятностей и статистика",
      "Информатика",
      "Классические алгоритмы машинного обучения (с учителем и без учителя)",
      "Глубокое обучение",
      "Обработка естественного языка (NLP)",
      "Большие языковые модели (LLM)",
    ),
  ),
)

= #tr("Some achievements", "Некоторые достижения")

== #tr("Teaching & Social", "Преподавание & Социальное")
#tr(
  [
    - #link("https://dsc.alivetech.org/")[Participant of Development Students Club (DSC)]
    - I believe education is important and should be shared. I teach machine learning as part of a DSC community.
      - Lecture recordings on NumPy (#link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[YouTube]]) and Pandas (#link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[YouTube]]).
      - Machine Learning Club playlist: (#link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[YouTube]])
  ],
  [
    - #link("https://dsc.alivetech.org/")[Участник студенческих клубов разработки]
    - Считаю, что образование важно и знаниями нужно делиться. Преподаю машинное обучение в рамках студенческих клубов разработки.
      - Записи лекций по NumPy (#link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[YouTube]]) и Pandas (#link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[YouTube]]).
      - Плейлист клуба машинного обучения: (#link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[YouTube]])
  ],
)

== #tr("Competitions", "Соревнования")
#tr(
  [
    - Participant in the HSE & X5 Growth Gradient contest, focused on time series forecasting (#link("https://disk.yandex.ru/i/V5_o5Yfp3gVFLQ")[#underline[Link]]).
    - Participant in the FSP hackathon as an analyst of existing hashing methods and potential sources of entropy.
  ],
  [
    - Участник конкурса HSE & X5 «Градиент роста», посвящённого прогнозированию временных рядов (#link("https://disk.yandex.ru/i/V5_o5Yfp3gVFLQ")[#underline[ссылка]]).
    - Участник хакатона ФСП в роли аналитика существующих методов хеширования и потенциальных источников энтропии.
  ],
)

= #tr("Projects", "Проекты")

#resume-entry(
  title: tr("Local RAG System", "Локальная RAG-система"),
  location: [#github-link("haritonn/pdf_rag")],
  description: "",
)

#resume-item[#tr(
  [
    - Built a fully local RAG assistant that answers questions over uploaded PDF documents;
    - Made retrieval configurable from the UI: switchable LLM, embedding model, vector database, and Top-K sources;
    - Made answers auditable by exposing the source documents and retrieved contexts in a Streamlit interface; designed the system around scalable abstractions and Qdrant.
  ],
  [
    - Разработал полностью локального RAG-ассистента для ответов на вопросы по загруженным PDF-документам;
    - Сделал поиск настраиваемым из интерфейса: смена LLM, embedding-модели, векторной БД и числа Top-K источников;
    - Обеспечил проверяемость ответов: вывел документы-источники и извлечённый контекст в Streamlit-интерфейс; построил масштабируемую архитектуру с Qdrant.
  ],
)]

#resume-entry(
  title: tr("Transformers from Scratch", "Transformers from Scratch"),
  location: [#github-link("haritonn/transformers-scratch")],
  description: "",
)

#resume-item[#tr(
  [
    - Implemented the full encoder-decoder architecture in PyTorch;
    - Built a modular training pipeline for seq2seq tasks;
    - Designed a fully customizable pipeline for experiments.
  ],
  [
    - Реализовал полную архитектуру «энкодер-декодер» на PyTorch;
    - Разработал интерфейс для обучения на seq2seq-задачи;
    - Сделал полностью настраиваемый процесс для экспериментов.
  ],
)]

#resume-entry(
  title: tr("Caption Generator", "Генератор описаний изображений"),
  location: [#github-link("haritonn/caption_gen")],
  description: "",
)

#resume-item[#tr(
  [
    - Engineered an end-to-end image-captioning pipeline on Flickr8k: ResNet-50 encoder + soft-attention LSTM decoder in PyTorch;
    - Improved training stability with scheduled sampling, label smoothing, attention regularization, gradient clipping, and early stopping;
    - Built a reproducible experiment workflow with deterministic train/validation/test splits, checkpointing, and optional ClearML tracking;
    - Evaluated caption quality with BLEU and METEOR; reached 0.1655 BLEU and 0.3774 METEOR on the validation split (~37m. weights).
  ],
  [
    - Спроектировал end-to-end пайплайн генерации англоязычных описаний изображений на Flickr8k: ResNet-50 encoder + LSTM-декодер с soft-attention на PyTorch;
    - Повысил стабильность обучения через scheduled sampling, label smoothing, регуляризацию внимания, gradient clipping и early stopping;
    - Обеспечил воспроизводимость экспериментов: детерминированные train/validation/test-разбиения, чекпоинты и опциональный трекинг в ClearML;
    - Оценил качество генерации по BLEU и METEOR: 0,1655 BLEU и 0,3774 METEOR на validation-выборке (~37млн. весов).
  ],
)]

#resume-entry(
  title: tr("cargo-smi — NVIDIA GPU Monitor", "cargo-smi — мониторинг NVIDIA GPU"),
  location: [#github-link("haritonn/cargo-smi")],
  description: "",
)

#resume-item[#tr(
  [
    - Developed a responsive terminal dashboard in Rust for unified monitoring of NVIDIA GPUs and host-system resources;
    - Integrated NVML to display per-GPU temperature, utilization, VRAM, CUDA/driver versions, and GPU-consuming processes;
    - Added multi-GPU navigation, configurable auto-refresh, manual refresh, and a 120-sample utilization history chart;
    - Surfaced CPU, RAM, swap, and the 20 most CPU-intensive processes in the same TUI using Ratatui, Crossterm, and Sysinfo.
  ],
  [
    - Разработал производительный терминальный дашборд на Rust для единого мониторинга NVIDIA GPU и системных ресурсов;
    - Интегрировал NVML: температура, загрузка, VRAM, версии CUDA/драйвера и процессы, использующие GPU -- по каждой видеокарте;
    - Реализовал переключение между несколькими GPU, настраиваемое автообновление, ручное обновление и график загрузки за 120 измерений;
    - Вывел в единый TUI показатели CPU, RAM, swap и топ-20 процессов по загрузке CPU с Ratatui, Crossterm и Sysinfo.
  ],
)]

#resume-entry(
  title: tr("ResNet with Attention", "ResNet с механизмом внимания"),
  location: [#github-link("haritonn/resnet_attention")],
  description: "",
)

#resume-item[#tr(
  [
    - Implemented baseline ResNet-50 and a channel-attention variant from scratch in PyTorch;
    - Improved classification quality over the baseline by adding channel attention; compared convergence, accuracy, and F1 score;
    - Built a reproducible training and inference workflow with early stopping, attention visualizations, and ClearML experiment tracking.
  ],
  [
    - Реализовал с нуля базовую ResNet-50 и вариант с канальным механизмом внимания на PyTorch;
    - Повысил качество классификации относительно baseline за счёт канального внимания; сравнил сходимость, accuracy и F1-score;
    - Построил воспроизводимый пайплайн обучения и инференса с early stopping, визуализацией attention и трекингом экспериментов в ClearML.
  ],
)]

= #tr("Coursework", "Курсовые работы")

#resume-entry(
  title: tr("2nd Year: Generative Computer Vision", "2 курс: генеративное компьютерное зрение"),
  location: [#github-link("haritonn/coursework2")],
  description: tr(
    "Compared diffusion models, GANs, and large multimodal model (LMM)-based approaches for virtual try-on. Evaluated visual quality and inference time on a custom dataset.",
    "Сравнил диффузионные модели, GAN и подходы на основе LMM для виртуальной примерки. Оценил визуальное качество и время вывода модели на собственном наборе данных.",
  ),
)

#resume-entry(
  title: tr(
    "3rd Year: Text-Embedding Geometry & HDBSCAN Clustering",
    "3 курс: геометрия текстовых эмбеддингов и кластеризация HDBSCAN",
  ),
  location: [#github-link("haritonn/coursework3")],
  description: tr(
    "Investigated how embedding geometry affects news-event clustering: ran 2,604 HDBSCAN experiments across 3 embedding families, 93 feature spaces, and 28 parameter values. Showed that UMAP improved the best F1 for every embedding family; achieved F1 = 0.837 with Jina Embeddings v5 + UMAP(10).",
    "Исследовал влияние геометрии эмбеддингов на кластеризацию новостных событий: провёл 2 604 эксперимента HDBSCAN для 3 семейств эмбеддингов, 93 пространств признаков и 28 значений параметра. Показал, что UMAP повышает лучший F1 для каждого семейства; достиг F1 = 0,837 с Jina Embeddings v5 + UMAP(10).",
  ),
)
