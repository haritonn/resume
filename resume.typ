#import "@preview/modern-cv:0.10.0": *
#import "@preview/fontawesome:0.6.0": *

#let youtube-icon = box(fa-icon("youtube", font: "Font Awesome 7 Brands"))
#let impl-language = sys.inputs.at("impl-language", default: "en")
#let tr(en, ru) = if impl-language == "ru" { ru } else { en }

#show: resume.with(
  author: (
    firstname: tr("Hariton", "Харитон"),
    lastname: tr("Pitsik", "Пицик"),
    email: tr("pitsikhariton@yandex.ru", "pitsikhariton@yandex.ru"),
    github: "haritonn",
    custom: ((text: "@hariton_p", icon: "telegram", link: "https://t.me/hariton_p"),),
    birth: "25.04.2005",
    address: tr("Saratov, Russia", "Саратов, Россия"),
    positions: ("Junior ML Engineer", "ML Intern"),
  ),
  profile-picture: image("photka.jpg", width: 4cm, height: 4cm, fit: "cover"),
  date: "2026",
  paper-size: "us-letter",
  accent-color: rgb("#65b95f"),
  language: tr("en", "ru"),
  font: "Source Sans 3",
  header-font: "Roboto",
)

= #tr("About Me", "О себе")

#tr(
  [Fourth-year computer science student passionate about machine learning, with a focus on NLP, LLMs, and information retrieval. Build Python/PyTorch pipelines, evaluate model quality, and teach ML in a student community. Open to ML engineering roles and internships.],
  [Студент 4 курса, увлекаюсь машинным обучением, особенно NLP, LLM и информационным поиском. Разрабатываю пайплайны на Python и PyTorch, оцениваю качество моделей и преподаю ML в студенческом сообществе. Рассматриваю работу и стажировки в ML engineering.],
)

= #tr("Skills", "Навыки")

#resume-skill-item(tr("Programming languages", "Языки программирования"), ("Python", "SQL", "Rust", "Go"))
#resume-skill-item("ML / DL", ("PyTorch", "Scikit-learn", "XGBoost", "CatBoost", "NumPy", "Pandas", "Polars"))
#resume-skill-item("NLP / LLM", ("Transformers", "RAG", "Qdrant", "FAISS", "Ollama"))
#resume-skill-item("Agentic systems", ("LangChain", "LangGraph", "LangSmith", "MCP"))
#resume-skill-item(tr("Evaluation & experiments", "Оценка и эксперименты"), tr(
  ("Jupyter notebook", "ranx", "Optuna", "ClearML", "MLFlow"),
  ("Jupyter notebook", "ranx", "Optuna", "ClearML", "MLFlow"),
))
#resume-skill-item(tr("Engineering", "Разработка"), ("Git & GitHub", "Docker", "Linux", "FastAPI", "Pydantic", "PostgreSQL", "Streamlit"))
#resume-skill-item(tr("Testing & CI", "Тестирование и CI"), tr(
  ("pytest", "Unit/integration testing", "GitHub Actions"),
  ("pytest", "Модульные и интеграционные тесты", "GitHub Actions"),
))
#resume-skill-item(tr("Foundations", "Базовые знания"), tr(
  ("Linear algebra", "Calculus", "Probability & statistics", "Supervised & unsupervised learning", "NLP"),
  ("Линейная алгебра", "Матанализ", "Теория вероятностей и статистика", "Обучение с учителем и без учителя", "NLP"),
))
#resume-skill-item(tr("Spoken languages", "Языки общения"), tr(("Russian (native)", "English (B2)"), ("Русский (родной)", "Английский (B2)")))

= #tr("Practical Experience", "Практический опыт")

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("Speech Recognition and Speaker Diarization", "Распознавание речи и диаризация спикеров"),
  location: [#github-link("haritonn/asr_practice")],
  description: tr("University practical placement project.", "Проект производственной практики."),
)
#resume-item[#tr(
  [
    - Built a Russian dialogue transcription pipeline with Faster-Whisper, Silero VAD, and pyannote; linked transcripts to speakers.
    - Added domain-specific catalog-term recognition using a NeMo CTC context graph without ASR fine-tuning; evaluated WER, CER, DER, and terminology F1.
  ],
  [
    - Разработал пайплайн транскрибации русскоязычных диалогов: Faster-Whisper, Silero VAD и pyannote; связал реплики со спикерами.
    - Добавил распознавание терминов каталога через NeMo CTC context graph без дообучения ASR; оценил WER, CER, DER и F1 распознавания терминов.
  ],
)]
]

