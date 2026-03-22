package com.ss.texturerender;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.ImageReader;
import android.opengl.EGLContext;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.effect.PicoTextureObj;
import com.ss.texturerender.effect.vr.director.picodirector.PicoQuaternion;
import com.ss.texturerender.math.Quaternion;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes6.dex */
public class VideoSurface extends Surface implements VideoSurfaceTexture.TextureDrawCallback, VideoSurfaceTexture.TextureErrorCallback, Handler.Callback {
    public static final int ERROR_SR_EXE_FAIL = 2;
    public static final int ERROR_SR_INIT_FAIL = 1;
    private static final int MSG_EFFECT_ERROR = 4097;
    private static final int MSG_HEADPOSE_UPDATE = 4098;
    private static final int MSG_TEXTURE_UPDATE = 4096;
    public static final int OPERATE_ADD = 1;
    public static final int OPERATE_RELEASE = 2;
    public static final int OPERATE_RELEASE_ALL = 3;
    public static final int SUPER_RES_CLOSE = 0;
    public static final int SUPER_RES_NN_ALG = 2;
    public static final int SUPER_RES_OPEN = 1;
    public static final int SUPER_RES_STAT_1_5 = 4;
    public static final int SUPER_RES_STAT_ALG_R = 0;
    public static final int SUPER_RES_STAT_ALG_V = 1;
    public static final int SUPER_RES_STAT_BMF_BACKEND_AUTO = 0;
    public static final int SUPER_RES_STAT_BMF_BACKEND_CPU = 1;
    public static final int SUPER_RES_STAT_BMF_BACKEND_DSP = 4;
    public static final int SUPER_RES_STAT_BMF_BACKEND_OPENCL = 2;
    public static final int SUPER_RES_STAT_BMF_BACKEND_OPENGL = 3;
    public static final int SUPER_RES_STAT_BMF_SRV1 = 8;
    public static final int SUPER_RES_STAT_BMF_SRV1_COMPOUND_OPT = 13;
    public static final int SUPER_RES_STAT_BMF_SRV1_COMPOUND_YUV = 12;
    public static final int SUPER_RES_STAT_BMF_SRV1_OPT = 10;
    public static final int SUPER_RES_STAT_BMF_SRV1_OPT_YUV = 11;
    public static final int SUPER_RES_STAT_BMF_SRV2 = 9;
    public static final int SUPER_RES_STAT_BMF_SRV3_4_OPT_OES = 17;
    public static final int SUPER_RES_STAT_BMF_SR_HP_V4_1 = 18;
    public static final int SUPER_RES_STAT_BMF_SR_HP_V6_1 = 19;
    @Deprecated
    public static final int SUPER_RES_STAT_BMF_V1 = 5;
    @Deprecated
    public static final int SUPER_RES_STAT_BMF_V1_OPT = 7;
    @Deprecated
    public static final int SUPER_RES_STAT_BMF_V2 = 6;
    public static final int SUPER_SCALE_TYPE_1_1 = 4;
    public static final int SUPER_SCALE_TYPE_1_2 = 8;
    public static final int SUPER_SCALE_TYPE_1_3 = 16;
    public static final int SUPER_SCALE_TYPE_1_4 = 32;
    public static final int SUPER_SCALE_TYPE_1_5 = 1;
    public static final int SUPER_SCALE_TYPE_2_0 = 0;
    public static final int SUPER_SCALE_TYPE_2_0_NEW = 2;
    private static final String TAG = "VideoSurface";
    private RenderCheckDispatcher mCheckDispatcher;
    private OnDrawFrameListener mDrawFrameListener;
    private boolean mEnableNoRenderCheck;
    private ArrayList<OnErrorListenerExt> mErrorListenerExts;
    @Deprecated
    private ArrayList<OnErrorListener> mErrorListeners;
    private OnExtraSurfaceDrawListener mExtraSurfaceDrawFrameListener;
    private Object mHandlerObject;
    private OnHeadposeChangedListener mHeadposeChangedListener;
    private Bundle mMsgObjectBundle;
    private Handler mNotifyHandler;
    private OnSetSurfaceListener mOnSetSurfaceListener;
    private float mQuatW;
    private float mQuatX;
    private float mQuatY;
    private float mQuatZ;
    private FrameRenderChecker mRenderChecker;
    private int mRenderDevice;
    protected int mSurfaceHeight;
    private VideoSurfaceTexture mSurfaceTexture;
    private VideoSurfaceTexturePicoInterface mSurfaceTexturePicoListener;
    protected int mSurfaceWidth;
    private int mTexType;

