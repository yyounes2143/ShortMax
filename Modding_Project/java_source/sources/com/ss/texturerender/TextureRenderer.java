package com.ss.texturerender;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.ss.texturerender.base.EGLRuntime;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.texturerender.effect.EffectTextureManager;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@TargetApi(18)
/* loaded from: classes6.dex */
public abstract class TextureRenderer implements Handler.Callback {
    public static final int ERROR_FATAl = 0;
    public static final int ERROR_WARN = 1;
    private static final long EXPIRE_TIME = 120000;
    protected static final String KEY_SURFACE_OBJ = "surface";
    public static String LOG_TAG = "TextureRenderer";
    protected static final int MSG_AUTO_RELEASE = 11;
    protected static final int MSG_CHECK_FRAME_CALLBACK = 37;
    protected static final int MSG_CLEAR_SURFACE = 13;
    protected static final int MSG_DEINIT = 3;
    protected static final int MSG_ERROR = 6;
    protected static final int MSG_GEN_TEXTURE = 9;
    protected static final int MSG_INIT = 1;
    public static final int MSG_RENDER = 2;
    protected static final int MSG_RESET_CROP_PARAMS = 40;
    protected static final int MSG_RESET_ROTATION_MIRROR_PARAMS = 42;
    protected static final int MSG_SAVE_FRAME = 14;
    protected static final int MSG_SET_ACTIVE_TEXTURE = 10;
    public static final int MSG_SET_EFFECT = 36;
    protected static final int MSG_SET_EXTRA_SURFACE = 25;
    public static final int MSG_SET_FLOAT_OPTION = 35;
    public static final int MSG_SET_INT_OPTION = 34;
    protected static final int MSG_SET_MAIN_SURFACE = 33;
    protected static final int MSG_SET_OBJECT_OPTION = 41;
    protected static final int MSG_SET_OVERLAY_RATIO = 27;
    protected static final int MSG_SET_OVERLAY_SYNC = 31;
    protected static final int MSG_SET_SURFACE = 4;
    public static final int MSG_SR_INIT_CONFIG = 12;
    protected static final int MSG_START_RENDER_CHECK = 38;
    protected static final int MSG_STATE_CHANGED = 7;
    protected static final int MSG_STOP_RENDER_CHECK = 39;
    protected static final int MSG_TEXTURE_RENDERED = 8;
    protected static final int MSG_UPDATE_FRAME_TIME = 32;
    public static final int MSG_UPDATE_VIDEO_STATUS = 26;
    public static final int STATE_ERROR = -1;
    public static final int STATE_EXECUTING = 2;
    public static final int STATE_IDLE = 0;
    public static final int STATE_INITED = 1;
    private static final String VERSION = "3.58.11-tob";
    protected RenderCheckDispatcher mCheckDispatcher;
    protected EGLRuntime mEGLRuntime;
    protected EffectConfig mEffectConfig;
    protected EffectConfig mEffectConfigWant;
    protected EffectTextureManager mEffectTextureManager;
    private OnEglErrorListener mErrorListener;
    private String mErrorReason;
    protected volatile Handler mHandler;
    private final Object mHandlerObject;
    private HandlerThread mHandlerThread;
    protected Handler mNotifyHandler;
    private Object mSetupFence;
    protected volatile int mState;
    private OnStateChangeListener mStateChangeListener;
    protected int mTexType;
    protected TextureFactory mTextureFactory;
    protected List<VideoSurfaceTexture> mTextureList;

    /* loaded from: classes6.dex */
    private class MyEGLErrorCallback implements EGLRuntime.ErrorCallback {
        private MyEGLErrorCallback() {
        }

        @Override // com.ss.texturerender.base.EGLRuntime.ErrorCallback
        public void onError(EGLRuntime eGLRuntime, int i10, String str) {
            TextureRenderer.this.notifyEGLError(i10, str);
        }
    }

    /* loaded from: classes6.dex */
    public interface OnEglErrorListener {
        void onError(int i10, String str);
    }

    /* loaded from: classes6.dex */
    public interface OnStateChangeListener {
        void onStateChanged(int i10);
    }

    /* loaded from: classes6.dex */
    public interface OnTextureFocusLossListener {
        void onFocusLoss();
    }

