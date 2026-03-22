package com.ss.texturerender;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.Surface;
import androidx.annotation.Keep;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.base.EGLRuntime;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.EffectTextureManager;
import com.ss.texturerender.math.Quaternion;
import com.ss.texturerender.overlay.FrameTimeQueue;
import com.ss.texturerender.producer.IFrameProducer;
import com.ss.texturerender.producer.ImageReaderProducer;
import com.ss.texturerender.touch.TouchHelper;
import com.ss.texturerender.vsync.IVsyncCallback;
import com.ss.texturerender.vsync.IVsyncHelper;
import com.ss.texturerender.vsync.VsyncHelperFactory;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;
@Keep
@TargetApi(17)
/* loaded from: classes6.dex */
public class VideoSurfaceTexture extends SurfaceTexture implements Serializable, TextureRenderer.OnTextureFocusLossListener, IVsyncCallback {
    @Deprecated
    public static final int ERROR_SR_EXE_FAIL = 2;
    @Deprecated
    public static final int ERROR_SR_INIT_FAIL = 1;
    private static final long FORCE_EXIPRE_TIME_MS = 120000;
    public static final String KEY_QUATERNION_W = "quaternion_w";
    public static final String KEY_QUATERNION_X = "quaternion_x";
    public static final String KEY_QUATERNION_Y = "quaternion_y";
    public static final String KEY_QUATERNION_Z = "quaternion_z";
    public static final String KEY_SURFACE = "surface";
    public static final String KEY_TEXTURE = "texture";
    public static final String KEY_TIME = "timeStamp";
    private static final int MAX_DROP_COUNT = 5;
    protected static final int SUPER_RES_CLOSE = 0;
    protected static final int SUPER_RES_OPEN = 1;
    protected static final String TAG = "VideoSurfaceTexture";
    protected static final long TIME_UNSET = -9223372036854775807L;
    protected double mAccumulatedPlayingTime;
    private int mBitDepth;
    protected EffectConfig mConfig;
    private Looper mCreateLooper;
    private int mCurrentEffectProcessDepth;
    private double mCurrentEffectStartTime;
    private int mDataSpace;
    private int mDoMirrorFirst;
    protected int mDropCount;
    private EGLRuntime mEGLRuntime;
    private double mEffectChainAccumulatedTime;
    private float mEffectChainAverageTime;
    private int mEffectChainFrameCount;
    private double mEffectChainStartTime;
    protected EffectTexture mEffectTexture;
    private EGLConfig mEglConfig;
    private EGLContext mEglContext;
    private EGLDisplay mEglDisplay;
    private EGLSurface mEglSurface;
    private int mEnableExtraSurfaceRenderCallback;
    private int mEnableNativeWindow;
    private int mEnableResetCropParamsInRender;
    private int mEnableUseEglDummySurface;
    private Bundle mExtraRenderCropParamsBundle;
    private HashMap<Surface, EGLSurface> mExtraSurfaceMap;
    protected float mFPS;
    private int mForbidReuseVideoSurfaceTexture;
    private VideoSurface.SaveFrameCallback mFrameCallback;
    private Bundle mFrameCallbackBundle;
    private int mFrameCallbackInRenderThread;
    private int mFrameCount;
    private List<FrameMetaData> mFrameMetaData;
    private IFrameProducer mFrameProducer;
    public boolean mFrameReady;
    private int mFreezeDirector;
    private int mHDRType;
    Quaternion mHeadPose;
    public int mHeadposeCallbackIntegral;
    protected long mIdleTimeStamp;
    private boolean mIgnoreSRResCheck;
    private boolean mIsMakeCurrent;
    public volatile int mIsMirrorHorizontal;
    public volatile int mIsMirrorVertical;
    private boolean mIsPaused;
    private boolean mIsPreRender;
    protected volatile boolean mIsRelease;
    private volatile int mLastComeFrameType;
    protected double mLastFrameTime;
    public volatile int mLayoutMode;
    public volatile float mLayoutRatio;
    private ReentrantLock mLock;
    private Bundle mMainRenderCropParamsBundle;
    private NativeWindow mNativeWindow;
    private int mNotKeepLastParams;
    private long mObjectId;
    protected VideoSurface mOffScreenSurface;
    private MyOnFrameAvailableListener mOnFrameAvailableListener;
    private int mOpenVQScore;
    private CopyOnWriteArrayList<Bundle> mParamList;
    private HashMap<Integer, Double> mPerEffectAccumulatedTime;
    private HashMap<Integer, Float> mPerEffectAverageTime;
    private HashMap<Integer, Integer> mPerEffectFrameCount;
    private int mRGBBitsFromEGLConfig;
    private Handler mRenderHandler;
    private Bundle mRenderMsgBundle;
    private Surface mRenderSurface;
    private Bundle mRoiSRParamsBundle;
    public volatile int mRotationType;
    private float mSRProcessAverageCostTime;
    private Bundle mSRProcessParamter;
    private int mSRProcessScaleType;
    private volatile float mSRProcessSuccessRate;
    private Bundle mSaveFrameBundle;
    private int mSerial;
    private long mStartPlayTimeNanos;
    private int mState;
    private List<Integer> mStaticMetadata;
    private volatile int mSuperOpen;
    private Message mSyncMsg;
    private int mSyncSetVsync;
    private int mSyncUpdateSurface;
    private int mTexHeight;
    protected int mTexType;
    private int mTexWidth;
    private ITexture mTextureId;
    private LinkedList<EffectTexture> mTextureQueue;
    protected TextureRenderer mTextureRenderer;
    private long mTid;
    private TouchHelper mTouchHelper;
    private HashMap<Integer, Integer> mTrackingErrorCode;
    private HashMap<Integer, String> mTrackingErrorMsg;
    private Surface mUpdateSurface;
    private long mUpdateSurfaceTime;
    private HashMap<Integer, Integer> mUsingEffect;
    private Bundle mVQScoreBundle;
    private float mVQScoreProcessAverageCostTime;
    private float mVQScoreProcessSuccessRate;
    private int mViewportHeight;
    private int mViewportWidth;
    protected IVsyncHelper mVsyncHelper;
    private static int[] resWdithTab = {480, 540, 544, 576, 576, 576};
    private static int[] resHeightTab = {TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, 960, 960, 1024, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 1016};

    /* loaded from: classes6.dex */
    public static class FrameMetaData {
        private Map<Integer, String> mFrameMetaData;
        private long mMasterClockDiff;
        private long mPts;
        private long mReleaseNanoTime;

        public FrameMetaData(long j10, long j11, long j12, Map<Integer, String> map) {
            this.mPts = j10;
            this.mReleaseNanoTime = j11;
            this.mMasterClockDiff = j12;
            this.mFrameMetaData = map;
        }

        public long getReleaseNanoTime() {
            return this.mReleaseNanoTime;
        }

        public String getStringifiedTileInfo() {
            Map<Integer, String> map = this.mFrameMetaData;
            if (map == null) {
                return null;
            }
            return map.get(74);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class MyOnFrameAvailableListener implements SurfaceTexture.OnFrameAvailableListener, IFrameAvailableListener {
        private boolean mIsEnable = true;
        private final WeakReference<VideoSurfaceTexture> mRef;

        public MyOnFrameAvailableListener(VideoSurfaceTexture videoSurfaceTexture) {
            this.mRef = new WeakReference<>(videoSurfaceTexture);
        }

        public void disable() {
            this.mIsEnable = false;
        }

        public void onAvailable(int i10) {
            VideoSurfaceTexture videoSurfaceTexture = this.mRef.get();
            if (videoSurfaceTexture == null) {
                return;
            }
            videoSurfaceTexture.onFrameAvailable(this.mIsEnable, i10);
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            onAvailable(1);
        }

        @Override // com.ss.texturerender.IFrameAvailableListener
        public void onFrameAvailable() {
            onAvailable(2);
        }
    }

    /* loaded from: classes6.dex */
    public interface TextureDrawCallback {
        void onTextureUpdate(int i10, float f10, float f11, float f12, float f13);

        void onTextureUpdate(int i10, long j10);

        void onTextureUpdate(int i10, Surface surface, long j10);
    }

    /* loaded from: classes6.dex */
    public interface TextureErrorCallback {
        void onTextureRenderError(int i10, int i11, String str);
    }

    public VideoSurfaceTexture(ITexture iTexture, Handler handler, TextureRenderer textureRenderer) {
        super(iTexture.lock());
        this.mIsRelease = false;
        this.mIsPaused = false;
        this.mIsMakeCurrent = false;
        this.mEglSurface = EGL14.EGL_NO_SURFACE;
        this.mViewportWidth = 0;
        this.mViewportHeight = 0;
        this.mRenderSurface = null;
        this.mUpdateSurface = null;
        this.mOffScreenSurface = null;
        this.mSerial = 0;
        this.mIsPreRender = false;
        this.mIgnoreSRResCheck = false;
        this.mStartPlayTimeNanos = -1L;
        this.mDropCount = 0;
        this.mSyncMsg = new Message();
        this.mTexType = -1;
        this.mSyncUpdateSurface = 0;
        this.mConfig = new EffectConfig(-1);
        this.mTextureQueue = new LinkedList<>();
        this.mUsingEffect = new HashMap<>();
        this.mSaveFrameBundle = new Bundle();
        this.mState = 3;
        this.mFrameMetaData = new ArrayList();
        this.mFrameReady = false;
        this.mFrameCount = 0;
        this.mAccumulatedPlayingTime = 0.0d;
        this.mLastFrameTime = 0.0d;
        this.mFPS = 0.0f;
        this.mCurrentEffectStartTime = 0.0d;
        this.mCurrentEffectProcessDepth = 0;
        this.mPerEffectFrameCount = new HashMap<>();
        this.mPerEffectAccumulatedTime = new HashMap<>();
        this.mPerEffectAverageTime = new HashMap<>();
        this.mEffectChainStartTime = 0.0d;
        this.mEffectChainAccumulatedTime = 0.0d;
        this.mEffectChainFrameCount = 0;
        this.mEffectChainAverageTime = 0.0f;
        this.mTrackingErrorCode = new HashMap<>();
        this.mTrackingErrorMsg = new HashMap<>();
        this.mSRProcessSuccessRate = Float.MIN_VALUE;
        this.mSRProcessAverageCostTime = Float.MIN_VALUE;
        this.mStaticMetadata = null;
        this.mFreezeDirector = 0;
        this.mEnableExtraSurfaceRenderCallback = 0;
        this.mFrameCallback = null;
        this.mFrameCallbackBundle = null;
        this.mEnableUseEglDummySurface = 0;
        this.mNotKeepLastParams = 0;
        this.mDoMirrorFirst = 0;
        this.mNativeWindow = null;
        this.mEnableNativeWindow = 0;
        this.mSRProcessScaleType = -1;
        this.mLayoutMode = 1;
        this.mLayoutRatio = 0.5f;
        this.mRotationType = 0;
        this.mIsMirrorHorizontal = 0;
        this.mIsMirrorVertical = 0;
        this.mExtraRenderCropParamsBundle = null;
        this.mMainRenderCropParamsBundle = null;
        this.mSyncSetVsync = 0;
        this.mForbidReuseVideoSurfaceTexture = 0;
        this.mHDRType = 0;
        this.mBitDepth = 8;
        this.mRoiSRParamsBundle = null;
        this.mHeadposeCallbackIntegral = 1;
        this.mFrameCallbackInRenderThread = 0;
        this.mVQScoreProcessSuccessRate = -1.0f;
        this.mVQScoreProcessAverageCostTime = -1.0f;
        this.mOpenVQScore = 0;
        this.mVQScoreBundle = null;
        this.mEffectTexture = null;
        this.mFrameProducer = null;
        this.mLastComeFrameType = 0;
        this.mDataSpace = -1;
        this.mSRProcessParamter = null;
        this.mEnableResetCropParamsInRender = 0;
        iTexture.addRef();
        this.mTextureId = iTexture;
        iTexture.unlock();
        internalConstruct(handler);
        this.mExtraSurfaceMap = new HashMap<>();
        this.mTextureRenderer = textureRenderer;
    }

    private void _trySetupHDR2SDRFilter(int i10) {
        boolean z10;
        EGLRuntime eGLRuntime;
        if (i10 == 2 || (i10 == 1 && (eGLRuntime = this.mEGLRuntime) != null && eGLRuntime.isSupportBt2020PQ() <= 0)) {
            z10 = true;
        } else {
            z10 = false;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 4);
        if (z10) {
            bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 21);
            bundle.putInt(TextureRenderKeys.KEY_IS_HDR_TYPE, i10);
            bundle.putInt(TextureRenderKeys.KEY_IS_USE_EFFECT, 1);
        } else {
            bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 19);
            bundle.putInt(TextureRenderKeys.KEY_IS_INT_VALUE, 0);
        }
        TextureRenderLog.d(this.mTexType, TAG, "tryHDR2SDR,need:" + z10 + ",type:" + i10);
        setEffect(bundle);
    }

