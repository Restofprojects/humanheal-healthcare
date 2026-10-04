# Human Heal Healthcare — Full Redesigned Test Build

This is a Vercel-ready React rebuild based on the supplied Human Heal Healthcare HTML snapshot + downloaded asset bundle. It keeps the discovered navigation/page structure, uses the supplied logo/assets, and adds the Health OPD product area with Razorpay server-side order creation/verification.

## Run locally
Use any static server, for example: `python -m http.server 8080` and open `http://localhost:8080`. No frontend build step is required.

## Vercel
- Import the GitHub repository into Vercel.
- No build command required (static site + Vercel Functions).
- Add environment variables:
  - `RAZORPAY_KEY_ID`
  - `RAZORPAY_KEY_SECRET`
  - `SUPABASE_URL`
  - `SUPABASE_SERVICE_ROLE_KEY`
- Never expose the Razorpay secret or Supabase service-role key to the browser.

## Supabase
Run `supabase-schema.sql` in the Supabase SQL editor. Extend the server-side APIs to insert/update `opd_orders` after successful Razorpay verification.

## Important source limitation
The supplied snapshot contains the homepage/site navigation and OPD product names/prices/SKUs/product IDs, but it does not contain every original WordPress page's complete body content. The rebuild therefore preserves every discovered internal route as a local page and uses source-supported content where available rather than inventing detailed medical claims.

## OPD products from source snapshot
Care Lite ₹599 (SKU HH001, ID 2977)
Care Plus ₹1,499 (SKU HH001-1, ID 2980)
Smart Health ₹2,499 (SKU HH001-2, ID 2981)
Total Wellness ₹4,999 (SKU HH001-3, ID 2982)
Prime Shield ₹9,999 (SKU HH001-4, ID 2983)
