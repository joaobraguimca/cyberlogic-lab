# Git — primeiros passos do CyberLogic Lab

## Git e GitHub não são a mesma coisa

- **Git** registra o histórico dos arquivos no computador.
- **GitHub** armazena uma cópia remota do repositório e permite compartilhar o projeto.
- **Commit** é um registro identificado das alterações.
- **Push** envia os commits locais para o GitHub.
- **Pull** traz para o computador alterações existentes no GitHub.

## Rotina para salvar uma atividade

Abra o terminal dentro da pasta `CyberLogic-Lab` e execute:

```powershell
git status
git add .
git commit -m "docs: adicionar atividade da aula 2"
git push
```

Antes do `git add`, use `git status` para conferir quais arquivos serão incluídos.

## Para receber alterações remotas

```powershell
git pull --ff-only
```

## Mensagens de commit

Escreva mensagens curtas que expliquem a mudança:

```text
docs: adicionar anotações da aula 2
feat: criar conversor de unidades
fix: corrigir validação de entrada
refactor: organizar funções do analisador
```

## Ver o histórico

```powershell
git log --oneline
```

## Cuidados importantes

- Nunca publique senhas, tokens, chaves ou arquivos `.env`;
- Confira `git status` antes de cada commit;
- Faça commits pequenos e relacionados a uma única mudança;
- Não use comandos encontrados na internet sem entender o que fazem;
- Em caso de dúvida, não tente apagar o histórico: peça ajuda primeiro.
