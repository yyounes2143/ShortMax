package com.ss.texturerender;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.base.EGLRuntime;
import com.ss.texturerender.effect.AbsEffect;
import com.ss.texturerender.effect.BMFVQScoreWrapper;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.texturerender.effect.EffectFactory;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.EffectTextureManager;
import com.ss.texturerender.effect.EmptyEffect;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.GLDefaultFilter;
import com.ss.texturerender.effect.GLOesTo2DFilter;
import com.ss.texturerender.effect.HardwareBuffer2GLFilter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
@TargetApi(18)
/* loaded from: classes6.dex */
public class VideoTextureRenderer extends TextureRenderer {
    private static VideoTextureRenderer mRenderInstance;
    private GLDefaultFilter mCurrentDrawer;
    private Queue<Integer> mErrorList;
    private int mFinalTexId;
    private FrameBuffer mFrameBuffer;
    private ByteBuffer mFrameCallbackBufffer;
    private AbsEffect mHardwareBuffer2GLFilter;
    private AbsEffect mMultiRenderTargetFilter;
    private int mOutTexHeight;
    private int mOutTexWidth;
    private ByteBuffer mSaveFrameBuffer;
    private GLDefaultFilter mTex2dDrawer;
    private GLOesTo2DFilter mTexOesDrawer;
    private VideoSurfaceTexture mTileVideoSurfaceTexture;
    private AbsEffect mTopEffect;
    private BMFVQScoreWrapper mVqscoreWrapper;

    public VideoTextureRenderer(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig, boolean z10) {
        super(effectConfig, i10, eGLContext, eGLConfig, z10);
        this.mErrorList = new LinkedList();
        this.mSaveFrameBuffer = null;
        this.mFrameCallbackBufffer = null;
        this.mOutTexWidth = -1;
        this.mOutTexHeight = -1;
        this.mFinalTexId = -1;
        this.mTileVideoSurfaceTexture = null;
        this.mVqscoreWrapper = null;
        if (effectConfig.isOpenTile()) {
            initTileVideoSurfaceTexture();
        }
        this.mTopEffect = new EmptyEffect(i10);
    }

