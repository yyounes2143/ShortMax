package com.ss.texturerender.effect;

import android.opengl.GLES20;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public class GLMattingFilter extends GLDefaultFilter {
    private static final String LOG_TAG = "TR_GLMattingFilter";
    private final String fragmentShader;

    public GLMattingFilter(int i10) {
        super(i10, 9);
        this.fragmentShader = "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 tmpFrag = texture2D(sTexture, vTextureCoord);\n    float rbAver = tmpFrag.r * 0.5 + tmpFrag.b * 0.5;\n    float delta = tmpFrag.g - rbAver;\n    tmpFrag.a = 1.0 - smoothstep(0.0, 0.25, delta);\n    tmpFrag.a = tmpFrag.a * tmpFrag.a * tmpFrag.a;\n    gl_FragColor = tmpFrag;\n}";
        this.mOrder = 25;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLMattingFilter,this:" + this);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        return "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vec4 tmpFrag = texture2D(sTexture, vTextureCoord);\n    float rbAver = tmpFrag.r * 0.5 + tmpFrag.b * 0.5;\n    float delta = tmpFrag.g - rbAver;\n    tmpFrag.a = 1.0 - smoothstep(0.0, 0.25, delta);\n    tmpFrag.a = tmpFrag.a * tmpFrag.a * tmpFrag.a;\n    gl_FragColor = tmpFrag;\n}";
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        return 0;
    }
}
