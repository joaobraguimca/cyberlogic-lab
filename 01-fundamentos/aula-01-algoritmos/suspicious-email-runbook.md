# Suspicious Email Runbook

## Objetivo

Definir uma sequência segura para analisar um e-mail inesperado que solicite a redefinição de uma senha.

## Algoritmo

```text
Início

1. Visualizar o corpo do e-mail sem abrir links, anexos ou imagens externas.
2. Verificar se o domínio após o símbolo @ corresponde exatamente ao domínio oficial.
3. Verificar se uma redefinição de senha havia sido solicitada.
4. Confirmar a solicitação por um canal independente, como o aplicativo,
   o site oficial ou um telefone conhecido. Não responder ao próprio e-mail.
5. Verificar se o nome apresentado corresponde ao endereço real do remetente.
6. Se alguma dessas verificações falhar, seguir para o Resultado B.
7. Se todas as verificações forem confirmadas, seguir para o Resultado A.

Resultado A:
A mensagem foi confirmada por um canal independente. Acessar o serviço pelo
aplicativo ou digitando o endereço oficial, jamais pelo link recebido no e-mail.

Resultado B:
Denunciar a mensagem como phishing, abrir um incidente com a equipe de Segurança
da Informação e preservar o e-mail até receber orientação para excluí-lo.

Fim
```

## Lição aprendida

Inicialmente, considerei que um remetente aparentemente confiável tornaria o link seguro. Durante a revisão, percebi que contas podem ser comprometidas e remetentes podem ser falsificados. Corrigi o algoritmo adicionando confirmação por um canal independente e acesso pelo endereço oficial.

> Confiança deve ser verificada, não presumida.
