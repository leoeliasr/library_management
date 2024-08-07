
# Gerenciamento de Bibliotecas

## Descrição do Produto
O sistema é uma solução para o gerenciamento de bibliotecas, abordando diversos aspectos através de módulos específicos necessários para a administração de livros, usuários, empréstimos e reservas de títulos. Esta aplicação é uma ferramenta essencial para a modernização das bibliotecas, proporcionando uma gestão integrada que não só aprimora o sistema organizacional, mas também intensifica processos administrativos, beneficiando todos os usuários. O público-alvo da aplicação inclui frequentadores de bibliotecas e seus funcionários, visando melhorar a experiência e a eficiência no gerenciamento de recursos bibliográficos.

## Funcionalidades Principais

### CRUD de Livros
- **Cadastrar Livro**: Adicionar novos livros ao sistema.
- **Consultar Livro**: Buscar informações sobre livros cadastrados.
- **Alterar Livro**: Atualizar informações dos livros existentes.
- **Deletar Livro**: Remover livros do sistema.

### CRUD entre 3 Tabelas

#### Cadastrar Empréstimo
- **Verificar Disponibilidade**: Checar se o livro está disponível para empréstimo.
- **Registrar Data de Empréstimo**: Registrar a data em que o empréstimo foi realizado.
- **Registrar Data de Devolução Prevista**: Registrar a data prevista para a devolução do livro.
- **Associar Empréstimo ao Usuário**: Associar o empréstimo ao usuário que está realizando a operação.

*Tabelas envolvidas: `LIVRO`, `USER`, `EMPRÉSTIMO`*

#### Cadastrar Reserva
- **Verificar Disponibilidade**: Checar se o livro está disponível para reserva.
- **Registrar Data de Reserva**: Registrar a data em que a reserva foi feita.
- **Registrar Data de Expiração da Reserva**: Registrar a data em que a reserva expira.
- **Associar Reserva ao Usuário**: Associar a reserva ao usuário que está realizando a operação.

*Tabelas envolvidas: `LIVRO`, `USER`, `RESERVA`*

#### Consultar Histórico de Empréstimos de um Usuário
- **Selecionar Usuário**: Escolher o usuário cujo histórico será consultado.
- **Listar Empréstimos**: Listar todos os empréstimos associados ao usuário, incluindo informações dos livros e datas de empréstimo e devolução.
- **Exibir Detalhes dos Livros**: Exibir detalhes como título e autor dos livros emprestados.

*Tabelas envolvidas: `LIVRO`, `USER`, `EMPRÉSTIMO`*

#### Devolver Livro
- **Selecionar Livro**: Escolher o livro a ser devolvido.
- **Registrar Data de Devolução**: Registrar a data em que o livro foi devolvido.
- **Atualizar Disponibilidade do Livro**: Atualizar o status de disponibilidade do livro no sistema.

*Tabelas envolvidas: `LIVRO`, `USER`, `EMPRÉSTIMO`, `RESERVA`

## Outras funcionalidades
- **Cadastrar Usuário**: Adicionar novos usuários ao sistema.
- **Consultar Usuário**: Consultar informações sobre usuários existentes.
- **Login**: Permitir que os usuários façam login no sistema.
- **Excluir Reserva**: Remover reservas do sistema.
- **Cadastrar empréstimo**: Adicionar novos empréstimo ao sistema.
- **Excluir Empréstimo**: Remover empréstimos do sistema.
- **Alterar Empréstimo**: Atualizar informações dos empréstimos existentes.
- **Consultar Empréstimo**: Consultar informações sobre empréstimos

## Tecnologias Utilizadas
- **Ruby on Rails**: Framework back-end 
- **PostgreSQL**: Banco de dados para armazenar informações sobre livros, usuários, empréstimos e reservas.
- **RSpec**: Ferramenta para testes 
- **React**: Framework front-end
  
- ## Colaboradores

- **Iara Campos Rodrigues**
- **Leonardo Elias Rodrigues**
- **Samuel Henrique Morais**

## Como Executar o Projeto 

1. Clone o repositório: 
```bash
git clone https://github.com/iaracampos/library_management.git
cd library_management

