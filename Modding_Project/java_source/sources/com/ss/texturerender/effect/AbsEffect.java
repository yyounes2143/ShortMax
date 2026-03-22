package com.ss.texturerender.effect;

import android.os.Bundle;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurfaceTexture;
/* loaded from: classes6.dex */
public abstract class AbsEffect {
    public static final int MAX_ORDER = 100;
    public static final int OPTION_EFFECT_FLOATARRAY_TEXTURE_VERTICES = 13000;
    public static final int OPTION_EFFECT_FLOAT_SRCROPSIZEU = 14000;
    public static final int OPTION_EFFECT_FLOAT_SRCROPSIZEV = 14001;
    public static final int OPTION_EFFECT_INT_MAX_HEIGHT = 10002;
    public static final int OPTION_EFFECT_INT_MAX_WIDTH = 10001;
    public static final int OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW = 10010;
    public static final int OPTION_EFFECT_INT_ORDER = 10011;
    public static final int OPTION_EFFECT_INT_POWER_LEVEL = 10003;
    public static final int OPTION_EFFECT_INT_RENDER_TO_SCREEN = 10015;
    public static final int OPTION_EFFECT_INT_SUPPORT_OES = 10014;
    public static final int OPTION_EFFECT_INT_TEXTURE_TARGET_IN = 10004;
    public static final int OPTION_EFFECT_INT_TYPE = 10005;
    public static final int OPTION_EFFECT_INT_VIEWPORT_HEIGHT = 10007;
    public static final int OPTION_EFFECT_INT_VIEWPORT_WIDTH = 10006;
    public static final int OPTION_EFFECT_INT_VIEWPORT_X = 10008;
    public static final int OPTION_EFFECT_INT_VIEWPORT_Y = 10009;
    public static final int OPTION_EFFECT_INT_VR_MODE = 10012;
    public static final int OPTION_EFFECT_STR_FRAGMENT_SHADER = 11001;
    public static final int OPTION_EFFECT_STR_VERTEX_SHADER = 11000;
    protected Bundle mBundle;
    protected int mEffectType;
    protected int mInTextureTarget;
    protected AbsEffect mNext;
    protected int mOrder;
    protected TextureRenderer mParentRender;
    protected AbsEffect mPrevious;
    public VideoSurfaceTexture mSurfaceTexture;
    protected int mTexType;
    protected int mIsSupportOes = 0;
    protected boolean mRenderToScreen = false;

    public AbsEffect(int i10, int i11) {
        this.mEffectType = i11;
        this.mTexType = i10;
    }

    public int effectType() {
        return this.mEffectType;
    }

    public float getFloatOption(int i10) {
        return 0.0f;
    }

    public Bundle getInitBundle() {
        return this.mBundle;
    }

    public int getIntOption(int i10) {
        if (i10 != 10004) {
            if (i10 != 10005) {
                if (i10 != 10011) {
                    if (i10 != 10014) {
                        return -1;
                    }
                    return this.mIsSupportOes;
                }
                return this.mOrder;
            }
            return this.mEffectType;
        }
        return this.mInTextureTarget;
    }

    public AbsEffect getNextEffect() {
        return this.mNext;
    }

    public Object getOption(Bundle bundle) {
        return null;
    }

    public AbsEffect getPreviousEffect() {
        return this.mPrevious;
    }

    public String getStringOption(int i10) {
        return "";
    }

    public int init(Bundle bundle) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && videoSurfaceTexture.getIntOption(126, this.mEffectType) == -1) {
            this.mSurfaceTexture.setOption(126, this.mEffectType, 0);
            this.mSurfaceTexture.setOption(127, this.mEffectType, "");
        }
        this.mBundle = bundle;
        return 0;
    }

    public void insertEffect(AbsEffect absEffect) {
        int i10 = absEffect.mOrder;
        if (i10 <= this.mOrder) {
            AbsEffect absEffect2 = this.mNext;
            if (absEffect2 == null) {
                this.mNext = absEffect;
                absEffect.mPrevious = this;
                return;
            } else if (absEffect2.mOrder >= i10) {
                absEffect2.insertEffect(absEffect);
                return;
            } else {
                absEffect.mPrevious = this;
                absEffect.mNext = absEffect2;
                this.mNext.mPrevious = absEffect;
                this.mNext = absEffect;
                return;
            }
        }
        AbsEffect absEffect3 = this.mPrevious;
        if (absEffect3 == null) {
            this.mPrevious = absEffect;
            absEffect.mNext = this;
        } else if (absEffect3.mOrder >= i10) {
            absEffect3.mNext = absEffect;
            absEffect.mPrevious = absEffect3;
            absEffect.mNext = this;
            this.mPrevious = absEffect;
        } else {
            absEffect3.insertEffect(absEffect);
        }
    }

    public abstract EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer);

    public EffectTexture[] processWithMRT(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return null;
    }

    public AbsEffect release() {
        AbsEffect absEffect = this.mNext;
        removeEffect();
        return absEffect;
    }

    public void removeEffect() {
        AbsEffect absEffect = this.mPrevious;
        if (absEffect != null) {
            absEffect.mNext = this.mNext;
        }
        AbsEffect absEffect2 = this.mNext;
        if (absEffect2 != null) {
            absEffect2.mPrevious = absEffect;
        }
        this.mNext = null;
        this.mPrevious = null;
    }

    public void setOption(int i10, int i11) {
        AbsEffect absEffect;
        if (i10 != 10011) {
            if (i10 != 10015) {
                AbsEffect absEffect2 = this.mNext;
                if (absEffect2 != null) {
                    absEffect2.setOption(i10, i11);
                    return;
                }
                return;
            }
            this.mRenderToScreen = i11 > 0;
            return;
        }
        this.mOrder = i11;
        AbsEffect absEffect3 = this.mPrevious;
        if ((absEffect3 == null || i11 <= absEffect3.mOrder) && ((absEffect = this.mNext) == null || i11 >= absEffect.mOrder)) {
            return;
        }
        removeEffect();
        insertEffect(this);
    }

    public void setParentRender(TextureRenderer textureRenderer) {
        this.mParentRender = textureRenderer;
    }

    public void setSurfaceTexture(VideoSurfaceTexture videoSurfaceTexture) {
        this.mSurfaceTexture = videoSurfaceTexture;
        if (videoSurfaceTexture != null) {
            this.mTexType = videoSurfaceTexture.texType();
        }
    }

    public int texType() {
        return this.mTexType;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[");
        sb2.append(this.mOrder);
        sb2.append("]->");
        AbsEffect absEffect = this.mNext;
        if (absEffect != null) {
            str = absEffect.toString();
        } else {
            str = "end";
        }
        sb2.append(str);
        return sb2.toString();
    }

    public void setOption(int i10, float f10) {
        AbsEffect absEffect = this.mNext;
        if (absEffect != null) {
            absEffect.setOption(i10, f10);
        }
    }

    public void setOption(int i10, float[] fArr) {
        AbsEffect absEffect = this.mNext;
        if (absEffect != null) {
            absEffect.setOption(i10, fArr);
        }
    }

    public void setOption(Bundle bundle) {
        AbsEffect absEffect = this.mNext;
        if (absEffect != null) {
            absEffect.setOption(bundle);
        }
    }

    public void setOption(int i10, Object obj) {
        AbsEffect absEffect = this.mNext;
        if (absEffect != null) {
            absEffect.setOption(i10, obj);
        }
    }
}