= #tr("Projects", "Проекты")

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("Local RAG for Scientific Papers", "Локальная RAG-система по научным статьям"),
  location: [#github-link("haritonn/qasper_rag_system")],
)
#resume-item[#tr(
  [
    - Built document question answering on QASPER: paragraph indexing, BGE/BM42 embeddings via FastEmbed, Qdrant hybrid retrieval with RRF, cross-encoder reranking, and local generation through Ollama/Qwen3 8B.
    - Evaluated within-paper retrieval on 888 of 1,005 validation questions: reranking raised MRR\@10 from 0.4313 to 0.5221 and Recall\@10 from 0.6932 to 0.7493.
    - Separated retrieval and generation components behind interfaces; added source metadata in the CLI, unit/integration tests, GitHub Actions CI, and locked dependencies with uv.
  ],
  [
    - Разработал вопросно-ответную систему на QASPER: индексация абзацев, BGE/BM42-эмбеддинги через FastEmbed, гибридный поиск Qdrant с RRF, cross-encoder reranking и локальная генерация через Ollama/Qwen3 8B.
    - Оценил поиск внутри статьи на 888 из 1 005 validation-вопросов: reranking повысил MRR\@10 с 0,4313 до 0,5221 и Recall\@10 с 0,6932 до 0,7493.
    - Разделил компоненты поиска и генерации интерфейсами; добавил метаданные источников в CLI, модульные и интеграционные тесты, CI в GitHub Actions и фиксацию зависимостей через uv.
  ],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("Biomedical Search", "Биомедицинская поисковая система"),
  location: [#github-link("haritonn/fitness_se")],
)
#resume-item[#tr(
  [
    - Built search over 23,283 Europe PMC papers on training, recovery, and sports nutrition: weighted BM25, MedCPT/FAISS semantic search, and hybrid retrieval with RRF.
    - Evaluated on 150 queries and 3,000 graded relevance judgments; BM25 reached test nDCG\@10 0.5019. Added Ollama/Qwen3 8B-assisted relevance labeling, a Streamlit UI, and GitHub Actions CI.
  ],
  [
    - Разработал поиск по 23 283 статьям Europe PMC о тренировках, восстановлении и спортивном питании: взвешенный BM25, семантический поиск MedCPT/FAISS и гибридный поиск с RRF.
    - Оценил качество на 150 запросах и 3 000 оценках релевантности; BM25 достиг тестового nDCG\@10 = 0,5019. Добавил предварительную разметку через Ollama/Qwen3 8B, Streamlit-интерфейс и CI в GitHub Actions.
  ],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("Image Captioning", "Генерация описаний изображений"),
  location: [#github-link("haritonn/caption_gen")],
)
#resume-item[#tr(
  [
    - Built a Flickr8k image-captioning pipeline in PyTorch: ResNet-50 encoder and soft-attention LSTM decoder; used scheduled sampling, label smoothing, and early stopping.
    - Made experiments reproducible with deterministic splits, checkpoints, and optional ClearML tracking; achieved validation BLEU 0.1655 and METEOR 0.3774.
  ],
  [
    - Разработал генерацию описаний изображений на Flickr8k в PyTorch: ResNet-50 и LSTM-декодер с soft-attention; применил scheduled sampling, label smoothing и early stopping.
    - Обеспечил воспроизводимость через фиксированные разбиения, чекпоинты и опциональный ClearML; получил BLEU 0,1655 и METEOR 0,3774 на validation-выборке.
  ],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("ResNet with Channel Attention", "ResNet с канальным механизмом внимания"),
  location: [#github-link("haritonn/resnet_attention")],
)
#resume-item[#tr(
  [
    - Implemented ResNet-50 and a channel-attention variant from scratch in PyTorch; compared convergence, accuracy, and F1.
    - Added training/inference pipelines, early stopping, attention visualizations, and ClearML experiment tracking.
  ],
  [
    - Реализовал с нуля ResNet-50 и вариант с канальным attention на PyTorch; сравнил сходимость, accuracy и F1.
    - Добавил пайплайны обучения и инференса, early stopping, визуализацию внимания и трекинг экспериментов в ClearML.
  ],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("cargo-smi — NVIDIA GPU Monitor", "cargo-smi — мониторинг NVIDIA GPU"),
  location: [#github-link("haritonn/cargo-smi")],
)
#resume-item[#tr(
  [
    - Built a Rust TUI for GPU and host monitoring using NVML, Ratatui, Crossterm, and Sysinfo: VRAM, utilization, temperature, CPU/RAM, and processes.
    - Added multi-GPU navigation, configurable refresh, and utilization history charts.
  ],
  [
    - Разработал Rust TUI для мониторинга GPU и системы на NVML, Ratatui, Crossterm и Sysinfo: VRAM, загрузка, температура, CPU/RAM и процессы.
    - Реализовал переключение между GPU, настраиваемое обновление и графики истории загрузки.
  ],
)]
]

