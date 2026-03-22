package com.ss.texturerender.effect;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.bmf_mods_api.VqscoreLiveCallbackAPI;
import com.bytedance.bmf_mods_api.VqscoreProcessCallbackAPI;
import com.ss.texturerender.TextureRenderHelper;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderManager;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.VideoSurfaceTexture;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class BMFVQScoreWrapper extends AbsEffect {
    private static final String BMF_VQSCORE_CLASS_NAME = "com.bytedance.bmf_mods.VqscoreLive";
    private static final String LOG_TAG = "TR_BMFVQScoreWrapper";
    private final int OPENCL;
    private final int OPENGL;
    private final String defaultAccessKey;
    private final int defaultConcurrencyLimit;
    private final String defaultPlatformSdkVersion;
    private int mAlgorithmType;
    private int mBackEnd;
    private String mCachePath;
    private int mConcurrencyLimit;
    private Method mDownloadMethod;
    private Method mDownlodCallbackMethod;
    private int mForwardType;
    private Method mFreeMethod;
    private Method mInitMethod;
    private boolean mInited;
    private float mProcessAverageCostTime;
    private Method mProcessCallbackMethod;
    private Method mProcessMethod;
    private Method mProcessOesMethod;
    private float mProcessSuccessFrame;
    private float mProcessSumCostTime;
    private float mProcessSumFrame;
    private long mSequenceId;
    private boolean mSupportVQSCoreAfterEffect;
    private Object mVQScoreObject;
    private Map<Long, Long> mVqscoreTimeMap;

    public BMFVQScoreWrapper(int i10) {
        super(i10, 16);
        this.mVQScoreObject = null;
        this.mInitMethod = null;
        this.mDownlodCallbackMethod = null;
        this.mProcessCallbackMethod = null;
        this.mDownloadMethod = null;
        this.mProcessMethod = null;
        this.mProcessOesMethod = null;
        this.mFreeMethod = null;
        this.mInited = false;
        this.mCachePath = "";
        this.defaultConcurrencyLimit = 2;
        this.mConcurrencyLimit = -1;
        this.defaultAccessKey = "142710f02c3a11e8b42429f14557854a";
        this.defaultPlatformSdkVersion = "11.0.0";
        this.OPENCL = 2;
        this.OPENGL = 3;
        this.mSequenceId = 0L;
        this.mSupportVQSCoreAfterEffect = false;
        this.mProcessAverageCostTime = 0.0f;
        this.mProcessSumCostTime = 0.0f;
        this.mProcessSumFrame = 0.0f;
        this.mProcessSuccessFrame = 0.0f;
        this.mVqscoreTimeMap = new ConcurrentHashMap();
        this.mBackEnd = 2;
        this.mAlgorithmType = 0;
        this.mForwardType = 1;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "new BMFVQScoreWrapper");
        this.mIsSupportOes = 1;
        _initObjAndMethod();
    }

    private void _initObjAndMethod() {
        try {
            Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, BMF_VQSCORE_CLASS_NAME);
            if (clzUsingPluginLoader != null) {
                Class cls = Integer.TYPE;
                this.mInitMethod = clzUsingPluginLoader.getDeclaredMethod("Init", cls, cls, cls, cls, Boolean.TYPE, String.class, cls);
                this.mDownlodCallbackMethod = clzUsingPluginLoader.getDeclaredMethod("SetCallback", VqscoreLiveCallbackAPI.class);
                this.mDownloadMethod = clzUsingPluginLoader.getDeclaredMethod("DownloadModel", Context.class, Map.class);
                this.mProcessCallbackMethod = clzUsingPluginLoader.getDeclaredMethod("SetProcessCallback", VqscoreProcessCallbackAPI.class);
                Class cls2 = Long.TYPE;
                this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessAsync", cls, cls, cls, cls2);
                this.mProcessOesMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessOesAsync", cls, cls, cls, float[].class, cls2);
                this.mFreeMethod = clzUsingPluginLoader.getDeclaredMethod("Free", new Class[0]);
                this.mVQScoreObject = clzUsingPluginLoader.newInstance();
            }
        } catch (Exception e10) {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, LOG_TAG, "BMFVQScore get fail:" + e10.toString());
            this.mVQScoreObject = null;
            this.mInitMethod = null;
            this.mDownlodCallbackMethod = null;
            this.mDownloadMethod = null;
            this.mProcessCallbackMethod = null;
            this.mProcessMethod = null;
            this.mProcessOesMethod = null;
            this.mFreeMethod = null;
        }
    }

    private Object _invokeMethod(Method method, Object obj, Object... objArr) {
        if (method != null && obj != null) {
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e10) {
                e10.printStackTrace();
                TextureRenderLog.e(this.mTexType, LOG_TAG, e10.toString());
                return null;
            }
        }
        return null;
    }

    static /* synthetic */ float access$108(BMFVQScoreWrapper bMFVQScoreWrapper) {
        float f10 = bMFVQScoreWrapper.mProcessSuccessFrame;
        bMFVQScoreWrapper.mProcessSuccessFrame = 1.0f + f10;
        return f10;
    }

    public void downloadModel(Bundle bundle) {
        boolean z10;
        if (!this.mInited && this.mVQScoreObject != null && this.mDownloadMethod != null) {
            String string = bundle.getString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ACCESS_KEY);
            if (TextUtils.isEmpty(string)) {
                string = "142710f02c3a11e8b42429f14557854a";
            }
            String string2 = bundle.getString("sdk_version");
            if (TextUtils.isEmpty(string2)) {
                string2 = "11.0.0";
            }
            String string3 = bundle.getString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, "");
            if (TextUtils.isEmpty(string3)) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "vqscore host is null");
                VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                if (videoSurfaceTexture != null) {
                    videoSurfaceTexture.notifyError(19, this.mEffectType, "vqscore host is null");
                    return;
                }
                return;
            }
            this.mCachePath = bundle.getString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_CACHE_DIR, "");
            this.mConcurrencyLimit = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_VQSCORE_CONCURRENCY_LIMIT, 2);
            if (bundle.getInt(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ENABLE_POSTEFFECT) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.mSupportVQSCoreAfterEffect = z10;
            this.mBackEnd = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_VQSCORE_BACKEND, 2);
            this.mAlgorithmType = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_VQSCORE_ALGTYPE, 0);
            String string4 = bundle.getString(TextureRenderKeys.KEY_IS_BMF_VQSCORE_DOWNLOAD_SOURCE, "");
            this.mForwardType = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_VQSCORE_FORWARED_TYPE, 1);
            HashMap hashMap = new HashMap();
            hashMap.put("accessKey", string);
            hashMap.put("platformSdkVersion", string2);
            hashMap.put(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, string3);
            if (!TextUtils.isEmpty(string4)) {
                hashMap.put("downloadSource", string4);
            }
            TextureRenderLog.i(this.mTexType, LOG_TAG, "vqscore download params: " + hashMap);
            _invokeMethod(this.mDownlodCallbackMethod, this.mVQScoreObject, new VqscoreLiveCallbackAPI() { // from class: com.ss.texturerender.effect.BMFVQScoreWrapper.1
                public void callback(int i10) {
                    int i11 = BMFVQScoreWrapper.this.mTexType;
                    TextureRenderLog.i(i11, BMFVQScoreWrapper.LOG_TAG, "vqscore callback, status: " + i10);
                    if (i10 == 1) {
                        BMFVQScoreWrapper.this.mSurfaceTexture.setOption(151, -1);
                        return;
                    }
                    TextureRenderLog.i(BMFVQScoreWrapper.this.mTexType, BMFVQScoreWrapper.LOG_TAG, "download model fail");
                    BMFVQScoreWrapper bMFVQScoreWrapper = BMFVQScoreWrapper.this;
                    VideoSurfaceTexture videoSurfaceTexture2 = bMFVQScoreWrapper.mSurfaceTexture;
                    if (videoSurfaceTexture2 != null) {
                        int i12 = bMFVQScoreWrapper.mEffectType;
                        videoSurfaceTexture2.notifyError(19, i12, "vqscore download model fail, status: " + i10);
                    }
                }
            });
            _invokeMethod(this.mDownloadMethod, this.mVQScoreObject, TextureRenderManager.getManager().getContext(), hashMap);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        VideoSurfaceTexture videoSurfaceTexture;
        int i10 = -1;
        if (!this.mInited && this.mVQScoreObject != null && this.mInitMethod != null && bundle != null && bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) == 151) {
            Object _invokeMethod = _invokeMethod(this.mInitMethod, this.mVQScoreObject, Integer.valueOf(this.mAlgorithmType), Integer.valueOf(this.mBackEnd), 1, Integer.valueOf(this.mForwardType), Boolean.TRUE, this.mCachePath, Integer.valueOf(this.mConcurrencyLimit));
            if (_invokeMethod != null) {
                i10 = ((Integer) _invokeMethod).intValue();
            }
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, LOG_TAG, "vqscore init result: " + i10);
            if (i10 == 0) {
                this.mInited = true;
                TextureRenderer textureRenderer = this.mParentRender;
                if (textureRenderer != null) {
                    textureRenderer.setVQSCoreInitResult(true);
                }
            }
            if (i10 != 0 && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
                int i12 = this.mEffectType;
                videoSurfaceTexture.notifyError(15, i12, "vqscore init fail, ret: " + i10);
            }
        }
        return i10;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        return null;
    }

    public void processVqscore(EffectTexture effectTexture, final VideoSurface.VQScoreCallback vQScoreCallback, boolean z10) {
        if (this.mInited && vQScoreCallback != null && effectTexture != null) {
            if ((!z10 || this.mSupportVQSCoreAfterEffect) && this.mVQScoreObject != null && this.mProcessMethod != null && this.mProcessOesMethod != null && this.mProcessCallbackMethod != null) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.mSupportVQSCoreAfterEffect && !z10) {
                    long j10 = this.mSequenceId;
                    if (j10 % 2 == 0) {
                        this.mSequenceId = j10 + 1;
                    } else {
                        this.mSequenceId = j10 + 2;
                    }
                } else {
                    this.mSequenceId++;
                }
                this.mVqscoreTimeMap.put(Long.valueOf(this.mSequenceId), Long.valueOf(currentTimeMillis));
                this.mProcessSumFrame += 1.0f;
                _invokeMethod(this.mProcessCallbackMethod, this.mVQScoreObject, new VqscoreProcessCallbackAPI() { // from class: com.ss.texturerender.effect.BMFVQScoreWrapper.2
                    public void onProcessResult(long j11, int i10, float f10) {
                        long j12 = -1;
                        if (BMFVQScoreWrapper.this.mVqscoreTimeMap != null && BMFVQScoreWrapper.this.mVqscoreTimeMap.containsKey(Long.valueOf(j11))) {
                            Long l10 = (Long) BMFVQScoreWrapper.this.mVqscoreTimeMap.get(Long.valueOf(j11));
                            if (l10 != null) {
                                j12 = l10.longValue();
                            }
                            BMFVQScoreWrapper.this.mVqscoreTimeMap.remove(Long.valueOf(j11));
                        }
                        long j13 = j12;
                        TextureRenderLog.i(BMFVQScoreWrapper.this.mTexType, BMFVQScoreWrapper.LOG_TAG, "onProcessResult, sequenceId: " + j11 + ", status: " + i10 + ", score: " + f10 + ", cost: " + (System.currentTimeMillis() - j13));
                        if (i10 == 0) {
                            BMFVQScoreWrapper.access$108(BMFVQScoreWrapper.this);
                            if (j13 > 0) {
                                BMFVQScoreWrapper.this.mProcessSumCostTime += (float) (System.currentTimeMillis() - j13);
                                BMFVQScoreWrapper bMFVQScoreWrapper = BMFVQScoreWrapper.this;
                                bMFVQScoreWrapper.mProcessAverageCostTime = bMFVQScoreWrapper.mProcessSumCostTime / BMFVQScoreWrapper.this.mProcessSumFrame;
                                BMFVQScoreWrapper bMFVQScoreWrapper2 = BMFVQScoreWrapper.this;
                                VideoSurfaceTexture videoSurfaceTexture = bMFVQScoreWrapper2.mSurfaceTexture;
                                if (videoSurfaceTexture != null) {
                                    videoSurfaceTexture.setOption(155, bMFVQScoreWrapper2.mProcessAverageCostTime);
                                    BMFVQScoreWrapper bMFVQScoreWrapper3 = BMFVQScoreWrapper.this;
                                    bMFVQScoreWrapper3.mSurfaceTexture.setOption(154, bMFVQScoreWrapper3.mProcessSuccessFrame / BMFVQScoreWrapper.this.mProcessSumFrame);
                                }
                            }
                            vQScoreCallback.onProcessScore(f10, j11, j13);
                        }
                    }
                });
                int texTarget = effectTexture.getTexTarget();
                int i10 = -1;
                if (texTarget == 36197) {
                    float[] fArr = new float[16];
                    this.mSurfaceTexture.getTransformMatrix(fArr);
                    Object _invokeMethod = _invokeMethod(this.mProcessOesMethod, this.mVQScoreObject, Integer.valueOf(effectTexture.getTexID()), Integer.valueOf(effectTexture.getWidth()), Integer.valueOf(effectTexture.getHeight()), fArr, Long.valueOf(this.mSequenceId));
                    if (_invokeMethod != null) {
                        i10 = ((Integer) _invokeMethod).intValue();
                    }
                } else if (texTarget == 3553) {
                    Object _invokeMethod2 = _invokeMethod(this.mProcessMethod, this.mVQScoreObject, Integer.valueOf(effectTexture.getTexID()), Integer.valueOf(effectTexture.getWidth()), Integer.valueOf(effectTexture.getHeight()), Long.valueOf(this.mSequenceId));
                    if (_invokeMethod2 != null) {
                        i10 = ((Integer) _invokeMethod2).intValue();
                    }
                } else {
                    i10 = 0;
                }
                TextureRenderLog.i(this.mTexType, LOG_TAG, "process sequenceId: " + this.mSequenceId + ", ret: " + i10 + ", textarget: " + texTarget);
                VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                if (videoSurfaceTexture != null && i10 < 0) {
                    videoSurfaceTexture.notifyError(16, this.mEffectType, "vqscore process fail, ret: " + i10);
                }
            }
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        Method method;
        Object obj = this.mVQScoreObject;
        if (obj != null && (method = this.mFreeMethod) != null) {
            _invokeMethod(method, obj, new Object[0]);
        }
        this.mVQScoreObject = null;
        this.mVqscoreTimeMap = null;
        return super.release();
    }
}
