// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

//import { encode } from 'https://jspm.dev/gpt-3-encoder';
import { getEncoding, encodingForModel } from "npm:js-tiktoken";
//console.log("Hello from Functions!")

Deno.serve(async (req) => {

  const { inputString } = await req.json()
  const enc = getEncoding("gpt-3");

  const data = {
    tokens: enc.encode(inputString),
  }
  
  //const inputString = "Hello, how are you?";
  //const tokenCount = encode(inputString).length;
//console.log(`The token count for "${inputString}" is ${tokenCount}`);

  return new Response(
    JSON.stringify(data),
    { headers: { "Content-Type": "application/json" } },
  )
})

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

*/
