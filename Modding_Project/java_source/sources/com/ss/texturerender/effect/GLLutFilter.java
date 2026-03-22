package com.ss.texturerender.effect;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Bundle;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes6.dex */
public class GLLutFilter extends GLDefaultFilter {
    private static final String LOG_TAG = "TR_GLLutFilter";
    private final String fragmentShader;
    private int mCurrentIndex;
    private int mLutTextureHandle;
    private HashMap<Integer, LutTextureNode> mLutTextureMap;
    private int mStrengthHandle;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class LutTextureNode {
        public float strength;
        public int texID;
        public boolean using;

        public LutTextureNode(int i10, float f10, boolean z10) {
            this.texID = i10;
            this.using = z10;
            this.strength = f10;
        }

        public String toString() {
            return "[texID:" + this.texID + ",strength:" + this.strength + ",using:" + this.using + "]";
        }
    }

    public GLLutFilter(int i10) {
        super(i10, 2);
        this.fragmentShader = "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D lutTexture;\nvarying vec2 vTextureCoord;\nuniform float strength;\nvoid main() {\n    vec4 inputTexColor = texture2D(sTexture, vTextureCoord);\n    float blueColor = inputTexColor.b * 63.0;\n    vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n    vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 7.999);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n    vec2 texturePos1;\n    texturePos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec2 texturePos2;\n    texturePos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec4 newColor1 = texture2D(lutTexture, texturePos1);\n    vec4 newColor2 = texture2D(lutTexture, texturePos2);\n    vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n    gl_FragColor = mix(inputTexColor, vec4(newColor.rgb, inputTexColor.w), strength);\n}";
        this.mLutTextureMap = new HashMap<>();
        this.mOrder = 15;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLLutFilter,this:" + this);
    }

    private void addTextureNode(int i10, Bitmap bitmap) {
        LutTextureNode lutTextureNode = this.mLutTextureMap.get(Integer.valueOf(i10));
        if (lutTextureNode == null) {
            for (Map.Entry<Integer, LutTextureNode> entry : this.mLutTextureMap.entrySet()) {
                LutTextureNode value = entry.getValue();
                if (!value.using) {
                    this.mLutTextureMap.remove(entry.getKey());
                    this.mLutTextureMap.put(Integer.valueOf(i10), value);
                    setBitmap(value.texID, bitmap);
                    return;
                }
            }
            LutTextureNode lutTextureNode2 = new LutTextureNode(TexGLUtils.genTexture(3553), 1.0f, true);
            setBitmap(lutTextureNode2.texID, bitmap);
            this.mLutTextureMap.put(Integer.valueOf(i10), lutTextureNode2);
            return;
        }
        setBitmap(lutTextureNode.texID, bitmap);
        lutTextureNode.using = true;
    }

    private void disableAllTextureNode() {
        for (LutTextureNode lutTextureNode : this.mLutTextureMap.values()) {
            lutTextureNode.using = false;
        }
    }

    private void removeExtraTextureNode() {
        Iterator<Map.Entry<Integer, LutTextureNode>> it = this.mLutTextureMap.entrySet().iterator();
        while (it.hasNext()) {
            LutTextureNode value = it.next().getValue();
            if (!value.using) {
                TexGLUtils.deleteTexture(value.texID);
                it.remove();
            }
        }
    }

    private void setAllLutStrength(float f10) {
        if (f10 >= 0.0f && f10 <= 1.0f) {
            for (LutTextureNode lutTextureNode : this.mLutTextureMap.values()) {
                lutTextureNode.strength = f10;
            }
        }
    }

