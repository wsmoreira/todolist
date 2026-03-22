# Todolist API

API REST de gerenciamento de tarefas desenvolvida com Java e Spring Boot.

## Objetivo

Projeto desenvolvido durante o 2º semestre do curso de ADS, com o objetivo de aprender os fundamentos do desenvolvimento back-end com Java e Spring Boot.

## O que aprendi

- Criação de API REST com **Spring Boot**
- Modelagem de dados com **Spring Data JPA**
- Banco de dados em memória com **H2 Database**
- Autenticação com **Basic Auth** e criptografia de senhas com **BCrypt**
- Filtros HTTP para autenticação de rotas
- Validação de dados no controller
- Containerização com **Docker**
- Deploy em produção no **Render**

## Tecnologias

- Java 21
- Spring Boot 4.0.4
- Spring Data JPA
- H2 Database
- BCrypt
- Docker
- Render (deploy)

## Endpoints

| Método | Rota | Descrição | Auth |
|--------|------|-----------|------|
| POST | `/users/` | Criar usuário | Não |
| POST | `/tasks/` | Criar tarefa | Basic Auth |
| GET | `/tasks/` | Listar tarefas do usuário | Basic Auth |
| PUT | `/tasks/{id}` | Atualizar tarefa | Basic Auth |

## Como rodar localmente

```bash
./mvnw spring-boot:run
```

A aplicação roda na porta **8081**.

## Deploy

A API está disponível em: https://todolist-o3cm.onrender.com