    /* loaded from: classes6.dex */
    public interface FrameRenderCallback extends Serializable {
        int onBytebufferCallbck(int i10, ByteBuffer byteBuffer, int i11, int i12, long j10);

        int onTextureCallback(int i10, int i11, int i12, EGLContext eGLContext, int i13, int i14, long j10);
    }

    /* loaded from: classes6.dex */
    public interface OnDrawFrameListener {
        void onDraw(long j10);
    }

    @Deprecated
    /* loaded from: classes6.dex */
    public interface OnErrorListener {
        void onError(int i10);
    }

    /* loaded from: classes6.dex */
    public static class OnErrorListenerExt {
        public void onError(int i10, int i11, String str) {
            TextureRenderLog.i(-1, VideoSurface.TAG, "OnErrorListenerExt (default impl) onError reason=" + i10 + " type=" + i11 + " msg=" + str);
        }
    }

    /* loaded from: classes6.dex */
    public interface OnExtraSurfaceDrawListener {
        void onExtraSurfaceDraw(Surface surface, long j10);
    }

    /* loaded from: classes6.dex */
    public interface OnHeadposeChangedListener {
        void onHeadposeChanged(Quaternion quaternion);
    }

    /* loaded from: classes6.dex */
    public interface OnNoRenderListener {
        void onNoRenderEnd(int i10);

        void onNoRenderStart(int i10);
    }

    /* loaded from: classes6.dex */
    public interface OnSetSurfaceListener {
        int onSetSurface(VideoSurface videoSurface, Surface surface);
    }

    /* loaded from: classes6.dex */
    public interface SaveFrameCallback extends Serializable {
        int onFrame(ByteBuffer byteBuffer, int i10, int i11);
    }

    /* loaded from: classes6.dex */
    public interface VQScoreCallback extends Serializable {
        int onProcessScore(float f10, long j10, long j11);
    }

    public VideoSurface(VideoSurfaceTexture videoSurfaceTexture) {
        super(videoSurfaceTexture);
        this.mSurfaceTexturePicoListener = null;
        this.mErrorListeners = null;
        this.mErrorListenerExts = null;
        this.mTexType = -1;
        this.mQuatX = 0.0f;
        this.mQuatY = 0.0f;
        this.mQuatZ = 0.0f;
        this.mQuatW = 1.0f;
        this.mRenderDevice = -1;
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        init(videoSurfaceTexture, false);
    }

    private void init(VideoSurfaceTexture videoSurfaceTexture, boolean z10) {
        this.mSurfaceTexture = videoSurfaceTexture;
        if (z10) {
            this.mSurfaceTexturePicoListener = (VideoSurfaceTexturePicoInterface) videoSurfaceTexture;
        }
        if (videoSurfaceTexture != null) {
            this.mTexType = videoSurfaceTexture.texType();
        }
        if (Looper.myLooper() != null) {
            this.mNotifyHandler = new Handler(this);
        } else {
            this.mNotifyHandler = new Handler(Looper.getMainLooper(), this);
        }
        this.mHandlerObject = new Object();
        this.mMsgObjectBundle = new Bundle();
        this.mRenderChecker = new FrameRenderChecker(this.mCheckDispatcher, videoSurfaceTexture);
    }

