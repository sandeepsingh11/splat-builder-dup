<script lang="ts">
    import type { effect } from '$lib/Leanny/LeannyService'

    export let effect: effect;
</script>

<div class="mt-2">
    {effect.name}
    
    <!-- percentage bar -->
    <div 
        class="bg-gray-300 relative rounded-full h-full"
        style="height: 28px;"
    >
        <div 
            class="absolute top-0 left-0 h-full bg-pink-300 rounded-full"
            style="width: {effect.percent}%"
        ></div>
        <div class="flex justify-between relative z-10">
            <div class="ml-6 text-xl font-bold percentage-bar">
                { effect.value }
            </div>
            <div class="mr-6 text-xl font-bold percentage-bar">
                { effect.percent }%
            </div>
        </div>
    </div>  
</div>