    public TextureRenderer(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig, boolean z10) {
        this.mHandlerObject = new Object();
        this.mSetupFence = new Object();
        int i11 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i11, str, "version :3.58.11-tob config:" + effectConfig + " type:" + i10 + ", useGL3: " + z10);
        EGLRuntime eGLRuntime = new EGLRuntime(i10, new MyEGLErrorCallback(), eGLContext, eGLConfig);
        this.mEGLRuntime = eGLRuntime;
        eGLRuntime.setUseGL3(z10);
        this.mEGLRuntime.setBitDepth(effectConfig != null ? effectConfig.getEGLBitDepth() : 8);
        this.mState = 0;
        this.mErrorReason = null;
        this.mEffectConfig = new EffectConfig(i10);
        this.mEffectConfigWant = effectConfig;
        this.mTexType = i10;
        this.mTextureFactory = new TextureFactory(this);
        this.mTextureList = new ArrayList();
        init(i10);
        TextureRenderLog.i(this.mTexType, LOG_TAG, "construct done");
    }

    private void checkExpired() {
        if (this.mHandler != null) {
            if ((!this.mEffectConfig.isOpenSR() && !this.mEffectConfig.isOpenSharpen() && !this.mEffectConfig.getEffectOpen(14)) || (this.mTexType & 4) != 0) {
                int i10 = this.mTexType;
                String str = LOG_TAG;
                TextureRenderLog.i(i10, str, "renderer =" + this + ", check expired");
                synchronized (this.mTextureList) {
                    try {
                        if (!this.mHandler.hasMessages(8) && !this.mHandler.hasMessages(9)) {
                            if (this.mTextureList.size() == 0) {
                                TextureRenderLog.i(this.mTexType, LOG_TAG, "renderer is expired");
                                release();
                                return;
                            }
                            for (VideoSurfaceTexture videoSurfaceTexture : this.mTextureList) {
                                if (!videoSurfaceTexture.isRelease() && (videoSurfaceTexture.isAlive() || !videoSurfaceTexture.couldForceRelease())) {
                                    int i11 = this.mTexType;
                                    String str2 = LOG_TAG;
                                    TextureRenderLog.i(i11, str2, "a texture is still working " + videoSurfaceTexture);
                                    this.mHandler.sendEmptyMessageDelayed(11, 120000L);
                                    return;
                                }
                            }
                            TextureRenderLog.i(this.mTexType, LOG_TAG, "non live texture , renderer is expired");
                            release();
                            return;
                        }
                        TextureRenderLog.i(this.mTexType, LOG_TAG, "renderer is excuting");
                        this.mHandler.sendEmptyMessageDelayed(11, 120000L);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    private VideoSurfaceTexture getSurfaceTexture() {
        synchronized (this.mTextureList) {
            try {
                Iterator<VideoSurfaceTexture> it = this.mTextureList.iterator();
                while (true) {
                    VideoSurfaceTexture videoSurfaceTexture = null;
                    while (it.hasNext()) {
                        videoSurfaceTexture = it.next();
                        if (!videoSurfaceTexture.isRelease() && !videoSurfaceTexture.isAlive()) {
                            if (videoSurfaceTexture.canReuse(Looper.myLooper())) {
                                TextureRenderLog.i(this.mTexType, LOG_TAG, "same looper reuse texture");
                                videoSurfaceTexture.pause(false, false);
                                videoSurfaceTexture.getOffScreenSurface();
                                videoSurfaceTexture.setFrameRenderChecker(this.mCheckDispatcher);
                                return videoSurfaceTexture;
                            }
                            TextureRenderLog.i(this.mTexType, LOG_TAG, "can't reuse, delete = " + videoSurfaceTexture);
                            videoSurfaceTexture.release(false);
                            it.remove();
                        } else if (!this.mEffectConfig.isOpenSR() && !this.mEffectConfig.isOpenSharpen() && !this.mEffectConfig.getEffectOpen(14) && !this.mEffectConfig.getEffectOpen(16)) {
                            int i10 = this.mTexType;
                            if ((i10 & 4) == 0) {
                                TextureRenderLog.i(i10, LOG_TAG, "still living");
                                return null;
                            }
                        }
                    }
                    ITexture texture = getTexture();
                    if (texture != null) {
                        videoSurfaceTexture = genNewVideoSurfaceTexture(texture);
                        videoSurfaceTexture.setOption(5, this.mTexType);
                        videoSurfaceTexture.bindEGLEnv(this.mEGLRuntime);
                        texture.decRef();
                        videoSurfaceTexture.getOffScreenSurface();
                        videoSurfaceTexture.setFrameRenderChecker(this.mCheckDispatcher);
                        this.mTextureList.add(videoSurfaceTexture);
                    } else {
                        if (videoSurfaceTexture != null) {
                            if (!videoSurfaceTexture.isRelease()) {
                                if (videoSurfaceTexture.isAlive()) {
                                }
                            }
                        }
                        return null;
                    }
                    return videoSurfaceTexture;
                }
            } finally {
            }
        }
    }

    private void handleChangeActiveTexture(VideoSurfaceTexture videoSurfaceTexture) {
        if (videoSurfaceTexture == null) {
            return;
        }
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "resume texture =" + videoSurfaceTexture);
        if (!videoSurfaceTexture.isCurrentObject()) {
            videoSurfaceTexture.makeCurrent();
            TextureRenderLog.i(this.mTexType, LOG_TAG, "change active drawing id");
        }
    }

    private void handleClearSurface(Message message) {
        TextureRenderLog.i(this.mTexType, LOG_TAG, "handle clear surface");
        Message message2 = (Message) message.obj;
        if (this.mState < 1) {
            int i10 = this.mTexType;
            String str = LOG_TAG;
            TextureRenderLog.i(i10, str, "state is invalid : " + this.mState);
            msgNotify(message2);
            return;
        }
        if (this.mEGLRuntime != null) {
            this.mEGLRuntime.clearSurface((Surface) message.getData().getParcelable("surface"));
        }
        msgNotify(message2);
    }

    private void handleGenTexture(Message message) {
        ITexture createTexture = this.mTextureFactory.createTexture(36197, this.mTexType);
        if (createTexture == null) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "Create Texture failed.");
        }
        message.obj = createTexture;
        synchronized (message) {
            message.notify();
        }
    }

    private void handleSaveFrame(Message message) {
        TextureRenderLog.i(this.mTexType, LOG_TAG, "handle save frame");
        Bundle data = message.getData();
        if (data != null) {
            VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) data.getSerializable(VideoSurfaceTexture.KEY_TEXTURE);
            if (videoSurfaceTexture != null) {
                Message message2 = (Message) message.obj;
                if (this.mState < 1) {
                    int i10 = this.mTexType;
                    String str = LOG_TAG;
                    TextureRenderLog.e(i10, str, "state is invalid : " + this.mState);
                    msgNotify(message2);
                    return;
                }
                try {
                    int viewportWidth = videoSurfaceTexture.getViewportWidth();
                    int viewportHeight = videoSurfaceTexture.getViewportHeight();
                    if (viewportWidth == 0 || viewportHeight == 0) {
                        int i11 = this.mTexType;
                        String str2 = LOG_TAG;
                        TextureRenderLog.e(i11, str2, "texture size is invalid = " + viewportWidth + ", height =" + viewportHeight);
                    }
                    int i12 = this.mTexType;
                    String str3 = LOG_TAG;
                    TextureRenderLog.i(i12, str3, "savexx frame = " + viewportWidth + ", " + viewportHeight);
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(viewportWidth * viewportHeight * 4);
                    allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
                    GLES20.glFinish();
                    GLES20.glReadPixels(0, 0, viewportWidth, viewportHeight, 6408, 5121, allocateDirect);
                    int checkGLError = TexGLUtils.checkGLError(this.mTexType, "handleSaveFrame");
                    if (checkGLError != 0) {
                        videoSurfaceTexture.notifyError(checkGLError, 0, "handleSaveFrame");
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(viewportWidth, viewportHeight, Bitmap.Config.ARGB_8888);
                    allocateDirect.rewind();
                    createBitmap.copyPixelsFromBuffer(allocateDirect);
                    Matrix matrix = new Matrix();
                    matrix.postScale(1.0f, -1.0f);
                    message2.obj = Bitmap.createBitmap(createBitmap, 0, 0, viewportWidth, viewportHeight, matrix, true);
                    createBitmap.recycle();
                } catch (Exception e10) {
                    int i13 = this.mTexType;
                    String str4 = LOG_TAG;
                    TextureRenderLog.e(i13, str4, "save frame failed " + e10.getMessage());
                }
                msgNotify(message2);
                return;
            }
            throw new RuntimeException("update surface but missing texture");
        }
        throw new RuntimeException("update surface but missing bundle?");
    }

    private void handleStartRenderCheck() {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "handleStartRenderCheck " + this);
        if (this.mHandler != null) {
            this.mHandler.sendEmptyMessage(37);
        }
    }

    private void handleStopRenderCheck() {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "handleStopRenderCheck " + this);
        if (this.mHandler != null) {
            this.mHandler.removeMessages(37);
        }
    }

    private boolean isSupportGL3() {
        ActivityManager activityManager;
        ConfigurationInfo deviceConfigurationInfo;
        boolean z10 = false;
        try {
            Context context = TextureRenderManager.getManager().getContext();
            if (context != null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) != null) {
                if (deviceConfigurationInfo.reqGlEsVersion >= 196608) {
                    z10 = true;
                }
                int i10 = this.mTexType;
                String str = LOG_TAG;
                TextureRenderLog.i(i10, str, "gles version: " + deviceConfigurationInfo.reqGlEsVersion + ", isSupportGL3: " + z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    private final void msgNotify(Message message) {
        if (message != null) {
            synchronized (message) {
                message.arg1 = this.mState;
                message.notify();
            }
        }
    }

    protected void changeState(int i10, boolean z10) {
        Handler handler;
        if (this.mState == i10) {
            return;
        }
        if (this.mState == -1 && i10 != 0) {
            return;
        }
        int i11 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i11, str, "state change from " + this.mState + " to " + i10);
        this.mState = i10;
        if (!z10) {
            return;
        }
        synchronized (this.mHandlerObject) {
            try {
                if (this.mStateChangeListener != null && (handler = this.mNotifyHandler) != null) {
                    Message obtainMessage = handler.obtainMessage(7);
                    obtainMessage.arg1 = i10;
                    obtainMessage.sendToTarget();
                }
            } finally {
            }
        }
    }

    public boolean clearSurface(Surface surface, boolean z10) {
        Message obtainMessage = this.mHandler.obtainMessage(13);
        Bundle bundle = new Bundle();
        bundle.putParcelable("surface", surface);
        obtainMessage.setData(bundle);
        if (!z10) {
            Message message = new Message();
            obtainMessage.obj = message;
            try {
                synchronized (message) {
                    TextureRenderLog.i(this.mTexType, LOG_TAG, "clear surface start");
                    this.mHandler.sendMessage(obtainMessage);
                    message.wait(1000L);
                    int i10 = this.mTexType;
                    String str = LOG_TAG;
                    TextureRenderLog.i(i10, str, "clear surface end : ret = " + message.arg1);
                }
                if (message.arg1 < 1) {
                    return false;
                }
            } catch (InterruptedException unused) {
                return false;
            }
        } else {
            this.mHandler.sendMessage(obtainMessage);
        }
        return true;
    }

    protected abstract void deinitEffectComponents();

    protected abstract void deinitGLComponents();

    protected void deleteTextures() {
        synchronized (this.mTextureList) {
            try {
                if (this.mTextureList.size() > 0) {
                    Iterator<VideoSurfaceTexture> it = this.mTextureList.iterator();
                    while (it.hasNext()) {
                        it.next().release(true);
                        it.remove();
                    }
                }
                int i10 = this.mTexType;
                String str = LOG_TAG;
                TextureRenderLog.i(i10, str, "delete textures : " + this.mTextureList.size());
                this.mTextureFactory.release();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected VideoSurfaceTexture genNewVideoSurfaceTexture(ITexture iTexture) {
        return new VideoSurfaceTexture(iTexture, this.mHandler, this);
    }

    public VideoSurface genOffscreenSurface() {
        VideoSurfaceTexture surfaceTexture;
        if (this.mState < 1 || (surfaceTexture = getSurfaceTexture()) == null) {
            return null;
        }
        return surfaceTexture.getOffScreenSurface();
    }

    public EffectConfig getEffectConfig() {
        return this.mEffectConfig;
    }

    public EffectTextureManager getEffectTextureManager() {
        return this.mEffectTextureManager;
    }

    public String getErrorReason() {
        return this.mErrorReason;
    }

    public VideoSurfaceTexture getExtraVideoSurfaceTexture() {
        return null;
    }

    public Object getOption(Bundle bundle) {
        return null;
    }

    public int getState() {
        return this.mState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ITexture getTexture() {
        try {
            Message obtainMessage = this.mHandler.obtainMessage(9);
            Message message = new Message();
            obtainMessage.obj = message;
            try {
                synchronized (message) {
                    this.mHandler.sendMessageAtFrontOfQueue(obtainMessage);
                    message.wait(1000L);
                }
                if (message.obj == null) {
                    if (this.mHandler.hasMessages(9)) {
                        this.mErrorReason = "The handler is busy for other operation timeout";
                    } else {
                        this.mErrorReason = "Try modify the wait timeOut";
                    }
                }
                return (ITexture) message.obj;
            } catch (Exception e10) {
                int i10 = this.mTexType;
                String str = LOG_TAG;
                TextureRenderLog.e(i10, str, "texture render may exit, error:" + e10.toString());
                return null;
            }
        } catch (Exception unused) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "texture render already exit");
            return null;
        }
    }

    protected void handleCheckFrameCallback() {
        if (this.mCheckDispatcher.isEnabled() && this.mCheckDispatcher.isStarted()) {
            this.mHandler.removeMessages(37);
            this.mCheckDispatcher.checkSurfaceTextureCallbackTime();
            this.mHandler.sendEmptyMessageDelayed(37, 500L);
            return;
        }
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "handleCheckFrameCallback invalid state " + this);
    }

    protected void handleDeinit() {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, this + "deinit");
        changeState(0, true);
        deinitEffectComponents();
        deleteTextures();
        deinitGLComponents();
        EGLRuntime eGLRuntime = this.mEGLRuntime;
        if (eGLRuntime != null) {
            eGLRuntime.deinitEGL();
        }
        this.mHandler = null;
        int i11 = this.mTexType;
        String str2 = LOG_TAG;
        TextureRenderLog.i(i11, str2, this + "deinit done");
    }

    protected abstract void handleFrameAvailable(Message message);

    protected abstract void handleGLThreadMessage(Message message);

    protected void handleInit(Object obj) {
        TextureRenderLog.i(this.mTexType, LOG_TAG, "init start");
        EGLRuntime eGLRuntime = this.mEGLRuntime;
        if (eGLRuntime != null) {
            eGLRuntime.initEGL();
        }
        if (this.mState == -1) {
            return;
        }
        initGLComponents();
        if (this.mState == -1) {
            return;
        }
        changeState(1, true);
        synchronized (obj) {
            obj.notify();
            TextureRenderLog.i(this.mTexType, LOG_TAG, "init done");
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 6) {
            if (i10 != 7) {
                if (i10 == 8) {
                    int i11 = message.arg1;
                    VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
                    if (videoSurfaceTexture != null) {
                        videoSurfaceTexture.notifyRenderFrame(i11);
                        return true;
                    }
                    return true;
                }
                return true;
            }
            OnStateChangeListener onStateChangeListener = this.mStateChangeListener;
            if (onStateChangeListener != null) {
                onStateChangeListener.onStateChanged(message.arg1);
                if (message.arg1 == 0) {
                    this.mNotifyHandler.removeCallbacksAndMessages(null);
                    this.mNotifyHandler = null;
                    return true;
                }
                return true;
            }
            return true;
        }
        OnEglErrorListener onEglErrorListener = this.mErrorListener;
        if (onEglErrorListener != null) {
            onEglErrorListener.onError(message.arg1, message.obj.toString());
            return true;
        }
        return true;
    }

    protected abstract void handleSetSurface(Message message);

    public void handleTextureRenderMsg(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 13) {
                            if (i10 != 14) {
                                switch (i10) {
                                    case 9:
                                        handleGenTexture((Message) message.obj);
                                        return;
                                    case 10:
                                        handleChangeActiveTexture((VideoSurfaceTexture) message.obj);
                                        return;
                                    case 11:
                                        checkExpired();
                                        return;
                                    default:
                                        switch (i10) {
                                            case 37:
                                                handleCheckFrameCallback();
                                                return;
                                            case 38:
                                                handleStartRenderCheck();
                                                return;
                                            case 39:
                                                handleStopRenderCheck();
                                                return;
                                            default:
                                                handleGLThreadMessage(message);
                                                return;
                                        }
                                }
                            }
                            handleSaveFrame(message);
                            return;
                        }
                        handleClearSurface(message);
                        return;
                    }
                    handleSetSurface(message);
                    return;
                }
                handleDeinit();
                return;
            }
            handleFrameAvailable(message);
            return;
        }
        handleInit(message.obj);
    }

    public void init(int i10) {
        HandlerThread handlerThread = new HandlerThread("TRThread_" + i10);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.ss.texturerender.TextureRenderer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                TextureRenderer.this.handleTextureRenderMsg(message);
            }
        };
        this.mCheckDispatcher = new RenderCheckDispatcher(this.mHandler, this.mTexType);
        Message obtainMessage = this.mHandler.obtainMessage(1);
        Object obj = this.mSetupFence;
        obtainMessage.obj = obj;
        synchronized (obj) {
            obtainMessage.sendToTarget();
            try {
                this.mSetupFence.wait(1000L);
            } catch (InterruptedException unused) {
                throw new RuntimeException("EGL initial timeout");
            }
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(11), 120000L);
    }

    protected abstract void initGLComponents();

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyEGLError(int i10, String str) {
        synchronized (this.mHandlerObject) {
            try {
                this.mErrorReason = str + ", reason = " + GLUtils.getEGLErrorString(EGL14.eglGetError());
                changeState(-1, false);
                if (this.mErrorListener != null) {
                    Message obtainMessage = this.mNotifyHandler.obtainMessage(6);
                    obtainMessage.arg1 = i10;
                    obtainMessage.obj = "EGL fail = " + str + ", reason = " + GLUtils.getEGLErrorString(EGL14.eglGetError());
                    obtainMessage.sendToTarget();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected abstract void onInternalStateChanged(int i10);

    public void release() {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, this + "call release");
        synchronized (this) {
            if (this.mState != 0 && this.mHandler != null) {
                int i11 = this.mTexType;
                String str2 = LOG_TAG;
                TextureRenderLog.i(i11, str2, this + "send deinit");
                this.mHandler.sendEmptyMessage(3);
                try {
                    this.mHandlerThread.quitSafely();
                } catch (Exception unused) {
                }
                int i12 = this.mTexType;
                String str3 = LOG_TAG;
                TextureRenderLog.i(i12, str3, this + "call release end");
                return;
            }
            int i13 = this.mTexType;
            String str4 = LOG_TAG;
            TextureRenderLog.i(i13, str4, this + "release return");
        }
    }

    public void sendMessage(int i10, Bundle bundle) {
        if (this.mHandler != null) {
            try {
                Message obtainMessage = this.mHandler.obtainMessage(i10);
                obtainMessage.setData(bundle);
                this.mHandler.sendMessage(obtainMessage);
            } catch (Exception unused) {
            }
        }
    }

    public void setOnErrorListener(OnEglErrorListener onEglErrorListener) {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "setOnErrorListener =  " + onEglErrorListener);
        this.mErrorListener = onEglErrorListener;
    }

    public void setOnStateChangedListener(OnStateChangeListener onStateChangeListener) {
        int i10 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i10, str, "setOnStateChangedListener =  " + onStateChangeListener);
        this.mStateChangeListener = onStateChangeListener;
    }

    public void setVQSCoreInitResult(boolean z10) {
        EffectConfig effectConfig;
        if (z10 && (effectConfig = this.mEffectConfig) != null) {
            effectConfig.setEffectOpen(16, 1);
        }
    }

    public int texType() {
        return this.mTexType;
    }

    protected abstract void updateDisplaySize(int i10, int i11);

    public TextureRenderer(EffectConfig effectConfig, int i10) {
        this(effectConfig, i10, null, null, false);
        int i11 = this.mTexType;
        String str = LOG_TAG;
        TextureRenderLog.i(i11, str, "version :3.58.11-tob config:" + effectConfig + " type:" + i10);
    }
}