    private void setLutStrength(int i10, float f10) {
        LutTextureNode lutTextureNode;
        if (f10 >= 0.0f && f10 <= 1.0f && (lutTextureNode = this.mLutTextureMap.get(Integer.valueOf(i10))) != null) {
            lutTextureNode.strength = f10;
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        return "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D lutTexture;\nvarying vec2 vTextureCoord;\nuniform float strength;\nvoid main() {\n    vec4 inputTexColor = texture2D(sTexture, vTextureCoord);\n    float blueColor = inputTexColor.b * 63.0;\n    vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n    vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 7.999);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n    vec2 texturePos1;\n    texturePos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec2 texturePos2;\n    texturePos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec4 newColor1 = texture2D(lutTexture, texturePos1);\n    vec4 newColor2 = texture2D(lutTexture, texturePos2);\n    vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n    gl_FragColor = mix(inputTexColor, vec4(newColor.rgb, inputTexColor.w), strength);\n}";
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        HashMap hashMap;
        if (super.init(bundle) != 0) {
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.notifyError(10, this.mEffectType, "super.init(bundle) != TR_OK");
            }
            return -1;
        }
        this.mStrengthHandle = GLES20.glGetUniformLocation(this.mProgram, TextureRenderKeys.KEY_IS_STRENGTH_FLOAT);
        this.mLutTextureHandle = GLES20.glGetUniformLocation(this.mProgram, "lutTexture");
        disableAllTextureNode();
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_LUT_BITMAP)) {
            if (((Bitmap) bundle.getParcelable(TextureRenderKeys.KEY_IS_LUT_BITMAP)) != null) {
                addTextureNode(0, (Bitmap) bundle.getParcelable(TextureRenderKeys.KEY_IS_LUT_BITMAP));
            }
        } else if (bundle.containsKey(TextureRenderKeys.KEY_IS_LUT_BITMAP_MULTI)) {
            HashMap hashMap2 = (HashMap) bundle.getSerializable(TextureRenderKeys.KEY_IS_LUT_BITMAP_MULTI);
            if (hashMap2 != null) {
                for (Map.Entry entry : hashMap2.entrySet()) {
                    addTextureNode(((Integer) entry.getKey()).intValue(), (Bitmap) entry.getValue());
                }
            }
        } else {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, LOG_TAG, "init no bitmap,this:" + this);
            return -1;
        }
        removeExtraTextureNode();
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT)) {
            setAllLutStrength(bundle.getFloat(TextureRenderKeys.KEY_IS_STRENGTH_FLOAT));
        } else if (bundle.containsKey(TextureRenderKeys.KEY_IS_STRENGTH_MULTI_FLOAT) && (hashMap = (HashMap) bundle.getSerializable(TextureRenderKeys.KEY_IS_STRENGTH_MULTI_FLOAT)) != null) {
            for (Map.Entry entry2 : hashMap.entrySet()) {
                setLutStrength(((Integer) entry2.getKey()).intValue(), ((Float) entry2.getValue()).floatValue());
            }
        }
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "init:" + bundle.toString() + ",this:" + this + " LutMap:" + this.mLutTextureMap);
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        LutTextureNode lutTextureNode = this.mLutTextureMap.get(Integer.valueOf(this.mCurrentIndex));
        if (lutTextureNode == null) {
            return -1;
        }
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, lutTextureNode.texID);
        GLES20.glUniform1i(this.mLutTextureHandle, 1);
        GLES20.glUniform1f(this.mStrengthHandle, lutTextureNode.strength);
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.currentEffectProcessBegin(this.mEffectType);
        }
        int i10 = 0;
        while (true) {
            this.mCurrentIndex = i10;
            if (this.mCurrentIndex >= this.mLutTextureMap.size()) {
                break;
            }
            LutTextureNode lutTextureNode = this.mLutTextureMap.get(Integer.valueOf(this.mCurrentIndex));
            if (lutTextureNode != null && lutTextureNode.strength > 0.0f) {
                effectTexture = super.process(effectTexture, frameBuffer);
            }
            i10 = this.mCurrentIndex + 1;
        }
        VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
        if (videoSurfaceTexture2 != null) {
            videoSurfaceTexture2.currentEffectProcessEnd(this.mEffectType);
        }
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        disableAllTextureNode();
        removeExtraTextureNode();
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "release,this:" + this);
        return super.release();
    }

    public void setBitmap(int i10, Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            GLES20.glBindTexture(3553, i10);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, LOG_TAG, "setBitmap:" + bitmap + ",this:" + this);
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float f10) {
        if (i10 != 20) {
            super.setOption(i10, f10);
            return;
        }
        setAllLutStrength(f10);
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "set strength:" + f10 + ",this:" + this);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        if (bundle != null && this.mEffectType == bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE)) {
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "setOption:" + bundle.toString() + ",this:" + this);
            int i11 = bundle.getInt(TextureRenderKeys.KEY_IS_ACTION);
            if (i11 != 20) {
                if (i11 == 22 && !this.mLutTextureMap.isEmpty()) {
                    Bitmap bitmap = (Bitmap) bundle.getParcelable(TextureRenderKeys.KEY_IS_LUT_BITMAP);
                    if (bundle.containsKey(TextureRenderKeys.KEY_IS_INDEX)) {
                        LutTextureNode lutTextureNode = this.mLutTextureMap.get(Integer.valueOf(bundle.getInt(TextureRenderKeys.KEY_IS_INDEX)));
                        if (lutTextureNode != null) {
                            setBitmap(lutTextureNode.texID, bitmap);
                            return;
                        }
                        return;
                    }
                    LutTextureNode lutTextureNode2 = this.mLutTextureMap.get(0);
                    if (lutTextureNode2 != null) {
                        setBitmap(lutTextureNode2.texID, bitmap);
                        return;
                    }
                    return;
                }
                return;
            } else if (bundle.containsKey(TextureRenderKeys.KEY_IS_INDEX)) {
                setLutStrength(bundle.getInt(TextureRenderKeys.KEY_IS_INDEX, 0), bundle.getFloat(TextureRenderKeys.KEY_IS_FLOAT_VALUE, -1.0f));
                return;
            } else {
                setAllLutStrength(bundle.getFloat(TextureRenderKeys.KEY_IS_FLOAT_VALUE, -1.0f));
                return;
            }
        }
        super.setOption(bundle);
    }
}