    private void _tryUpdateEGLSurface(int i10) {
        Handler handler = this.mRenderHandler;
        if (handler != null && this.mRenderMsgBundle != null) {
            try {
                Message obtainMessage = handler.obtainMessage(4);
                this.mRenderMsgBundle.putSerializable(KEY_TEXTURE, this);
                obtainMessage.setData(this.mRenderMsgBundle);
                obtainMessage.arg1 = i10;
                this.mRenderHandler.sendMessage(obtainMessage);
            } catch (Exception unused) {
            }
        }
    }

    private boolean checkRecreateEGLSurface(int i10) {
        EGLSurface eGLSurface;
        int i11;
        if (i10 == 7 && (eGLSurface = this.mEglSurface) != EGL14.EGL_NO_SURFACE) {
            int[] iArr = new int[1];
            boolean eglQuerySurface = EGL14.eglQuerySurface(this.mEglDisplay, eGLSurface, TextureRenderKeys.EGL_GL_COLORSPACE_KHR, iArr, 0);
            int i12 = this.mTexType;
            TextureRenderLog.d(i12, TAG, "colorspace:" + iArr[0] + ",mHDRType:" + this.mHDRType + ",ret:" + eglQuerySurface);
            if (eglQuerySurface && (((i11 = iArr[0]) == 13120 && this.mHDRType != 1) || (i11 != 13120 && this.mHDRType == 1))) {
                if (i11 == 13120) {
                    return true;
                }
                EGLRuntime eGLRuntime = this.mEGLRuntime;
                if (eGLRuntime == null || eGLRuntime.isSupportBt2020PQ() <= 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private String getBundleString(Bundle bundle, String str) {
        try {
            return bundle.toString();
        } catch (Exception e10) {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, TAG, str + e10.toString());
            return "bundle modified";
        }
    }

    private void internalConstruct(Handler handler) {
        this.mObjectId = new Random().nextLong();
        this.mRenderHandler = handler;
        this.mLock = new ReentrantLock();
        this.mCreateLooper = Looper.myLooper();
        this.mRenderMsgBundle = new Bundle();
        this.mEglSurface = EGL14.EGL_NO_SURFACE;
        this.mSuperOpen = 0;
        MyOnFrameAvailableListener myOnFrameAvailableListener = new MyOnFrameAvailableListener(this);
        this.mOnFrameAvailableListener = myOnFrameAvailableListener;
        if (this.mFrameCallbackInRenderThread == 1) {
            setOnFrameAvailableListener(myOnFrameAvailableListener, this.mRenderHandler);
        } else {
            setOnFrameAvailableListener(myOnFrameAvailableListener);
        }
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null) {
            iFrameProducer.setOnFrameAvailableListener(this.mOnFrameAvailableListener, this.mRenderHandler);
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + "gen a texture :" + this.mObjectId + ", thread id " + Thread.currentThread().getId() + ", looper = " + looperToString(this.mCreateLooper));
    }

    private String looperToString(Looper looper) {
        if (looper == null) {
            return null;
        }
        Thread thread = looper.getThread();
        if (thread != null) {
            return "Looper (" + thread.getName() + ", tid " + thread.getId() + ") {" + Integer.toHexString(System.identityHashCode(looper)) + "}";
        }
        return "Looper {" + Integer.toHexString(System.identityHashCode(looper)) + "}";
    }

    private void removeParamBundle(int i10, int i11) {
        Iterator<Bundle> it = this.mParamList.iterator();
        while (it.hasNext()) {
            Bundle next = it.next();
            if (next.getInt(TextureRenderKeys.KEY_IS_ACTION) == i10 && next.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) == i11) {
                this.mParamList.remove(next);
                return;
            }
        }
    }

    public void bindEGLEnv(EGLRuntime eGLRuntime) {
        if (eGLRuntime != null) {
            this.mEGLRuntime = eGLRuntime;
            this.mEglContext = eGLRuntime.eglContext;
            EGLDisplay eGLDisplay = eGLRuntime.eglDisplay;
            this.mEglDisplay = eGLDisplay;
            EGLConfig eGLConfig = eGLRuntime.eglConfig;
            this.mEglConfig = eGLConfig;
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            int[] iArr3 = new int[1];
            EGL14.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12324, iArr, 0);
            EGL14.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12323, iArr2, 0);
            EGL14.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12322, iArr3, 0);
            this.mRGBBitsFromEGLConfig = iArr[0] + iArr2[0] + iArr3[0];
            int i10 = this.mTexType;
            TextureRenderLog.d(i10, TAG, "bindEGLEnv rgbbits:" + this.mRGBBitsFromEGLConfig);
            return;
        }
        throw new RuntimeException("no egl env for texture bind");
    }

    public boolean canReuse(Looper looper) {
        int i10;
        StringBuilder sb2;
        boolean z10 = false;
        try {
            if (looper == this.mCreateLooper) {
                if (this.mForbidReuseVideoSurfaceTexture <= 0) {
                    z10 = true;
                }
            }
            i10 = this.mTexType;
            sb2 = new StringBuilder();
        } catch (Exception unused) {
            i10 = this.mTexType;
            sb2 = new StringBuilder();
        } catch (Throwable unused2) {
            i10 = this.mTexType;
            sb2 = new StringBuilder();
        }
        sb2.append(this);
        sb2.append("ret = ");
        sb2.append(z10);
        sb2.append(" looper =");
        sb2.append(looperToString(looper));
        sb2.append(", mlooper = ");
        sb2.append(looperToString(this.mCreateLooper));
        sb2.append(", mForbidReuseVideoSurfaceTexture = ");
        sb2.append(this.mForbidReuseVideoSurfaceTexture);
        TextureRenderLog.i(i10, TAG, sb2.toString());
        return z10;
    }

    public void checkGeometry() {
        int i10;
        int i11;
        int i12;
        NativeWindow nativeWindow = this.mNativeWindow;
        if (this.mEnableNativeWindow == 1 && nativeWindow != null) {
            VideoSurface videoSurface = this.mOffScreenSurface;
            boolean z10 = false;
            if (videoSurface != null) {
                i11 = videoSurface.mSurfaceWidth;
                i10 = videoSurface.mSurfaceHeight;
            } else {
                i10 = 0;
                i11 = 0;
            }
            if (i10 > 0 && i11 > 0 && (getViewportWidth() != i11 || getViewportHeight() != i10)) {
                z10 = true;
            }
            int surfaceFormat = nativeWindow.getSurfaceFormat();
            if (surfaceFormat > 0) {
                if (this.mRGBBitsFromEGLConfig <= 24) {
                    if (surfaceFormat != 1 && surfaceFormat != 2 && surfaceFormat != 3) {
                        z10 = true;
                        i12 = 1;
                    }
                    i12 = surfaceFormat;
                } else {
                    if (surfaceFormat != 22) {
                        i12 = 43;
                        if (surfaceFormat != 43) {
                            z10 = true;
                        }
                    }
                    i12 = surfaceFormat;
                }
            } else {
                i12 = 1;
            }
            if (z10) {
                if (i11 <= 0) {
                    i11 = getViewportWidth();
                }
                if (i10 <= 0) {
                    i10 = getViewportHeight();
                }
                nativeWindow.setBuffersGeometry(i11, i10, i12);
                TextureRenderLog.d(this.mTexType, TAG, "setBuffersGeometry,oriW:" + this.mViewportWidth + ",oriH:" + this.mViewportHeight + ",oriFmt:" + surfaceFormat + ",newW:" + i11 + ",newH:" + i10 + ",newFmt:" + i12);
                createEGLWindowSurface(true);
            }
        }
    }

    public boolean couldForceRelease() {
        if (SystemClock.elapsedRealtime() - this.mIdleTimeStamp > 120000) {
            return true;
        }
        return false;
    }

    public boolean createEGLWindowSurface(boolean z10) {
        EGLRuntime eGLRuntime = this.mEGLRuntime;
        if (eGLRuntime == null) {
            return false;
        }
        EGLSurface eGLSurface = eGLRuntime.eglDummySurface;
        if (this.mEglSurface != EGL14.EGL_NO_SURFACE) {
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, TAG, "destory previous surface = " + this.mEglSurface);
            if (z10) {
                TextureRenderLog.i(this.mTexType, TAG, "make current to dummy surface");
                EGL14.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext);
                this.mEGLRuntime.setDrawingObjectId(0L);
            }
            EGL14.eglDestroySurface(this.mEglDisplay, this.mEglSurface);
            this.mEglSurface = EGL14.EGL_NO_SURFACE;
            this.mIsMakeCurrent = false;
            NativeWindow nativeWindow = this.mNativeWindow;
            if (nativeWindow != null) {
                nativeWindow.releaseWindow();
                this.mNativeWindow = null;
            }
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, TAG, "destory previous surface done = " + this.mEglSurface);
        }
        if (this.mEnableUseEglDummySurface == 1 && z10 && eGLSurface != EGL14.EGL_NO_SURFACE && this.mRenderSurface == null) {
            this.mEglSurface = eGLSurface;
        } else {
            this.mEglSurface = createEGLWindowSurface(this.mRenderSurface);
        }
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, TAG, "createEGLWindowSurface eglSurface:" + this.mEglSurface);
        if (this.mEglSurface == EGL14.EGL_NO_SURFACE) {
            return false;
        }
        try {
            makeCurrent();
            if (this.mEnableNativeWindow > 0 && this.mRenderSurface != null) {
                NativeWindow nativeWindow2 = this.mNativeWindow;
                if (nativeWindow2 != null) {
                    nativeWindow2.releaseWindow();
                }
                this.mNativeWindow = new NativeWindow(this.mTexType, this.mRenderSurface);
            }
            this.mUpdateSurfaceTime = System.nanoTime();
            return true;
        } catch (Exception unused) {
            TextureRenderLog.e(this.mTexType, TAG, "makeCurrent exception failed");
            return false;
        }
    }

    public void currentEffectProcessBegin(int i10) {
        if (this.mCurrentEffectProcessDepth == 0) {
            this.mCurrentEffectStartTime = SystemClock.elapsedRealtime();
        }
        this.mCurrentEffectProcessDepth++;
    }

    public void currentEffectProcessEnd(int i10) {
        int i11 = this.mCurrentEffectProcessDepth - 1;
        this.mCurrentEffectProcessDepth = i11;
        if (i11 != 0 || this.mCurrentEffectStartTime == 0.0d) {
            return;
        }
        double elapsedRealtime = SystemClock.elapsedRealtime() - this.mCurrentEffectStartTime;
        HashMap<Integer, Double> hashMap = this.mPerEffectAccumulatedTime;
        if (hashMap != null && this.mPerEffectFrameCount != null && this.mPerEffectAverageTime != null) {
            if (!hashMap.containsKey(Integer.valueOf(i10))) {
                this.mPerEffectAccumulatedTime.put(Integer.valueOf(i10), Double.valueOf(elapsedRealtime));
                this.mPerEffectFrameCount.put(Integer.valueOf(i10), 1);
                this.mPerEffectAverageTime.put(Integer.valueOf(i10), Float.valueOf((float) elapsedRealtime));
                return;
            }
            Double d10 = this.mPerEffectAccumulatedTime.get(Integer.valueOf(i10));
            Integer num = this.mPerEffectFrameCount.get(Integer.valueOf(i10));
            if (d10 != null && num != null) {
                double doubleValue = d10.doubleValue() + elapsedRealtime;
                int intValue = num.intValue() + 1;
                this.mPerEffectAccumulatedTime.put(Integer.valueOf(i10), Double.valueOf(doubleValue));
                this.mPerEffectFrameCount.put(Integer.valueOf(i10), Integer.valueOf(intValue));
                if (intValue > 0) {
                    this.mPerEffectAverageTime.put(Integer.valueOf(i10), Float.valueOf((float) (doubleValue / intValue)));
                }
            }
        }
    }

    public void effectChainBegin() {
        this.mEffectChainStartTime = SystemClock.elapsedRealtime();
        this.mCurrentEffectProcessDepth = 0;
    }

    public void effectChainEnd() {
        double elapsedRealtime = SystemClock.elapsedRealtime() - this.mEffectChainStartTime;
        if (this.mCurrentEffectStartTime == 0.0d) {
            return;
        }
        double d10 = this.mEffectChainAccumulatedTime + elapsedRealtime;
        this.mEffectChainAccumulatedTime = d10;
        int i10 = this.mEffectChainFrameCount + 1;
        this.mEffectChainFrameCount = i10;
        if (i10 > 0) {
            this.mEffectChainAverageTime = (float) (d10 / i10);
        }
    }

    public boolean eglSwapBuffer(EGLSurface eGLSurface, boolean z10) {
        if (EGL14.eglSwapBuffers(this.mEglDisplay, eGLSurface)) {
            return true;
        }
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12301 && z10) {
            createEGLWindowSurface(true);
        }
        notifyError(eglGetError, 0, "");
        int i10 = this.mTexType;
        TextureRenderLog.e(i10, TAG, this + "swap buffer failed:" + GLUtils.getEGLErrorString(eglGetError));
        return false;
    }

    @Override // android.graphics.SurfaceTexture
    protected void finalize() throws Throwable {
        TextureRenderLog.i(this.mTexType, TAG, "finalize");
        releaseInternal();
        super.finalize();
    }

    public void frameMetaCallback(long j10, long j11, Map<Integer, String> map) {
        String str;
        TextureRenderLog.i(this.mTexType, TAG, "frameMetaCallback this:" + this + " pts:" + j10 + " mRenderHandler:" + this.mRenderHandler);
        if (this.mRenderHandler == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (getIntOption(19, 18) == 1) {
            TextureRenderLog.i(this.mTexType, TAG, "frameMetaCallback tile info: " + map.get(74));
            this.mFrameMetaData.add(new FrameMetaData(j10, j11, elapsedRealtime, map));
        }
        int i10 = this.mTexType;
        if ((i10 & 4) == 0) {
            return;
        }
        if (this.mOffScreenSurface == null) {
            TextureRenderLog.i(i10, TAG, "mOffScreenSurface null,return this:" + this);
            return;
        }
        try {
            Message obtainMessage = this.mRenderHandler.obtainMessage(32);
            Bundle bundle = new Bundle();
            bundle.putSerializable(TextureRenderKeys.OVERLAY_UPDATE_FRAME_TIME, new FrameTimeQueue.FrameTime(j10, j11));
            String str2 = null;
            if (map != null) {
                str = map.get(46);
            } else {
                str = null;
            }
            bundle.putString(TextureRenderKeys.OVERLAY_MASTER_CLOCK, str);
            if (map != null) {
                str2 = map.get(74);
            }
            bundle.putString(TextureRenderKeys.FOV_TILE_INFO, str2);
            bundle.putLong(TextureRenderKeys.OVERLAY_MASTER_CLOCK_DIFF, elapsedRealtime);
            bundle.putSerializable(KEY_TEXTURE, this);
            obtainMessage.setData(bundle);
            Message message = this.mSyncMsg;
            obtainMessage.obj = message;
            synchronized (message) {
                obtainMessage.sendToTarget();
                try {
                    this.mSyncMsg.wait();
                    Message message2 = this.mSyncMsg;
                    int i11 = message2.arg1;
                    if (i11 != Integer.MIN_VALUE && i11 != j10) {
                        message2.wait();
                    }
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public Bundle getBundleOption(int i10) {
        if (i10 != 170) {
            return null;
        }
        return this.mSRProcessParamter;
    }

    public int getConsumerHeight(EGLSurface eGLSurface) {
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEglDisplay, eGLSurface, 12374, iArr, 0);
        return iArr[0];
    }

    public int getConsumerWidth(EGLSurface eGLSurface) {
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEglDisplay, eGLSurface, 12375, iArr, 0);
        return iArr[0];
    }

    public Bundle getCropParamsBundle(boolean z10) {
        if (z10) {
            return this.mExtraRenderCropParamsBundle;
        }
        return this.mMainRenderCropParamsBundle;
    }

    public EffectConfig getEffectConfig() {
        return this.mConfig;
    }

    public EffectTexture getEffectTexture() {
        IFrameProducer iFrameProducer;
        if (this.mIsRelease) {
            return null;
        }
        if (this.mLastComeFrameType == 1) {
            EffectTexture effectTexture = this.mEffectTexture;
            if (effectTexture == null || this.mTexHeight != effectTexture.getHeight() || this.mTexWidth != this.mEffectTexture.getWidth()) {
                this.mEffectTexture = new EffectTexture((EffectTextureManager) null, this.mTextureId.lock(), this.mTexWidth, this.mTexHeight, 36197);
                this.mTextureId.unlock();
            }
            return this.mEffectTexture;
        } else if (this.mLastComeFrameType != 2 || (iFrameProducer = this.mFrameProducer) == null) {
            return null;
        } else {
            return iFrameProducer.getEffectTexture();
        }
    }

    public int getEnableUseEglDummySurface() {
        return this.mEnableUseEglDummySurface;
    }

    public HashMap<Surface, EGLSurface> getExtraRealSurfaces() {
        return this.mExtraSurfaceMap;
    }

    public VideoSurfaceTexture getExtraVideoSurfaceTexture() {
        TextureRenderer textureRenderer = this.mTextureRenderer;
        if (textureRenderer != null) {
            return textureRenderer.getExtraVideoSurfaceTexture();
        }
        return null;
    }

    public float getFloatOption(int i10) {
        return getFloatOption(i10, -1);
    }

    public Bundle getFrameCallbackBundle() {
        return this.mFrameCallbackBundle;
    }

    public LinkedList<FrameMetaData> getFrameMetaData(long j10, long j11) {
        LinkedList<FrameMetaData> linkedList = new LinkedList<>();
        if (this.mFrameMetaData != null) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.mFrameMetaData.size(); i11++) {
                if (Math.abs(this.mFrameMetaData.get(i11).getReleaseNanoTime() - j10) <= j11) {
                    linkedList.addLast(this.mFrameMetaData.get(i11));
                }
            }
            if (this.mFrameMetaData.size() > 10) {
                while (i10 < this.mFrameMetaData.size()) {
                    if (Math.abs(this.mFrameMetaData.get(i10).getReleaseNanoTime() - j10) > j11) {
                        TextureRenderLog.i(this.mTexType, TAG, "FrameMetaData size large than 10, remove: " + i10);
                        this.mFrameMetaData.remove(i10);
                    } else {
                        i10++;
                    }
                }
            }
            if (linkedList.isEmpty()) {
                TextureRenderLog.i(this.mTexType, TAG, "getFrameMetaData failed for cached metadate out of sync releaseNanoTime " + j10);
            }
            return linkedList;
        }
        return null;
    }

    public IFrameProducer getFrameProducer() {
        if (this.mFrameProducer == null && Build.VERSION.SDK_INT >= 28) {
            ImageReaderProducer imageReaderProducer = new ImageReaderProducer(this.mTexType);
            this.mFrameProducer = imageReaderProducer;
            imageReaderProducer.setOnFrameAvailableListener(this.mOnFrameAvailableListener, this.mRenderHandler);
        }
        return this.mFrameProducer;
    }

    public int getIntOption(int i10) {
        if (i10 != 121) {
            if (i10 != 130) {
                if (i10 != 137) {
                    if (i10 != 141) {
                        if (i10 != 144) {
                            if (i10 != 152) {
                                if (i10 != 171) {
                                    if (i10 != 146) {
                                        if (i10 != 147) {
                                            return getIntOption(i10, -1);
                                        }
                                        return this.mSRProcessScaleType;
                                    }
                                    return this.mDoMirrorFirst;
                                }
                                return this.mEnableResetCropParamsInRender;
                            }
                            return this.mOpenVQScore;
                        }
                        return this.mNotKeepLastParams;
                    }
                    return this.mEnableExtraSurfaceRenderCallback;
                }
                return this.mFreezeDirector;
            }
            return this.mBitDepth;
        }
        return this.mFrameCount;
    }

    public long getLongOption(int i10, int i11) {
        if (i10 != 162) {
            return -1L;
        }
        return getTimestamp();
    }

    public synchronized VideoSurface getOffScreenSurface() {
        try {
            if (this.mIsRelease) {
                return null;
            }
            if (this.mOffScreenSurface == null) {
                this.mOffScreenSurface = new VideoSurface(this);
            }
            this.mIdleTimeStamp = -9223372036854775807L;
            return this.mOffScreenSurface;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public long getOjbectId() {
        return this.mObjectId;
    }

    public Bundle getOption(int i10) {
        if (i10 != 130) {
            if (i10 != 153) {
                return null;
            }
            return this.mVQScoreBundle;
        }
        return this.mRoiSRParamsBundle;
    }

    public CopyOnWriteArrayList<Bundle> getParamList() {
        return this.mParamList;
    }

    public Handler getRenderHandler() {
        return this.mRenderHandler;
    }

    public Surface getRenderSurface() {
        return this.mRenderSurface;
    }

    public int getSerial() {
        return this.mSerial;
    }

    public String getStringOption(int i10) {
        return getStringOption(i10, -1);
    }

    public long getSurfaceUpdateTime() {
        return this.mUpdateSurfaceTime;
    }

    public int getTexHeight() {
        return this.mTexHeight;
    }

    public ITexture getTexId() {
        return this.mTextureId;
    }

    public int getTexWidth() {
        return this.mTexWidth;
    }

    @Override // android.graphics.SurfaceTexture
    public long getTimestamp() {
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null && this.mLastComeFrameType == 2) {
            return iFrameProducer.getTimestamp();
        }
        return super.getTimestamp();
    }

    @Override // android.graphics.SurfaceTexture
    public void getTransformMatrix(float[] fArr) {
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null && this.mLastComeFrameType == 2) {
            iFrameProducer.getTransformMatrix(fArr);
        } else {
            super.getTransformMatrix(fArr);
        }
    }

    public Surface getUpdateSurface() {
        return this.mUpdateSurface;
    }

    public int getUseSr() {
        return this.mSuperOpen;
    }

    public int getViewportHeight() {
        int consumerHeight = getConsumerHeight(this.mEglSurface);
        if (this.mViewportHeight != consumerHeight) {
            this.mViewportHeight = consumerHeight;
        }
        return this.mViewportHeight;
    }

    public int getViewportWidth() {
        int consumerWidth = getConsumerWidth(this.mEglSurface);
        if (this.mViewportWidth != consumerWidth) {
            this.mViewportWidth = consumerWidth;
        }
        return this.mViewportWidth;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        if (r12 != 842094169) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0059, code lost:
        if (r8 != 842094169) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ss.texturerender.math.ColorConversion getYUV2RGBMatrix(com.ss.texturerender.effect.EffectTexture r12) {
        /*
            r11 = this;
            boolean r0 = r11.isRelease()
            r1 = 0
            if (r0 != 0) goto L67
            if (r12 == 0) goto L67
            int r0 = r12.getTexTarget()
            r2 = 36197(0x8d65, float:5.0723E-41)
            if (r0 == r2) goto L13
            goto L67
        L13:
            int r12 = r12.getFormat()
            r0 = 0
            r2 = 842094169(0x32315659, float:1.0322389E-8)
            r3 = 17
            r4 = 40
            r5 = 39
            r6 = 35
            r7 = 1
            if (r12 <= 0) goto L32
            if (r12 == r6) goto L30
            if (r12 == r5) goto L30
            if (r12 == r4) goto L30
            if (r12 == r3) goto L30
            if (r12 != r2) goto L5c
        L30:
            r0 = r7
            goto L5c
        L32:
            com.ss.texturerender.VideoSurface r12 = r11.mOffScreenSurface
            r8 = -1
            if (r12 == 0) goto L3e
            r9 = 133(0x85, float:1.86E-43)
            int r9 = r12.getIntOption(r9)
            goto L3f
        L3e:
            r9 = r8
        L3f:
            r10 = 4
            if (r9 != r10) goto L43
            goto L30
        L43:
            if (r12 == 0) goto L49
            int r8 = com.ss.texturerender.NativeWindow.getFormat(r12)
        L49:
            if (r8 == r6) goto L30
            if (r8 == r5) goto L30
            if (r8 == r4) goto L30
            r12 = 16
            if (r8 == r12) goto L30
            if (r8 == r3) goto L30
            r12 = 20
            if (r8 == r12) goto L30
            if (r8 != r2) goto L5c
            goto L30
        L5c:
            if (r0 == 0) goto L67
            int r12 = r11.mDataSpace
            int r0 = r11.mBitDepth
            com.ss.texturerender.math.ColorConversion r12 = com.ss.texturerender.math.ColorConversion.getFromDataspace(r12, r0)
            return r12
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.VideoSurfaceTexture.getYUV2RGBMatrix(com.ss.texturerender.effect.EffectTexture):com.ss.texturerender.math.ColorConversion");
    }

    public boolean handleSurfaceChange(Message message) {
        boolean z10;
        if (this.mEGLRuntime == null) {
            return false;
        }
        int i10 = message.arg1;
        this.mLock.lock();
        if (i10 == 7) {
            if (!checkRecreateEGLSurface(i10)) {
                TextureRenderLog.d(this.mTexType, TAG, "don't recreateEGLSurface for HDR");
                ReentrantLock reentrantLock = this.mLock;
                if (reentrantLock != null) {
                    reentrantLock.unlock();
                }
                return false;
            }
        } else {
            Surface surface = this.mRenderSurface;
            Surface surface2 = this.mUpdateSurface;
            if (surface == surface2 && surface2 != null && surface2.toString().contains("SurfaceTexture")) {
                TextureRenderLog.i(this.mTexType, TAG, "surface change the same surface hashcode");
                ReentrantLock reentrantLock2 = this.mLock;
                if (reentrantLock2 != null) {
                    reentrantLock2.unlock();
                }
                return false;
            }
        }
        this.mRenderSurface = this.mUpdateSurface;
        this.mOnFrameAvailableListener.disable();
        MyOnFrameAvailableListener myOnFrameAvailableListener = new MyOnFrameAvailableListener(this);
        this.mOnFrameAvailableListener = myOnFrameAvailableListener;
        if (this.mFrameCallbackInRenderThread == 1) {
            setOnFrameAvailableListener(myOnFrameAvailableListener, this.mRenderHandler);
        } else {
            setOnFrameAvailableListener(myOnFrameAvailableListener);
        }
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null) {
            iFrameProducer.setOnFrameAvailableListener(this.mOnFrameAvailableListener, this.mRenderHandler);
        }
        this.mLock.unlock();
        if (this.mEGLRuntime.getDrawingObjectId() != 0 && this.mEGLRuntime.isCurrentObject(this.mObjectId)) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean createEGLWindowSurface = createEGLWindowSurface(z10);
        if (!createEGLWindowSurface) {
            return createEGLWindowSurface;
        }
        this.mSerial++;
        TextureRenderLog.i(this.mTexType, TAG, this + "update surface done serial = " + this.mSerial + "update time = " + this.mUpdateSurfaceTime);
        if (this.mEglSurface == EGL14.EGL_NO_SURFACE) {
            return false;
        }
        return true;
    }

    public void handleUpdateVideoState(int i10) {
        int i11 = this.mState;
        this.mState = i10;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    handleUpdateVideoStateForStop();
                    this.mDropCount = 0;
                    TextureRenderLog.i(this.mTexType, TAG, "TEXTURE_STATE_STOP");
                    return;
                }
                return;
            }
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, TAG, "TEXTURE_STATE_STOP mStartPlayTimeNanos:" + this.mStartPlayTimeNanos);
            return;
        }
        this.mLastFrameTime = (float) SystemClock.elapsedRealtime();
        if (this.mStartPlayTimeNanos <= 0) {
            this.mStartPlayTimeNanos = System.nanoTime();
            int i13 = this.mTexType;
            TextureRenderLog.i(i13, TAG, "TEXTURE_STATE_PLAYING mStartPlayTimeNanos:" + this.mStartPlayTimeNanos);
        }
        IVsyncHelper iVsyncHelper = this.mVsyncHelper;
        if (iVsyncHelper != null) {
            iVsyncHelper.addObserver(this);
        }
        if (i11 != 1 && i11 != 2) {
            this.mLastComeFrameType = 0;
        }
    }

    protected void handleUpdateVideoStateForStop() {
        this.mDropCount = 0;
        IVsyncHelper iVsyncHelper = this.mVsyncHelper;
        if (iVsyncHelper != null) {
            iVsyncHelper.removeObserver(this);
        }
        this.mFreezeDirector = 0;
    }

    public void ignoreSRResolutionCheck(boolean z10) {
        this.mIgnoreSRResCheck = z10;
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "ignoreSRResolutionCheck:" + z10);
    }

    public void initExtraSurface(Surface surface) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "initExtraSurface begin sf:" + this + ", surface:" + surface + ", mExtraSurfaceMap size:" + this.mExtraSurfaceMap.size());
        if (surface != null && !this.mExtraSurfaceMap.containsKey(surface)) {
            EGLSurface createEGLWindowSurface = createEGLWindowSurface(surface);
            this.mExtraSurfaceMap.put(surface, createEGLWindowSurface);
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, TAG, "initExtraSurface end sf:" + this + ", eglSurface:" + createEGLWindowSurface + ", mExtraSurfaceMap size:" + this.mExtraSurfaceMap.size());
        }
    }

    public boolean isAlive() {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "is alive = " + this.mOffScreenSurface + ", eglsur = " + this.mEglSurface);
        if (this.mOffScreenSurface == null && this.mEglSurface == EGL14.EGL_NO_SURFACE) {
            return false;
        }
        return true;
    }

    public boolean isCurrentObject() {
        EGLRuntime eGLRuntime = this.mEGLRuntime;
        if (eGLRuntime != null && eGLRuntime.isCurrentObject(this.mObjectId)) {
            return true;
        }
        return false;
    }

    public boolean isMakeCurrent() {
        if (this.mIsMakeCurrent && this.mEglSurface != EGL14.EGL_NO_SURFACE) {
            return true;
        }
        return false;
    }

    public boolean isPreRender() {
        return this.mIsPreRender;
    }

    public boolean isRelease() {
        return this.mIsRelease;
    }

    public boolean isUpdateFrame() {
        return this.mFrameReady;
    }

    public void lock() {
        this.mLock.lock();
    }

    public boolean makeCurrent() {
        if (makeCurrent(this.mEglSurface)) {
            this.mIsMakeCurrent = true;
            EGLRuntime eGLRuntime = this.mEGLRuntime;
            if (eGLRuntime != null) {
                eGLRuntime.setDrawingObjectId(this.mObjectId);
            }
            return true;
        }
        return false;
    }

    public boolean needDrop() {
        int i10;
        long j10 = this.mStartPlayTimeNanos;
        if (j10 > 0 && j10 > getTimestamp() && (i10 = this.mDropCount) < 5) {
            this.mDropCount = i10 + 1;
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, TAG, KEY_TEXTURE + this + " previous play period,drop count:" + this.mDropCount);
            return true;
        } else if (this.mIsPaused) {
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, TAG, KEY_TEXTURE + this + " is paused");
            return true;
        } else {
            return false;
        }
    }

    public void notifyError(int i10, int i11, String str) {
        Integer num;
        try {
            HashMap<Integer, Integer> hashMap = this.mTrackingErrorCode;
            if (hashMap != null && this.mTrackingErrorMsg != null && ((num = hashMap.get(Integer.valueOf(i11))) == null || num.intValue() == 0)) {
                this.mTrackingErrorCode.put(Integer.valueOf(i11), Integer.valueOf(i10));
                this.mTrackingErrorMsg.put(Integer.valueOf(i11), str);
            }
            this.mOffScreenSurface.onTextureRenderError(i10, i11, str);
        } catch (Exception unused) {
        }
    }

    public void notifyExtraSurfaceRender(Surface surface) {
        try {
            VideoSurface videoSurface = this.mOffScreenSurface;
            if (videoSurface != null) {
                videoSurface.onTextureUpdate(this.mSerial, surface, getTimestamp());
            }
        } catch (Exception unused) {
        }
    }

    public void notifyRenderFrame(int i10) {
        if (i10 != this.mSerial) {
            return;
        }
        try {
            VideoSurface videoSurface = this.mOffScreenSurface;
            if (videoSurface != null) {
                videoSurface.onTextureUpdate(i10, getTimestamp());
                Quaternion quaternion = this.mHeadPose;
                if (quaternion != null) {
                    this.mOffScreenSurface.onTextureUpdate(i10, (float) quaternion.getX0(), (float) this.mHeadPose.getX1(), (float) this.mHeadPose.getX2(), (float) this.mHeadPose.getX3());
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.ss.texturerender.vsync.IVsyncCallback
    public void notifyVsync() {
        boolean z10 = false;
        if (this.mLastComeFrameType != 0) {
            if (this.mSyncSetVsync == 1 && DeviceManager.isVRDevice()) {
                z10 = true;
            }
            sendRenderMsg(1, z10);
            return;
        }
        sendRenderMsg(0, false);
    }

    @Override // com.ss.texturerender.TextureRenderer.OnTextureFocusLossListener
    public void onFocusLoss() {
        this.mIsMakeCurrent = false;
    }

    public void onFrameAvailable(boolean z10, int i10) {
        this.mLastComeFrameType = i10;
        this.mFrameReady = true;
        if (z10) {
            IVsyncHelper iVsyncHelper = this.mVsyncHelper;
            if (iVsyncHelper == null || !iVsyncHelper.isWorking() || !this.mConfig.getEffectOpen(8)) {
                sendRenderMsg(1, false);
                return;
            }
            return;
        }
        sendRenderMsg(0, false);
    }

    public void onHeadposeChanged(Quaternion quaternion) {
        VideoSurface offScreenSurface = getOffScreenSurface();
        if (offScreenSurface != null) {
            offScreenSurface.onHeadposeChanged(this.mSerial, (float) quaternion.getX0(), (float) quaternion.getX1(), (float) quaternion.getX2(), (float) quaternion.getX3());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        TouchHelper touchHelper = this.mTouchHelper;
        if (touchHelper != null) {
            return touchHelper.onTouchEvent(motionEvent);
        }
        return false;
    }

    public synchronized void pause(boolean z10, boolean z11) {
        if (z11 && !z10) {
            try {
                if (this.mRenderHandler != null) {
                    if (!this.mIsPaused) {
                        if (this.mIsPreRender) {
                        }
                    }
                    int i10 = this.mTexType;
                    TextureRenderLog.i(i10, TAG, this + "need active , post a resume msg");
                    Message obtainMessage = this.mRenderHandler.obtainMessage(10);
                    obtainMessage.obj = this;
                    this.mIsPreRender = false;
                    this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mIsPaused = z10;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, TAG, this + "paused = " + this.mIsPaused);
    }

    public void preRender() {
        this.mIsPreRender = true;
    }

    public void registerTouchListener(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        if (this.mTouchHelper == null) {
            this.mTouchHelper = new TouchHelper(TextureRenderManager.getManager().getContext());
        }
        this.mTouchHelper.register(simpleOnGestureListener);
    }

    public void release(boolean z10) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "release " + this + ", glthread = " + z10);
        releaseOffScreenSurface(z10);
        release();
    }

    public void releaseAllExtraSurface() {
        Iterator<Map.Entry<Surface, EGLSurface>> it = this.mExtraSurfaceMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Surface, EGLSurface> next = it.next();
            if (next.getValue() != EGL14.EGL_NO_SURFACE && next.getValue() != null) {
                EGL14.eglDestroySurface(this.mEglDisplay, next.getValue());
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, TAG, "releaseAllExtraSurface sf:" + this + ", eglSurface:" + next.getValue());
            }
            it.remove();
        }
    }

    public synchronized void releaseAllExtraSurface_l() {
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(25);
            obtainMessage.arg1 = 3;
            Bundle bundle = new Bundle();
            bundle.putSerializable(KEY_TEXTURE, this);
            obtainMessage.setData(bundle);
            this.mRenderHandler.sendMessage(obtainMessage);
        }
    }

    public void releaseExtraSurface(Surface surface) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "releaseExtraSurface begin sf:" + this + ", surface:" + surface + ", mExtraSurfaceMap size:" + this.mExtraSurfaceMap.size());
        EGLSurface eGLSurface = this.mExtraSurfaceMap.get(surface);
        if (eGLSurface != null) {
            if (eGLSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.mEglDisplay, eGLSurface);
            }
            this.mExtraSurfaceMap.remove(surface);
        }
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, TAG, "releaseExtraSurface end sf:" + this + ", eglSurface:" + eGLSurface + ", mExtraSurfaceMap size:" + this.mExtraSurfaceMap.size());
    }

    public synchronized void releaseInternal() {
        try {
            if (!this.mIsRelease) {
                lock();
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, TAG, this + " release internal");
                this.mIsRelease = true;
                this.mTextureId.decRef();
                this.mEffectTexture = null;
                IFrameProducer iFrameProducer = this.mFrameProducer;
                if (iFrameProducer != null) {
                    iFrameProducer.release();
                    this.mFrameProducer = null;
                }
                this.mRenderHandler = null;
                this.mCreateLooper = null;
                EffectTextureManager effectTextureManager = this.mTextureRenderer.getEffectTextureManager();
                while (this.mTextureQueue.size() > 0) {
                    EffectTexture poll = this.mTextureQueue.poll();
                    if (effectTextureManager != null) {
                        effectTextureManager.onTextureReturn(poll);
                    } else {
                        TexGLUtils.deleteTexture(poll.getTexID());
                    }
                    int i11 = this.mTexType;
                    TextureRenderLog.i(i11, TAG, "return fbotex:" + poll.getTexID() + ",st:" + this);
                }
                int i12 = this.mTexType;
                TextureRenderLog.i(i12, TAG, this + " release internal done");
                unlock();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void releaseOffScreenSurface(boolean z10) {
        this.mOffScreenSurface = null;
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null) {
            iFrameProducer.release();
        }
        this.mFrameProducer = null;
        if (z10) {
            this.mUpdateSurface = null;
            EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.mEglDisplay, eGLSurface);
                this.mEglSurface = EGL14.EGL_NO_SURFACE;
                this.mIsMakeCurrent = false;
                NativeWindow nativeWindow = this.mNativeWindow;
                if (nativeWindow != null) {
                    nativeWindow.releaseWindow();
                    this.mNativeWindow = null;
                }
            }
            releaseAllExtraSurface();
        } else {
            updateSurface(null);
            releaseAllExtraSurface_l();
        }
        if ((this.mTexType & 4) > 0) {
            synchronized (this.mSyncMsg) {
                Message message = this.mSyncMsg;
                message.arg1 = Integer.MIN_VALUE;
                message.notify();
                TextureRenderLog.i(this.mTexType, TAG, "releaseOffScreenSurface mSyncMsg.notify");
            }
        }
        this.mIdleTimeStamp = SystemClock.elapsedRealtime();
        this.mState = 3;
        IVsyncHelper iVsyncHelper = this.mVsyncHelper;
        if (iVsyncHelper != null) {
            iVsyncHelper.setEnable(false);
        }
        CopyOnWriteArrayList<Bundle> copyOnWriteArrayList = this.mParamList;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            this.mParamList = null;
        }
        if (this.mExtraRenderCropParamsBundle != null || this.mMainRenderCropParamsBundle != null) {
            this.mExtraRenderCropParamsBundle = null;
            this.mMainRenderCropParamsBundle = null;
            Handler handler = this.mRenderHandler;
            if (handler != null) {
                try {
                    Message obtainMessage = handler.obtainMessage(40);
                    obtainMessage.obj = this;
                    this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
                } catch (Exception unused) {
                }
            } else {
                Message message2 = new Message();
                message2.what = 40;
                message2.obj = this;
                this.mTextureRenderer.handleTextureRenderMsg(message2);
            }
        }
        if (this.mLastComeFrameType != 0) {
            sendRenderMsg(0, false);
            this.mLastComeFrameType = 0;
        }
        this.mFrameCount = 0;
        this.mAccumulatedPlayingTime = 0.0d;
        this.mLastFrameTime = 0.0d;
        this.mFPS = 0.0f;
        this.mCurrentEffectStartTime = 0.0d;
        this.mCurrentEffectProcessDepth = 0;
        HashMap<Integer, Integer> hashMap = this.mPerEffectFrameCount;
        if (hashMap != null) {
            hashMap.clear();
        }
        HashMap<Integer, Double> hashMap2 = this.mPerEffectAccumulatedTime;
        if (hashMap2 != null) {
            hashMap2.clear();
        }
        HashMap<Integer, Float> hashMap3 = this.mPerEffectAverageTime;
        if (hashMap3 != null) {
            hashMap3.clear();
        }
        this.mEffectChainStartTime = 0.0d;
        this.mEffectChainAccumulatedTime = 0.0d;
        this.mEffectChainFrameCount = 0;
        this.mEffectChainAverageTime = 0.0f;
        HashMap<Integer, Integer> hashMap4 = this.mTrackingErrorCode;
        if (hashMap4 != null) {
            hashMap4.clear();
        }
        HashMap<Integer, String> hashMap5 = this.mTrackingErrorMsg;
        if (hashMap5 != null) {
            hashMap5.clear();
        }
        releaseOther();
        this.mConfig.reset();
        this.mIgnoreSRResCheck = false;
        this.mRoiSRParamsBundle = null;
        this.mStaticMetadata = null;
        this.mFreezeDirector = 0;
        this.mOpenVQScore = 0;
        this.mVQScoreBundle = null;
        this.mEnableResetCropParamsInRender = 0;
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + "release offscreen surface done = " + this.mIdleTimeStamp);
    }

    public boolean render() {
        if (!eglSwapBuffer(this.mEglSurface, true)) {
            return false;
        }
        notifyRenderFrame(this.mSerial);
        return true;
    }

    public void resetFlag() {
        this.mUsingEffect.clear();
    }

    public Bitmap saveFrame(Bundle bundle, VideoSurface.SaveFrameCallback saveFrameCallback) {
        Handler handler = this.mRenderHandler;
        if (handler == null) {
            return null;
        }
        if (saveFrameCallback != null) {
            synchronized (this.mSaveFrameBundle) {
                try {
                    if (!this.mSaveFrameBundle.isEmpty()) {
                        this.mSaveFrameBundle.clear();
                    }
                    this.mSaveFrameBundle.putAll(bundle);
                    this.mSaveFrameBundle.putSerializable(TextureRenderKeys.KEY_IS_CALLBACK, saveFrameCallback);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.mState != 1) {
                sendRenderMsg(1, false);
            }
            return null;
        }
        Message obtainMessage = handler.obtainMessage(14);
        this.mRenderMsgBundle.putSerializable(KEY_TEXTURE, this);
        obtainMessage.setData(this.mRenderMsgBundle);
        Message message = new Message();
        obtainMessage.obj = message;
        try {
            synchronized (message) {
                this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
                message.wait(500L);
            }
            if (message.obj == null && this.mRenderHandler.hasMessages(14)) {
                TextureRenderLog.i(this.mTexType, TAG, "render thread is busy");
            }
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, TAG, "save frame done = " + message.obj);
            return (Bitmap) message.obj;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    protected int sendMsg(Message message, boolean z10, boolean z11, long j10) {
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            try {
                if (!z11) {
                    if (z10) {
                        handler.sendMessageAtFrontOfQueue(message);
                        return 0;
                    }
                    handler.sendMessage(message);
                    return 0;
                }
                synchronized (this) {
                    if (z10) {
                        this.mRenderHandler.sendMessageAtFrontOfQueue(message);
                    } else {
                        this.mRenderHandler.sendMessage(message);
                    }
                    int i10 = this.mTexType;
                    TextureRenderLog.i(i10, TAG, "sendMsg, msg:" + message.toString());
                    wait(j10);
                }
                return 0;
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    protected void sendRenderMsg(int i10, boolean z10) {
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            try {
                Message obtainMessage = handler.obtainMessage(2);
                obtainMessage.obj = this;
                obtainMessage.arg1 = i10;
                obtainMessage.arg2 = z10 ? 1 : 0;
                if (!this.mSaveFrameBundle.isEmpty()) {
                    synchronized (this.mSaveFrameBundle) {
                        obtainMessage.setData(this.mSaveFrameBundle);
                        this.mSaveFrameBundle = new Bundle();
                    }
                }
                sendMsg(obtainMessage, false, z10, 100L);
            } catch (Exception e10) {
                TextureRenderLog.i(this.mTexType, TAG, e10.toString());
            }
        }
    }

    protected void sendSetOptionMsg(int i10, int i11) {
        Handler handler = this.mRenderHandler;
        if (handler == null) {
            return;
        }
        try {
            Message obtainMessage = handler.obtainMessage(34);
            obtainMessage.obj = this;
            obtainMessage.arg1 = i10;
            obtainMessage.arg2 = i11;
            obtainMessage.sendToTarget();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ec, code lost:
        if (r1 == 1) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0116 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:6:0x0005, B:25:0x005a, B:27:0x005f, B:29:0x006b, B:31:0x006f, B:64:0x0116, B:66:0x0123, B:74:0x0139, B:76:0x013d, B:77:0x0144, B:79:0x0153, B:81:0x0178, B:34:0x0076, B:36:0x0082, B:38:0x0086, B:39:0x008a, B:40:0x0094, B:41:0x009e, B:43:0x00a6, B:45:0x00ac, B:46:0x00af, B:47:0x00b8, B:49:0x00c2, B:51:0x00c7, B:52:0x00ca, B:57:0x00ee, B:59:0x00f2, B:61:0x0101, B:53:0x00d4, B:54:0x00d7, B:55:0x00e2), top: B:87:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013d A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:6:0x0005, B:25:0x005a, B:27:0x005f, B:29:0x006b, B:31:0x006f, B:64:0x0116, B:66:0x0123, B:74:0x0139, B:76:0x013d, B:77:0x0144, B:79:0x0153, B:81:0x0178, B:34:0x0076, B:36:0x0082, B:38:0x0086, B:39:0x008a, B:40:0x0094, B:41:0x009e, B:43:0x00a6, B:45:0x00ac, B:46:0x00af, B:47:0x00b8, B:49:0x00c2, B:51:0x00c7, B:52:0x00ca, B:57:0x00ee, B:59:0x00f2, B:61:0x0101, B:53:0x00d4, B:54:0x00d7, B:55:0x00e2), top: B:87:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0153 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:6:0x0005, B:25:0x005a, B:27:0x005f, B:29:0x006b, B:31:0x006f, B:64:0x0116, B:66:0x0123, B:74:0x0139, B:76:0x013d, B:77:0x0144, B:79:0x0153, B:81:0x0178, B:34:0x0076, B:36:0x0082, B:38:0x0086, B:39:0x008a, B:40:0x0094, B:41:0x009e, B:43:0x00a6, B:45:0x00ac, B:46:0x00af, B:47:0x00b8, B:49:0x00c2, B:51:0x00c7, B:52:0x00ca, B:57:0x00ee, B:59:0x00f2, B:61:0x0101, B:53:0x00d4, B:54:0x00d7, B:55:0x00e2), top: B:87:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0178 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:6:0x0005, B:25:0x005a, B:27:0x005f, B:29:0x006b, B:31:0x006f, B:64:0x0116, B:66:0x0123, B:74:0x0139, B:76:0x013d, B:77:0x0144, B:79:0x0153, B:81:0x0178, B:34:0x0076, B:36:0x0082, B:38:0x0086, B:39:0x008a, B:40:0x0094, B:41:0x009e, B:43:0x00a6, B:45:0x00ac, B:46:0x00af, B:47:0x00b8, B:49:0x00c2, B:51:0x00c7, B:52:0x00ca, B:57:0x00ee, B:59:0x00f2, B:61:0x0101, B:53:0x00d4, B:54:0x00d7, B:55:0x00e2), top: B:87:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void setEffect(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.VideoSurfaceTexture.setEffect(android.os.Bundle):void");
    }

    public void setEffectOpen(int i10, int i11, Bundle bundle) {
        this.mConfig.setEffectOpen(i10, i11);
        if (i10 == 8 || i10 == 12) {
            if (i11 == 1) {
                if (this.mVsyncHelper == null) {
                    this.mVsyncHelper = VsyncHelperFactory.createVsyncHelper(TextureRenderManager.getManager().getContext(), this.mTexType, bundle);
                }
                this.mVsyncHelper.setEnable(true);
                this.mVsyncHelper.addObserver(this);
                return;
            }
            IVsyncHelper iVsyncHelper = this.mVsyncHelper;
            if (iVsyncHelper != null) {
                iVsyncHelper.removeObserver(this);
            }
        }
    }

    public synchronized void setExtraSurface(Surface surface, int i10) {
        try {
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, TAG, "setExtraSurface = " + this + ", " + surface + ", opera:" + i10);
            Handler handler = this.mRenderHandler;
            if (handler != null) {
                Message obtainMessage = handler.obtainMessage(25);
                obtainMessage.arg1 = i10;
                Bundle bundle = new Bundle();
                bundle.putSerializable(KEY_TEXTURE, this);
                bundle.putParcelable(KEY_SURFACE, surface);
                obtainMessage.setData(bundle);
                this.mRenderHandler.sendMessage(obtainMessage);
            }
            TextureRenderLog.i(this.mTexType, TAG, "setExtraSurface end");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setFrameRenderChecker(RenderCheckDispatcher renderCheckDispatcher) {
        VideoSurface videoSurface = this.mOffScreenSurface;
        if (videoSurface != null) {
            videoSurface.setFrameRenderChecker(renderCheckDispatcher);
        }
    }

    public int setHeadPose(Quaternion quaternion) {
        this.mHeadPose = quaternion;
        return 1;
    }

    public synchronized void setOption(int i10, int i11) {
        if (i10 != 2) {
            if (i10 == 3) {
                TextureRenderLog.i(this.mTexType, TAG, "set TEXTURE_OPTION_SET_OVERLAY_SYNC st:" + this);
                Handler handler = this.mRenderHandler;
                if (handler != null) {
                    Message obtainMessage = handler.obtainMessage(31);
                    obtainMessage.obj = this;
                    obtainMessage.arg1 = i11;
                    obtainMessage.sendToTarget();
                }
            } else if (i10 == 5) {
                this.mTexType = i11;
                this.mConfig.setTexType(i11);
            } else if (i10 == 6) {
                this.mUsingEffect.put(5, Integer.valueOf(i11));
            } else if (i10 == 8) {
                this.mHDRType = i11;
                _tryUpdateEGLSurface(7);
                _trySetupHDR2SDRFilter(i11);
            } else if (i10 == 9) {
                this.mSyncUpdateSurface = i11;
            } else if (i10 == 15) {
                this.mUsingEffect.put(1, Integer.valueOf(i11));
            } else if (i10 == 16) {
                setEffectOpen(1, i11, null);
            } else if (i10 == 25) {
                for (int i12 = 0; i12 < i11; i12++) {
                    sendRenderMsg(1, false);
                }
            } else if (i10 != 26) {
                if (i10 == 106) {
                    IVsyncHelper iVsyncHelper = this.mVsyncHelper;
                    if (iVsyncHelper != null) {
                        if (i11 == 1) {
                            iVsyncHelper.removeObserver(this);
                        } else {
                            iVsyncHelper.addObserver(this);
                        }
                    }
                } else if (i10 == 107) {
                    IVsyncHelper iVsyncHelper2 = this.mVsyncHelper;
                    if (iVsyncHelper2 != null) {
                        iVsyncHelper2.update();
                    } else {
                        TextureRenderLog.d(this.mTexType, TAG, "vsyncHelper is null");
                    }
                } else if (i10 == 116) {
                    this.mForbidReuseVideoSurfaceTexture = i11;
                } else if (i10 != 117) {
                    switch (i10) {
                        case 29:
                            this.mRotationType = i11;
                            break;
                        case 30:
                            this.mIsMirrorHorizontal = i11;
                            break;
                        case 31:
                            this.mIsMirrorVertical = i11;
                            break;
                        default:
                            switch (i10) {
                                case 110:
                                    this.mSyncSetVsync = i11;
                                    break;
                                case 121:
                                    this.mFrameCount = i11;
                                    break;
                                case 130:
                                    this.mBitDepth = i11;
                                    break;
                                case 135:
                                    this.mHeadposeCallbackIntegral = i11;
                                    break;
                                case 137:
                                    this.mFreezeDirector = i11;
                                    break;
                                case 141:
                                    this.mEnableExtraSurfaceRenderCallback = i11;
                                    break;
                                case 144:
                                    this.mNotKeepLastParams = i11;
                                    break;
                                case 145:
                                    TextureRenderLog.i(this.mTexType, TAG, "set TEXTURE_OPTION_INT_RESET_ROTATION_MIRROR_PARAMS: " + i11);
                                    Handler handler2 = this.mRenderHandler;
                                    if (handler2 != null && i11 == 1) {
                                        try {
                                            Message obtainMessage2 = handler2.obtainMessage(42);
                                            obtainMessage2.obj = this;
                                            this.mRenderHandler.sendMessage(obtainMessage2);
                                        } catch (Exception unused) {
                                        }
                                        this.mRotationType = 0;
                                        this.mIsMirrorHorizontal = 0;
                                        this.mIsMirrorVertical = 0;
                                        this.mLayoutMode = 1;
                                        this.mFrameCallbackBundle = null;
                                        break;
                                    }
                                    break;
                                case 146:
                                    this.mDoMirrorFirst = i11;
                                    break;
                                case 147:
                                    this.mSRProcessScaleType = i11;
                                    TextureRenderLog.i(this.mTexType, TAG, "set process scale type " + this.mSRProcessScaleType);
                                    break;
                                case 169:
                                    TextureRenderLog.d(this.mTexType, TAG, "TEXTURE_OPTION_INT_DATASPACE:" + i11);
                                    this.mDataSpace = i11;
                                    return;
                                case 171:
                                    TextureRenderLog.d(this.mTexType, TAG, "TEXTURE_OPTION_INT_RESET_CROP_PARAMS:" + i11);
                                    this.mEnableResetCropParamsInRender = i11;
                                    return;
                                default:
                                    switch (i10) {
                                        case 149:
                                            this.mFrameCallbackInRenderThread = i11;
                                            return;
                                        case 150:
                                            this.mEnableNativeWindow = i11;
                                            return;
                                        case 151:
                                            if (this.mRenderHandler != null && i11 == -1) {
                                                try {
                                                    Bundle bundle = new Bundle();
                                                    bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 151);
                                                    Message obtainMessage3 = this.mRenderHandler.obtainMessage(36);
                                                    obtainMessage3.obj = this;
                                                    obtainMessage3.setData(bundle);
                                                    this.mRenderHandler.sendMessage(obtainMessage3);
                                                } catch (Exception unused2) {
                                                }
                                            }
                                            return;
                                        case 152:
                                            this.mOpenVQScore = i11;
                                            return;
                                    }
                            }
                    }
                } else {
                    TextureRenderLog.i(this.mTexType, TAG, "set TEXTURE_OPTION_INT_FORBID_REUSE_TEXTURE: " + i11);
                    lock();
                    ITexture iTexture = this.mTextureId;
                    if (iTexture != null) {
                        ((Texture) iTexture).setForbidTextureReuse(i11);
                    }
                    unlock();
                }
                sendSetOptionMsg(i10, i11);
            } else {
                this.mLayoutMode = i11;
            }
        } else if (i11 == 1) {
            Handler handler3 = this.mRenderHandler;
            if (handler3 == null) {
                return;
            }
            try {
                Message obtainMessage4 = handler3.obtainMessage(33);
                obtainMessage4.obj = this;
                this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage4);
            } catch (Exception unused3) {
            }
        }
    }

    public synchronized void setSuperResolutionConfig(int i10, String str, String str2, String str3, int i11, int i12, String str4) {
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(12);
            obtainMessage.obj = this;
            Bundle bundle = new Bundle();
            bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 5);
            bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 21);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_TYPE, i10);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_MAX_SIZE_WIDTH, i11);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_MAX_SIZE_HEIGHT, i12);
            bundle.putString(TextureRenderKeys.KEY_KERNEL_BIN_PATH, str);
            bundle.putString(TextureRenderKeys.KEY_OCL_MODLE_NAME, str2);
            bundle.putString(TextureRenderKeys.KEY_DSP_MODLE_NAME, str3);
            bundle.putString(TextureRenderKeys.KEY_MODULE_NAME, str4);
            obtainMessage.setData(bundle);
            this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
        }
    }

    public synchronized void setSuperResolutionMode(int i10) {
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, TAG, this + " set sr = " + i10);
        this.mSuperOpen = i10;
        setEffectOpen(5, i10, null);
    }

    public boolean supportProcessResolution(int i10, int i11) {
        if (this.mIgnoreSRResCheck) {
            return true;
        }
        int i12 = 0;
        while (true) {
            int[] iArr = resWdithTab;
            if (i12 < iArr.length) {
                if (iArr[i12] == i10 && resHeightTab[i12] == i11) {
                    return true;
                }
                i12++;
            } else {
                TextureRenderLog.e(this.mTexType, TAG, "sr not support resolution width:" + i10 + ",height：" + i11);
                return false;
            }
        }
    }

    public int texType() {
        return this.mTexType;
    }

    public void unRegisterTouchListener(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        TouchHelper touchHelper = this.mTouchHelper;
        if (touchHelper != null) {
            touchHelper.unregister(simpleOnGestureListener);
        }
    }

    public void unlock() {
        this.mLock.unlock();
    }

    public synchronized void updateSurface(Surface surface) {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "update Surface = " + this + ", " + surface + ", " + this.mUpdateSurface);
        if (surface == this.mUpdateSurface && surface != null && surface.toString().contains("SurfaceTexture")) {
            TextureRenderLog.i(this.mTexType, TAG, "prevent the same surface???");
            return;
        }
        this.mLock.lock();
        this.mUpdateSurface = surface;
        this.mLock.unlock();
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(4);
            this.mRenderMsgBundle.putSerializable(KEY_TEXTURE, this);
            obtainMessage.setData(this.mRenderMsgBundle);
            if (this.mSyncUpdateSurface != 1) {
                this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
            } else {
                Object obj = new Object();
                obtainMessage.obj = obj;
                synchronized (obj) {
                    this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
                    try {
                        TextureRenderLog.i(this.mTexType, TAG, "update surface wait");
                        obj.wait(100L);
                    } catch (Exception unused) {
                    }
                }
            }
        }
        TextureRenderLog.i(this.mTexType, TAG, "update Surface end");
    }

    public void updateTexDimension(int i10, int i11) {
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, TAG, "update tex dimension : " + i10 + ", " + i11);
        super.setDefaultBufferSize(i10, i11);
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null) {
            iFrameProducer.updateTexDimension(i10, i11);
        }
        this.mTexWidth = i10;
        this.mTexHeight = i11;
    }

    @Override // android.graphics.SurfaceTexture
    public void updateTexImage() {
        IFrameProducer iFrameProducer = this.mFrameProducer;
        if (iFrameProducer != null && this.mLastComeFrameType == 2) {
            iFrameProducer.updateImage();
        } else {
            super.updateTexImage();
        }
    }

    public synchronized void updateVideoState(int i10) {
        Handler handler = this.mRenderHandler;
        if (handler != null) {
            Message obtainMessage = handler.obtainMessage(26);
            obtainMessage.obj = this;
            obtainMessage.arg1 = i10;
            this.mRenderHandler.sendMessage(obtainMessage);
        }
    }

    public float getFloatOption(int i10, int i11) {
        double d10;
        Float f10;
        if (i10 != 120) {
            if (i10 != 131) {
                if (i10 != 132) {
                    if (i10 != 154) {
                        if (i10 != 155) {
                            switch (i10) {
                                case 122:
                                    d10 = this.mAccumulatedPlayingTime;
                                    break;
                                case 123:
                                    d10 = this.mLastFrameTime;
                                    break;
                                case 124:
                                    HashMap<Integer, Float> hashMap = this.mPerEffectAverageTime;
                                    if (hashMap == null || (f10 = hashMap.get(Integer.valueOf(i11))) == null) {
                                        return 0.0f;
                                    }
                                    return f10.floatValue();
                                case 125:
                                    return this.mEffectChainAverageTime;
                                default:
                                    return 0.0f;
                            }
                            return (float) d10;
                        }
                        return this.mVQScoreProcessAverageCostTime;
                    }
                    return this.mVQScoreProcessSuccessRate;
                }
                return this.mSRProcessAverageCostTime;
            }
            return this.mSRProcessSuccessRate;
        }
        return this.mFPS;
    }

    public String getStringOption(int i10, int i11) {
        HashMap<Integer, String> hashMap;
        String str;
        return (i10 != 127 || (hashMap = this.mTrackingErrorMsg) == null || (str = hashMap.get(Integer.valueOf(i11))) == null) ? "" : str;
    }

    public Object getOption(Bundle bundle) {
        TextureRenderer textureRenderer = this.mTextureRenderer;
        if (textureRenderer != null) {
            return textureRenderer.getOption(bundle);
        }
        return null;
    }

    public void unRegisterTouchListener(ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener) {
        TouchHelper touchHelper = this.mTouchHelper;
        if (touchHelper != null) {
            touchHelper.unregister(onScaleGestureListener);
        }
    }

    public void registerTouchListener(ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener) {
        if (this.mTouchHelper == null) {
            this.mTouchHelper = new TouchHelper(TextureRenderManager.getManager().getContext());
        }
        this.mTouchHelper.register(onScaleGestureListener);
    }

    @Override // android.graphics.SurfaceTexture
    public void release() {
        TextureRenderLog.i(this.mTexType, TAG, "release");
        releaseInternal();
        super.release();
    }

    public boolean makeCurrent(EGLSurface eGLSurface) {
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            TextureRenderLog.e(this.mTexType, TAG, "no surface for make current");
            return false;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + " make current again");
        GLES20.glFinish();
        if (!EGL14.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
            int eglGetError = EGL14.eglGetError();
            notifyError(eglGetError, 0, "");
            int i11 = this.mTexType;
            TextureRenderLog.e(i11, TAG, "make current failed:" + eGLSurface + " error:" + GLUtils.getEGLErrorString(eglGetError));
            return false;
        }
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, TAG, this + "make current done = " + this.mOffScreenSurface);
        return true;
    }

    public int getIntOption(int i10, int i11) {
        Integer num;
        if (i10 != 6) {
            if (i10 == 8) {
                return this.mHDRType;
            }
            if (i10 == 10) {
                TextureRenderer textureRenderer = this.mTextureRenderer;
                return (textureRenderer == null || !textureRenderer.getEffectConfig().isOpenSR()) ? 0 : 1;
            } else if (i10 == 23) {
                TextureRenderer textureRenderer2 = this.mTextureRenderer;
                return (textureRenderer2 == null || !textureRenderer2.getEffectConfig().getEffectOpen(i11)) ? 0 : 1;
            } else if (i10 == 126) {
                HashMap<Integer, Integer> hashMap = this.mTrackingErrorCode;
                if (hashMap == null || (num = hashMap.get(Integer.valueOf(i11))) == null) {
                    return -1;
                }
                return num.intValue();
            } else if (i10 == 135) {
                return this.mHeadposeCallbackIntegral;
            } else {
                if (i10 == 137) {
                    return this.mFreezeDirector;
                }
                if (i10 == 163) {
                    return this.mConfig.getEffectOpen(21) ? 1 : 0;
                }
                if (i10 != 15) {
                    if (i10 == 16) {
                        return this.mConfig.getEffectOpen(1) ? 1 : 0;
                    }
                    if (i10 == 18) {
                        TextureRenderer textureRenderer3 = this.mTextureRenderer;
                        return (textureRenderer3 == null || !textureRenderer3.getEffectConfig().isOpenSharpen()) ? 0 : 1;
                    } else if (i10 != 19) {
                        return -1;
                    }
                }
            }
        }
        if (i10 == 6) {
            i11 = 5;
        } else if (i10 == 15) {
            i11 = 1;
        }
        Integer num2 = this.mUsingEffect.get(Integer.valueOf(i11));
        if (num2 != null) {
            return num2.intValue();
        }
        return 0;
    }

    protected void releaseOther() {
    }

    public EGLSurface createEGLWindowSurface(Surface surface) {
        int[] iArr;
        boolean z10;
        int eglGetError;
        EGLRuntime eGLRuntime;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (surface == null || !surface.isValid()) {
            return eGLSurface;
        }
        String eglQueryString = EGL14.eglQueryString(this.mEglDisplay, 12373);
        if (this.mHDRType != 1 || (eGLRuntime = this.mEGLRuntime) == null || eGLRuntime.isSupportBt2020PQ() <= 0) {
            iArr = new int[]{12344};
            z10 = false;
        } else {
            iArr = new int[]{TextureRenderKeys.EGL_GL_COLORSPACE_KHR, TextureRenderKeys.EGL_GL_COLORSPACE_BT2020_PQ_EXT, 12344};
            z10 = true;
        }
        try {
            TextureRenderLog.i(this.mTexType, TAG, this + ",create window surface from " + surface + ",attr:" + Arrays.toString(iArr));
            EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, surface, iArr, 0);
            if (eglCreateWindowSurface == EGL14.EGL_NO_SURFACE) {
                notifyError(EGL14.eglGetError(), 0, "");
                TextureRenderLog.e(this.mTexType, TAG, "create window surface failed" + GLUtils.getEGLErrorString(eglGetError));
                return eglCreateWindowSurface;
            }
            List<Integer> list = this.mStaticMetadata;
            if (list != null && list.size() >= 10 && z10 && !TextUtils.isEmpty(eglQueryString) && eglQueryString.contains("EGL_EXT_surface_SMPTE2086_metadata")) {
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_RX_EXT, this.mStaticMetadata.get(0).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_RY_EXT, this.mStaticMetadata.get(1).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_GX_EXT, this.mStaticMetadata.get(2).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_GY_EXT, this.mStaticMetadata.get(3).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_BX_EXT, this.mStaticMetadata.get(4).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_DISPLAY_PRIMARY_BY_EXT, this.mStaticMetadata.get(5).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_WHITE_POINT_X_EXT, this.mStaticMetadata.get(6).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_WHITE_POINT_Y_EXT, this.mStaticMetadata.get(7).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_MAX_LUMINANCE_EXT, this.mStaticMetadata.get(8).intValue());
                EGL14.eglSurfaceAttrib(this.mEglDisplay, eglCreateWindowSurface, TextureRenderKeys.EGL_SMPTE2086_MIN_LUMINANCE_EXT, this.mStaticMetadata.get(9).intValue());
            }
            return eglCreateWindowSurface;
        } catch (Exception unused) {
            notifyError(5, 0, "");
            TextureRenderLog.e(this.mTexType, TAG, "createEGLWindowSurface exception failed");
            return EGL14.EGL_NO_SURFACE;
        }
    }

    public synchronized void setOption(int i10, float f10) {
        try {
            if (i10 == 4) {
                int i11 = this.mTexType;
                TextureRenderLog.i(i11, TAG, "set TEXTURE_OPTION_SET_OVERLAY_RATIO ratio:" + f10);
                Message obtainMessage = this.mRenderHandler.obtainMessage(27);
                obtainMessage.obj = this;
                Bundle bundle = new Bundle();
                bundle.putFloat(TextureRenderKeys.OVERLAY_RATIO, f10);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            } else if (i10 == 27) {
                this.mLayoutRatio = f10;
            } else if (i10 == 120) {
                this.mFPS = f10;
            } else if (i10 == 122) {
                this.mAccumulatedPlayingTime = f10;
            } else if (i10 == 123) {
                this.mLastFrameTime = f10;
            } else if (i10 == 131) {
                this.mSRProcessSuccessRate = f10;
            } else if (i10 == 132) {
                this.mSRProcessAverageCostTime = f10;
            } else if (i10 == 154) {
                this.mVQScoreProcessSuccessRate = f10;
            } else if (i10 != 155) {
                Handler handler = this.mRenderHandler;
                if (handler == null) {
                    return;
                }
                Message obtainMessage2 = handler.obtainMessage(35);
                obtainMessage2.obj = this;
                obtainMessage2.arg1 = i10;
                Bundle bundle2 = new Bundle();
                bundle2.putFloat(TextureRenderKeys.KEY_IS_FLOAT_VALUE, f10);
                obtainMessage2.setData(bundle2);
                obtainMessage2.sendToTarget();
            } else {
                this.mVQScoreProcessAverageCostTime = f10;
            }
        } catch (Exception unused) {
        }
    }

    @TargetApi(19)
    public VideoSurfaceTexture(ITexture iTexture, boolean z10, Handler handler, TextureRenderer textureRenderer) {
        super(iTexture.lock(), z10);
        this.mIsRelease = false;
        this.mIsPaused = false;
        this.mIsMakeCurrent = false;
        this.mEglSurface = EGL14.EGL_NO_SURFACE;
        this.mViewportWidth = 0;
        this.mViewportHeight = 0;
        this.mRenderSurface = null;
        this.mUpdateSurface = null;
        this.mOffScreenSurface = null;
        this.mSerial = 0;
        this.mIsPreRender = false;
        this.mIgnoreSRResCheck = false;
        this.mStartPlayTimeNanos = -1L;
        this.mDropCount = 0;
        this.mSyncMsg = new Message();
        this.mTexType = -1;
        this.mSyncUpdateSurface = 0;
        this.mConfig = new EffectConfig(-1);
        this.mTextureQueue = new LinkedList<>();
        this.mUsingEffect = new HashMap<>();
        this.mSaveFrameBundle = new Bundle();
        this.mState = 3;
        this.mFrameMetaData = new ArrayList();
        this.mFrameReady = false;
        this.mFrameCount = 0;
        this.mAccumulatedPlayingTime = 0.0d;
        this.mLastFrameTime = 0.0d;
        this.mFPS = 0.0f;
        this.mCurrentEffectStartTime = 0.0d;
        this.mCurrentEffectProcessDepth = 0;
        this.mPerEffectFrameCount = new HashMap<>();
        this.mPerEffectAccumulatedTime = new HashMap<>();
        this.mPerEffectAverageTime = new HashMap<>();
        this.mEffectChainStartTime = 0.0d;
        this.mEffectChainAccumulatedTime = 0.0d;
        this.mEffectChainFrameCount = 0;
        this.mEffectChainAverageTime = 0.0f;
        this.mTrackingErrorCode = new HashMap<>();
        this.mTrackingErrorMsg = new HashMap<>();
        this.mSRProcessSuccessRate = Float.MIN_VALUE;
        this.mSRProcessAverageCostTime = Float.MIN_VALUE;
        this.mStaticMetadata = null;
        this.mFreezeDirector = 0;
        this.mEnableExtraSurfaceRenderCallback = 0;
        this.mFrameCallback = null;
        this.mFrameCallbackBundle = null;
        this.mEnableUseEglDummySurface = 0;
        this.mNotKeepLastParams = 0;
        this.mDoMirrorFirst = 0;
        this.mNativeWindow = null;
        this.mEnableNativeWindow = 0;
        this.mSRProcessScaleType = -1;
        this.mLayoutMode = 1;
        this.mLayoutRatio = 0.5f;
        this.mRotationType = 0;
        this.mIsMirrorHorizontal = 0;
        this.mIsMirrorVertical = 0;
        this.mExtraRenderCropParamsBundle = null;
        this.mMainRenderCropParamsBundle = null;
        this.mSyncSetVsync = 0;
        this.mForbidReuseVideoSurfaceTexture = 0;
        this.mHDRType = 0;
        this.mBitDepth = 8;
        this.mRoiSRParamsBundle = null;
        this.mHeadposeCallbackIntegral = 1;
        this.mFrameCallbackInRenderThread = 0;
        this.mVQScoreProcessSuccessRate = -1.0f;
        this.mVQScoreProcessAverageCostTime = -1.0f;
        this.mOpenVQScore = 0;
        this.mVQScoreBundle = null;
        this.mEffectTexture = null;
        this.mFrameProducer = null;
        this.mLastComeFrameType = 0;
        this.mDataSpace = -1;
        this.mSRProcessParamter = null;
        this.mEnableResetCropParamsInRender = 0;
        iTexture.addRef();
        this.mTextureId = iTexture;
        iTexture.unlock();
        internalConstruct(handler);
        this.mExtraSurfaceMap = new HashMap<>();
        this.mTextureRenderer = textureRenderer;
    }

    public void setOption(int i10, Object obj) {
        if (i10 != 118) {
            if (i10 != 136) {
                return;
            }
            this.mStaticMetadata = (List) obj;
        } else if (this.mRenderHandler == null) {
        } else {
            try {
                Object obj2 = new Object();
                ArrayList arrayList = new ArrayList();
                arrayList.add(obj2);
                arrayList.add(obj);
                Message obtainMessage = this.mRenderHandler.obtainMessage(41);
                obtainMessage.obj = arrayList;
                obtainMessage.arg1 = 118;
                synchronized (obj2) {
                    this.mRenderHandler.sendMessageAtFrontOfQueue(obtainMessage);
                    try {
                        obj2.wait(1000L);
                        TextureRenderLog.i(this.mTexType, TAG, "update background texture OK");
                    } catch (InterruptedException unused) {
                        throw new RuntimeException("update background texture timeout");
                    }
                }
            } catch (Exception unused2) {
            }
        }
    }

    public void setOption(int i10, int i11, int i12) {
        HashMap<Integer, Integer> hashMap;
        if (i10 == 19) {
            if (i11 < 0) {
                return;
            }
            this.mUsingEffect.put(Integer.valueOf(i11), Integer.valueOf(i12));
        } else if (i10 == 126 && (hashMap = this.mTrackingErrorCode) != null) {
            hashMap.put(Integer.valueOf(i11), Integer.valueOf(i12));
        }
    }

    public void setOption(int i10, int i11, String str) {
        HashMap<Integer, String> hashMap;
        if (i10 == 127 && (hashMap = this.mTrackingErrorMsg) != null) {
            hashMap.put(Integer.valueOf(i11), str);
        }
    }
}
