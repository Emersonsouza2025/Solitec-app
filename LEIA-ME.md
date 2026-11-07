# App Solitec: como colocar no ar e instalar

São três etapas. Leva uns 20 minutos e não custa nada.

## 1. Publicar o app na internet (Netlify, grátis)

1. Descompacte este arquivo .zip numa pasta no computador.
2. Acesse **app.netlify.com** e crie uma conta (pode entrar com o Google).
3. Vá em **Add new site > Deploy manually** e arraste a pasta **solitec** inteira para a área indicada.
4. Em alguns segundos o Netlify mostra o endereço do app, algo como `https://nome-aleatorio.netlify.app`.
   Em **Site configuration > Change site name** você pode trocar para `solitec.netlify.app`, se estiver livre.

Para atualizar o app no futuro, arraste a pasta nova no mesmo lugar (aba **Deploys**).

## 2. Instalar no computador e no celular

- **Windows (Chrome ou Edge):** abra o endereço e clique no ícone de instalar na barra de endereço
  (um monitor com seta). O app ganha ícone na área de trabalho e no menu Iniciar.
- **Android (Chrome):** abra o endereço, toque no menu ⋮ e em **Instalar app**.
- **iPhone (Safari):** abra o endereço, toque em **Compartilhar** e em **Adicionar à Tela de Início**.

Neste ponto o app já funciona, mas cada aparelho guarda os próprios dados.

## 3. Sincronizar computador e celular (Supabase, grátis)

1. Acesse **supabase.com**, crie uma conta e clique em **New project**.
   Escolha a região **South America (São Paulo)** e anote a senha do banco.
2. No projeto, abra **SQL Editor > New query**, cole todo o conteúdo do arquivo **supabase.sql** e clique em **Run**.
3. Em **Project Settings > API**, copie:
   - **Project URL** (ex.: `https://abcd.supabase.co`)
   - **anon public** key (uma chave longa que começa com `eyJ`)
4. No app, vá em **Ajustes > Sincronizar computador e celular**, cole os dois e clique em **Conectar**.
5. Clique em **Criar conta** com seu e-mail e uma senha. O Supabase manda um e-mail de confirmação:
   clique no link e depois entre no app.
6. Se você já tinha cadastrado clientes nesse aparelho, vá em Ajustes e clique em
   **Enviar esses dados para a nuvem**.
7. No celular, faça a mesma conexão (passo 4) e entre com o **mesmo e-mail e senha**.

Pronto: o que você lançar no celular aparece no computador, e vice-versa.

## Dicas

- A chave **anon public** pode ficar no app sem problema: o banco só libera os dados para quem fez login.
  Nunca cole a chave **service_role** no app.
- Use **Ajustes > Cópia de segurança > Baixar cópia** de vez em quando para ter um backup.
- Este mesmo banco será usado pelo robô do WhatsApp na próxima etapa.
