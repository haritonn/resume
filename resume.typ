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
    - Built a local RAG system with a switchable LLM backend;
    - Implemented hybrid retrieval, document chunking, and automated relevance evaluation;
    - Integrated the Qdrant vector database and built a Streamlit interface.
  ],
  [
    - Разработал локальную RAG-систему со сменяемым LLM-бэкендом;
    - Реализовал гибридный поиск, разбиение документов на фрагменты и оценку релевантности;
    - Интегрировал векторную базу данных Qdrant и интерфейс на Streamlit.
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
    - Built an image captioning train pipeline with a ResNet backbone and an attention-based LSTM;
    - Implemented the project entirely in PyTorch without pre-built components;
    - Implemented beam search and greedy decoding;
    - Built an end-to-end training workflow.
  ],
  [
    - Разработал пайплайн обучения на задачу генерации описаний изображений на основе ResNet и LSTM с механизмом внимания;
    - Реализовал проект полностью на PyTorch, без готовых компонентов;
    - Реализовал лучевой поиск и жадное декодирование;
    - Настроил полный цикл обучения.
  ],
)]

#resume-entry(
  title: tr("ResNet with Attention", "ResNet с механизмом внимания"),
  location: [#github-link("haritonn/resnet_attention")],
  description: "",
)

#resume-item[#tr(
  [
    - Implemented baseline ResNet and attention-augmented variant in PyTorch;
    - Compared convergence speed and classification accuracy;
    - Tracked experiments with ClearML.
  ],
  [
    - Реализовал базовую ResNet и вариант с механизмом внимания на PyTorch;
    - Сравнил скорость сходимости и точность классификации;
    - Отслеживал эксперименты в ClearML.
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
    "3rd Year: Analysis of Geometric Properties of Embeddings",
    "3 курс: анализ геометрических свойств эмбеддингов",
  ),
  location: [#github-link("haritonn/coursework3")],
  description: tr(
    "Ongoing coursework focused on the analysis of embedding spaces.",
    "Курсовая работа в процессе; тема: анализ пространств эмбеддингов.",
  ),
)
