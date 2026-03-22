package com.ss.texturerender.overlay;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Surface;
import com.ss.texturerender.ITexture;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderManager;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.base.EGLRuntime;
import com.ss.texturerender.effect.AbsEffect;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.EffectTextureManager;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.GLDefaultFilter;
import com.ss.texturerender.effect.GLOesTo2DFilter;
import com.ss.texturerender.overlay.FrameTimeQueue;
import com.ss.texturerender.vsync.VsyncHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
@TargetApi(17)
/* loaded from: classes6.dex */
public class OverlayVideoTextureRenderer extends TextureRenderer {
    private static int ALL_VIDEO_STREAM_NUM = 2;
    private static int DROP_NUM_THRESHOLD = 3;
    private static int DROP_THRESHOLD_MS = 500;
    private static final String LOG_TAG = "OverlayVideoTextureRenderer";
    private int mAvailCount;
    private NormalClock mClock;
    private Surface mCurrentSurface;
    private GLDefaultFilter mDefaultDrawer;
    private EGLSurface mEglSurface;
    private FrameBuffer mFBO;
    private int mFBOTexH;
    private int mFBOTexW;
    private boolean mIsMakeCurrent;
    private boolean mIsOverlayRatioChanged;
    private boolean mIsVsyncWorking;
    private FrameTimeQueue mMainFrameTimeQueue;
    private VideoSurfaceTexture mMainSurfaceTexture;
    private ITexture mMainTex;
    private float[] mMainTexVerticesData;
    private int mMainVideoFastDropNum;
    private boolean mNeedSync;
    private GLOesTo2DFilter mOESDrawer;
    private float mOverlayRatio;
    private Vector<SurfaceTextureStatus> mReadySurfaceTextureVector;
    private FrameTimeQueue mSubFrameTimeQueue;
    private ITexture mSubTex;
    private float[] mSubTexVerticesData;
    private int mSubVideoFastDropNum;
    private int mTexType;
    private HashMap<VideoSurfaceTexture, Message> mTextureNotifyMap;
    private long mTid;
    private long mUpdateSurfaceTime;
    private VsyncHelper.VsyncCallback mVsyncCallback;
    private VsyncHelper mVsyncHelper;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class SurfaceTextureStatus {
        public static int NEED_DRAW = 1;
        public static int NEED_DROP = 3;
        public static int NEED_NOT_DRAW = 2;
        public FrameTimeQueue.FrameTime frameTime;
        public int status = NEED_DRAW;
        public VideoSurfaceTexture surfaceTexture;

        public SurfaceTextureStatus(VideoSurfaceTexture videoSurfaceTexture, FrameTimeQueue.FrameTime frameTime) {
            this.surfaceTexture = videoSurfaceTexture;
            this.frameTime = frameTime;
        }
    }

    public OverlayVideoTextureRenderer(EffectConfig effectConfig, int i10, EGLContext eGLContext, EGLConfig eGLConfig) {
        super(effectConfig, i10, eGLContext, eGLConfig, false);
        this.mCurrentSurface = null;
        this.mEglSurface = EGL14.EGL_NO_SURFACE;
        this.mIsMakeCurrent = false;
        this.mAvailCount = 0;
        this.mIsVsyncWorking = false;
        this.mFBOTexH = 0;
        this.mFBOTexW = 0;
        this.mOverlayRatio = 0.5f;
        this.mIsOverlayRatioChanged = false;
        this.mNeedSync = false;
        this.mMainVideoFastDropNum = 0;
        this.mSubVideoFastDropNum = 0;
        this.mTextureNotifyMap = new HashMap<>();
        this.mTexType = -1;
        this.mReadySurfaceTextureVector = new Vector<>(2);
        this.mVsyncHelper = new VsyncHelper(TextureRenderManager.getManager().getContext(), this.mTexType);
        this.mMainFrameTimeQueue = new FrameTimeQueue();
        this.mSubFrameTimeQueue = new FrameTimeQueue();
        this.mTexType = i10;
        this.mClock = new NormalClock(i10);
        TextureRenderLog.i(this.mTexType, LOG_TAG, LOG_TAG);
    }

