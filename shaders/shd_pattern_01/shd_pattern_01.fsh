//---------------------------------------------------------------------------
    varying vec2 v_vTexcoord;
    varying vec4 v_vColour;
    varying vec2 v_vPos;
    uniform sampler2D back; // texture of background
    uniform vec4 uvs; // uvs of background ( uvs[0], uvs[1], uvs[2] - uvs[0], uvs[3] - uvs[1] )
    uniform vec2 recip_size; // 1 divided by size of background in pixels (1 / width, 1 / height)
    void main() {
        vec2 texCoord = fract(v_vPos * recip_size) * uvs.zw + uvs.xy;
        vec4 back_col = texture2D( gm_BaseTexture, texCoord );
        gl_FragColor = vec4( back_col.rgb, back_col.a * v_vColour.a * texture2D( gm_BaseTexture, v_vTexcoord).a);
    }
//---------------------------------------------------------------------------