    private synchronized void releaseTexture() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.releaseOffScreenSurface(false);
            this.mSurfaceTexture = null;
        }
    }

    public int drawImage(Bitmap bitmap) {
        VideoSurfaceTexture videoSurfaceTexture;
        if (bitmap != null && !bitmap.isRecycled() && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
            videoSurfaceTexture.setDefaultBufferSize(bitmap.getWidth(), bitmap.getHeight());
            updateTexDimension(bitmap.getWidth(), bitmap.getHeight());
            Canvas lockCanvas = lockCanvas(null);
            lockCanvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            unlockCanvasAndPost(lockCanvas);
            return 0;
        }
        TextureRenderLog.e(this.mTexType, TAG, "drawImage error");
        return -1;
    }

    @Override // android.view.Surface
    protected void finalize() throws Throwable {
        releaseTexture();
        super.finalize();
    }

    public void frameMetaCallback(long j10, long j11, Map<Integer, String> map) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.frameMetaCallback(j10, j11, map);
        }
    }

    public VideoSurface getExtraVideoSurface() {
        VideoSurfaceTexture extraVideoSurfaceTexture;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null || (extraVideoSurfaceTexture = videoSurfaceTexture.getExtraVideoSurfaceTexture()) == null) {
            return null;
        }
        return extraVideoSurfaceTexture.getOffScreenSurface();
    }

    public float getFloatOption(int i10) {
        switch (i10) {
            case 112:
                return this.mQuatX;
            case 113:
                return this.mQuatY;
            case 114:
                return this.mQuatZ;
            case 115:
                return this.mQuatW;
            default:
                return getFloatOption(i10, -1);
        }
    }

    public int[] getFovResult() {
        VideoSurfaceTexturePicoInterface videoSurfaceTexturePicoInterface = this.mSurfaceTexturePicoListener;
        if (videoSurfaceTexturePicoInterface != null) {
            return videoSurfaceTexturePicoInterface.getFovResult();
        }
        return null;
    }

    @RequiresApi(api = 19)
    public ImageReader.OnImageAvailableListener getFrameProducer() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null) {
            return null;
        }
        return (ImageReader.OnImageAvailableListener) videoSurfaceTexture.getFrameProducer();
    }

    public int getIntOption(int i10) {
        if (i10 != 133) {
            return getIntOption(i10, -1);
        }
        return this.mRenderDevice;
    }

    public long getLongOption(int i10) {
        return getLongOption(i10, -1);
    }

    public Object getOption(Bundle bundle) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.getOption(bundle);
        }
        return null;
    }

    public Surface getRenderSurface() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.getRenderSurface();
        }
        return null;
    }

    public Handler getRenderhandler() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null) {
            return null;
        }
        return videoSurfaceTexture.getRenderHandler();
    }

    public String getStringOption(int i10) {
        return getStringOption(i10, -1);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        VideoSurfaceTexture videoSurfaceTexture;
        switch (message.what) {
            case 4096:
                if (this.mDrawFrameListener != null && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
                    int i10 = message.arg1;
                    int serial = videoSurfaceTexture.getSerial();
                    if (i10 != serial) {
                        int i11 = this.mTexType;
                        TextureRenderLog.i(i11, TAG, "serial change :" + i10 + ", " + serial);
                        return true;
                    }
                    Bundle data = message.getData();
                    long j10 = data.getLong(VideoSurfaceTexture.KEY_TIME);
                    if (data.getParcelable(VideoSurfaceTexture.KEY_SURFACE) == null) {
                        this.mQuatX = data.getFloat(VideoSurfaceTexture.KEY_QUATERNION_X);
                        this.mQuatY = data.getFloat(VideoSurfaceTexture.KEY_QUATERNION_Y);
                        this.mQuatZ = data.getFloat(VideoSurfaceTexture.KEY_QUATERNION_Z);
                        this.mQuatW = data.getFloat(VideoSurfaceTexture.KEY_QUATERNION_W);
                        OnDrawFrameListener onDrawFrameListener = this.mDrawFrameListener;
                        if (onDrawFrameListener != null) {
                            onDrawFrameListener.onDraw(j10);
                            return true;
                        }
                        return true;
                    }
                    Surface surface = (Surface) data.getParcelable(VideoSurfaceTexture.KEY_SURFACE);
                    OnExtraSurfaceDrawListener onExtraSurfaceDrawListener = this.mExtraSurfaceDrawFrameListener;
                    if (onExtraSurfaceDrawListener != null) {
                        onExtraSurfaceDrawListener.onExtraSurfaceDraw(surface, j10);
                        return true;
                    }
                    return true;
                }
                return true;
            case 4097:
                if (this.mSurfaceTexture != null) {
                    int i12 = message.arg1;
                    int i13 = message.arg2;
                    String obj = message.obj.toString();
                    ArrayList<OnErrorListener> arrayList = this.mErrorListeners;
                    if (arrayList != null) {
                        Iterator<OnErrorListener> it = arrayList.iterator();
                        while (it.hasNext()) {
                            it.next().onError(i12);
                        }
                    }
                    ArrayList<OnErrorListenerExt> arrayList2 = this.mErrorListenerExts;
                    if (arrayList2 != null) {
                        Iterator<OnErrorListenerExt> it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            it2.next().onError(i12, i13, obj);
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            case 4098:
                if (this.mHeadposeChangedListener != null && this.mSurfaceTexture != null) {
                    Bundle data2 = message.getData();
                    this.mQuatX = data2.getFloat(VideoSurfaceTexture.KEY_QUATERNION_X);
                    this.mQuatY = data2.getFloat(VideoSurfaceTexture.KEY_QUATERNION_Y);
                    this.mQuatZ = data2.getFloat(VideoSurfaceTexture.KEY_QUATERNION_Z);
                    float f10 = data2.getFloat(VideoSurfaceTexture.KEY_QUATERNION_W);
                    this.mQuatW = f10;
                    OnHeadposeChangedListener onHeadposeChangedListener = this.mHeadposeChangedListener;
                    if (onHeadposeChangedListener != null) {
                        onHeadposeChangedListener.onHeadposeChanged(new Quaternion(this.mQuatX, this.mQuatY, this.mQuatZ, f10));
                        return true;
                    }
                    return true;
                }
                return true;
            default:
                return true;
        }
    }

    public void ignoreSRResolutionCheck(boolean z10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.ignoreSRResolutionCheck(z10);
        }
    }

    public boolean isUpdateFrame() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.isUpdateFrame();
        }
        return false;
    }

    public void onHeadposeChanged(int i10, float f10, float f11, float f12, float f13) {
        if (this.mHeadposeChangedListener == null) {
            return;
        }
        synchronized (this.mHandlerObject) {
            Message obtainMessage = this.mNotifyHandler.obtainMessage(4098);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_X, f10);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_Y, f11);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_Z, f12);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_W, f13);
            obtainMessage.arg1 = i10;
            obtainMessage.setData(this.mMsgObjectBundle);
            obtainMessage.sendToTarget();
        }
    }

    @Override // com.ss.texturerender.VideoSurfaceTexture.TextureErrorCallback
    public void onTextureRenderError(int i10, int i11, String str) {
        ArrayList<OnErrorListenerExt> arrayList;
        ArrayList<OnErrorListener> arrayList2 = this.mErrorListeners;
        if ((arrayList2 != null && !arrayList2.isEmpty()) || ((arrayList = this.mErrorListenerExts) != null && !arrayList.isEmpty())) {
            synchronized (this.mHandlerObject) {
                this.mNotifyHandler.obtainMessage(4097, i10, i11, str).sendToTarget();
            }
        }
    }

    @Override // com.ss.texturerender.VideoSurfaceTexture.TextureDrawCallback
    public void onTextureUpdate(int i10, long j10) {
        if (this.mDrawFrameListener == null) {
            return;
        }
        synchronized (this.mHandlerObject) {
            Message obtainMessage = this.mNotifyHandler.obtainMessage(4096);
            this.mMsgObjectBundle.putLong(VideoSurfaceTexture.KEY_TIME, j10);
            obtainMessage.arg1 = i10;
            obtainMessage.setData(this.mMsgObjectBundle);
            obtainMessage.sendToTarget();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void pause(boolean z10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.pause(z10, true);
        }
    }

    public void preRender() {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.preRender();
        }
    }

    @Override // android.view.Surface
    public void release() {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + "release");
        super.release();
        this.mRenderChecker.stop();
        releaseTexture();
        synchronized (this.mHandlerObject) {
            try {
                this.mDrawFrameListener = null;
                this.mNotifyHandler = null;
                ArrayList<OnErrorListener> arrayList = this.mErrorListeners;
                if (arrayList != null) {
                    arrayList.clear();
                }
                ArrayList<OnErrorListenerExt> arrayList2 = this.mErrorListenerExts;
                if (arrayList2 != null) {
                    arrayList2.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Bitmap saveFrame() {
        return saveFrame(null, null);
    }

    @TargetApi(15)
    public void setDefaultSize(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setDefaultBufferSize(i10, i11);
        }
    }

    public void setEffect(Bundle bundle) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setEffect(bundle);
        }
    }

    public void setExtraRenderSurface(Surface surface, int i10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setExtraSurface(surface, i10);
        }
    }

    public void setFloatOption(int i10, float f10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setOption(i10, f10);
        }
    }

    public void setFrameRenderChecker(RenderCheckDispatcher renderCheckDispatcher) {
        if (renderCheckDispatcher != null) {
            renderCheckDispatcher.setEnabled(this.mEnableNoRenderCheck);
        }
        this.mCheckDispatcher = renderCheckDispatcher;
        this.mRenderChecker.setCheckDispatcher(renderCheckDispatcher);
    }

    public void setIntOption(int i10, int i11) {
        boolean z10 = true;
        if (i10 != 1) {
            if (i10 != 133) {
                if (i10 != 33) {
                    if (i10 != 34) {
                        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                        if (videoSurfaceTexture != null) {
                            videoSurfaceTexture.setOption(i10, i11);
                            return;
                        }
                        return;
                    }
                    if (i11 != 1) {
                        z10 = false;
                    }
                    this.mEnableNoRenderCheck = z10;
                    RenderCheckDispatcher renderCheckDispatcher = this.mCheckDispatcher;
                    if (renderCheckDispatcher != null) {
                        renderCheckDispatcher.setEnabled(z10);
                        return;
                    }
                    return;
                } else if (i11 == 1) {
                    this.mRenderChecker.start();
                    return;
                } else {
                    this.mRenderChecker.stop();
                    return;
                }
            } else if (this.mRenderDevice != 1) {
                this.mRenderDevice = i11;
                int i12 = this.mTexType;
                TextureRenderLog.i(i12, TAG, "render device:" + this.mRenderDevice);
                return;
            } else {
                return;
            }
        }
        VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
        if (videoSurfaceTexture2 != null) {
            videoSurfaceTexture2.updateVideoState(i11);
        }
    }

    public void setIsPicoVRScene(boolean z10) {
        VideoSurfaceTexturePicoInterface videoSurfaceTexturePicoInterface = this.mSurfaceTexturePicoListener;
        if (videoSurfaceTexturePicoInterface != null) {
            videoSurfaceTexturePicoInterface.setIsPicoVRScene(z10);
        }
    }

    public void setLooper(Looper looper) {
        if (looper != null) {
            this.mNotifyHandler = new Handler(looper, this);
        }
    }

    public void setNoRenderListener(OnNoRenderListener onNoRenderListener) {
        this.mRenderChecker.setListener(onNoRenderListener);
    }

    public void setObjectOption(int i10, Object obj) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setOption(i10, obj);
        }
    }

    public void setOnDrawFrameListener(OnDrawFrameListener onDrawFrameListener) {
        this.mDrawFrameListener = onDrawFrameListener;
    }

    @Deprecated
    public void setOnErrorListener(OnErrorListener onErrorListener) {
        if (this.mErrorListeners == null) {
            this.mErrorListeners = new ArrayList<>();
        }
        if (!this.mErrorListeners.contains(onErrorListener)) {
            this.mErrorListeners.add(onErrorListener);
        }
    }

    public void setOnErrorListenerExt(OnErrorListenerExt onErrorListenerExt) {
        if (this.mErrorListenerExts == null) {
            this.mErrorListenerExts = new ArrayList<>();
        }
        if (!this.mErrorListenerExts.contains(onErrorListenerExt)) {
            this.mErrorListenerExts.add(onErrorListenerExt);
        }
    }

    public void setOnExtraSurfaceDrawListener(OnExtraSurfaceDrawListener onExtraSurfaceDrawListener) {
        this.mExtraSurfaceDrawFrameListener = onExtraSurfaceDrawListener;
    }

    public void setOnHeadposeChangedListener(OnHeadposeChangedListener onHeadposeChangedListener) {
        this.mHeadposeChangedListener = onHeadposeChangedListener;
    }

    public void setOnSetSurfaceListener(OnSetSurfaceListener onSetSurfaceListener) {
        this.mOnSetSurfaceListener = onSetSurfaceListener;
    }

    public void setSuperResolutionInitConfig(int i10, String str, String str2, String str3) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setSuperResolutionConfig(i10, str, str2, str3, 0, 0, null);
        }
    }

    public void setSuperResolutionMode(int i10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setSuperResolutionMode(i10);
        }
    }

    public void setSurfaceDimensions(int i10, int i11) {
        this.mSurfaceWidth = i10;
        this.mSurfaceHeight = i11;
        int i12 = this.mTexType;
        TextureRenderLog.d(i12, TAG, "setSurfaceDimensions,W:" + i10 + ",H:" + i11);
    }

    public boolean supportProcessResolution(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null) {
            return false;
        }
        return videoSurfaceTexture.supportProcessResolution(i10, i11);
    }

    public void updatePicoTextureObjMap(HashMap<Integer, PicoTextureObj> hashMap) {
        VideoSurfaceTexturePicoInterface videoSurfaceTexturePicoInterface = this.mSurfaceTexturePicoListener;
        if (videoSurfaceTexturePicoInterface != null) {
            videoSurfaceTexturePicoInterface.updatePicoTextureObj(hashMap);
        }
    }

    public void updateRenderSurface(Surface surface) {
        VideoSurfaceTexture videoSurfaceTexture;
        OnSetSurfaceListener onSetSurfaceListener = this.mOnSetSurfaceListener;
        if ((onSetSurfaceListener == null || onSetSurfaceListener.onSetSurface(this, surface) <= 0) && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
            videoSurfaceTexture.updateSurface(surface);
        }
    }

    public void updateTexDimension(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.updateTexDimension(i10, i11);
        }
    }

    public void updateVRQuaternion(float f10, float f11, float f12, float f13, int i10) {
        PicoQuaternion.updateVRQuaternion(f10, f11, f12, f13, i10);
    }

    public long getLongOption(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.getLongOption(i10, i11);
        }
        return -1L;
    }

    public String getStringOption(int i10, int i11) {
        if (i10 != 119) {
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                return videoSurfaceTexture.getStringOption(i10, i11);
            }
            return "";
        }
        return BuildConfig.VERSION_NAME;
    }

    public Bitmap saveFrame(Bundle bundle, SaveFrameCallback saveFrameCallback) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture == null) {
            return null;
        }
        return videoSurfaceTexture.saveFrame(bundle, saveFrameCallback);
    }

    public void updateVRQuaternion(float f10, float f11, float f12, float f13) {
        PicoQuaternion.updateVRCameraForaward(f10, f11, f12, f13);
    }

    public int getIntOption(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.getIntOption(i10, i11);
        }
        return -1;
    }

    public void setSuperResolutionInitConfig(int i10, String str, String str2, String str3, int i11, int i12) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setSuperResolutionConfig(i10, str, str2, str3, i11, i12, null);
        }
    }

    public void updateVRQuaternion(float f10, float f11, float f12, float f13, int i10, int[] iArr, int i11) {
        PicoQuaternion.updateVRQuaternion(f10, f11, f12, f13, i10);
        PicoQuaternion.updateVRSubIndex(iArr, i11);
    }

    public void setSuperResolutionInitConfig(int i10, String str, String str2, String str3, int i11, int i12, String str4) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            videoSurfaceTexture.setSuperResolutionConfig(i10, str, str2, str3, i11, i12, str4);
        }
    }

    public float getFloatOption(int i10, int i11) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null) {
            return videoSurfaceTexture.getFloatOption(i10, i11);
        }
        return 0.0f;
    }

    @Override // com.ss.texturerender.VideoSurfaceTexture.TextureDrawCallback
    public void onTextureUpdate(int i10, float f10, float f11, float f12, float f13) {
        if (this.mDrawFrameListener == null) {
            return;
        }
        synchronized (this.mHandlerObject) {
            Message obtainMessage = this.mNotifyHandler.obtainMessage(4096);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_X, f10);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_Y, f11);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_Z, f12);
            this.mMsgObjectBundle.putFloat(VideoSurfaceTexture.KEY_QUATERNION_W, f13);
            obtainMessage.arg1 = i10;
            obtainMessage.setData(this.mMsgObjectBundle);
            obtainMessage.sendToTarget();
        }
    }

    public VideoSurface(VideoSurfaceTexture videoSurfaceTexture, boolean z10) {
        super(videoSurfaceTexture);
        this.mSurfaceTexturePicoListener = null;
        this.mErrorListeners = null;
        this.mErrorListenerExts = null;
        this.mTexType = -1;
        this.mQuatX = 0.0f;
        this.mQuatY = 0.0f;
        this.mQuatZ = 0.0f;
        this.mQuatW = 1.0f;
        this.mRenderDevice = -1;
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        init(videoSurfaceTexture, z10);
    }

    @Override // com.ss.texturerender.VideoSurfaceTexture.TextureDrawCallback
    public void onTextureUpdate(int i10, Surface surface, long j10) {
        if (this.mDrawFrameListener == null) {
            return;
        }
        synchronized (this.mHandlerObject) {
            Message obtainMessage = this.mNotifyHandler.obtainMessage(4096);
            Bundle bundle = new Bundle();
            bundle.putLong(VideoSurfaceTexture.KEY_TIME, j10);
            bundle.putParcelable(VideoSurfaceTexture.KEY_SURFACE, surface);
            obtainMessage.arg1 = i10;
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }
}
