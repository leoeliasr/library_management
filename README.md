
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

#### Excluir Empréstimo
- **Selecionar Empréstimo**: Escolher o empréstimo a ser excluído.
- **Atualizar Disponibilidade do Livro**: - Atualizar o status de disponibilidade do livro no sistema.

*Tabelas envolvidas: `LIVRO`, `USER`, `EMPRÉSTIMO`

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

- **Alterar Empréstimo**: Atualizar informações dos empréstimos existentes.
- **Consultar Empréstimo**: Consultar informações sobre empréstimos

## Boas Práticas de Desenvolvimento

**Comentários e Documentação:**

- Código Autoexplicativo: Escrever Código claro e compreensível. Usar comentários para explicar partes complexas quando necessário.
- Documentar Métodos e Funções: Descrever o propósito, os parâmetros e os valores de retorno de métodos e funções de forma clara.

**Código Limpo (Clean Code):**

- Usar Nomes Significativos: Usar nomes descritivos para variáveis, métodos e classes.
- Escrever Funções Curtas e Objetivas: Fazer com que cada Função deve realizar uma única tarefa, facilitando a legibilidade e manutenção.

**Responsabilidade Única:**

- Funções com Responsabilidade Única: A função deve focar em uma tarefa específica ou um grupo relacionado de tarefas.

**Formatação e Organização:**

- Consistência: Manter uma formatação consistente no código.
- Organização Lógica: Agrupar funções e variáveis relacionadas para melhorar a clareza.

**Tratamento de Erros:**

- Exceções: Usar exceções para erros excepcionais, não para controle de fluxo.

**Testabilidade:**

- Código Testável: Separar a lógica de negócios das dependências para facilitar o teste.

**Princípios SOLID:**

- SRP (Single Responsibility Principle): A classe deve ter uma única responsabilidade.
- OCP (Open/Closed Principle): O código deve ser extensível sem modificar o existente.
- LSP (Liskov Substitution Principle): Subtipos devem ser substituíveis por seus tipos base.
ISP (Interface Segregation Principle): Usar várias interfaces específicas em vez de uma única geral.
-DIP (Dependency Inversion Principle): Depender de abstrações, não de implementações concretas.

Refatoração:

- Melhoria Contínua: Refatorar regularmente para melhorar a estrutura sem mudar o comportamento.
- Evitar Código Duplicado (DRY): Não repitir códigos para reduzir erros e facilitar manutenção.

**Simplicidade:**

- KISS (Keep It Simple, Stupid): Manter o código simples e evite complexidade desnecessária.

**Controle de Versionamento:**

- Branch main: FAZER alterações na branch main e use commits com mensagens claras.

**Testes Automatizados:**

- Cobertura de Testes: Garantir que novas funcionalidades sejam cobertas por testes automatizados.
- Testes Independentes: Testes devem ser pequenos e verificar um comportamento específico por vez, usando frameworks apropriados.


## Tecnologias Utilizadas

- **Ruby**: 3.1.2
- **Ruby on Rails**: 7.1.3.4
- **PostgreSQL**: 16.3
- **Bootstrap**: 5.0.0 

## Estrutura de Diretório

```sh
library_management/
|-- Documentação/
|   |-- Diagramas/
|   |-- Requisitos/
|-- Padrões Adotados/
|-- app/
|   |-- app
|       |-- assets
|       |-- controllers
|       |-- models
|       |-- views
|   |-- db
|       |-- migrate
|   |-- config
|   |-- log
|-- README.md

```

## Regras e Padrões de Uso do Git

Commits

- Descrever de forma clara e objetiva o propósito do commit.
- Usar gerúndio para definir a mensagem do commit.
- Manter os commits atômicos, abordando apenas uma alteração lógica por vez.
- Relacionar os commits com as issues registradas no backlog.

Branches

- Utilizar branches para os códigos.
- Realizar o merge dessas branches com a branch "main" apenas após a fase de testes e verificação da correção das funcionalidades.
- Criar branches específicas para correções críticas.
- Utilizar letras minúsculas ao nomear branches.

Organização

- Manter estrutura de diretórios clara, separando a documentação do código.



## Colaboradores

- **Iara Campos Rodrigues**
- **Leonardo Elias Rodrigues**
- **Samuel Henrique Morais Rufino**


