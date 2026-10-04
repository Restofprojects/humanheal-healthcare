create extension if not exists pgcrypto;
create table if not exists public.opd_orders (
 id uuid primary key default gen_random_uuid(),
 order_id text unique not null,
 payment_id text,
 payment_signature text,
 plan_slug text not null,
 plan_name text not null,
 amount numeric(12,2) not null,
 customer_name text not null,
 phone text not null,
 email text,
 status text not null default 'created',
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
alter table public.opd_orders enable row level security;
-- Keep this table private. Server-side Vercel functions should use the Supabase service role key.
-- Do not add public SELECT/UPDATE policies for payment records.
