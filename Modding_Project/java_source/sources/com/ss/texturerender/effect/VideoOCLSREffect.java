package com.ss.texturerender.effect;

import android.os.Bundle;
import com.ss.texturerender.DeviceManager;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoOCLSRBaseWrapper;
/* loaded from: classes6.dex */
public class VideoOCLSREffect extends AbsEffect {
    private static final String LOG_TAG = "TR_VideoOCLSREffect";
    private boolean mAsyncInit;
    private int mBackend;
    private boolean mEnableBmf;
    private boolean mIsMaliSync;
    private String mLibPath;
    private int mMaxHeight;
    private int mMaxWidth;
    private VideoOCLSRBaseWrapper mOclSr;
    private int mPoolSize;
    private float mProcessAverageCostTime;
    private int mProcessSuccess;
    private float mProcessSuccessFrame;
    private float mProcessSumCostTime;
    private float mProcessSumFrame;
    private float[] mSTMatrix;
    private int mScaleType;
    private Bundle mSrProParamter;
    private int mSuperAlgType;
    private boolean useGLSr;

    public VideoOCLSREffect(int i10) {
        super(i10, 5);
        this.mSuperAlgType = -1;
        this.mIsMaliSync = true;
        this.mProcessSuccess = Integer.MIN_VALUE;
        this.mEnableBmf = false;
        this.useGLSr = false;
        this.mBackend = 0;
        this.mScaleType = 0;
        this.mPoolSize = 0;
        this.mLibPath = "";
        this.mProcessAverageCostTime = 0.0f;
        this.mProcessSumCostTime = 0.0f;
        this.mProcessSumFrame = 0.0f;
        this.mProcessSuccessFrame = 0.0f;
        this.mSrProParamter = null;
        this.mAsyncInit = false;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new VideoOCLSREffect");
        if (DeviceManager.isVRDevice()) {
            this.useGLSr = true;
        }
        this.mOrder = 5;
        this.mIsSupportOes = 1;
    }

    private EffectTexture originTex(EffectTexture effectTexture) {
        this.mSurfaceTexture.setOption(6, 0);
        return effectTexture;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0339  */
    @Override // com.ss.texturerender.effect.AbsEffect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int init(android.os.Bundle r30) {
        /*
            Method dump skipped, instructions count: 981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.effect.VideoOCLSREffect.init(android.os.Bundle):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0247  */
    @Override // com.ss.texturerender.effect.AbsEffect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ss.texturerender.effect.EffectTexture process(com.ss.texturerender.effect.EffectTexture r28, com.ss.texturerender.effect.FrameBuffer r29) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.effect.VideoOCLSREffect.process(com.ss.texturerender.effect.EffectTexture, com.ss.texturerender.effect.FrameBuffer):com.ss.texturerender.effect.EffectTexture");
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        if (this.mOclSr != null) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "release video sr");
            this.mOclSr.ReleaseVideoOclSr();
            this.mOclSr = null;
        }
        return super.release();
    }

    public boolean supportProcessResolution(int i10, int i11) {
        if (this.mSurfaceTexture == null) {
            return false;
        }
        if (this.mMaxWidth > 0 && this.mMaxHeight > 0) {
            int max = Math.max(i10, i11);
            int min = Math.min(i10, i11);
            int max2 = Math.max(this.mMaxWidth, this.mMaxHeight);
            int min2 = Math.min(this.mMaxWidth, this.mMaxHeight);
            if (max > max2 || min > min2) {
                TextureRenderLog.e(this.mTexType, LOG_TAG, "width/height out of range");
                return false;
            }
        }
        return this.mSurfaceTexture.supportProcessResolution(i10, i11);
    }
}
