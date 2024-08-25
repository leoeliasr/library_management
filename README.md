
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

# Boas Práticas de Desenvolvimento
### Comentários e Documentação
**Código Autoexplicativo:**  Escreva código que seja fácil de entender por si só, mas, quando necessário, adicione comentários para esclarecer trechos complexos.
**Documentação de Métodos e Funções:** Documente métodos e funções com descrições claras, incluindo o propósito, os parâmetros e os valores de retorno.
**Código Limpo (Clean Code)**
Nomes Significativos: Use nomes claros e descritivos para variáveis, métodos e classes, facilitando a compreensão e manutenção do código.
**Funções Curtas e Objetivas:** Escreva funções que realizam apenas uma tarefa específica. Isso melhora a legibilidade e facilita a manutenção.
Responsabilidade Única
**Funções com Responsabilidade Única:** Cada função deve ser responsável por uma única tarefa ou um grupo relacionado de tarefas, promovendo a clareza e a simplicidade.
Formatação e Organização
**Consistência:** Mantenha uma formatação consistente (indentação, espaçamento) em todo o código.
**Organização Lógica:** Agrupe funções e variáveis relacionadas para tornar o código mais legível e organizado.
Tratamento de Erros
**Exceções:** Utilize exceções para tratar erros, evitando o uso de códigos de erro ou verificações de retorno. Exceções devem ser usadas apenas em situações excepcionais, não para controle de fluxo.


### Testabilidade
**Código Testável:** Escrever código que seja fácil de testar, separando a lógica de negócios dos detalhes de implementação e dependências.
Princípios SOLID
**S - Single Responsibility Principle (SRP):** Cada classe deve ter uma única responsabilidade ou razão para mudar.
**O - Open/Closed Principle (OCP):** O código deve ser aberto para extensão, mas fechado para modificação.
**L - Liskov Substitution Principle (LSP):** Subtipos devem ser substituíveis por seus tipos base sem alterar o comportamento do programa.
**I - Interface Segregation Principle (ISP):** Prefira várias interfaces específicas a uma única interface geral.
**D - Dependency Inversion Principle (DIP):** Depende de abstrações em vez de implementações concretas.
### Refatoração
Melhoria Contínua: Refatorar o código regularmente para melhorar sua estrutura e legibilidade sem alterar seu comportamento externo.
Evitar Código Duplicado
DRY (Don't Repeat Yourself): Evitar a duplicação de código para reduzir erros e facilitar alterações futuras.
### Simplicidade
KISS (Keep It Simple, Stupid): Manter o código o mais simples possível. Evitando complexidade desnecessária e busque soluções diretas e eficientes para os problemas.
Controle de Versionamento
Branch main: Todas as alterações devem ser feitas na branch main. Os commits devem ter nomes claros e descritivos, refletindo a natureza das mudanças.
Testes Automatizados
Cobertura de Testes: Assegurar que todas as novas funcionalidades ou alterações sejam cobertas por testes automatizados.
Testes Independentes: Os testes devem ser pequenos, rápidos e independentes, verificando apenas um comportamento específico por vez. Utilize frameworks como RSpec para implementar e gerenciar esses testes.


## Tecnologias Utilizadas

- **Ruby**: 3.1.2
- **Ruby on Rails**: 7.1.3.4
- **PostgreSQL**: 16.3
- **Bootstrap**: 5.0.0 

  
- ## Colaboradores

- **Iara Campos Rodrigues**
- **Leonardo Elias Rodrigues**
- **Samuel Henrique Morais**