= #tr("Coursework", "Курсовые работы")

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("Bachelor's Thesis: GraphRAG for Question-Answering Systems Based on Documents and a Knowledge Graph.", "Дипломная работа: GraphRAG для вопросно-ответных систем на основе документов и графа знаний"),
)
#resume-item[#tr(
  [WIP],
  [WIP],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#block(above: 1em, below: 0.65em, sticky: true)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    align: (left + top, right + top),
    text(size: 12pt, weight: "bold", fill: rgb("#333333"), tr(
      "3rd Year: Restoring the event hierarchy by clustering text embeddings",
      "3 курс: Восстановление иерархии событий методом кластеризации текстовых эмбеддингов",
    )),
    box[#secondary-right-header[#github-link("haritonn/coursework3")]],
  )
]
#resume-item[#tr(
  [Investigated embedding geometry in news-event clustering: 2,604 HDBSCAN experiments across 3 embedding families, 93 feature spaces, and 28 parameter values. UMAP improved the best F1 for every family; Jina Embeddings v5 + UMAP(10) achieved F1 0.837.],
  [Исследовал влияние геометрии эмбеддингов на кластеризацию новостных событий: 2 604 эксперимента HDBSCAN, 3 семейства эмбеддингов, 93 пространства признаков и 28 значений параметра. UMAP повысил лучший F1 для каждого семейства; Jina Embeddings v5 + UMAP(10) дали F1 = 0,837.],
)]
]

#block(breakable: false, inset: (top: 3pt, bottom: 5pt))[
#resume-entry(
  title: tr("2nd Year: Generative Computer Vision", "2 курс: генеративное компьютерное зрение"),
  location: [#github-link("haritonn/coursework2")],
)
#resume-item[#tr(
  [Compared diffusion models, GANs, and large multimodal model (LMM) approaches for virtual try-on; evaluated visual quality and inference time on a custom dataset.],
  [Сравнил диффузионные модели, GAN и подходы на основе мультимодальных моделей (LMM) для виртуальной примерки; оценил визуальное качество и время инференса на собственном датасете.],
)]
]

= #tr("Education", "Образование")

#resume-entry(
  title: tr("Saratov State University", "Саратовский государственный университет"),
  location: tr("Saratov, Russia", "Саратов, Россия"),
  date: tr("September 2023 – June 2027", "Сентябрь 2023 — июнь 2027"),
  description: tr(
    "Bachelor | Fundamental Computer Science and Information Technology",
    "Бакалавриат | Фундаментальная информатика и информационные технологии",
  ),
)

= #tr("Teaching & Community", "Преподавание и сообщество")

#tr(
  [
    - Teach machine learning in #link("https://dsc.alivetech.org/")[#underline[Development Students Clubs (DSC)]].
    - Lecture recordings: #link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[NumPy]], #link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[Pandas]]; #link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[ML Club playlist]].
  ],
  [
    - Преподаю машинное обучение в #link("https://dsc.alivetech.org/")[#underline[Development Students Clubs (DSC)]].
    - Записи лекций: #link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[NumPy]], #link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[Pandas]]; #link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[плейлист клуба ML]].
  ],
)
