package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.work.Data;
import com.ss.texturerender.ShaderHelper;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurfaceTexture;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes6.dex */
public class GLDefaultFilter extends AbsEffect {
    private static final String LOG_TAG = "TR_GLDefaultFilter";
    public static final int OPTION_FILTER_CALL_GLFINISH = 20006;
    public static final int OPTION_FILTER_INT_GL_ERROR = 20005;
    public static final int OPTION_FILTER_INT_PORT_HEIGHT = 20002;
    public static final int OPTION_FILTER_INT_PORT_WIDTH = 20001;
    public static final int OPTION_FILTER_INT_PORT_X = 20003;
    public static final int OPTION_FILTER_INT_PORT_Y = 20004;
    int FLOAT_SIZE_BYTES;
    protected int TEXTURE_VERTICES_DATA_STRIDE_BYTES;
    protected int TRIANGLE_VERTICES_DATA_POS_OFFSET;
    protected int TRIANGLE_VERTICES_DATA_STRIDE_BYTES;
    protected int TRIANGLE_VERTICES_DATA_UV_OFFSET;
    private final String fragmentDefaultShader;
    protected boolean isMirrorHorizontal;
    protected boolean isMirrorVertical;
    protected float mCropHeightNormalize;
    protected float[] mCropTextureCoord;
    protected float mCropWidthNormalize;
    protected float mCropXNormalize;
    protected float mCropYNormalize;
    protected int mGLError;
    protected ShortBuffer mIndexBuffers;
    protected int mInputTextureHandle;
    protected int mIsCallGLfinish;
    protected float mLayoutAspectRatio;
    protected int mLayoutMode;
    protected boolean mNeedClear;
    protected int mOutTexHeight;
    protected int mOutTexWidth;
    protected int mProgram;
    protected int mRotation;
    protected int mTextureMagFilter;
    protected int mTextureMinFilter;
    protected FloatBuffer mTextureVertices;
    protected FloatBuffer mTriangleVertices;
    protected int mViewPortHeight;
    protected int mViewPortWidth;
    protected int mViewPortX;
    protected int mViewPortY;
    protected int maPositionHandle;
    protected int maTextureHandle;
    private final String vertexDefaultShader;
    public static float[] mTriangleVerticesData = {-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f};
    public static float[] mTextureVerticesData = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};

    public GLDefaultFilter(int i10) {
        this(i10, 7);
    }

    private void mirror(int i10, FloatBuffer floatBuffer) {
        if (this.mTextureVertices == null) {
            return;
        }
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(mTextureVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        if (floatBuffer != null) {
            floatBuffer.rewind();
            asFloatBuffer.put(floatBuffer);
            floatBuffer.rewind();
            asFloatBuffer.flip();
        } else {
            asFloatBuffer.put(mTextureVerticesData);
        }
        if (i10 == 30) {
            this.mTextureVertices.put(0, asFloatBuffer.get(2));
            this.mTextureVertices.put(1, asFloatBuffer.get(3));
            this.mTextureVertices.put(2, asFloatBuffer.get(0));
            this.mTextureVertices.put(3, asFloatBuffer.get(1));
            this.mTextureVertices.put(4, asFloatBuffer.get(6));
            this.mTextureVertices.put(5, asFloatBuffer.get(7));
            this.mTextureVertices.put(6, asFloatBuffer.get(4));
            this.mTextureVertices.put(7, asFloatBuffer.get(5));
        } else if (i10 == 31) {
            this.mTextureVertices.put(0, asFloatBuffer.get(4));
            this.mTextureVertices.put(1, asFloatBuffer.get(5));
            this.mTextureVertices.put(2, asFloatBuffer.get(6));
            this.mTextureVertices.put(3, asFloatBuffer.get(7));
            this.mTextureVertices.put(4, asFloatBuffer.get(0));
            this.mTextureVertices.put(5, asFloatBuffer.get(1));
            this.mTextureVertices.put(6, asFloatBuffer.get(2));
            this.mTextureVertices.put(7, asFloatBuffer.get(3));
        } else {
            this.mTextureVertices.put(asFloatBuffer).position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
        }
        asFloatBuffer.clear();
    }

    private void reTransformIfNeeded() {
        int i10;
        int i11;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(146) == 0 && (i11 = this.mRotation) != 0) {
            rotate(this.mTextureVertices, i11);
        }
        if (this.isMirrorHorizontal) {
            mirror(30, this.mTextureVertices);
        }
        if (this.isMirrorVertical) {
            mirror(31, this.mTextureVertices);
        }
        VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
        if (videoSurfaceTexture2 != null && videoSurfaceTexture2.getIntOption(146) == 1 && (i10 = this.mRotation) != 0) {
            rotate(this.mTextureVertices, i10);
        }
    }

    private void rotate(FloatBuffer floatBuffer, int i10) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(mTextureVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        if (floatBuffer != null) {
            floatBuffer.rewind();
            asFloatBuffer.put(floatBuffer);
            floatBuffer.rewind();
            asFloatBuffer.flip();
        } else {
            asFloatBuffer.put(mTextureVerticesData);
        }
        if (i10 < 0) {
            i10 += 360;
        }
        if (i10 == 90) {
            this.mTextureVertices.put(0, asFloatBuffer.get(2));
            this.mTextureVertices.put(1, asFloatBuffer.get(3));
            this.mTextureVertices.put(2, asFloatBuffer.get(6));
            this.mTextureVertices.put(3, asFloatBuffer.get(7));
            this.mTextureVertices.put(4, asFloatBuffer.get(0));
            this.mTextureVertices.put(5, asFloatBuffer.get(1));
            this.mTextureVertices.put(6, asFloatBuffer.get(4));
            this.mTextureVertices.put(7, asFloatBuffer.get(5));
        } else if (i10 == 180) {
            this.mTextureVertices.put(0, asFloatBuffer.get(6));
            this.mTextureVertices.put(1, asFloatBuffer.get(7));
            this.mTextureVertices.put(2, asFloatBuffer.get(4));
            this.mTextureVertices.put(3, asFloatBuffer.get(5));
            this.mTextureVertices.put(4, asFloatBuffer.get(2));
            this.mTextureVertices.put(5, asFloatBuffer.get(3));
            this.mTextureVertices.put(6, asFloatBuffer.get(0));
            this.mTextureVertices.put(7, asFloatBuffer.get(1));
        } else if (i10 == 270) {
            this.mTextureVertices.put(0, asFloatBuffer.get(4));
            this.mTextureVertices.put(1, asFloatBuffer.get(5));
            this.mTextureVertices.put(2, asFloatBuffer.get(0));
            this.mTextureVertices.put(3, asFloatBuffer.get(1));
            this.mTextureVertices.put(4, asFloatBuffer.get(6));
            this.mTextureVertices.put(5, asFloatBuffer.get(7));
            this.mTextureVertices.put(6, asFloatBuffer.get(2));
            this.mTextureVertices.put(7, asFloatBuffer.get(3));
        } else {
            this.mTextureVertices.put(asFloatBuffer).position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
        }
        asFloatBuffer.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public EffectTexture genTexture() {
        TextureRenderer textureRenderer = this.mParentRender;
        if (textureRenderer != null && textureRenderer.getEffectTextureManager() != null) {
            if (this.mSurfaceTexture != null) {
                return this.mParentRender.getEffectTextureManager().genTexture(this.mOutTexWidth, this.mOutTexHeight, this.mSurfaceTexture.getIntOption(130));
            }
            return this.mParentRender.getEffectTextureManager().genTexture(this.mOutTexWidth, this.mOutTexHeight);
        }
        return null;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int getIntOption(int i10) {
        switch (i10) {
            case 20001:
                return this.mViewPortWidth;
            case OPTION_FILTER_INT_PORT_HEIGHT /* 20002 */:
                return this.mViewPortHeight;
            case 20003:
                return this.mViewPortX;
            case OPTION_FILTER_INT_PORT_Y /* 20004 */:
                return this.mViewPortY;
            case OPTION_FILTER_INT_GL_ERROR /* 20005 */:
                return this.mGLError;
            default:
                return super.getIntOption(i10);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11000) {
            if (i10 != 11001) {
                return super.getStringOption(i10);
            }
            return "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        }
        return "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position =  aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}\n";
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(126, this.mEffectType) == -1) {
            this.mSurfaceTexture.setOption(126, this.mEffectType, 0);
        }
        int compileShader = ShaderHelper.compileShader(35633, getStringOption(11000));
        int compileShader2 = ShaderHelper.compileShader(35632, getStringOption(11001));
        if (compileShader != 0 && compileShader2 != 0) {
            int createAndLinkProgram = ShaderHelper.createAndLinkProgram(compileShader, compileShader2, null);
            this.mProgram = createAndLinkProgram;
            if (createAndLinkProgram == 0) {
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, LOG_TAG, "create program error,filter:" + this.mEffectType);
                this.mGLError = -1;
                VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
                if (videoSurfaceTexture2 != null) {
                    videoSurfaceTexture2.notifyError(9, this.mEffectType, "create program error");
                }
                return -1;
            }
            this.mInputTextureHandle = GLES20.glGetUniformLocation(createAndLinkProgram, "sTexture");
            this.maPositionHandle = GLES20.glGetAttribLocation(this.mProgram, "aPosition");
            this.maTextureHandle = GLES20.glGetAttribLocation(this.mProgram, "aTextureCoord");
            initParam();
            this.mGLError = 0;
            return 0;
        }
        this.mGLError = -1;
        VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
        if (videoSurfaceTexture3 != null) {
            videoSurfaceTexture3.notifyError(8, this.mEffectType, "compile shader error");
        }
        return -1;
    }

    protected void initParam() {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(mTextureVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTextureVertices = asFloatBuffer;
        asFloatBuffer.put(mTextureVerticesData).position(0);
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(mTriangleVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTriangleVertices = asFloatBuffer2;
        asFloatBuffer2.put(mTriangleVerticesData).position(0);
    }

    public int onDrawFrameAfter() {
        return 0;
    }

    public int onDrawFrameBefore() {
        return 0;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return process(effectTexture, frameBuffer, Boolean.TRUE);
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        int i10 = this.mProgram;
        if (i10 > 0) {
            GLES20.glDeleteProgram(i10);
        }
        return super.release();
    }

    public void resetCropParams() {
        Bundle bundle = new Bundle();
        bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 21);
        bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 11);
        bundle.putFloat("width", 1.0f);
        bundle.putFloat("height", 1.0f);
        bundle.putFloat(TextureRenderKeys.KEY_IS_X, 0.0f);
        bundle.putFloat(TextureRenderKeys.KEY_IS_Y, 0.0f);
        setOption(bundle);
    }

    public void resetRotationMirrorParams() {
        FloatBuffer floatBuffer = this.mTextureVertices;
        if (floatBuffer != null) {
            floatBuffer.position(0);
            this.mTextureVertices.put(mTextureVerticesData).position(0);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, int i11) {
        boolean z10;
        if (i10 == 26) {
            if (this.mLayoutMode != i11) {
                FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(mTextureVerticesData.length * this.FLOAT_SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer();
                this.mTextureVertices = asFloatBuffer;
                if (asFloatBuffer != null) {
                    asFloatBuffer.put(mTextureVerticesData).position(0);
                }
                this.mLayoutMode = i11;
                reTransformIfNeeded();
            }
        } else if (i10 == 20006) {
            this.mIsCallGLfinish = i11;
        } else if (i10 == 158) {
            this.mTextureMinFilter = i11;
        } else if (i10 != 159) {
            switch (i10) {
                case 29:
                    VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                    if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(144) == 1) {
                        if (this.mRotation == i11 && i11 == 0) {
                            return;
                        }
                        this.mRotation = i11;
                        if (i11 != 0) {
                            if (!this.isMirrorVertical && !this.isMirrorHorizontal) {
                                rotate(null, i11);
                                return;
                            } else {
                                rotate(this.mTextureVertices, i11);
                                return;
                            }
                        }
                        resetRotationMirrorParams();
                        return;
                    }
                    int i12 = this.mRotation;
                    if (i12 != i11) {
                        rotate(this.mTextureVertices, i11 - i12);
                        this.mRotation = i11;
                        return;
                    }
                    return;
                case 30:
                    VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
                    if (videoSurfaceTexture2 != null && videoSurfaceTexture2.getIntOption(144) == 1) {
                        boolean z11 = this.isMirrorHorizontal;
                        if (z11 != (i11 > 0) || z11) {
                            z10 = i11 > 0;
                            this.isMirrorHorizontal = z10;
                            if (z10) {
                                mirror(30, null);
                                return;
                            } else {
                                resetRotationMirrorParams();
                                return;
                            }
                        }
                        return;
                    }
                    if (this.isMirrorHorizontal != (i11 > 0)) {
                        this.isMirrorHorizontal = i11 > 0;
                        mirror(30, this.mTextureVertices);
                        return;
                    }
                    return;
                case 31:
                    VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
                    if (videoSurfaceTexture3 != null && videoSurfaceTexture3.getIntOption(144) == 1) {
                        boolean z12 = this.isMirrorVertical;
                        if (z12 != (i11 > 0) || z12) {
                            z10 = i11 > 0;
                            this.isMirrorVertical = z10;
                            if (z10) {
                                mirror(31, null);
                                return;
                            } else {
                                resetRotationMirrorParams();
                                return;
                            }
                        }
                        return;
                    }
                    if (this.isMirrorVertical != (i11 > 0)) {
                        this.isMirrorVertical = i11 > 0;
                        mirror(31, this.mTextureVertices);
                        return;
                    }
                    return;
                default:
                    switch (i10) {
                        case 10006:
                            this.mViewPortWidth = i11;
                            return;
                        case 10007:
                            this.mViewPortHeight = i11;
                            return;
                        case AbsEffect.OPTION_EFFECT_INT_VIEWPORT_X /* 10008 */:
                            this.mViewPortX = i11;
                            return;
                        case AbsEffect.OPTION_EFFECT_INT_VIEWPORT_Y /* 10009 */:
                            this.mViewPortY = i11;
                            return;
                        case AbsEffect.OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW /* 10010 */:
                            this.mNeedClear = i11 == 1;
                            return;
                        default:
                            super.setOption(i10, i11);
                            return;
                    }
            }
        } else {
            this.mTextureMagFilter = i11;
        }
    }

    public int updateDefaultRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        int i10;
        int i11;
        int i12;
        int i13;
        int round = Math.round(effectTexture.getWidth() * this.mCropWidthNormalize);
        int round2 = Math.round(effectTexture.getHeight() * this.mCropHeightNormalize);
        if (frameBuffer != null) {
            this.mOutTexWidth = round;
            this.mOutTexHeight = round2;
            this.mViewPortWidth = round;
            this.mViewPortHeight = round2;
            this.mViewPortY = 0;
            this.mViewPortX = 0;
            setOption(13000, this.mCropTextureCoord);
        } else {
            int i14 = this.mViewPortWidth;
            int i15 = this.mViewPortHeight;
            float f10 = round2;
            float f11 = round;
            float f12 = (f10 * 1.0f) / f11;
            float f13 = i15 * 1.0f;
            float f14 = i14;
            float f15 = f13 / f14;
            int i16 = this.mLayoutMode;
            if (i16 == 0) {
                if (f15 > f12) {
                    int i17 = this.mRotation;
                    if (i17 != 90 && i17 != 270) {
                        this.mViewPortWidth = i14;
                        this.mViewPortHeight = (int) (f14 * 1.0f * f12);
                        this.mViewPortX = 0;
                        this.mViewPortY = (int) ((i15 - i13) * this.mLayoutAspectRatio);
                    } else {
                        int min = Math.min((int) (f13 * f12), i14);
                        this.mViewPortWidth = min;
                        this.mViewPortHeight = (int) ((min * 1.0f) / f12);
                        float f16 = i14 - min;
                        float f17 = this.mLayoutAspectRatio;
                        this.mViewPortX = (int) (f16 * f17);
                        this.mViewPortY = (int) ((i15 - i12) * f17);
                    }
                } else {
                    int i18 = this.mRotation;
                    if (i18 != 90 && i18 != 270) {
                        this.mViewPortWidth = (int) (f13 / f12);
                        this.mViewPortHeight = i15;
                        this.mViewPortX = (int) ((i14 - i11) * this.mLayoutAspectRatio);
                        this.mViewPortY = 0;
                    } else {
                        int min2 = Math.min((int) ((f14 * 1.0f) / f12), i15);
                        this.mViewPortHeight = min2;
                        this.mViewPortWidth = (int) (min2 * 1.0f * f12);
                        float f18 = this.mLayoutAspectRatio;
                        this.mViewPortX = (int) ((i14 - i10) * f18);
                        this.mViewPortY = (int) ((i15 - min2) * f18);
                    }
                }
                setOption(13000, this.mCropTextureCoord);
            } else if (i16 == 2) {
                this.mViewPortWidth = i14;
                this.mViewPortHeight = i15;
                this.mViewPortY = 0;
                this.mViewPortX = 0;
                int i19 = this.mRotation;
                if (i19 != 90 && i19 != 270) {
                    if (f15 > f12) {
                        float f19 = 1.0f - (f12 / f15);
                        this.mTextureVertices.put(0, this.mCropXNormalize + (this.mCropWidthNormalize * f19 * this.mLayoutAspectRatio));
                        this.mTextureVertices.put(1, this.mCropYNormalize);
                        this.mTextureVertices.put(2, this.mCropXNormalize + (this.mCropWidthNormalize * (1.0f - (f19 * (1.0f - this.mLayoutAspectRatio)))));
                        this.mTextureVertices.put(5, this.mCropYNormalize + this.mCropHeightNormalize);
                    } else {
                        float f20 = 1.0f - (f15 / f12);
                        this.mTextureVertices.put(0, this.mCropXNormalize);
                        this.mTextureVertices.put(1, this.mCropYNormalize + (this.mCropHeightNormalize * f20 * this.mLayoutAspectRatio));
                        this.mTextureVertices.put(2, this.mCropXNormalize + this.mCropWidthNormalize);
                        this.mTextureVertices.put(5, this.mCropYNormalize + (this.mCropHeightNormalize * (1.0f - (f20 * (1.0f - this.mLayoutAspectRatio)))));
                    }
                } else {
                    float f21 = (f11 * 1.0f) / f10;
                    if (f15 > f21) {
                        float f22 = 1.0f - (f21 / f15);
                        this.mTextureVertices.put(0, this.mCropXNormalize);
                        this.mTextureVertices.put(1, this.mCropYNormalize + (this.mCropHeightNormalize * f22 * this.mLayoutAspectRatio));
                        this.mTextureVertices.put(2, this.mCropXNormalize + this.mCropWidthNormalize);
                        this.mTextureVertices.put(5, this.mCropYNormalize + (this.mCropHeightNormalize * (1.0f - (f22 * (1.0f - this.mLayoutAspectRatio)))));
                    } else {
                        float f23 = 1.0f - (f15 / f21);
                        this.mTextureVertices.put(0, this.mCropXNormalize + (this.mCropWidthNormalize * f23 * this.mLayoutAspectRatio));
                        this.mTextureVertices.put(1, this.mCropYNormalize);
                        this.mTextureVertices.put(2, this.mCropXNormalize + (this.mCropWidthNormalize * (1.0f - (f23 * this.mLayoutAspectRatio))));
                        this.mTextureVertices.put(5, this.mCropYNormalize + this.mCropHeightNormalize);
                    }
                }
                FloatBuffer floatBuffer = this.mTextureVertices;
                floatBuffer.put(3, floatBuffer.get(1));
                FloatBuffer floatBuffer2 = this.mTextureVertices;
                floatBuffer2.put(4, floatBuffer2.get(0));
                FloatBuffer floatBuffer3 = this.mTextureVertices;
                floatBuffer3.put(6, floatBuffer3.get(2));
                FloatBuffer floatBuffer4 = this.mTextureVertices;
                floatBuffer4.put(7, floatBuffer4.get(5));
                reTransformIfNeeded();
            } else {
                this.mViewPortWidth = i14;
                this.mViewPortHeight = i15;
                this.mViewPortY = 0;
                this.mViewPortX = 0;
                setOption(13000, this.mCropTextureCoord);
            }
        }
        return 0;
    }

    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return -1;
    }

    public GLDefaultFilter(int i10, int i11) {
        super(i10, i11);
        this.vertexDefaultShader = "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position =  aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}\n";
        this.fragmentDefaultShader = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 12;
        this.TEXTURE_VERTICES_DATA_STRIDE_BYTES = 8;
        this.TRIANGLE_VERTICES_DATA_POS_OFFSET = 0;
        this.TRIANGLE_VERTICES_DATA_UV_OFFSET = 0;
        this.FLOAT_SIZE_BYTES = 4;
        this.mViewPortWidth = -1;
        this.mViewPortHeight = -1;
        this.mViewPortX = 0;
        this.mViewPortY = 0;
        this.mNeedClear = true;
        this.mLayoutMode = 1;
        this.mLayoutAspectRatio = 0.5f;
        this.mCropXNormalize = 0.0f;
        this.mCropYNormalize = 0.0f;
        this.mCropWidthNormalize = 1.0f;
        this.mCropHeightNormalize = 1.0f;
        this.mCropTextureCoord = null;
        this.mTextureMinFilter = 9729;
        this.mTextureMagFilter = 9729;
        this.mRotation = 0;
        this.isMirrorHorizontal = false;
        this.isMirrorVertical = false;
        this.mGLError = 0;
        this.mIsCallGLfinish = 1;
        this.mInTextureTarget = 3553;
        this.mOrder = 0;
    }

    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer, Boolean bool) {
        EffectTexture effectTexture2;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(126, this.mEffectType) == -1) {
            this.mSurfaceTexture.setOption(126, this.mEffectType, 0);
        }
        if (effectTexture.getTexTarget() != this.mInTextureTarget) {
            int i10 = this.mTexType;
            String simpleName = getClass().getSimpleName();
            TextureRenderLog.e(i10, simpleName, "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
            if (videoSurfaceTexture2 != null) {
                int i11 = this.mEffectType;
                videoSurfaceTexture2.notifyError(12, i11, "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            }
            return effectTexture;
        } else if (this.mProgram == 0) {
            int i12 = this.mTexType;
            TextureRenderLog.e(i12, LOG_TAG, "program error,don't process,filter:" + this.mEffectType);
            VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
            if (videoSurfaceTexture3 != null) {
                int i13 = this.mEffectType;
                videoSurfaceTexture3.notifyError(13, i13, "program error,don't process,filter:" + this.mEffectType);
            }
            return effectTexture;
        } else {
            int i14 = this.mTexType;
            int checkGLError = TexGLUtils.checkGLError(i14, "filter process start,type:" + this.mEffectType);
            if (checkGLError != 0) {
                this.mGLError = -1;
                VideoSurfaceTexture videoSurfaceTexture4 = this.mSurfaceTexture;
                if (videoSurfaceTexture4 != null) {
                    videoSurfaceTexture4.notifyError(checkGLError, this.mEffectType, "");
                }
                return effectTexture;
            }
            VideoSurfaceTexture videoSurfaceTexture5 = this.mSurfaceTexture;
            if (videoSurfaceTexture5 != null) {
                videoSurfaceTexture5.currentEffectProcessBegin(this.mEffectType);
            }
            if (updateRenderParam(effectTexture, frameBuffer) == -1) {
                updateDefaultRenderParam(effectTexture, frameBuffer);
            }
            if (frameBuffer != null) {
                if (this.mOutTexWidth == 0 || this.mOutTexHeight == 0) {
                    int i15 = this.mTexType;
                    TextureRenderLog.e(i15, LOG_TAG, "error width or height, w:" + this.mOutTexWidth + " h:" + this.mOutTexHeight);
                    VideoSurfaceTexture videoSurfaceTexture6 = this.mSurfaceTexture;
                    if (videoSurfaceTexture6 != null) {
                        int i16 = this.mEffectType;
                        videoSurfaceTexture6.notifyError(14, i16, "error width or height, w:" + this.mOutTexWidth + " h:" + this.mOutTexHeight);
                    }
                }
                effectTexture2 = genTexture();
                if (effectTexture2 == null) {
                    return effectTexture;
                }
                frameBuffer.bindTexture2D(effectTexture2.getTexID());
            } else {
                effectTexture2 = null;
            }
            GLES20.glUseProgram(this.mProgram);
            if (this.mNeedClear) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
            }
            GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
            this.mTriangleVertices.position(this.TRIANGLE_VERTICES_DATA_POS_OFFSET);
            GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTriangleVertices);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle);
            this.mTextureVertices.position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
            GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTextureVertices);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getTexID());
            GLES20.glTexParameteri(this.mInTextureTarget, 10241, this.mTextureMinFilter);
            GLES20.glTexParameteri(this.mInTextureTarget, Data.MAX_DATA_BYTES, this.mTextureMagFilter);
            GLES20.glUniform1i(this.mInputTextureHandle, 0);
            onDrawFrameBefore();
            int i17 = this.mTexType;
            int checkGLError2 = TexGLUtils.checkGLError(i17, "filter glDrawArrays before,type:" + this.mEffectType);
            if (checkGLError2 == 0) {
                GLES20.glDrawArrays(5, 0, 4);
                this.mGLError = 0;
            } else {
                this.mGLError = -1;
                VideoSurfaceTexture videoSurfaceTexture7 = this.mSurfaceTexture;
                if (videoSurfaceTexture7 != null) {
                    int i18 = this.mEffectType;
                    videoSurfaceTexture7.notifyError(checkGLError2, i18, "filter glDrawArrays before,type:" + this.mEffectType);
                }
            }
            onDrawFrameAfter();
            GLES20.glBindTexture(this.mInTextureTarget, 0);
            GLES20.glDisableVertexAttribArray(this.maPositionHandle);
            GLES20.glDisableVertexAttribArray(this.maTextureHandle);
            if (this.mIsCallGLfinish == 1) {
                GLES20.glFinish();
            }
            if (frameBuffer != null) {
                frameBuffer.unbindTexture2D();
            }
            VideoSurfaceTexture videoSurfaceTexture8 = this.mSurfaceTexture;
            if (videoSurfaceTexture8 != null) {
                videoSurfaceTexture8.currentEffectProcessEnd(this.mEffectType);
            }
            int i19 = this.mTexType;
            int checkGLError3 = TexGLUtils.checkGLError(i19, "filter glDrawArrays after,type:" + this.mEffectType);
            if (this.mGLError == 0 && checkGLError3 == 0) {
                VideoSurfaceTexture videoSurfaceTexture9 = this.mSurfaceTexture;
                if (videoSurfaceTexture9 != null) {
                    videoSurfaceTexture9.setOption(19, this.mEffectType, 1);
                }
                if (bool.booleanValue()) {
                    effectTexture.giveBack();
                }
                return effectTexture2;
            }
            VideoSurfaceTexture videoSurfaceTexture10 = this.mSurfaceTexture;
            if (videoSurfaceTexture10 != null) {
                int i20 = this.mEffectType;
                videoSurfaceTexture10.notifyError(checkGLError3, i20, "filter glDrawArrays after,type:" + this.mEffectType);
            }
            if (effectTexture2 != null) {
                effectTexture2.giveBack();
            }
            this.mGLError = -1;
            return effectTexture;
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float f10) {
        if (i10 != 27) {
            return;
        }
        this.mLayoutAspectRatio = f10;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float[] fArr) {
        if (i10 != 13000) {
            super.setOption(i10, fArr);
        } else if (fArr != null) {
            this.mTextureVertices.position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
            this.mTextureVertices.put(fArr);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_ACTION, -1);
        if (bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, -1) == 11) {
            if (i10 == 21 || i10 == 28 || i10 == 35) {
                float f10 = bundle.getFloat("width", 1.0f);
                float f11 = bundle.getFloat("height", 1.0f);
                float f12 = bundle.getFloat(TextureRenderKeys.KEY_IS_X, 0.0f);
                float f13 = bundle.getFloat(TextureRenderKeys.KEY_IS_Y, 0.0f);
                if (f12 > 1.0f || f12 < 0.0f || f13 > 1.0f || f13 < 0.0f || f10 <= 0.0f || f11 <= 0.0f) {
                    return;
                }
                if (f13 == this.mCropYNormalize && f12 == this.mCropXNormalize && f10 == this.mCropWidthNormalize && f11 == this.mCropHeightNormalize) {
                    return;
                }
                this.mCropWidthNormalize = f10;
                this.mCropHeightNormalize = f11;
                this.mCropXNormalize = f12;
                this.mCropYNormalize = f13;
                if (f12 < 0.0f) {
                    f12 = 0.0f;
                }
                this.mCropXNormalize = f12;
                float f14 = f13 >= 0.0f ? f13 : 0.0f;
                this.mCropYNormalize = f14;
                if (f12 + f10 > 1.0f) {
                    f10 = 1.0f - f12;
                }
                this.mCropWidthNormalize = f10;
                if (f14 + f11 > 1.0f) {
                    f11 = 1.0f - f14;
                }
                this.mCropHeightNormalize = f11;
                this.mCropTextureCoord = new float[]{f12, f14, f12 + f10, f14, f12, f14 + f11, f10 + f12, f11 + f14};
                TextureRenderLog.i(this.mTexType, LOG_TAG, "param set success, bundle:" + bundle);
            }
        }
    }
}
