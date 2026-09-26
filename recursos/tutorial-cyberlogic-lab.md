# Tutorial de uso do CyberLogic Lab

Este guia mostra como abrir, organizar, salvar e publicar seus estudos no CyberLogic Lab. Você não precisa decorar os comandos: consulte este arquivo sempre que necessário.

## 1. O que é o CyberLogic Lab

O CyberLogic Lab possui duas partes conectadas:

- **Pasta local:** `C:\Users\Usuario\Documents\CyberLogic-Lab`
- **Repositório no GitHub:** `https://github.com/joaobraguimca/cyberlogic-lab`

A pasta local é onde você cria e altera os arquivos. O Git registra o histórico dessas alterações. O GitHub guarda uma cópia remota e pública do projeto.

```text
Arquivos no computador -> Git registra -> git push -> GitHub publica
```

## 2. Como abrir o laboratório

1. Vá à Área de Trabalho.
2. Abra o atalho **CyberLogic Lab**.
3. O Visual Studio Code abrirá diretamente na pasta do projeto.
4. Se aparecer uma pergunta sobre confiar nos autores da pasta, confirme somente se o caminho exibido for `C:\Users\Usuario\Documents\CyberLogic-Lab`.

Outra forma é abrir o VS Code, selecionar **File > Open Folder** e escolher a pasta `CyberLogic-Lab`.

## 3. Partes principais do VS Code

- **Explorer:** primeira opção da barra lateral; mostra pastas e arquivos.
- **Editor:** área central onde você escreve.
- **Source Control:** ícone de ramificação; mostra alterações reconhecidas pelo Git.
- **Terminal:** abra pelo menu **Terminal > New Terminal**.
- **Markdown Preview:** em um arquivo `.md`, pressione `Ctrl+Shift+V` para visualizar o documento formatado.

O terminal deve mostrar este caminho ou terminar com o nome do projeto:

```text
C:\Users\Usuario\Documents\CyberLogic-Lab
```

Antes de executar comandos, confirme que está nessa pasta.

## 4. Organização do projeto

```text
CyberLogic-Lab/
├── README.md
├── 01-fundamentos/
│   └── aula-01-algoritmos/
│       ├── README.md
│       └── suspicious-email-runbook.md
└── recursos/
    ├── guia-git-primeiros-passos.md
    ├── prompt-notebooklm-algoritmos.txt
    └── tutorial-cyberlogic-lab.md
```

O `README.md` da raiz apresenta todo o laboratório. Cada aula possui sua própria pasta e um `README.md` explicando o aprendizado e a atividade prática.

## 5. Rotina depois de cada aula

### Passo 1 — Explicar o que aprendeu

Antes de mexer no projeto, explique o conteúdo com suas próprias palavras. Essa explicação será revisada para identificar acertos, ambiguidades e lacunas.

### Passo 2 — Fazer a atividade prática

Resolva o mini projeto sem copiar uma implementação pronta. Registre também os erros encontrados e como seu raciocínio mudou.

### Passo 3 — Criar a pasta da aula

No Explorer do VS Code:

1. Clique com o botão direito em `01-fundamentos`.
2. Selecione **New Folder**.
3. Use um nome como `aula-02-primeiro-algoritmo`.
4. Dentro dela, crie um arquivo chamado `README.md`.
5. Quando existir código, salve-o na mesma pasta usando a extensão apropriada, como `.alg` para Portugol ou `.py` para Python.

Use nomes de arquivos em letras minúsculas, sem espaços e sem acentos:

```text
correto: analisador-de-login.alg
evitar:  Meu Programa Final!!.alg
```

### Passo 4 — Documentar

O `README.md` da aula deve conter:

```markdown
# Aula 2 — Título

## O que aprendi

Explique com suas próprias palavras.

## Atividade prática

Descreva o problema que tentou resolver.

## Como executar

Explique a ferramenta e os passos necessários.

## Erros e correções

Registre dificuldades e o que mudou após a revisão.

## Conceitos exercitados

- Conceito 1;
- Conceito 2.
```

