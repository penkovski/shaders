void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // normalize pixel coordinates (from 0 to 1)
    vec2 st = fragCoord.xy / iResolution.xy;

    // sine wave params
    float amplitude = 0.1;
    float frequency = 25.0;
    float speed = 2.0;

    float y = amplitude * sin(frequency * st.x + iTime * speed) + 0.5;

    float waveThickness = 2.0 / iResolution.y;

    float distanceToWave = abs(st.y - y);

    vec3 color = vec3(0.0);

    if (distanceToWave <= waveThickness) {
        color = vec3(1.0);
    }

    fragColor = vec4(color, 1.0);
}