    private void _setValueToElement(int i10, int i11) {
        this.mTopEffect.setOption(i10, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v2 */
    private boolean checkDirectRenderToScreen(AbsEffect absEffect, VideoSurfaceTexture videoSurfaceTexture) {
        boolean z10;
        ?? r02 = 0;
        if (absEffect == 0) {
            return false;
        }
        HashMap<Surface, EGLSurface> extraRealSurfaces = videoSurfaceTexture.getExtraRealSurfaces();
        if (extraRealSurfaces != null && !extraRealSurfaces.isEmpty()) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (videoSurfaceTexture.mRotationType != 0 || videoSurfaceTexture.mIsMirrorHorizontal != 0 || videoSurfaceTexture.mIsMirrorVertical != 0 || videoSurfaceTexture.getCropParamsBundle(false) != null) {
            z10 = false;
        }
        if (absEffect.getNextEffect() == null) {
            r02 = z10;
        }
        absEffect.setOption((int) AbsEffect.OPTION_EFFECT_INT_RENDER_TO_SCREEN, (int) r02);
        return r02;
    }

    private boolean checkUseOesFormat(AbsEffect absEffect) {
        if (absEffect == null) {
            return false;
        }
        AbsEffect absEffect2 = this.mMultiRenderTargetFilter;
        if (absEffect2 == null) {
            absEffect2 = this.mTopEffect.getNextEffect();
        }
        if (absEffect2 != null && absEffect2 != absEffect) {
            if (absEffect.getIntOption(10011) >= absEffect2.getIntOption(10011)) {
                if (absEffect2.getIntOption(10004) == 36197) {
                    int intOption = absEffect2.getIntOption(10005);
                    if (reInitIfNeed(intOption, 3553) != 0) {
                        if (intOption == 5) {
                            this.mErrorList.offer(1);
                        } else if (intOption == 1) {
                            this.mErrorList.offer(3);
                        } else {
                            this.mErrorList.offer(6);
                        }
                    }
                }
            }
            return false;
        }
        if (absEffect.getIntOption(AbsEffect.OPTION_EFFECT_INT_SUPPORT_OES) != 1 || this.mEffectConfig.getEffectOpen(11)) {
            return false;
        }
        return true;
    }

    private boolean draw(VideoSurfaceTexture videoSurfaceTexture, int i10) {
        VideoSurface.VQScoreCallback vQScoreCallback;
        boolean z10;
        EffectTexture effectTexture;
        int i11;
        EffectTexture effectTexture2;
        BMFVQScoreWrapper bMFVQScoreWrapper;
        EGLRuntime eGLRuntime;
        boolean surfaceTextureUpdateImage = surfaceTextureUpdateImage(videoSurfaceTexture);
        if (!surfaceTextureUpdateImage) {
            return surfaceTextureUpdateImage;
        }
        if (this.mErrorList != null) {
            while (!this.mErrorList.isEmpty()) {
                videoSurfaceTexture.notifyError(this.mErrorList.poll().intValue(), 0, "");
            }
        }
        if (videoSurfaceTexture.needDrop() || i10 == 0) {
            return false;
        }
        if (!videoSurfaceTexture.isMakeCurrent()) {
            if (videoSurfaceTexture.getRenderSurface() == null) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "texture : " + videoSurfaceTexture + " not set surface");
                if (videoSurfaceTexture.getEnableUseEglDummySurface() != 1 || this.mEGLRuntime == null) {
                    return false;
                }
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "create dummy surface");
                videoSurfaceTexture.createEGLWindowSurface(true);
            } else if (!this.mHandler.hasMessages(4)) {
                TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "texture : " + videoSurfaceTexture + ", retry create");
                if (!videoSurfaceTexture.createEGLWindowSurface(false)) {
                    TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "texture : " + videoSurfaceTexture + ", retry failed");
                    return false;
                }
            }
        }
        CopyOnWriteArrayList<Bundle> paramList = videoSurfaceTexture.getParamList();
        if (paramList != null) {
            Iterator<Bundle> it = paramList.iterator();
            while (it.hasNext()) {
                setEffect(it.next(), videoSurfaceTexture);
            }
        }
        boolean hasEffectOpen = hasEffectOpen(videoSurfaceTexture);
        videoSurfaceTexture.effectChainBegin();
        EffectTexture effectTexture3 = videoSurfaceTexture.getEffectTexture();
        if (effectTexture3 == null) {
            TextureRenderLog.d(-1, TextureRenderer.LOG_TAG, "surfaceTexture.getEffectTexture() null");
            return false;
        }
        EffectTexture effectTexture4 = null;
        if (effectTexture3.getSourceType() == 2) {
            if (this.mHardwareBuffer2GLFilter == null && (eGLRuntime = this.mEGLRuntime) != null) {
                this.mHardwareBuffer2GLFilter = new HardwareBuffer2GLFilter(this.mTexType, eGLRuntime.eglDisplay);
            }
            effectTexture3 = this.mHardwareBuffer2GLFilter.process(effectTexture3, null);
        }
        if (this.mVqscoreWrapper != null && videoSurfaceTexture.getIntOption(152) == 1) {
            TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "enter open vqscore");
            this.mVqscoreWrapper.setSurfaceTexture(videoSurfaceTexture);
            Bundle option = videoSurfaceTexture.getOption(153);
            if (option != null) {
                vQScoreCallback = (VideoSurface.VQScoreCallback) option.getSerializable(TextureRenderKeys.KEY_IS_BMF_VQSCORE_CALLBACK);
                if (vQScoreCallback != null) {
                    this.mVqscoreWrapper.processVqscore(effectTexture3, vQScoreCallback, false);
                    z10 = true;
                    videoSurfaceTexture.setOption(152, 0);
                }
            } else {
                vQScoreCallback = null;
            }
            z10 = false;
            videoSurfaceTexture.setOption(152, 0);
        } else {
            vQScoreCallback = null;
            z10 = false;
        }
        EffectConfig effectConfig = videoSurfaceTexture.getEffectConfig();
        AbsEffect absEffect = this.mMultiRenderTargetFilter;
        if (absEffect != null && effectConfig.getEffectOpen(absEffect.getIntOption(10005))) {
            if (effectTexture3.getTexTarget() == 36197 && this.mMultiRenderTargetFilter.getIntOption(10004) == 3553) {
                this.mTexOesDrawer.setSurfaceTexture(videoSurfaceTexture);
                effectTexture3 = this.mTexOesDrawer.process(effectTexture3, this.mFrameBuffer);
            }
            EffectTexture[] processWithMRT = this.mMultiRenderTargetFilter.processWithMRT(effectTexture3, this.mFrameBuffer);
            if (processWithMRT != null) {
                effectTexture3 = processWithMRT[0];
                effectTexture4 = processWithMRT[1];
            }
        }
        EffectTexture effectTexture5 = effectTexture4;
        if (hasEffectOpen) {
            effectTexture3 = processEffectTexture(videoSurfaceTexture, effectTexture3);
        } else {
            videoSurfaceTexture.resetFlag();
        }
        EffectTexture effectTexture6 = effectTexture3;
        if (effectTexture6 == null) {
            videoSurfaceTexture.effectChainEnd();
            return true;
        }
        if (hasEffectOpen && z10 && (bMFVQScoreWrapper = this.mVqscoreWrapper) != null) {
            bMFVQScoreWrapper.processVqscore(effectTexture6, vQScoreCallback, true);
        }
        boolean z11 = false;
        for (Map.Entry<Surface, EGLSurface> entry : videoSurfaceTexture.getExtraRealSurfaces().entrySet()) {
            EGLSurface value = entry.getValue();
            videoSurfaceTexture.makeCurrent(value);
            if (effectTexture5 == null) {
                effectTexture2 = effectTexture6;
            } else {
                effectTexture2 = effectTexture5;
            }
            if (drawToSurface(effectTexture2, videoSurfaceTexture, videoSurfaceTexture.getConsumerHeight(value), videoSurfaceTexture.getConsumerWidth(value), true) == 0) {
                videoSurfaceTexture.eglSwapBuffer(value, false);
                Surface key = entry.getKey();
                if (videoSurfaceTexture.getIntOption(141) == 1) {
                    videoSurfaceTexture.notifyExtraSurfaceRender(key);
                }
            }
            z11 = true;
        }
        if (effectTexture5 != null) {
            effectTexture5.giveBack();
        }
        if (!switchContextToMainSurface(videoSurfaceTexture, Boolean.valueOf(z11))) {
            return false;
        }
        this.mOutTexWidth = effectTexture6.getWidth();
        this.mOutTexHeight = effectTexture6.getHeight();
        if (videoSurfaceTexture.getFrameCallbackBundle() != null && effectTexture6.getTexTarget() != 3553) {
            if (this.mFrameBuffer == null) {
                initFbo();
            }
            this.mTexOesDrawer.setSurfaceTexture(videoSurfaceTexture);
            this.mTexOesDrawer.setOption(10006, videoSurfaceTexture.getViewportWidth());
            this.mTexOesDrawer.setOption(10007, videoSurfaceTexture.getViewportHeight());
            EffectTexture process = this.mTexOesDrawer.process(effectTexture6, this.mFrameBuffer);
            if (this.mTex2dDrawer == null) {
                setup2DGraphics();
            }
            this.mFinalTexId = process.getTexID();
            effectTexture = process;
        } else {
            effectTexture = effectTexture6;
        }
        if (!effectConfig.getEffectOpen(18)) {
            i11 = drawToSurface(effectTexture, videoSurfaceTexture, videoSurfaceTexture.getViewportHeight(), videoSurfaceTexture.getViewportWidth(), false);
        } else {
            i11 = 0;
        }
        videoSurfaceTexture.effectChainEnd();
        if (i11 != 0) {
            return false;
        }
        return true;
    }

    private int drawToSurface(EffectTexture effectTexture, VideoSurfaceTexture videoSurfaceTexture, int i10, int i11, boolean z10) {
        GLDefaultFilter gLDefaultFilter;
        if (effectTexture.getTexTarget() == 3553) {
            gLDefaultFilter = this.mTex2dDrawer;
        } else {
            gLDefaultFilter = this.mTexOesDrawer;
        }
        this.mCurrentDrawer = gLDefaultFilter;
        if (gLDefaultFilter == null) {
            return -1;
        }
        gLDefaultFilter.setSurfaceTexture(videoSurfaceTexture);
        gLDefaultFilter.setOption(26, videoSurfaceTexture.mLayoutMode);
        gLDefaultFilter.setOption(27, videoSurfaceTexture.mLayoutRatio);
        if (videoSurfaceTexture.getIntOption(146) == 1) {
            gLDefaultFilter.setOption(30, videoSurfaceTexture.mIsMirrorHorizontal);
            gLDefaultFilter.setOption(31, videoSurfaceTexture.mIsMirrorVertical);
            gLDefaultFilter.setOption(29, videoSurfaceTexture.mRotationType);
        } else {
            gLDefaultFilter.setOption(29, videoSurfaceTexture.mRotationType);
            gLDefaultFilter.setOption(30, videoSurfaceTexture.mIsMirrorHorizontal);
            gLDefaultFilter.setOption(31, videoSurfaceTexture.mIsMirrorVertical);
        }
        gLDefaultFilter.setOption(10006, i11);
        gLDefaultFilter.setOption(10007, i10);
        if (this.mTexType == 1) {
            Bundle cropParamsBundle = videoSurfaceTexture.getCropParamsBundle(z10);
            if (cropParamsBundle != null) {
                gLDefaultFilter.setOption(cropParamsBundle);
            } else if (!z10 && videoSurfaceTexture.getIntOption(171) == 1) {
                gLDefaultFilter.resetCropParams();
            }
        }
        gLDefaultFilter.process(effectTexture, null);
        return gLDefaultFilter.getIntOption(GLDefaultFilter.OPTION_FILTER_INT_GL_ERROR);
    }

    private void frameBufferCallback(Message message) {
        ByteBuffer allocateDirect;
        int i10;
        VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
        Bundle frameCallbackBundle = videoSurfaceTexture.getFrameCallbackBundle();
        if (frameCallbackBundle != null) {
            VideoSurface.FrameRenderCallback frameRenderCallback = (VideoSurface.FrameRenderCallback) frameCallbackBundle.getSerializable(TextureRenderKeys.KEY_IS_CALLBACK);
            int i11 = this.mOutTexWidth;
            int i12 = this.mOutTexHeight;
            int i13 = frameCallbackBundle.getInt(TextureRenderKeys.KEY_IS_BUFFER_TYPE);
            try {
                if (i13 == 2) {
                    int i14 = i11 * i12 * 4;
                    if (frameCallbackBundle.getBoolean(TextureRenderKeys.KEY_IS_REUSE_BUFFER)) {
                        ByteBuffer byteBuffer = this.mFrameCallbackBufffer;
                        if (byteBuffer != null) {
                            if (byteBuffer.capacity() < i14) {
                            }
                            allocateDirect = this.mFrameCallbackBufffer;
                        }
                        this.mFrameCallbackBufffer = ByteBuffer.allocateDirect(i14);
                        allocateDirect = this.mFrameCallbackBufffer;
                    } else {
                        allocateDirect = ByteBuffer.allocateDirect(i14);
                    }
                    allocateDirect.rewind();
                    allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
                    GLES20.glFinish();
                    FrameBuffer frameBuffer = this.mFrameBuffer;
                    if (frameBuffer != null && (i10 = this.mFinalTexId) != -1) {
                        frameBuffer.bindTexture2D(i10);
                    }
                    GLES20.glReadPixels(0, 0, i11, i12, 6408, 5121, allocateDirect);
                    FrameBuffer frameBuffer2 = this.mFrameBuffer;
                    if (frameBuffer2 != null) {
                        frameBuffer2.unbindTexture2D();
                    }
                    int checkGLError = TexGLUtils.checkGLError(this.mTexType, "handleFrameCallback");
                    if (checkGLError != 0) {
                        videoSurfaceTexture.notifyError(checkGLError, 0, "handleFrameCallback");
                    }
                    allocateDirect.rewind();
                    int i15 = i11 * 4;
                    byte[] bArr = new byte[i15];
                    for (int i16 = 0; i16 < i12 / 2; i16++) {
                        allocateDirect.get(bArr);
                        System.arraycopy(allocateDirect.array(), allocateDirect.limit() - allocateDirect.position(), allocateDirect.array(), allocateDirect.position() - i15, i15);
                        System.arraycopy(bArr, 0, allocateDirect.array(), allocateDirect.limit() - allocateDirect.position(), i15);
                    }
                    allocateDirect.rewind();
                    frameRenderCallback.onBytebufferCallbck(2, allocateDirect, i11, i12, System.currentTimeMillis());
                } else if (i13 == 1) {
                    frameRenderCallback.onTextureCallback(6408, 2, this.mFinalTexId, this.mEGLRuntime.eglContext, i11, i12, System.currentTimeMillis());
                }
            } catch (Exception e10) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "frame callback failed " + e10.getMessage());
                if (i13 == 2) {
                    frameRenderCallback.onBytebufferCallbck(-1, null, -1, -1, System.currentTimeMillis());
                } else {
                    frameRenderCallback.onTextureCallback(-1, -1, -1, null, -1, -1, System.currentTimeMillis());
                }
            }
        }
    }

    private int getConsumerHeight(EGLSurface eGLSurface) {
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEGLRuntime.eglDisplay, eGLSurface, 12374, iArr, 0);
        return iArr[0];
    }

    private int getConsumerWidth(EGLSurface eGLSurface) {
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEGLRuntime.eglDisplay, eGLSurface, 12375, iArr, 0);
        return iArr[0];
    }

    private AbsEffect getEffect(int i10) {
        AbsEffect absEffect = this.mMultiRenderTargetFilter;
        if (absEffect != null && i10 == absEffect.getIntOption(10005)) {
            return this.mMultiRenderTargetFilter;
        }
        for (AbsEffect nextEffect = this.mTopEffect.getNextEffect(); nextEffect != null; nextEffect = nextEffect.getNextEffect()) {
            if (nextEffect.getIntOption(10005) == i10) {
                return nextEffect;
            }
        }
        return null;
    }

    public static synchronized VideoTextureRenderer getRenderer(EGLContext eGLContext, EGLConfig eGLConfig) {
        synchronized (VideoTextureRenderer.class) {
            try {
                if (mRenderInstance == null) {
                    mRenderInstance = new VideoTextureRenderer(new EffectConfig(0), 0, eGLContext, eGLConfig);
                }
                VideoTextureRenderer videoTextureRenderer = mRenderInstance;
                if (videoTextureRenderer == null || videoTextureRenderer.mState != -1) {
                    return mRenderInstance;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean hasEffectOpen(VideoSurfaceTexture videoSurfaceTexture) {
        ConcurrentHashMap<Integer, Integer> effectConfigMap = this.mEffectConfig.getEffectConfigMap();
        EffectConfig effectConfig = videoSurfaceTexture.getEffectConfig();
        for (Map.Entry<Integer, Integer> entry : effectConfigMap.entrySet()) {
            if (entry.getValue().intValue() == 1 && effectConfig.getEffectOpen(entry.getKey().intValue())) {
                return true;
            }
        }
        return false;
    }

    private int initEffect(Bundle bundle, VideoSurfaceTexture videoSurfaceTexture) {
        AbsEffect effect;
        int init;
        int i10;
        int i11 = bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE);
        TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "initeffect:" + i11);
        int i12 = 3553;
        if (i11 != 1 && i11 != 5) {
            if (i11 != 11) {
                if (i11 != 16) {
                    effect = getEffect(i11);
                    if (effect == null) {
                        effect = EffectFactory.createEffect(this.mTexType, i11);
                    }
                    if (effect == null) {
                        TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "create effect fail" + i11);
                        return -1;
                    }
                    effect.setSurfaceTexture(videoSurfaceTexture);
                    effect.setParentRender(this);
                    if (checkUseOesFormat(effect)) {
                        i12 = 36197;
                    }
                    bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, i12);
                    init = effect.init(bundle);
                    if (i11 == 22) {
                        this.mMultiRenderTargetFilter = effect;
                    }
                } else {
                    if (this.mVqscoreWrapper == null) {
                        BMFVQScoreWrapper bMFVQScoreWrapper = (BMFVQScoreWrapper) EffectFactory.createEffect(this.mTexType, i11);
                        this.mVqscoreWrapper = bMFVQScoreWrapper;
                        if (bMFVQScoreWrapper != null) {
                            bMFVQScoreWrapper.setSurfaceTexture(videoSurfaceTexture);
                            this.mVqscoreWrapper.setParentRender(this);
                            this.mVqscoreWrapper.downloadModel(bundle);
                        }
                    }
                    return 0;
                }
            } else {
                this.mTexOesDrawer.setOption(bundle);
                initFbo();
                checkUseOesFormat(this.mTexOesDrawer);
                this.mEffectConfig.setEffectOpen(i11, 1);
                return 0;
            }
        } else {
            effect = getEffect(i11);
            if (effect == null && (effect = EffectFactory.createEffect(this.mTexType, i11)) == null) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "create effect failed");
                return -1;
            }
            if (checkUseOesFormat(effect) && !DeviceManager.isVRDevice()) {
                bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, 36197);
            } else {
                initFbo();
                bundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, 3553);
            }
            effect.setSurfaceTexture(videoSurfaceTexture);
            init = effect.init(bundle);
            if (init < 0) {
                effect.release();
                Queue<Integer> queue = this.mErrorList;
                if (i11 == 5) {
                    i10 = 1;
                } else {
                    i10 = 3;
                }
                queue.offer(Integer.valueOf(i10));
                effect = null;
            }
        }
        if (effect != null) {
            TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "initeffect successful:" + i11);
            this.mEffectConfig.setEffectOpen(i11, 1);
            if (this.mTex2dDrawer == null) {
                setup2DGraphics();
            }
            if (bundle.containsKey(TextureRenderKeys.KEY_IS_EFFECT_ORDER)) {
                effect.setOption(10011, bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_ORDER));
            }
            if (getEffect(i11) == null) {
                this.mTopEffect.insertEffect(effect);
            }
            if (i11 != 1 && i11 != 5) {
                initFbo();
            }
            if (videoSurfaceTexture != null && bundle.containsKey(TextureRenderKeys.KEY_IS_USE_EFFECT)) {
                videoSurfaceTexture.setEffectOpen(i11, bundle.getInt(TextureRenderKeys.KEY_IS_USE_EFFECT), bundle);
            }
        }
        TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "initEffect render:" + this + ",chain:" + this.mTopEffect.toString());
        return init;
    }

    private void initFbo() {
        if (this.mFrameBuffer == null) {
            this.mFrameBuffer = new FrameBuffer();
        }
        if (this.mEffectTextureManager == null) {
            this.mEffectTextureManager = new EffectTextureManager(this.mTexType);
        }
    }

    private void initTileVideoSurfaceTexture() {
        ITexture texture = getTexture();
        if (texture != null) {
            VideoSurfaceTexture videoSurfaceTexture = new VideoSurfaceTexture(texture, this.mHandler, this);
            videoSurfaceTexture.setEffectOpen(18, 1, null);
            videoSurfaceTexture.setOption(5, this.mTexType);
            videoSurfaceTexture.bindEGLEnv(this.mEGLRuntime);
            texture.decRef();
            this.mTileVideoSurfaceTexture = videoSurfaceTexture;
            return;
        }
        TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "tile surface texture init failed");
    }

    private EffectTexture processEffectTexture(VideoSurfaceTexture videoSurfaceTexture, EffectTexture effectTexture) {
        videoSurfaceTexture.effectChainBegin();
        EffectConfig effectConfig = videoSurfaceTexture.getEffectConfig();
        EffectTexture effectTexture2 = effectTexture;
        for (AbsEffect nextEffect = this.mTopEffect.getNextEffect(); nextEffect != null; nextEffect = nextEffect.getNextEffect()) {
            int intOption = nextEffect.getIntOption(10005);
            boolean z10 = false;
            if (effectConfig.getEffectOpen(intOption)) {
                if (effectTexture2.getTexTarget() == 36197 && nextEffect.getIntOption(10004) == 3553 && !effectConfig.getEffectOpen(18)) {
                    if (this.mTexType == 1) {
                        this.mTexOesDrawer.resetCropParams();
                    }
                    this.mTexOesDrawer.setSurfaceTexture(videoSurfaceTexture);
                    if (DeviceManager.isVRDevice()) {
                        EffectTexture.FilterType filterType = EffectTexture.FilterType.NEAREST;
                        effectTexture.switchFilterType(filterType, filterType);
                    }
                    if (this.mFrameBuffer == null) {
                        TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "init fbo before oesTo2d process");
                        initFbo();
                    }
                    effectTexture2 = this.mTexOesDrawer.process(effectTexture2, this.mFrameBuffer);
                    if (DeviceManager.isVRDevice()) {
                        EffectTexture.FilterType filterType2 = EffectTexture.FilterType.LINEAR;
                        effectTexture.switchFilterType(filterType2, filterType2);
                    }
                }
                nextEffect.setSurfaceTexture(videoSurfaceTexture);
                if (nextEffect.getIntOption(10005) == 18) {
                    nextEffect.setOption(10006, videoSurfaceTexture.getViewportWidth());
                    nextEffect.setOption(10007, videoSurfaceTexture.getViewportHeight());
                }
                if (videoSurfaceTexture.getExtraVideoSurfaceTexture() != null) {
                    VideoSurfaceTexture extraVideoSurfaceTexture = videoSurfaceTexture.getExtraVideoSurfaceTexture();
                    effectTexture2.setExtraEffectTexture(new EffectTexture[]{new EffectTexture((EffectTextureManager) null, extraVideoSurfaceTexture.getTexId().lock(), extraVideoSurfaceTexture.getTexWidth(), extraVideoSurfaceTexture.getTexHeight(), 36197)});
                    extraVideoSurfaceTexture.getTexId().unlock();
                }
                if (!DeviceManager.isVRDevice()) {
                    z10 = checkDirectRenderToScreen(nextEffect, videoSurfaceTexture);
                }
                if (z10) {
                    switchContextToMainSurface(videoSurfaceTexture, Boolean.FALSE);
                }
                effectTexture2 = nextEffect.process(effectTexture2, this.mFrameBuffer);
            } else {
                videoSurfaceTexture.setOption(19, intOption, 0);
            }
        }
        videoSurfaceTexture.effectChainEnd();
        return effectTexture2;
    }

    private int reInitIfNeed(int i10, int i11) {
        AbsEffect effect = getEffect(i10);
        if (effect != null && effect.getIntOption(10004) != i11) {
            Bundle initBundle = effect.getInitBundle();
            if (initBundle != null) {
                initBundle.putInt(TextureRenderKeys.KEY_IS_TEXTURE_TYPE, i11);
            }
            int init = effect.init(initBundle);
            int i12 = this.mTexType;
            String str = TextureRenderer.LOG_TAG;
            TextureRenderLog.i(i12, str, "reInit, effectType:" + i10 + ",texTarget:" + TexGLUtils.texTargetToString(i11));
            if (init != 0) {
                effect.release();
                return init;
            }
            return 0;
        }
        return 0;
    }

    private void releaseEffect(Bundle bundle, VideoSurfaceTexture videoSurfaceTexture) {
        if (bundle == null) {
            TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "releaseEffect bundle null");
            return;
        }
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE);
        if (i10 == 24) {
            if (videoSurfaceTexture != null) {
                for (AbsEffect nextEffect = this.mTopEffect.getNextEffect(); nextEffect != null; nextEffect = nextEffect.getNextEffect()) {
                    videoSurfaceTexture.setOption(19, nextEffect.getIntOption(10005), 0);
                }
            }
            deinitEffectComponents();
        } else {
            AbsEffect effect = getEffect(i10);
            if (effect != null) {
                effect.release();
            }
            this.mEffectConfig.setEffectOpen(i10, 0);
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.setOption(19, i10, 0);
            }
        }
        int i11 = this.mTexType;
        String str = TextureRenderer.LOG_TAG;
        TextureRenderLog.i(i11, str, "releaseEffect render:" + this + " type:" + i10 + " chain:" + this.mTopEffect);
    }

    private void resetCropParams() {
        GLOesTo2DFilter gLOesTo2DFilter = this.mTexOesDrawer;
        if (gLOesTo2DFilter != null) {
            gLOesTo2DFilter.resetCropParams();
        }
        GLDefaultFilter gLDefaultFilter = this.mTex2dDrawer;
        if (gLDefaultFilter != null) {
            gLDefaultFilter.resetCropParams();
        }
    }

    private void resetRotationMirrorParams() {
        GLOesTo2DFilter gLOesTo2DFilter = this.mTexOesDrawer;
        if (gLOesTo2DFilter != null) {
            gLOesTo2DFilter.setOption(30, 0);
            this.mTexOesDrawer.setOption(31, 0);
            this.mTexOesDrawer.setOption(29, 0);
            this.mTexOesDrawer.setOption(26, 1);
        }
        GLDefaultFilter gLDefaultFilter = this.mTex2dDrawer;
        if (gLDefaultFilter != null) {
            gLDefaultFilter.setOption(30, 0);
            this.mTex2dDrawer.setOption(31, 0);
            this.mTex2dDrawer.setOption(29, 0);
            this.mTex2dDrawer.setOption(26, 1);
        }
    }

    private void saveImage(Message message) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        ByteBuffer allocateDirect;
        GLDefaultFilter gLDefaultFilter;
        VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
        Bundle data = message.getData();
        VideoSurface.SaveFrameCallback saveFrameCallback = (VideoSurface.SaveFrameCallback) data.getSerializable(TextureRenderKeys.KEY_IS_CALLBACK);
        if (saveFrameCallback != null) {
            try {
                int viewportWidth = videoSurfaceTexture.getViewportWidth();
                int viewportHeight = videoSurfaceTexture.getViewportHeight();
                if (data.getBoolean(TextureRenderKeys.KEY_IS_ORIGIN_VIDEO, false) && (gLDefaultFilter = this.mCurrentDrawer) != null) {
                    i10 = gLDefaultFilter.getIntOption(20003);
                    i11 = this.mCurrentDrawer.getIntOption(GLDefaultFilter.OPTION_FILTER_INT_PORT_Y);
                    i12 = this.mCurrentDrawer.getIntOption(20001);
                    i13 = this.mCurrentDrawer.getIntOption(GLDefaultFilter.OPTION_FILTER_INT_PORT_HEIGHT);
                } else {
                    i10 = 0;
                    i11 = 0;
                    i12 = viewportWidth;
                    i13 = viewportHeight;
                }
                float f10 = data.getFloat("width", -1.0f);
                if (f10 > 0.0f) {
                    float f11 = viewportWidth;
                    int round = Math.round(f10 * f11);
                    float f12 = viewportHeight;
                    int round2 = Math.round(data.getFloat("height") * f12);
                    i10 = Math.round(data.getFloat(TextureRenderKeys.KEY_IS_X) * f11);
                    i15 = round2;
                    i14 = round;
                    i11 = Math.round(data.getFloat(TextureRenderKeys.KEY_IS_Y) * f12);
                } else {
                    i14 = i12;
                    i15 = i13;
                }
                TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "async saveframe = " + i14 + ", " + i15 + " viewW:" + viewportWidth + " viewH:" + viewportHeight);
                int i16 = i14 * i15 * 4;
                if (data.getBoolean(TextureRenderKeys.KEY_IS_REUSE_BUFFER)) {
                    ByteBuffer byteBuffer = this.mSaveFrameBuffer;
                    if (byteBuffer == null || byteBuffer.capacity() < i16) {
                        this.mSaveFrameBuffer = ByteBuffer.allocateDirect(i16);
                    }
                    allocateDirect = this.mSaveFrameBuffer;
                } else {
                    allocateDirect = ByteBuffer.allocateDirect(i16);
                }
                allocateDirect.rewind();
                allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
                GLES20.glFinish();
                GLES20.glReadPixels(i10, i11, i14, i15, 6408, 5121, allocateDirect);
                int checkGLError = TexGLUtils.checkGLError(this.mTexType, "handleSaveFrame");
                if (checkGLError != 0) {
                    videoSurfaceTexture.notifyError(checkGLError, 0, "handleSaveFrame");
                }
                allocateDirect.rewind();
                int i17 = i14 * 4;
                byte[] bArr = new byte[i17];
                for (int i18 = 0; i18 < i15 / 2; i18++) {
                    allocateDirect.get(bArr);
                    System.arraycopy(allocateDirect.array(), allocateDirect.limit() - allocateDirect.position(), allocateDirect.array(), allocateDirect.position() - i17, i17);
                    System.arraycopy(bArr, 0, allocateDirect.array(), allocateDirect.limit() - allocateDirect.position(), i17);
                }
                allocateDirect.rewind();
                saveFrameCallback.onFrame(allocateDirect, i14, i15);
            } catch (Exception e10) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "save frame failed " + e10.getMessage());
                saveFrameCallback.onFrame(null, 0, 0);
            }
        }
    }

    private void setEffect(Bundle bundle, VideoSurfaceTexture videoSurfaceTexture) {
        if (bundle == null) {
            TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "set effect but missing bundle?");
            return;
        }
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_ACTION);
        if (i10 != 21) {
            if (i10 != 32) {
                if (i10 != 151) {
                    AbsEffect effect = getEffect(bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE));
                    if (effect != null) {
                        effect.setOption(bundle);
                        return;
                    }
                    return;
                }
                BMFVQScoreWrapper bMFVQScoreWrapper = this.mVqscoreWrapper;
                if (bMFVQScoreWrapper != null) {
                    bMFVQScoreWrapper.init(bundle);
                    return;
                }
                return;
            }
            releaseEffect(bundle, videoSurfaceTexture);
            return;
        }
        initEffect(bundle, videoSurfaceTexture);
    }

    private void setup2DGraphics() {
        try {
            GLDefaultFilter gLDefaultFilter = this.mTex2dDrawer;
            if (gLDefaultFilter != null) {
                gLDefaultFilter.release();
            }
            GLDefaultFilter gLDefaultFilter2 = (GLDefaultFilter) EffectFactory.createEffect(this.mTexType, 7);
            this.mTex2dDrawer = gLDefaultFilter2;
            if (gLDefaultFilter2 == null) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "create effect failed");
                return;
            }
            gLDefaultFilter2.init(null);
            this.mTex2dDrawer.setParentRender(this);
        } catch (Exception e10) {
            notifyEGLError(0, e10.toString());
        }
    }

    private void setupGraphics() {
        try {
            GLOesTo2DFilter gLOesTo2DFilter = this.mTexOesDrawer;
            if (gLOesTo2DFilter != null) {
                gLOesTo2DFilter.release();
            }
            GLOesTo2DFilter gLOesTo2DFilter2 = (GLOesTo2DFilter) EffectFactory.createEffect(this.mTexType, 3);
            this.mTexOesDrawer = gLOesTo2DFilter2;
            if (gLOesTo2DFilter2 == null) {
                TextureRenderLog.e(this.mTexType, TextureRenderer.LOG_TAG, "create effect failed");
                return;
            }
            gLOesTo2DFilter2.init(null);
            this.mTexOesDrawer.setParentRender(this);
        } catch (Exception e10) {
            notifyEGLError(0, e10.toString());
        }
    }

    private boolean surfaceTextureUpdateImage(VideoSurfaceTexture videoSurfaceTexture) {
        try {
            if (videoSurfaceTexture == null) {
                TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "surface texture is null not draw");
                return false;
            }
            videoSurfaceTexture.lock();
            if (videoSurfaceTexture.isRelease()) {
                TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "surface texture is released not draw");
                return false;
            }
            videoSurfaceTexture.updateTexImage();
            videoSurfaceTexture.mFrameReady = false;
            videoSurfaceTexture.unlock();
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            int i10 = this.mTexType;
            String str = TextureRenderer.LOG_TAG;
            TextureRenderLog.d(i10, str, "surface texture no draw" + e10.toString());
            return false;
        } finally {
            videoSurfaceTexture.unlock();
        }
    }

    private boolean switchContextToMainSurface(VideoSurfaceTexture videoSurfaceTexture, Boolean bool) {
        if (!videoSurfaceTexture.isCurrentObject()) {
            if (videoSurfaceTexture.isMakeCurrent()) {
                int i10 = this.mTexType;
                String str = TextureRenderer.LOG_TAG;
                TextureRenderLog.d(i10, str, "not active texture but already make current : " + videoSurfaceTexture);
                videoSurfaceTexture.makeCurrent();
                TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "texture switch surface & playing ");
                return true;
            }
            int i11 = this.mTexType;
            String str2 = TextureRenderer.LOG_TAG;
            TextureRenderLog.e(i11, str2, "tex: " + videoSurfaceTexture + " not current object id " + videoSurfaceTexture.getOjbectId());
            videoSurfaceTexture.effectChainEnd();
            return false;
        } else if (bool.booleanValue()) {
            videoSurfaceTexture.makeCurrent();
            return true;
        } else {
            return true;
        }
    }

    private boolean updateTexImage(VideoSurfaceTexture videoSurfaceTexture) {
        try {
            try {
                videoSurfaceTexture.lock();
                if (videoSurfaceTexture.isRelease()) {
                    TextureRenderLog.d(this.mTexType, TextureRenderer.LOG_TAG, "surface texture is released not draw");
                }
                videoSurfaceTexture.updateTexImage();
                videoSurfaceTexture.unlock();
                if (videoSurfaceTexture.needDrop()) {
                    return false;
                }
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                videoSurfaceTexture.unlock();
                return false;
            }
        } catch (Throwable th2) {
            videoSurfaceTexture.unlock();
            throw th2;
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void deinitEffectComponents() {
        for (AbsEffect release = this.mTopEffect.release(); release != null; release = release.release()) {
            this.mEffectConfig.setEffectOpen(release.getIntOption(10005), 0);
        }
        EffectConfig effectConfig = this.mEffectConfig;
        if (effectConfig != null && this.mVqscoreWrapper != null) {
            effectConfig.setEffectOpen(16, 0);
            this.mVqscoreWrapper.release();
        }
        AbsEffect absEffect = this.mMultiRenderTargetFilter;
        if (absEffect != null) {
            absEffect.release();
            this.mMultiRenderTargetFilter = null;
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void deinitGLComponents() {
        TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "delete program");
        this.mCurrentDrawer = null;
        GLOesTo2DFilter gLOesTo2DFilter = this.mTexOesDrawer;
        if (gLOesTo2DFilter != null) {
            gLOesTo2DFilter.release();
            this.mTexOesDrawer = null;
        }
        GLDefaultFilter gLDefaultFilter = this.mTex2dDrawer;
        if (gLDefaultFilter != null) {
            gLDefaultFilter.release();
            this.mTex2dDrawer = null;
        }
        FrameBuffer frameBuffer = this.mFrameBuffer;
        if (frameBuffer != null) {
            frameBuffer.release();
            this.mFrameBuffer = null;
        }
        EffectTextureManager effectTextureManager = this.mEffectTextureManager;
        if (effectTextureManager != null) {
            effectTextureManager.release();
            this.mEffectTextureManager = null;
        }
        AbsEffect absEffect = this.mHardwareBuffer2GLFilter;
        if (absEffect != null) {
            absEffect.release();
            this.mHardwareBuffer2GLFilter = null;
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    public VideoSurfaceTexture getExtraVideoSurfaceTexture() {
        return this.mTileVideoSurfaceTexture;
    }

    @Override // com.ss.texturerender.TextureRenderer
    public Object getOption(Bundle bundle) {
        AbsEffect effect = getEffect(bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE));
        if (effect != null) {
            return effect.getOption(bundle);
        }
        return null;
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void handleFrameAvailable(Message message) {
        if (message == null) {
            return;
        }
        VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
        if (videoSurfaceTexture == this.mTileVideoSurfaceTexture) {
            updateTexImage(videoSurfaceTexture);
            return;
        }
        if (videoSurfaceTexture != null && this.mEGLRuntime != null) {
            videoSurfaceTexture.checkGeometry();
        }
        this.mCheckDispatcher.onSurfaceTextureCallbackCalled(videoSurfaceTexture);
        this.mCheckDispatcher.onFrameCome(videoSurfaceTexture);
        boolean draw = draw(videoSurfaceTexture, message.arg1);
        frameBufferCallback(message);
        if (draw) {
            saveImage(message);
            draw = videoSurfaceTexture.render();
        }
        float elapsedRealtime = (float) SystemClock.elapsedRealtime();
        float floatOption = videoSurfaceTexture.getFloatOption(123);
        int intOption = videoSurfaceTexture.getIntOption(121);
        float floatOption2 = videoSurfaceTexture.getFloatOption(122);
        if (draw) {
            intOption++;
        }
        if (intOption > 1) {
            floatOption2 += elapsedRealtime - floatOption;
        }
        videoSurfaceTexture.setOption(121, intOption);
        videoSurfaceTexture.setOption(122, floatOption2);
        videoSurfaceTexture.setOption(123, elapsedRealtime);
        if (floatOption2 > 0.0f && intOption > 0) {
            videoSurfaceTexture.setOption(120, ((intOption - 1) * 1000.0f) / floatOption2);
        }
        if (draw) {
            this.mCheckDispatcher.onDrawSucceed(videoSurfaceTexture);
        }
        if (message.arg2 == 1) {
            synchronized (videoSurfaceTexture) {
                videoSurfaceTexture.notify();
            }
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void handleGLThreadMessage(Message message) {
        int i10 = message.what;
        if (i10 != 12) {
            if (i10 != 25) {
                if (i10 != 26) {
                    switch (i10) {
                        case 34:
                            _setValueToElement(message.arg1, message.arg2);
                            return;
                        case 35:
                            Bundle data = message.getData();
                            if (data != null) {
                                _setValueToElement(message.arg1, data.getFloat(TextureRenderKeys.KEY_IS_FLOAT_VALUE));
                                return;
                            }
                            return;
                        case 36:
                            break;
                        default:
                            switch (i10) {
                                case 40:
                                    resetCropParams();
                                    return;
                                case 41:
                                    this.mTopEffect.setOption(message.arg1, message.obj);
                                    return;
                                case 42:
                                    resetRotationMirrorParams();
                                    return;
                                default:
                                    return;
                            }
                    }
                } else {
                    VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
                    if (videoSurfaceTexture != null) {
                        videoSurfaceTexture.handleUpdateVideoState(message.arg1);
                    }
                    this.mTopEffect.setOption(1, message.arg1);
                    return;
                }
            } else {
                Bundle data2 = message.getData();
                Surface surface = (Surface) data2.getParcelable(VideoSurfaceTexture.KEY_SURFACE);
                VideoSurfaceTexture videoSurfaceTexture2 = (VideoSurfaceTexture) data2.getSerializable(VideoSurfaceTexture.KEY_TEXTURE);
                int i11 = message.arg1;
                if (i11 == 1) {
                    videoSurfaceTexture2.initExtraSurface(surface);
                    return;
                } else if (i11 == 2) {
                    videoSurfaceTexture2.releaseExtraSurface(surface);
                    return;
                } else if (i11 == 3) {
                    videoSurfaceTexture2.releaseAllExtraSurface();
                    return;
                } else {
                    return;
                }
            }
        }
        int i12 = this.mTexType;
        String str = TextureRenderer.LOG_TAG;
        TextureRenderLog.i(i12, str, "setEffect bundle:" + message.getData() + " surfacetexture:" + message.obj);
        setEffect(message.getData(), (VideoSurfaceTexture) message.obj);
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void handleSetSurface(Message message) {
        Bundle data = message.getData();
        if (data != null) {
            VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) data.getSerializable(VideoSurfaceTexture.KEY_TEXTURE);
            if (videoSurfaceTexture != null) {
                if (videoSurfaceTexture.handleSurfaceChange(message)) {
                    TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "texture switch surface & playing");
                }
                Object obj = message.obj;
                if (obj != null) {
                    synchronized (obj) {
                        obj.notify();
                    }
                }
                TextureRenderLog.i(this.mTexType, TextureRenderer.LOG_TAG, "set surface done");
                return;
            }
            throw new RuntimeException("update surface but missing texture");
        }
        throw new RuntimeException("update surface but missing bundle?");
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void initGLComponents() {
        if (this.mState == -1) {
            return;
        }
        setupGraphics();
        if (this.mEffectConfig.isOpenSR()) {
            setup2DGraphics();
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    public synchronized void release() {
        super.release();
        mRenderInstance = null;
    }

    private void _setValueToElement(int i10, float f10) {
        int i11 = this.mTexType;
        String str = TextureRenderer.LOG_TAG;
        TextureRenderLog.i(i11, str, "_setValueToElement key:" + i10 + ", value:" + f10);
        this.mTopEffect.setOption(i10, f10);
    }

    public static synchronized VideoTextureRenderer getRenderer() {
        VideoTextureRenderer renderer;
        synchronized (VideoTextureRenderer.class) {
            renderer = getRenderer(null, null);
        }
        return renderer;
    }

    public VideoTextureRenderer(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        super(effectConfig, i10, eGLContext, eGLConfig, false);
        this.mErrorList = new LinkedList();
        this.mSaveFrameBuffer = null;
        this.mFrameCallbackBufffer = null;
        this.mOutTexWidth = -1;
        this.mOutTexHeight = -1;
        this.mFinalTexId = -1;
        this.mTileVideoSurfaceTexture = null;
        this.mVqscoreWrapper = null;
        if (effectConfig.isOpenTile()) {
            initTileVideoSurfaceTexture();
        }
        this.mTopEffect = new EmptyEffect(i10);
    }

    public VideoTextureRenderer(EffectConfig effectConfig, int i10) {
        super(effectConfig, i10);
        this.mErrorList = new LinkedList();
        this.mSaveFrameBuffer = null;
        this.mFrameCallbackBufffer = null;
        this.mOutTexWidth = -1;
        this.mOutTexHeight = -1;
        this.mFinalTexId = -1;
        this.mTileVideoSurfaceTexture = null;
        this.mVqscoreWrapper = null;
        this.mTopEffect = new EmptyEffect(i10);
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void onInternalStateChanged(int i10) {
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void updateDisplaySize(int i10, int i11) {
    }
}