### Passo 5 — Salvar os arquivos

Pressione `Ctrl+S`. Uma bolinha na aba do arquivo indica que ainda existem alterações não salvas.

## 6. Conferir as alterações com Git

Abra o terminal do VS Code e execute:

```powershell
git status
```

Significados comuns:

- `Untracked files`: arquivos novos que o Git ainda não registra;
- `modified`: arquivos existentes que foram alterados;
- `nothing to commit, working tree clean`: não há alterações pendentes.

Para examinar as mudanças em arquivos já registrados:

```powershell
git diff
```

Leia a lista antes de continuar. Se aparecer algum arquivo com senha, token, chave ou dado pessoal, não faça o commit.

## 7. Criar um commit

Depois de conferir tudo:

```powershell
git add .
git status
git commit -m "docs: adicionar atividade da aula 2"
```

O segundo `git status` é importante: ele mostra exatamente o que entrará no commit.

Exemplos de mensagens:

```text
docs: adicionar anotações da aula 2
feat: criar conversor de unidades
fix: corrigir cálculo da média
refactor: organizar funções do analisador
```

Um commit é um ponto identificado no histórico local. Ele ainda não aparece no GitHub até ser enviado.

## 8. Publicar no GitHub

Envie os commits com:

```powershell
git push
```

Depois, abra `https://github.com/joaobraguimca/cyberlogic-lab` e confira se os arquivos e a mensagem do commit aparecem corretamente.

## 9. Fluxo completo resumido

```powershell
git status
git diff
git add .
git status
git commit -m "docs: descrever a alteração"
git push
```

O raciocínio é:

```text
conferir -> revisar -> selecionar -> conferir novamente -> registrar -> publicar
```

## 10. Antes de iniciar em outro computador

Se o projeto já estiver configurado nesse computador e você souber que houve alterações feitas em outro lugar, execute:

```powershell
git pull --ff-only
```

Não é necessário executar `pull` antes de toda alteração enquanto você trabalhar somente neste computador.

## 11. Comandos seguros para consulta

```powershell
git status
git diff
git log --oneline
git remote -v
git branch --show-current
```

Esses comandos apenas consultam o estado do repositório.

## 12. O que não fazer sem orientação

Enquanto estiver aprendendo, não use estes comandos sem entender completamente o efeito:

```text
git push --force
git reset --hard
git clean -fd
git rebase
```

Eles podem reescrever o histórico ou remover trabalho local.

## 13. Segurança

Nunca publique:

- Senhas;
- Tokens do GitHub;
- Chaves de API;
- Chaves privadas;
- Arquivos `.env`;
- Documentos pessoais;
- Dados reais de empresas ou clientes;
- Informações obtidas em sistemas sem autorização.

Use exemplos fictícios e faça práticas de cibersegurança apenas em sistemas próprios ou laboratórios autorizados.

## 14. Se algo der errado

Pare antes de usar comandos para apagar ou desfazer alterações. Copie a mensagem completa do terminal e peça ajuda informando:

1. O que estava tentando fazer;
2. Qual comando executou;
3. Qual mensagem apareceu;
4. Se os arquivos ainda estão visíveis no VS Code.

Na maioria dos casos, o Git permite recuperar o trabalho, desde que não sejam executados comandos destrutivos por tentativa e erro.

## Checklist de uma aula concluída

- [ ] Expliquei o conteúdo com minhas palavras;
- [ ] Fiz o mini projeto;
- [ ] Revisei erros e ambiguidades;
- [ ] Criei ou atualizei o `README.md` da aula;
- [ ] Removi dados pessoais e credenciais;
- [ ] Conferi `git status` e `git diff`;
- [ ] Criei um commit claro;
- [ ] Executei `git push`;
- [ ] Verifiquei o resultado no GitHub.