    private void _avSyncByVsync() {
        int i10;
        long masterTimeStamp = getMasterTimeStamp();
        Iterator<SurfaceTextureStatus> it = this.mReadySurfaceTextureVector.iterator();
        while (it.hasNext()) {
            SurfaceTextureStatus next = it.next();
            long j10 = next.frameTime.pts - masterTimeStamp;
            if (j10 > DROP_THRESHOLD_MS) {
                if (isMainSurface(next.surfaceTexture)) {
                    i10 = this.mMainVideoFastDropNum + 1;
                    this.mMainVideoFastDropNum = i10;
                } else {
                    i10 = this.mSubVideoFastDropNum + 1;
                    this.mSubVideoFastDropNum = i10;
                }
                if (i10 <= DROP_NUM_THRESHOLD) {
                    next.status = SurfaceTextureStatus.NEED_DROP;
                } else {
                    next.status = SurfaceTextureStatus.NEED_NOT_DRAW;
                }
            } else {
                long j11 = 1000000 * j10;
                if (j11 < this.mVsyncHelper.getVsyncDurationNs() * (-2)) {
                    next.status = SurfaceTextureStatus.NEED_DROP;
                } else if (j11 > this.mVsyncHelper.getVsyncDurationNs()) {
                    next.status = SurfaceTextureStatus.NEED_NOT_DRAW;
                } else {
                    next.status = SurfaceTextureStatus.NEED_DRAW;
                }
            }
            int i11 = this.mTexType;
            TextureRenderLog.d(i11, LOG_TAG, "_avSyncByVsync pts:" + next.frameTime.pts + " master:" + masterTimeStamp + " diff:" + j10 + " isMainSurface:" + isMainSurface(next.surfaceTexture) + " status:" + next.status);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v12 */
    private boolean _draw() {
        boolean z10;
        boolean z11;
        ITexture iTexture;
        _initFBOComponents();
        Iterator<SurfaceTextureStatus> it = this.mReadySurfaceTextureVector.iterator();
        ?? r22 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            SurfaceTextureStatus next = it.next();
            int i11 = next.status;
            if (i11 == SurfaceTextureStatus.NEED_DRAW) {
                i10++;
            } else if (i11 == SurfaceTextureStatus.NEED_DROP) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, "_draw drop isMainSurface:" + isMainSurface(next.surfaceTexture));
                _updateTexImage(next.surfaceTexture);
                notify(next.surfaceTexture);
                it.remove();
            }
        }
        boolean z12 = this.mNeedSync;
        if ((z12 && i10 >= ALL_VIDEO_STREAM_NUM) || (!z12 && i10 > 0)) {
            z10 = true;
        } else {
            z10 = false;
        }
        int consumerWidth = getConsumerWidth();
        int consumerHeight = getConsumerHeight();
        Iterator<SurfaceTextureStatus> it2 = this.mReadySurfaceTextureVector.iterator();
        while (it2.hasNext()) {
            SurfaceTextureStatus next2 = it2.next();
            if (next2.status == SurfaceTextureStatus.NEED_DRAW) {
                if (isMainSurface(next2.surfaceTexture)) {
                    this.mMainVideoFastDropNum = r22;
                } else {
                    this.mSubVideoFastDropNum = r22;
                }
                _updateTexImage(next2.surfaceTexture);
                if (z10 && !next2.surfaceTexture.needDrop()) {
                    this.mNeedSync = r22;
                    ITexture texId = next2.surfaceTexture.getTexId();
                    int lock = texId.lock();
                    GLOesTo2DFilter gLOesTo2DFilter = this.mOESDrawer;
                    if (isMainSurface(next2.surfaceTexture)) {
                        iTexture = this.mMainTex;
                    } else {
                        iTexture = this.mSubTex;
                    }
                    this.mFBO.bindTexture2D(iTexture.lock());
                    gLOesTo2DFilter.setSurfaceTexture(next2.surfaceTexture);
                    gLOesTo2DFilter.setOption(13000, GLDefaultFilter.mTextureVerticesData);
                    gLOesTo2DFilter.setOption(10006, consumerWidth);
                    gLOesTo2DFilter.setOption(10007, consumerHeight);
                    gLOesTo2DFilter.setOption(AbsEffect.OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW, 1);
                    gLOesTo2DFilter.process(new EffectTexture((EffectTextureManager) null, lock, -1, -1, 36197), null);
                    iTexture.unlock();
                    texId.unlock();
                    notify(next2.surfaceTexture);
                    VideoSurfaceTexture videoSurfaceTexture = next2.surfaceTexture;
                    videoSurfaceTexture.notifyRenderFrame(videoSurfaceTexture.getSerial());
                    it2.remove();
                } else {
                    notify(next2.surfaceTexture);
                    it2.remove();
                }
            }
            r22 = 0;
        }
        if (!z10 && !this.mIsOverlayRatioChanged) {
            z11 = false;
        } else {
            z11 = true;
        }
        TextureRenderLog.d(this.mTexType, LOG_TAG, "_draw needDrawCount:" + i10 + " needDrawToFBO:" + z10 + " needDrawToScreen" + z11 + " mNeedSync:" + this.mNeedSync);
        if (z11) {
            GLES20.glBindFramebuffer(36160, 0);
            float[] fArr = this.mMainTexVerticesData;
            float f10 = this.mOverlayRatio;
            fArr[2] = f10;
            fArr[6] = f10;
            this.mDefaultDrawer.setOption(AbsEffect.OPTION_EFFECT_INT_VIEWPORT_X, 0);
            float f11 = consumerWidth;
            this.mDefaultDrawer.setOption(10006, (int) (this.mOverlayRatio * f11));
            this.mDefaultDrawer.setOption(10007, consumerHeight);
            this.mDefaultDrawer.setOption(13000, this.mMainTexVerticesData);
            this.mDefaultDrawer.setOption(AbsEffect.OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW, 1);
            this.mDefaultDrawer.process(new EffectTexture((EffectTextureManager) null, this.mMainTex.lock(), -1, -1, 3553), null);
            this.mMainTex.unlock();
            float[] fArr2 = this.mSubTexVerticesData;
            float f12 = this.mOverlayRatio;
            fArr2[0] = f12;
            fArr2[4] = f12;
            this.mDefaultDrawer.setOption(AbsEffect.OPTION_EFFECT_INT_VIEWPORT_X, (int) (f12 * f11));
            this.mDefaultDrawer.setOption(10006, (int) (f11 * (1.0f - this.mOverlayRatio)));
            this.mDefaultDrawer.setOption(10007, getConsumerHeight());
            this.mDefaultDrawer.setOption(13000, this.mSubTexVerticesData);
            this.mDefaultDrawer.setOption(AbsEffect.OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW, 0);
            this.mDefaultDrawer.process(new EffectTexture((EffectTextureManager) null, this.mSubTex.lock(), -1, -1, 3553), null);
            this.mSubTex.unlock();
            this.mIsOverlayRatioChanged = false;
        }
        return z11;
    }

    private void _dropAllFrames() {
        Iterator<SurfaceTextureStatus> it = this.mReadySurfaceTextureVector.iterator();
        while (it.hasNext()) {
            SurfaceTextureStatus next = it.next();
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "_dropAllFrames isMain:" + isMainSurface(next.surfaceTexture));
            _updateTexImage(next.surfaceTexture);
            notify(next.surfaceTexture);
            it.remove();
        }
    }

    private void _initFBOComponents() {
        VideoSurfaceTexture videoSurfaceTexture;
        VideoSurfaceTexture videoSurfaceTexture2;
        if (this.mFBO == null) {
            this.mFBO = new FrameBuffer();
        }
        if (this.mSubTex == null) {
            this.mSubTex = this.mTextureFactory.createTexture(3553, this.mTexType);
        }
        if (this.mMainTex == null) {
            this.mMainTex = this.mTextureFactory.createTexture(3553, this.mTexType);
        }
        int consumerWidth = getConsumerWidth();
        int consumerHeight = getConsumerHeight();
        if (consumerWidth > 0 && consumerHeight > 0) {
            if (this.mFBOTexW != consumerWidth || this.mFBOTexH != consumerHeight) {
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, LOG_TAG, "_initFBOComponents surface H:" + consumerHeight + " W:" + consumerWidth + " mFBOTexH:" + this.mFBOTexH + " mFBOTexW:" + this.mFBOTexW);
                GLES20.glBindTexture(3553, this.mSubTex.lock());
                GLES20.glTexImage2D(3553, 0, 6408, consumerWidth, consumerHeight, 0, 6408, 5121, null);
                this.mSubTex.unlock();
                int checkGLError = TexGLUtils.checkGLError(this.mTexType, "createTexture sub");
                if (checkGLError != 0 && (videoSurfaceTexture2 = this.mMainSurfaceTexture) != null) {
                    videoSurfaceTexture2.notifyError(checkGLError, 0, "createTexture sub");
                }
                ITexture iTexture = this.mMainTex;
                if (iTexture != null) {
                    GLES20.glBindTexture(3553, iTexture.lock());
                    GLES20.glTexImage2D(3553, 0, 6408, consumerWidth, consumerHeight, 0, 6408, 5121, null);
                    this.mMainTex.unlock();
                }
                int checkGLError2 = TexGLUtils.checkGLError(this.mTexType, "createTexture main");
                if (checkGLError2 != 0 && (videoSurfaceTexture = this.mMainSurfaceTexture) != null) {
                    videoSurfaceTexture.notifyError(checkGLError2, 0, "createTexture main");
                }
                this.mFBOTexH = consumerHeight;
                this.mFBOTexW = consumerWidth;
            }
        }
    }

    private boolean _makeCurrent() {
        if (this.mEglSurface == EGL14.EGL_NO_SURFACE) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "no surface for make current");
            return false;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, this + " make current again");
        GLES20.glFinish();
        EGLRuntime eGLRuntime = this.mEGLRuntime;
        EGLDisplay eGLDisplay = eGLRuntime.eglDisplay;
        EGLSurface eGLSurface = this.mEglSurface;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLRuntime.eglContext)) {
            int i11 = this.mTexType;
            TextureRenderLog.e(i11, LOG_TAG, "make current failed = " + this.mEglSurface);
            return false;
        }
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, LOG_TAG, this + "make current done");
        this.mIsMakeCurrent = true;
        return true;
    }

    private int _render() {
        EGLSurface eGLSurface = this.mEglSurface;
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "no surface to render");
            return -1;
        } else if (!EGL14.eglSwapBuffers(this.mEGLRuntime.eglDisplay, eGLSurface)) {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, LOG_TAG, this + "swap buffer failed");
            return -1;
        } else {
            return 0;
        }
    }

    private void _updateTexImage(VideoSurfaceTexture videoSurfaceTexture) {
        try {
            try {
                videoSurfaceTexture.lock();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (videoSurfaceTexture.isRelease()) {
                return;
            }
            videoSurfaceTexture.updateTexImage();
        } finally {
            videoSurfaceTexture.unlock();
        }
    }

    private void handleVsyncDraw() {
        _avSyncByVsync();
        if (_draw()) {
            _render();
        }
        int i10 = this.mTexType;
        TextureRenderLog.d(i10, LOG_TAG, "handleVsyncDraw end, ReadyVector size:" + this.mReadySurfaceTextureVector.size());
        if (this.mReadySurfaceTextureVector.isEmpty()) {
            this.mVsyncHelper.removeObserver(this.mVsyncCallback);
            this.mIsVsyncWorking = false;
        }
    }

    private boolean isMainSurface(VideoSurfaceTexture videoSurfaceTexture) {
        if (videoSurfaceTexture == this.mMainSurfaceTexture) {
            return true;
        }
        return false;
    }

    private boolean needNotify(VideoSurfaceTexture videoSurfaceTexture) {
        Iterator<SurfaceTextureStatus> it = this.mReadySurfaceTextureVector.iterator();
        while (it.hasNext()) {
            if (it.next().surfaceTexture == videoSurfaceTexture) {
                return false;
            }
        }
        if (isMainSurface(videoSurfaceTexture)) {
            if (this.mMainFrameTimeQueue.getSize() > 0) {
                return false;
            }
            return true;
        } else if (this.mSubFrameTimeQueue.getSize() > 0) {
            return false;
        } else {
            return true;
        }
    }

    private void notify(VideoSurfaceTexture videoSurfaceTexture) {
        Message message = this.mTextureNotifyMap.get(videoSurfaceTexture);
        if (message != null) {
            synchronized (message) {
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, LOG_TAG, "notify st:" + videoSurfaceTexture + " MainQueue:" + this.mMainFrameTimeQueue.toString() + " SubQueue:" + this.mSubFrameTimeQueue.toString());
                message.arg1 = Integer.MIN_VALUE;
                message.notify();
            }
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void deinitGLComponents() {
        GLOesTo2DFilter gLOesTo2DFilter = this.mOESDrawer;
        if (gLOesTo2DFilter != null) {
            gLOesTo2DFilter.release();
            this.mOESDrawer = null;
        }
        GLDefaultFilter gLDefaultFilter = this.mDefaultDrawer;
        if (gLDefaultFilter != null) {
            gLDefaultFilter.release();
            this.mDefaultDrawer = null;
        }
        FrameBuffer frameBuffer = this.mFBO;
        if (frameBuffer != null) {
            frameBuffer.release();
            this.mFBO = null;
        }
        ITexture iTexture = this.mMainTex;
        if (iTexture != null) {
            iTexture.decRef();
            this.mMainTex = null;
        }
        ITexture iTexture2 = this.mSubTex;
        if (iTexture2 != null) {
            iTexture2.decRef();
            this.mSubTex = null;
        }
    }

    public int getConsumerHeight() {
        EGLSurface eGLSurface = this.mEglSurface;
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEGLRuntime.eglDisplay, eGLSurface, 12374, iArr, 0);
        return iArr[0];
    }

    public int getConsumerWidth() {
        EGLSurface eGLSurface = this.mEglSurface;
        if (eGLSurface == EGL14.EGL_NO_SURFACE) {
            return -1;
        }
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.mEGLRuntime.eglDisplay, eGLSurface, 12375, iArr, 0);
        return iArr[0];
    }

    public long getMasterTimeStamp() {
        return this.mClock.getClock();
    }

    public long getSurfaceUpdateTime() {
        return this.mUpdateSurfaceTime;
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void handleFrameAvailable(Message message) {
        FrameTimeQueue.FrameTime poll;
        long j10;
        VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) message.obj;
        if (isMainSurface(videoSurfaceTexture)) {
            poll = this.mMainFrameTimeQueue.poll(videoSurfaceTexture.getTimestamp());
        } else {
            poll = this.mSubFrameTimeQueue.poll(videoSurfaceTexture.getTimestamp());
        }
        long j11 = -1;
        if (poll != null) {
            j10 = poll.pts - getMasterTimeStamp();
        } else {
            j10 = -1;
        }
        int i10 = this.mTexType;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleFrameAvailable,st = ");
        sb2.append(videoSurfaceTexture);
        sb2.append(" isMainSurface:");
        sb2.append(isMainSurface(videoSurfaceTexture));
        sb2.append(" pts:");
        if (poll != null) {
            j11 = poll.pts;
        }
        sb2.append(j11);
        sb2.append(" master:");
        sb2.append(getMasterTimeStamp());
        sb2.append(" diff:");
        sb2.append(j10);
        TextureRenderLog.d(i10, LOG_TAG, sb2.toString());
        if (j10 < 0) {
            _updateTexImage(videoSurfaceTexture);
            notify(videoSurfaceTexture);
            return;
        }
        if (!this.mIsVsyncWorking) {
            this.mVsyncHelper.addObserver(this.mVsyncCallback);
            this.mIsVsyncWorking = true;
        }
        this.mReadySurfaceTextureVector.add(new SurfaceTextureStatus(videoSurfaceTexture, poll));
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void handleGLThreadMessage(Message message) {
        boolean z10 = true;
        switch (message.what) {
            case 26:
                if (!isMainSurface((VideoSurfaceTexture) message.obj)) {
                    return;
                }
                int i10 = message.arg1;
                if (i10 != 1) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            this.mClock.pause();
                            return;
                        }
                        return;
                    }
                    TextureRenderLog.i(this.mTexType, LOG_TAG, "TEXTURE_STATE_STOP");
                    this.mMainFrameTimeQueue.clear();
                    this.mSubFrameTimeQueue.clear();
                    this.mClock.stop();
                    return;
                }
                this.mClock.start();
                return;
            case 27:
                handleSetOverlayRatio(message);
                return;
            case 28:
                handleVsyncComing(message);
                return;
            case 29:
            case 30:
            default:
                return;
            case 31:
                if (message.arg1 != 1) {
                    z10 = false;
                }
                this.mNeedSync = z10;
                int i11 = this.mTexType;
                TextureRenderLog.i(i11, LOG_TAG, "MSG_SET_OVERLAY_SYNC mNeedSync:" + this.mNeedSync);
                return;
            case 32:
                Bundle data = message.getData();
                VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) data.getSerializable(VideoSurfaceTexture.KEY_TEXTURE);
                FrameTimeQueue.FrameTime frameTime = (FrameTimeQueue.FrameTime) data.getSerializable(TextureRenderKeys.OVERLAY_UPDATE_FRAME_TIME);
                if (isMainSurface(videoSurfaceTexture)) {
                    String string = data.getString(TextureRenderKeys.OVERLAY_MASTER_CLOCK);
                    if (!TextUtils.isEmpty(string)) {
                        updateMaster(Long.parseLong(string.trim()) + (SystemClock.elapsedRealtime() - data.getLong(TextureRenderKeys.OVERLAY_MASTER_CLOCK_DIFF)));
                    }
                }
                boolean needNotify = needNotify(videoSurfaceTexture);
                if (needNotify) {
                    Message message2 = (Message) message.obj;
                    synchronized (message2) {
                        message2.arg1 = (int) frameTime.pts;
                        message.obj.notify();
                    }
                }
                this.mTextureNotifyMap.put(videoSurfaceTexture, (Message) message.obj);
                if (isMainSurface(videoSurfaceTexture)) {
                    this.mMainFrameTimeQueue.add(frameTime);
                } else {
                    this.mSubFrameTimeQueue.add(frameTime);
                }
                int i12 = this.mTexType;
                TextureRenderLog.i(i12, LOG_TAG, "MSG_UPDATE_FRAME_TIME needNotify:" + needNotify + " MainQueue:" + this.mMainFrameTimeQueue.getSize() + " SubQueue:" + this.mSubFrameTimeQueue.getSize());
                return;
            case 33:
                this.mMainSurfaceTexture = (VideoSurfaceTexture) message.obj;
                int i13 = this.mTexType;
                TextureRenderLog.i(i13, LOG_TAG, "MSG_SET_MAIN_SURFACE st:" + this.mMainSurfaceTexture);
                return;
        }
    }

    public void handleSetOverlayRatio(Message message) {
        float f10 = message.getData().getFloat(TextureRenderKeys.OVERLAY_RATIO);
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "SetOverlayRatio ratio:" + f10);
        if (f10 != this.mOverlayRatio) {
            this.mOverlayRatio = f10;
            this.mIsOverlayRatioChanged = true;
            if (!this.mIsVsyncWorking) {
                this.mVsyncHelper.addObserver(this.mVsyncCallback);
                this.mIsVsyncWorking = true;
            }
        }
    }

    @Override // com.ss.texturerender.TextureRenderer
    @TargetApi(17)
    protected void handleSetSurface(Message message) {
        Bundle data = message.getData();
        if (data != null) {
            VideoSurfaceTexture videoSurfaceTexture = (VideoSurfaceTexture) data.getSerializable(VideoSurfaceTexture.KEY_TEXTURE);
            if (videoSurfaceTexture != null) {
                Surface updateSurface = videoSurfaceTexture.getUpdateSurface();
                Surface surface = this.mCurrentSurface;
                if (surface != null && surface == updateSurface && updateSurface != null && updateSurface.toString().contains("SurfaceTexture")) {
                    TextureRenderLog.e(this.mTexType, LOG_TAG, "set same surface, return");
                    return;
                }
                if (updateSurface == null) {
                    _dropAllFrames();
                    if (this.mCurrentSurface == null) {
                        TextureRenderLog.e(this.mTexType, LOG_TAG, "reset null surface, return");
                        return;
                    }
                }
                if (this.mEglSurface != EGL14.EGL_NO_SURFACE) {
                    int i10 = this.mTexType;
                    TextureRenderLog.i(i10, LOG_TAG, "destory previous surface = " + this.mEglSurface);
                    if (updateSurface == null) {
                        TextureRenderLog.i(this.mTexType, LOG_TAG, "make current to dummy surface due to non render surface");
                        EGLRuntime eGLRuntime = this.mEGLRuntime;
                        EGLDisplay eGLDisplay = eGLRuntime.eglDisplay;
                        EGLSurface eGLSurface = eGLRuntime.eglDummySurface;
                        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLRuntime.eglContext);
                    }
                    boolean eglDestroySurface = EGL14.eglDestroySurface(this.mEGLRuntime.eglDisplay, this.mEglSurface);
                    this.mEglSurface = EGL14.EGL_NO_SURFACE;
                    this.mIsMakeCurrent = false;
                    int i11 = this.mTexType;
                    TextureRenderLog.i(i11, LOG_TAG, "destory previous surface done = " + this.mEglSurface + " ret:" + eglDestroySurface);
                }
                if (updateSurface != null && updateSurface.isValid()) {
                    int[] iArr = {12344};
                    try {
                        int i12 = this.mTexType;
                        TextureRenderLog.i(i12, LOG_TAG, this + ",create window surface from " + updateSurface);
                        EGLRuntime eGLRuntime2 = this.mEGLRuntime;
                        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLRuntime2.eglDisplay, eGLRuntime2.eglConfig, updateSurface, iArr, 0);
                        this.mEglSurface = eglCreateWindowSurface;
                        if (eglCreateWindowSurface == EGL14.EGL_NO_SURFACE) {
                            int i13 = this.mTexType;
                            TextureRenderLog.i(i13, LOG_TAG, "create window surface failed" + GLUtils.getEGLErrorString(EGL14.eglGetError()));
                            return;
                        }
                        _makeCurrent();
                        float[] fArr = GLDefaultFilter.mTextureVerticesData;
                        int length = fArr.length;
                        float[] fArr2 = new float[length];
                        this.mMainTexVerticesData = fArr2;
                        System.arraycopy(fArr, 0, fArr2, 0, length);
                        float[] fArr3 = new float[length];
                        this.mSubTexVerticesData = fArr3;
                        System.arraycopy(GLDefaultFilter.mTextureVerticesData, 0, fArr3, 0, length);
                    } catch (Exception unused) {
                        TextureRenderLog.e(this.mTexType, LOG_TAG, "create current exception failed");
                        return;
                    }
                }
                this.mUpdateSurfaceTime = System.nanoTime();
                this.mCurrentSurface = updateSurface;
                Object obj = message.obj;
                if (obj != null) {
                    synchronized (obj) {
                        obj.notify();
                    }
                }
                int i14 = this.mTexType;
                TextureRenderLog.i(i14, LOG_TAG, "set surface done, mEglSurface=" + this.mEglSurface + " render:" + this);
                return;
            }
            throw new RuntimeException("OverlayVideoTextureRenderer update surface but missing texture");
        }
        throw new RuntimeException("OverlayVideoTextureRenderer update surface but missing bundle?");
    }

    public void handleVsyncComing(Message message) {
        handleVsyncDraw();
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void initGLComponents() {
        if (this.mState == -1) {
            return;
        }
        try {
            GLOesTo2DFilter gLOesTo2DFilter = this.mOESDrawer;
            if (gLOesTo2DFilter != null) {
                gLOesTo2DFilter.release();
            }
            GLOesTo2DFilter gLOesTo2DFilter2 = new GLOesTo2DFilter(this.mTexType);
            this.mOESDrawer = gLOesTo2DFilter2;
            gLOesTo2DFilter2.init(null);
            GLDefaultFilter gLDefaultFilter = this.mDefaultDrawer;
            if (gLDefaultFilter != null) {
                gLDefaultFilter.release();
            }
            GLDefaultFilter gLDefaultFilter2 = new GLDefaultFilter(this.mTexType);
            this.mDefaultDrawer = gLDefaultFilter2;
            gLDefaultFilter2.init(null);
            this.mVsyncCallback = new VsyncHelper.VsyncCallback(this.mHandler);
        } catch (Exception e10) {
            notifyEGLError(0, e10.toString());
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "initGLComponents done render:" + this);
    }

    @Override // com.ss.texturerender.TextureRenderer
    public synchronized void release() {
        super.release();
        _dropAllFrames();
        this.mAvailCount = 0;
        this.mClock.stop();
    }

    public void updateMaster(long j10) {
        this.mClock.updateClock(j10);
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void deinitEffectComponents() {
    }

    public OverlayVideoTextureRenderer(EffectConfig effectConfig, int i10) {
        this(effectConfig, i10, null, null);
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void onInternalStateChanged(int i10) {
    }

    @Override // com.ss.texturerender.TextureRenderer
    protected void updateDisplaySize(int i10, int i11) {
    }
}
