import type { PageServerLoad } from "./$types";
// import { PUBLIC_API_URL } from "$env/static/public";

export const load = (async (request) => {
    // const res = await request.fetch(`${PUBLIC_API_URL}/test`);
    // const res = await request.fetch(`http://127.0.0.1:8000/api/test`);
    // const res = await fetch(`http://127.0.0.1:8000/api/test`);
    
    // const message = await res.json();

    return {
        message: 'message',
        url: 'PUBLIC_API_URL'
    };
}) satisfies PageServerLoad;
