-- Banco de dados do app Solitec.
-- Cole tudo isto no Supabase em: SQL Editor > New query > Run.

create table if not exists public.registros (
  owner      uuid not null default auth.uid() references auth.users(id) on delete cascade,
  colecao    text not null,          -- clientes, pedidos ou config
  id         text not null,
  dados      jsonb not null,
  atualizado timestamptz not null default now(),
  primary key (owner, colecao, id)
);

-- Cada pessoa só enxerga e altera os próprios dados.
alter table public.registros enable row level security;

drop policy if exists "dono le"      on public.registros;
drop policy if exists "dono grava"   on public.registros;
drop policy if exists "dono altera"  on public.registros;
drop policy if exists "dono apaga"   on public.registros;
create policy "dono le"     on public.registros for select to authenticated using (owner = auth.uid());
create policy "dono grava"  on public.registros for insert to authenticated with check (owner = auth.uid());
create policy "dono altera" on public.registros for update to authenticated using (owner = auth.uid()) with check (owner = auth.uid());
create policy "dono apaga"  on public.registros for delete to authenticated using (owner = auth.uid());

-- Atualização ao vivo entre computador e celular.
alter publication supabase_realtime add table public.registros;
