<h1 align="center">🛒 Ecommerce CodeIgniter Bootstrap</h1>

<p align="center">
  <img src="https://img.shields.io/badge/PHP-7.4%2B-777BB4?style=for-the-badge&logo=php&logoColor=white" />
  <img src="https://img.shields.io/badge/CodeIgniter-3.x-EF4223?style=for-the-badge&logo=codeigniter&logoColor=white" />
  <img src="https://img.shields.io/badge/Bootstrap-4.x-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" />
  <img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
</p>

<p align="center">
  Plataforma de e-commerce completa construída com <strong>CodeIgniter</strong> e <strong>Bootstrap</strong>, com suporte a carrinho de compras, checkout, painel de vendedores e muito mais.
</p>

---

## 📋 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Funcionalidades](#-funcionalidades)
- [Tecnologias](#-tecnologias)
- [Pré-requisitos](#-pré-requisitos)
- [Instalação](#-instalação)
  - [Com Docker](#-com-docker-recomendado)
  - [Manual](#-instalação-manual)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Avaliação Heurística](#-avaliação-heurística-nielsen)
- [Contribuição](#-contribuição)
- [Licença](#-licença)

---

## 🚀 Sobre o Projeto

O **Ecommerce CodeIgniter Bootstrap** é uma aplicação web de comércio eletrônico desenvolvida com o framework PHP CodeIgniter e estilizada com Bootstrap 4. O projeto implementa um fluxo completo de e-commerce, desde a vitrine de produtos até o checkout final, além de um painel para vendedores gerenciarem seus produtos.

---

## ✨ Funcionalidades

- 🏠 **Página Inicial** — Vitrine de produtos em destaque e promoções
- 🔍 **Catálogo de Produtos** — Listagem com categorias e busca
- 🛒 **Carrinho de Compras** — Adição, remoção e atualização de itens
- 💳 **Checkout** — Fluxo completo de finalização de pedido
- 👤 **Autenticação** — Cadastro e login de usuários
- 🏪 **Painel do Vendedor** — Gestão de produtos e pedidos
- 📝 **Blog** — Seção de artigos e novidades
- 📩 **Contato** — Formulário de contato
- 🔌 **API REST** — Endpoints para integração externa

---

## 🛠 Tecnologias

| Tecnologia | Versão | Uso |
|---|---|---|
| PHP | 7.4+ | Backend principal |
| CodeIgniter | 3.x | Framework MVC |
| Bootstrap | 4.x | Interface e responsividade |
| MySQL | 8.0 | Banco de dados |
| Docker | Latest | Containerização |
| Adminer | Latest | Gerenciamento do banco |

---

## 📦 Pré-requisitos

Escolha uma das opções abaixo:

**Via Docker (Recomendado):**
- [Docker](https://www.docker.com/) e Docker Compose instalados

**Instalação Manual:**
- PHP 7.4 ou superior
- MySQL 5.7+ / MySQL 8.0
- Servidor web: Apache ou Nginx (com `mod_rewrite` habilitado)

---

## ⚙️ Instalação

### 🐳 Com Docker (Recomendado)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/luanhayalla2/Ecommerce-CodeIgniter-Bootstrap-master.git
   cd Ecommerce-CodeIgniter-Bootstrap-master
   ```

2. **Configure as variáveis de ambiente:**
   ```bash
   cp .env.example .env
   # Edite o arquivo .env com suas configurações
   ```

3. **Suba os containers:**
   ```bash
   docker-compose up -d
   ```

4. **Acesse a aplicação:**

   | Serviço | URL |
   |---|---|
   | 🌐 Aplicação | http://localhost:8000 |
   | 🗄️ Adminer (DB) | http://localhost:8080 |

> O banco de dados é inicializado automaticamente a partir do arquivo `database.sql`.

---

### 🔧 Instalação Manual

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/luanhayalla2/Ecommerce-CodeIgniter-Bootstrap-master.git
   cd Ecommerce-CodeIgniter-Bootstrap-master
   ```

2. **Importe o banco de dados:**
   ```bash
   mysql -u root -p ecommerce_ci < database.sql
   ```

3. **Configure a conexão com o banco:**

   Edite o arquivo `application/config/database.php`:
   ```php
   $db['default'] = array(
       'hostname' => 'localhost',
       'username' => 'seu_usuario',
       'password' => 'sua_senha',
       'database' => 'ecommerce_ci',
       ...
   );
   ```

4. **Configure a URL base:**

   Edite `application/config/config.php`:
   ```php
   $config['base_url'] = 'http://localhost/Ecommerce-CodeIgniter-Bootstrap-master/';
   ```

5. **Inicie o servidor (desenvolvimento):**
   ```bash
   php -S localhost:8000
   # ou via XAMPP/Wamp apontando para a pasta do projeto
   ```

---

## 📁 Estrutura do Projeto

```
Ecommerce-CodeIgniter-Bootstrap-master/
├── application/
│   ├── controllers/        # Controladores MVC
│   │   ├── Home.php        # Página inicial e produtos
│   │   ├── Checkout.php    # Fluxo de checkout
│   │   ├── Users.php       # Autenticação de usuários
│   │   ├── Vendor.php      # Painel do vendedor
│   │   ├── ShoppingCartPage.php  # Carrinho de compras
│   │   ├── Blog.php        # Blog e artigos
│   │   ├── Contacts.php    # Formulário de contato
│   │   └── Api/            # Endpoints REST
│   ├── models/             # Modelos e acesso ao banco de dados
│   ├── views/              # Templates e layouts HTML
│   └── config/             # Configurações do framework
├── assets/                 # CSS, JS, imagens e fontes
├── system/                 # Core do CodeIgniter (não editar)
├── database.sql            # Script de criação do banco de dados
├── docker-compose.yml      # Configuração Docker
├── Dockerfile              # Imagem Docker PHP
└── index.php               # Ponto de entrada da aplicação
```

---

## 📊 Avaliação Heurística (Nielsen)

Abaixo está a análise de usabilidade da aplicação com base nas **10 Heurísticas de Jakob Nielsen**:

| # | Heurística | Status | Observação |
|---|---|:---:|---|
| 1 | Visibilidade do estado do sistema | ⚠️ | Falta feedback visual imediato ao adicionar ao carrinho |
| 2 | Correspondência com o mundo real | ✅ | Terminologia familiar: "Carrinho", "Checkout", "Produtos" |
| 3 | Controle e liberdade do usuário | ⚠️ | Não há opção "Desfazer" ao remover item do carrinho |
| 4 | Consistência e padrões | ✅ | Bootstrap garante alta consistência visual |
| 5 | Prevenção de erros | ⚠️ | Validação no formulário de Checkout ocorre apenas após envio |
| 6 | Reconhecimento em vez de memorização | ✅ | Menus claros de categorias e barra de busca |
| 7 | Flexibilidade e eficiência de uso | ⚠️ | Ausência de atalhos ou compra com 1 clique |
| 8 | Design estético e minimalista | ✅ | Layout responsivo e focado no produto |
| 9 | Recuperação de erros | ⚠️ | Mensagens de erro genéricas |
| 10 | Ajuda e documentação | ⚠️ | Falta seção de FAQ / Suporte visível |

### 🔧 Melhorias Propostas

| # | Problema | Heurística | Solução |
|---|---|---|---|
| 1 | Falta de feedback ao adicionar produto | H1 | Adicionar notificação *Toast* e spinner no botão |
| 2 | Sem opção de desfazer remoção do carrinho | H3 | Exibir botão "Desfazer" por 5–10 segundos |
| 3 | Validação do checkout só no envio | H5 | Implementar validação em tempo real com JavaScript |
| 4 | Mensagens de erro genéricas | H9 | Exibir mensagens específicas e orientadas à solução |
| 5 | Sem portal de ajuda acessível | H10 | Criar página de Ajuda/FAQ e linkar no rodapé/menu |

---

## 🤝 Contribuição

Contribuições são bem-vindas! Siga os passos abaixo:

1. Faça um **fork** do projeto
2. Crie uma **branch** para sua feature: `git checkout -b feature/minha-feature`
3. Faça o **commit** das suas alterações: `git commit -m 'feat: adiciona minha feature'`
4. Faça o **push** para a branch: `git push origin feature/minha-feature`
5. Abra um **Pull Request**

> Consulte também o [Código de Conduta](CODE_OF_CONDUCT.md) e o [Template de Issues](ISSUE_TEMPLATE.md).

---

## 📄 Licença

Este projeto está sob a licença **MIT**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---

<p align="center">
  Feito com ❤️ usando CodeIgniter + Bootstrap
</p>
