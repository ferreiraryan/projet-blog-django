# 📘 Projeto Blog Django – Plataforma Completa de Blog

Um projeto completo de blog desenvolvido com o framework **Django**, incluindo painel administrativo personalizado, editor de texto avançado com **Summernote**, gerenciamento de posts, páginas, imagens e configurações globais do site.

Este projeto foi criado com foco em aprendizado e boas práticas, incluindo separação de apps, manipulação de imagens, uso de PostgreSQL, Docker e organização profissional de templates e assets.

---

## ⚙️ Tecnologias

Este projeto foi desenvolvido com as seguintes tecnologias:

- [Python](https://www.python.org/)
- [Django 5](https://www.djangoproject.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Docker & Docker Compose](https://www.docker.com/)
- [django-summernote](https://github.com/summernote/django-summernote)
- [Pillow](https://python-pillow.org/) para manipulação de imagens

---

## ✨ Funcionalidades

### 📝 Gerenciamento de Conteúdo
- Criar, editar e excluir **posts** com editor visual (Summernote)
- Criar páginas estáticas via painel admin
- Campos de SEO (título, descrição, palavras-chave)

### 🖼️ Tratamento de Imagens
- Redimensionamento automático usando **Pillow**
- Upload seguro para pastas separadas
- Campo de imagem para favicon e capa dos posts

### ⚙️ Configurações do Site
- Gerenciamento centralizado via app `site_setup`
- Favicon e informações gerais do site
- Context processor automático

### 🔐 Painel Admin Customizado
- RichTextEditor para posts
- Upload simplificado de imagens
- Melhorias visuais no admin

---

## 📂 Estrutura do Projeto

```
/projet-blog-django
├── blog/                       # App principal do blog (posts, páginas)
│   ├── admin.py                # Configurações do painel administrativo
│   ├── models.py               # Modelos Post, Page, Attachment
│   ├── views.py                # Renderização de posts e páginas
│   ├── urls.py                 # Rotas do blog
│   └── templates/blog/         # Templates do blog
│
├── site_setup/                 # Configurações globais do site
│   ├── admin.py
│   ├── models.py
│   ├── context_processors.py
│   └── templates/site_setup/
│
├── utils/
│   └── images.py               # Funções de manipulação de imagens
│
├── project/
│   ├── settings.py             # Configurações Django
│   ├── urls.py                 # Rotas globais
│   ├── wsgi.py
│   └── asgi.py
│
├── scripts/                    # Scripts do Docker
├── Dockerfile                  # Configuração da imagem Django
├── docker-compose.yml          # Subida do banco + app
├── requirements.txt
└── README.md
```

---

## 📥 Instalação e Configuração

### 🔧 Rodando com Docker (Recomendado)

```bash
# 1. Clone este repositório
git clone https://github.com/ferreiraryan/projeto-blog-django.git

# 2. Acesse o diretório
cd projeto-blog-django

# 3. Suba os containers
docker compose up --build
```

O Django ficará disponível em:

```
http://127.0.0.1:8000/
```

E o Admin:

```
http://127.0.0.1:8000/admin/
```

---

### 🐍 Rodando localmente (sem Docker)

Requer Python 3.12+ e PostgreSQL.

```bash
# 1. Crie o virtualenv
python -m venv venv
source venv/bin/activate

# 2. Instale as dependências
pip install -r requirements.txt

# 3. Configure suas variáveis de ambiente
# (DB, SECRET_KEY, DEBUG etc.)

# 4. Rode as migrations
python manage.py migrate

# 5. Inicie o servidor
python manage.py runserver
```

---

## 🤝 Contribuindo

Sinta-se à vontade para contribuir! Basta seguir os passos abaixo:

1. Faça um **fork** do projeto.
2. Crie uma **branch** com a sua feature:  
   `git checkout -b minha-feature`
3. Faça **commit** das suas alterações:  
   `git commit -m 'Adiciona nova feature'`
4. Envie para o GitHub:  
   `git push origin minha-feature`
5. Abra um **Pull Request**

---

## 📬 Contato

- **Ryan Ferreira** — ryanferreira4883@gmail.com
- **GitHub** — https://github.com/ferreiraryan
- **LinkedIn** — https://www.linkedin.com/in/ferryan/
