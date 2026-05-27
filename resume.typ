#import "@preview/modern-cv:0.10.0": *
#import "@preview/fontawesome:0.6.0": *

#let youtube-icon = box(fa-icon("youtube"))

#let impl-language = sys.inputs.at("impl-language", default: "en")
#let tr(en, ru) = if impl-language == "ru" { ru } else { en }

#show: resume.with(
  author: (
    firstname: tr("Hariton", "Харитон"),
    lastname: tr("Pitsik", "Пицик"),
    email: "pitsikhariton@gmail.com",
    phone: "(+7)-902-043-86-38",
    github: "haritonn",
    telegram: "haritonn",
    // linkedin: "Example",
    birth: "25.04.2005",
    address: tr("Saratov, Russia", "Саратов, Россия"),
    positions: tr(
      (
        "ML Engineer",
        "AI Research",
        "Data Scientist",
      ),
      (
        "ML-инженер",
        "AI-исследователь",
        "Data Scientist",
      ),
    ),
  ),
  profile-picture: image("photka.jpg", width: 4cm, height: 4cm, fit: "cover"),
  date: none,
  paper-size: "us-letter",
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
  tr("Languages", "Языки программирования"),
  ("Python", "Rust", "SQL"),
)

#resume-skill-item(
  tr("Communication languages", "Иностранные языки"),
  tr(("Russian (native)", "English (B1-B2)"), ("Русский (родной)", "Английский (B1-B2)")),
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
      "Classic ML Algorithms (Supervised & Unsupervised)",
      "Deep Learning",
      "Natural Language Processing (NLP)",
      "Large Language Models (LLM)",
    ),
    (
      "Линейная алгебра",
      "Математический анализ",
      "Теория вероятностей и статистика",
      "Информатика",
      "Классические ML-алгоритмы (supervised & unsupervised)",
      "Глубокое обучение",
      "Обработка естественного языка (NLP)",
      "Большие языковые модели (LLM)",
    ),
  ),
)

= #tr("Achievements", "Достижения")

== #tr("Teaching", "Преподавание")
#tr(
  [
    - I believe that education is awesome and that we need to talk about it. I teach a machine learning club as part of a students community at the university.
    - Recordings of the lectures on NumPy (#link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[YouTube]]) and Pandas (#link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[YouTube]]).
    - Playlist of machine learning club: (#link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[Here]])
  ],
  [
    - Считаю, что образование — это важно и об этом нужно говорить. Я являюсь преподавателем клуба машинного обучения в рамках студенческого сообщества в университете.
    - Записи лекций по NumPy (#link("https://youtu.be/5dgYgDVg4v0?si=kPaaW5UcacEL5GJK")[#youtube-icon #underline[YouTube]]) и Pandas (#link("https://youtu.be/ejz3DEaZGjw?si=OycoAyRRrbHNP0l_")[#youtube-icon #underline[YouTube]]).
    - Плейлист клуба машинного обучения: (#link("https://youtube.com/playlist?list=PLIz9eWHArYfhrL4Viaz2vEthyffHz8ZFM&si=ngvT7XNi4CJeeTyJ")[#youtube-icon #underline[Здесь]])
  ],
)

== #tr("Competitions", "Соревнования")
#tr(
  [
    - Participant of HSE & X5 contest "Growth gradient", which focused on solving time series forecasting problems (#link("https://disk.yandex.ru/i/V5_o5Yfp3gVFLQ")[#underline[Here]]);
    - As an analyst of existing hashing methods, the FSP hackathon participant examined potential sources of chaos.
  ],
  [
    - Участник конкурса HSE & X5 «Градиент роста», посвященного решению задач прогнозирования временных рядов (#link("https://disk.yandex.ru/i/V5_o5Yfp3gVFLQ")[#underline[Здесь]]);
    - Участник хакатона ФСП в роли аналитика существующих методов хеширования, анализировал возможные источники неопределённости.
  ],
)

== #tr("Other activity", "Другие активности")
#tr(
  [

  ],
  [

  ],
)

= #tr("Projects", "Проекты")

#resume-entry(
  title: tr("Local RAG System", "Локальная RAG-система"),
  location: [#github-link("github.com/haritonn/pdf_rag")],
  description: "",
)

#resume-item[#tr(
  [
    - Built a local RAG system with switchable LLM backend;
    - Implemented hybrid retrieval, document chunking and automated relevance evaluation;
    - Qdrant vector database and Streamlit interface application
  ],
  [
    - Разработал локальную RAG-систему с переключаемым LLM-бэкендом;
    - Реализовал гибридный поиск, разбиение документов на чанки и автоматическую оценку релевантности;
    - Использовал векторную базу Qdrant и интерфейс на Streamlit
  ],
)]

#resume-entry(
  title: tr("Transformers from Scratch", "Transformers from Scratch"),
  location: [#github-link("github.com/haritonn/transformers-scratch")],
  description: "",
)

#resume-item[#tr(
  [
    - Implemented the full encoder-decoder architecture in PyTorch;
    - Built a modular training pipeline for seq2seq tasks;
    - Fully customizable pipeline for experiments.
  ],
  [
    - Реализовал полную encoder-decoder архитектуру на PyTorch;
    - Разработал модульный training pipeline для seq2seq-задач;
    - Сделал полностью настраиваемый pipeline для экспериментов.
  ],
)]

#resume-entry(
  title: tr("Caption Generator", "Генератор описаний изображений"),
  location: [#github-link("github.com/haritonn/caption_gen")],
  description: "",
)

#resume-item[#tr(
  [
    - Built an image captioning pipeline with ResNet backbone and an attention-based LSTM;
    - Project wrote using only PyTorch, without pre-built implementations;
    - Beam and greedy search decoding;
    - End-to-end training workflow.
  ],
  [
    - Разработал pipeline для генерации описаний изображений с ResNet backbone и attention-based LSTM;
    - Проект реализован только на PyTorch, без готовых реализаций;
    - Реализовал beam search и greedy search decoding;
    - Настроил end-to-end процесс обучения.
  ],
)]

#resume-entry(
  title: tr("ResNet with Attention", "ResNet с attention-механизмом"),
  location: [#github-link("github.com/haritonn/resnet_attention")],
  description: "",
)

#resume-item[#tr(
  [
    - Implemented baseline ResNet and attention-augmented ResNet variants in PyTorch;
    - Compared convergence speed and classification accuracy;
    - Tracked experiments with ClearML.
  ],
  [
    - Реализовал baseline ResNet и варианты ResNet с attention-механизмом на PyTorch;
    - Сравнил скорость сходимости и accuracy классификации;
    - Отслеживал эксперименты в ClearML.
  ],
)]

= #tr("Courseworks", "Курсовые работы")

#resume-entry(
  title: tr("2nd Year: Generative Computer Vision", "2 курс: генеративное компьютерное зрение"),
  location: [#github-link("github.com/haritonn/coursework2")],
  description: tr(
    "Compared diffusion models, GANs, and LMM-based approaches for virtual try-on. Evaluated visual quality and inference time on a custom dataset.",
    "Сравнил диффузионные модели, GAN и LMM-based подходы для virtual try-on. Оценил визуальное качество и время инференса на собственном датасете.",
  ),
)

#resume-entry(
  title: tr(
    "3rd Year: Analysis of Geometric Properties of Embeddings",
    "3 курс: анализ геометрических свойств эмбеддингов",
  ),
  description: tr(
    "Ongoing coursework focused on the analysis of embedding spaces.",
    "Курсовая в процессе, посвящена анализу пространств эмбеддингов.",
  ),
)
