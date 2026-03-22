package com.ss.ttm.player;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttm.utils.Util;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
@TargetApi(16)
@Keep
/* loaded from: classes6.dex */
class AJMediaCodec {
    private static final int AV_TRC_ARIB_STD_B67 = 18;
    private static final int AV_TRC_SMPTE2084 = 16;
    private static final int CODEC_ERROR = -10000;
    private static final int CODEC_EXCEPTION_ERROR = -10001;
    private static final int CODEC_ILLEGAL_ARGUMENT = -10003;
    private static final int CODEC_ILLEGAL_STATE = -10002;
    private static final int CODEC_TIME_OUT = 3000;
    private static final double FIX_VERSION = 0.18041d;
    private static final long INPUT_TIMEOUT_US = 30000;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int NO_VALUE = -1;
    private static final int PIXEL_FORMAT_NV12 = 3;
    private static final int PIXEL_FORMAT_YUV420P = 0;
    private static final String TAG = "JAJMediaCodec";
    private static final String VENDOR_OPPO_PROPERTY = "persist.sys.aweme.hdsupport";
    private static final String VERSION_PROPERTY = "ro.config.hw_codec_support";
    private static final Condition mSingleCodecCond;
    private static final ReentrantLock mSingleCodecLock;
    private Handler mAsyncHandler;
    private HandlerThread mAsyncThread;
    private MediaCodec.BufferInfo mBufferInfo;
    private DummySurface mDummySurface;
    private String mExceptionInfo;
    private ByteBuffer[] mInputBuffers;
    private MediaCodec mMediaCodec;
    private ByteBuffer[] mOutputBuffers;
    private static final ArrayList<MediaCodecInfo> mVideoHWDecoderCodecs = new ArrayList<>();
    private static final ArrayList<MediaCodecInfo> mAudioHWDecoderCodecs = new ArrayList<>();
    private static final Object mCodecListLock = new Object();
    private static boolean mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mIsInitDetected = false;
    private static boolean mIsByteVC1Blocklist = false;
    private static boolean mNeedByteVC1WorkAround = false;
    private static int mIsByteVC1BlocklistEnable = 1;
    private static int mEnableMediaCodecSyncClose = 0;
    private static final Object mAsyncLock = new Object();
    private static int mCodecInstanceNums = 0;
    private boolean mInputBuffersValid = false;
    private android.media.MediaFormat mOutputMediaFormat = null;
    private final AJMediaFormat mAJMediaFormat = new AJMediaFormat();
    private int mMcMode = 0;
    private long mHandler = 0;
    private int mPendingFlushCount = 0;
    private boolean mCodecIsClosed = false;
    private MediaCodecInfo mCodecInfo = null;
    private String mCodecType = null;
    private int mSupportAdaptivePlayBack = -1;
    private int mFixedMemcpyCrash = 0;
    private int mEnableSingleCodec = 0;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        mSingleCodecLock = reentrantLock;
        mSingleCodecCond = reentrantLock.newCondition();
    }

    @CalledByNative
    public AJMediaCodec() {
        boolean z10 = false;
        if (!mIsInitDetected) {
            if (Util.HARDWARE.toLowerCase(Locale.US).startsWith("mt") && Util.SDK_INT < 26) {
                z10 = true;
            }
            mNeedByteVC1WorkAround = z10;
            if (isHisiByteVC1BlockList() || isMtkByteVC1BlockList()) {
                mIsByteVC1Blocklist = true;
            }
        }
        codecNeedsSetOutputSurfaceWorkaround();
        mIsInitDetected = true;
        AVLogger.InfoTrackLife(TAG, this, "JAJMediaCodec#^workaround:" + mDeviceNeedsSetOutputSurfaceWorkaround);
    }

    private static final native void _clearBufferIndex(long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void _onEmptyBuffer(long j10, int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void _onError(long j10);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void _onFilledBuffer(long j10, int i10, int i11, int i12, long j11, int i13);

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void _onFormatChanged(long j10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18);

    private static final native void _setSurfaceCompleted(long j10);

    public static int ceilDivide(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    private static boolean codecNeedsFlushWorkaround(String str) {
        int i10 = Util.SDK_INT;
        if (i10 >= 18 && ((i10 != 18 || (!"OMX.SEC.avc.dec".equals(str) && !"OMX.SEC.avc.dec.secure".equals(str))) && (i10 != 19 || !Util.MODEL.startsWith("SM-G800") || (!"OMX.Exynos.avc.dec".equals(str) && !"OMX.Exynos.avc.dec.secure".equals(str))))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007f A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000e, B:10:0x0018, B:53:0x0090, B:15:0x0023, B:37:0x0064, B:52:0x008e, B:42:0x0075, B:45:0x007f, B:36:0x0062, B:22:0x003c, B:25:0x0046, B:28:0x0050, B:54:0x0092), top: B:59:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008b A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean codecNeedsSetOutputSurfaceWorkaround() {
        /*
            java.lang.Class<com.ss.ttm.player.AJMediaCodec> r0 = com.ss.ttm.player.AJMediaCodec.class
            monitor-enter(r0)
            boolean r1 = com.ss.ttm.player.AJMediaCodec.mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L92
            int r1 = com.ss.ttm.utils.Util.SDK_INT     // Catch: java.lang.Throwable -> L1c
            r2 = 27
            r3 = 1
            if (r1 > r2) goto L1f
            java.lang.String r4 = "dangal"
            java.lang.String r5 = com.ss.ttm.utils.Util.DEVICE     // Catch: java.lang.Throwable -> L1c
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L1c
            if (r4 == 0) goto L1f
            com.ss.ttm.player.AJMediaCodec.mDeviceNeedsSetOutputSurfaceWorkaround = r3     // Catch: java.lang.Throwable -> L1c
            goto L90
        L1c:
            r1 = move-exception
            goto L96
        L1f:
            if (r1 < r2) goto L23
            goto L90
        L23:
            java.lang.String r1 = com.ss.ttm.utils.Util.DEVICE     // Catch: java.lang.Throwable -> L1c
            int r2 = r1.hashCode()     // Catch: java.lang.Throwable -> L1c
            r4 = 99329(0x18401, float:1.3919E-40)
            r5 = 0
            r6 = 2
            r7 = -1
            if (r2 == r4) goto L50
            r4 = 3351335(0x332327, float:4.69622E-39)
            if (r2 == r4) goto L46
            r4 = 1865889110(0x6f373556, float:5.6700236E28)
            if (r2 == r4) goto L3c
            goto L5a
        L3c:
            java.lang.String r2 = "santoni"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L5a
            r1 = r6
            goto L5b
        L46:
            java.lang.String r2 = "mido"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L5a
            r1 = r3
            goto L5b
        L50:
            java.lang.String r2 = "deb"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L5a
            r1 = r5
            goto L5b
        L5a:
            r1 = r7
        L5b:
            if (r1 == 0) goto L62
            if (r1 == r3) goto L62
            if (r1 == r6) goto L62
            goto L64
        L62:
            com.ss.ttm.player.AJMediaCodec.mDeviceNeedsSetOutputSurfaceWorkaround = r3     // Catch: java.lang.Throwable -> L1c
        L64:
            java.lang.String r1 = com.ss.ttm.utils.Util.MODEL     // Catch: java.lang.Throwable -> L1c
            int r2 = r1.hashCode()     // Catch: java.lang.Throwable -> L1c
            r4 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r2 == r4) goto L7f
            r4 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r2 == r4) goto L75
            goto L88
        L75:
            java.lang.String r2 = "AFTN"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L88
            r5 = r3
            goto L89
        L7f:
            java.lang.String r2 = "AFTA"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L88
            goto L89
        L88:
            r5 = r7
        L89:
            if (r5 == 0) goto L8e
            if (r5 == r3) goto L8e
            goto L90
        L8e:
            com.ss.ttm.player.AJMediaCodec.mDeviceNeedsSetOutputSurfaceWorkaround = r3     // Catch: java.lang.Throwable -> L1c
        L90:
            com.ss.ttm.player.AJMediaCodec.mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = r3     // Catch: java.lang.Throwable -> L1c
        L92:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
            boolean r0 = com.ss.ttm.player.AJMediaCodec.mDeviceNeedsSetOutputSurfaceWorkaround
            return r0
        L96:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.AJMediaCodec.codecNeedsSetOutputSurfaceWorkaround():boolean");
    }

    private void createDummySurface() {
        AVLogger.Debug(TAG, this, "create dummy surface");
        this.mDummySurface = DummySurface.newInstanceV17(false);
    }

    private static int getMaxInputSize(String str, int i10, int i11) {
        int i12;
        int i13;
        if (i10 == -1 || i11 == -1) {
            return -1;
        }
        if (!str.equals(MimeTypes.VIDEO_H263) && !str.equals(MimeTypes.VIDEO_MP4V)) {
            if (str.equals("video/avc")) {
                if ("BRAVIA 4K 2015".equals(Util.MODEL)) {
                    return -1;
                }
                i12 = ceilDivide(i10, 16) * ceilDivide(i11, 16) * 256;
                i13 = 2;
                return (i12 * 3) / (i13 * 2);
            } else if (!str.equals(MimeTypes.VIDEO_VP8)) {
                if (!str.equals("video/hevc") && !str.equals(MimeTypes.VIDEO_VP9)) {
                    return -1;
                }
                i12 = i10 * i11;
                i13 = 4;
                return (i12 * 3) / (i13 * 2);
            }
        }
        i12 = i10 * i11;
        i13 = 2;
        return (i12 * 3) / (i13 * 2);
    }

    public static String getProperty(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
            } catch (Exception e10) {
                e10.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    @TargetApi(19)
    private boolean isAdaptivePlaybackV19() {
        String str;
        MediaCodecInfo mediaCodecInfo = this.mCodecInfo;
        if (mediaCodecInfo != null && (str = this.mCodecType) != null) {
            try {
                return mediaCodecInfo.getCapabilitiesForType(str).isFeatureSupported("adaptive-playback");
            } catch (Exception unused) {
            }
        }
        return true;
    }

    private boolean isHisiByteVC1BlockList() {
        double d10;
        String property = getProperty("ro.board.platform", null);
        if (Util.SDK_INT == 26 && property != null) {
            if (property.startsWith("kirin960") || property.startsWith("hi3660")) {
                try {
                    d10 = Double.parseDouble(getProperty(VERSION_PROPERTY, "0.0"));
                } catch (NumberFormatException unused) {
                    AVLogger.Warn(TAG, this, "vendor property abnormal");
                    d10 = 0.0d;
                }
                if (d10 < FIX_VERSION) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @TargetApi(30)
    private int isLowLatencyDecode() {
        MediaCodecInfo mediaCodecInfo;
        String str;
        if (Build.VERSION.SDK_INT >= 30 && (mediaCodecInfo = this.mCodecInfo) != null && (str = this.mCodecType) != null) {
            try {
                return mediaCodecInfo.getCapabilitiesForType(str).isFeatureSupported("low-latency") ? 1 : 0;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private boolean isMtkByteVC1BlockList() {
        String lowerCase = Util.HARDWARE.toLowerCase(Locale.US);
        if (!lowerCase.startsWith("mt6763") && !lowerCase.startsWith("mt6757") && !lowerCase.startsWith("mt6739") && !lowerCase.startsWith("mt6750")) {
            return false;
        }
        return true;
    }

    private static void maybeSetCsdBuffers(android.media.MediaFormat mediaFormat, ByteBuffer byteBuffer, int i10) {
        if (byteBuffer == null) {
            return;
        }
        mediaFormat.setByteBuffer("csd-" + i10, byteBuffer);
    }

    private static void maybeSetInteger(android.media.MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFlushCompleted(Runnable runnable) {
        synchronized (mAsyncLock) {
            try {
                if (this.mCodecIsClosed) {
                    return;
                }
                int i10 = this.mPendingFlushCount - 1;
                this.mPendingFlushCount = i10;
                if (i10 > 0) {
                    return;
                }
                if (i10 < 0) {
                    return;
                }
                _clearBufferIndex(this.mHandler);
                try {
                    runnable.run();
                } catch (Exception e10) {
                    if (e10 instanceof IllegalStateException) {
                        _onError(this.mHandler);
                    } else {
                        AVLogger.Warn(TAG, this, e10.toString());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetSurfaceCompleted() {
        synchronized (mAsyncLock) {
            try {
                if (this.mCodecIsClosed) {
                    return;
                }
                AVLogger.Debug(TAG, this, "ttmn setSurfaceCompleted");
                _setSurfaceCompleted(this.mHandler);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodec(MediaCodec mediaCodec) {
        ReentrantLock reentrantLock;
        ReentrantLock reentrantLock2;
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.release();
            DummySurface dummySurface = this.mDummySurface;
            if (dummySurface != null) {
                dummySurface.release();
                this.mDummySurface = null;
            }
        } catch (Exception unused) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
            if (this.mEnableSingleCodec == 1) {
                try {
                    reentrantLock2 = mSingleCodecLock;
                    reentrantLock2.lock();
                    mCodecInstanceNums--;
                    mSingleCodecCond.signal();
                } catch (Exception unused2) {
                    reentrantLock2 = mSingleCodecLock;
                } catch (Throwable th2) {
                    mSingleCodecLock.unlock();
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
            if (this.mEnableSingleCodec == 1) {
                try {
                    reentrantLock = mSingleCodecLock;
                    reentrantLock.lock();
                    mCodecInstanceNums--;
                    mSingleCodecCond.signal();
                } catch (Exception unused3) {
                    reentrantLock = mSingleCodecLock;
                } catch (Throwable th4) {
                    mSingleCodecLock.unlock();
                    throw th4;
                }
                reentrantLock.unlock();
            }
            AVLogger.Debug(TAG, this, "codec release end");
            throw th3;
        }
        if (this.mEnableSingleCodec == 1) {
            try {
                reentrantLock2 = mSingleCodecLock;
                reentrantLock2.lock();
                mCodecInstanceNums--;
                mSingleCodecCond.signal();
            } catch (Exception unused4) {
                reentrantLock2 = mSingleCodecLock;
            } catch (Throwable th5) {
                mSingleCodecLock.unlock();
                throw th5;
            }
            reentrantLock2.unlock();
        }
        AVLogger.Debug(TAG, this, "codec release end");
    }

    @TargetApi(21)
    private int renderOutputBufferV21(int i10, long j10) {
        try {
            this.mMediaCodec.releaseOutputBuffer(i10, j10);
            return 0;
        } catch (Exception unused) {
            return -10000;
        }
    }

    @TargetApi(23)
    private int setOutputSurfaceV23(MediaCodec mediaCodec, Surface surface) {
        int i10 = 1;
        try {
            mediaCodec.setOutputSurface(surface);
            if (this.mMcMode == 1 && this.mFixedMemcpyCrash == 1) {
                synchronized (mAsyncLock) {
                    this.mAsyncHandler.post(new Runnable() { // from class: com.ss.ttm.player.AJMediaCodec.4
                        @Override // java.lang.Runnable
                        public void run() {
                            AJMediaCodec.this.onSetSurfaceCompleted();
                        }
                    });
                }
                return 0;
            }
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            AVLogger.Warn(TAG, this, "setoutputsurface failed = " + e10);
            DummySurface dummySurface = this.mDummySurface;
            if (dummySurface != null) {
                if (surface != dummySurface) {
                    i10 = 2;
                }
                dummySurface.addEvent(i10);
            }
            if (e10 instanceof IllegalArgumentException) {
                return -10003;
            }
            return -1;
        }
    }

    @CalledByNative
    private boolean supportSetSurface() {
        return !mDeviceNeedsSetOutputSurfaceWorkaround;
    }

    public boolean MTKByteVC1NeedWorkAround() {
        return mNeedByteVC1WorkAround;
    }

    @CalledByNative
    public void close() {
        AVLogger.Debug(TAG, this, "~JAJMediaCodec#{");
        if (this.mMediaCodec != null) {
            stop();
            final MediaCodec mediaCodec = this.mMediaCodec;
            this.mInputBuffers = null;
            this.mOutputBuffers = null;
            if (this.mMcMode == 1 && Util.SDK_INT >= 23) {
                synchronized (mAsyncLock) {
                    try {
                        HandlerThread handlerThread = this.mAsyncThread;
                        if (handlerThread != null) {
                            handlerThread.quit();
                        }
                        _clearBufferIndex(this.mHandler);
                        this.mCodecIsClosed = true;
                        this.mMediaCodec = null;
                    } finally {
                    }
                }
            } else {
                this.mMediaCodec = null;
            }
            if (mEnableMediaCodecSyncClose > 0) {
                AVLogger.Debug(TAG, this, "sync releaseCodec");
                releaseCodec(mediaCodec);
            } else {
                try {
                    AVThreadPool.addTask(new Runnable() { // from class: com.ss.ttm.player.AJMediaCodec.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AVLogger.Debug(AJMediaCodec.TAG, this, "start releaseCodec task");
                            AJMediaCodec.this.releaseCodec(mediaCodec);
                        }
                    });
                } catch (Throwable unused) {
                    AVLogger.Warn(TAG, this, "new thread failed");
                    releaseCodec(mediaCodec);
                }
            }
        }
        AVLogger.InfoTrackLife(TAG, this, "~JAJMediaCodec#}");
    }

    @CalledByNative
    public int configure(int i10, int i11, int i12, int i13, int i14, String str, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, Surface surface, boolean z10, boolean z11, int i15, int i16, boolean z12, int i17, boolean z13, boolean z14, int i18, int i19, int i20) {
        Surface surface2 = surface;
        int i21 = i15;
        int i22 = i16;
        AVLogger.Debug(TAG, this, "ttmn: configure =" + surface2 + ", surfaceConfigure =" + z10);
        int i23 = Util.SDK_INT;
        if (i23 < 21 || setCallback(this.mMcMode) != -1) {
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", str);
            maybeSetInteger(mediaFormat, "width", i10);
            maybeSetInteger(mediaFormat, "height", i11);
            if (i21 != -1 && i22 != -1) {
                if (i21 <= i10) {
                    i21 = i10;
                }
                maybeSetInteger(mediaFormat, "max-width", i21);
                if (i22 <= i11) {
                    i22 = i11;
                }
                maybeSetInteger(mediaFormat, "max-height", i22);
            }
            maybeSetInteger(mediaFormat, MediaFormat.KEY_SAMPLE_RATE, i13);
            maybeSetInteger(mediaFormat, MediaFormat.KEY_CHANNEL_COUNT, i14);
            AVLogger.Debug(TAG, this, "format  = " + mediaFormat);
            int maxInputSize = getMaxInputSize(str, i10, i11);
            AVLogger.Debug(TAG, this, "max input = " + maxInputSize);
            maybeSetInteger(mediaFormat, "max-input-size", maxInputSize);
            maybeSetCsdBuffers(mediaFormat, byteBuffer, 0);
            maybeSetCsdBuffers(mediaFormat, byteBuffer2, 1);
            maybeSetCsdBuffers(mediaFormat, byteBuffer3, 2);
            if (z10) {
                if (i23 >= 21) {
                    maybeSetInteger(mediaFormat, "rotation-degrees", i12);
                }
                if ((surface2 == null || !surface.isValid()) && this.mDummySurface == null && i23 >= 23 && !mDeviceNeedsSetOutputSurfaceWorkaround) {
                    AVLogger.Debug(TAG, this, "create dummy surface");
                    createDummySurface();
                    surface2 = this.mDummySurface;
                }
                if (surface2 == null) {
                    this.mExceptionInfo = "Error: configure with null surface";
                    return -10003;
                }
            }
            if (i23 >= 23 && z11) {
                mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            }
            if (z12) {
                VendorQTI.setupVpp(mediaFormat, i17);
            }
            if (z13) {
                VendorQTI.debugEffect(mediaFormat);
            }
            if (z14) {
                VendorQTI.enableLowLatency(mediaFormat);
            }
            if (i20 > 0 && isLowLatencyDecode() > 0) {
                AVLogger.Debug(TAG, this, "low latency works.");
                maybeSetInteger(mediaFormat, "low-latency", 1);
            }
            if (i19 > 0 && i18 >= 0) {
                String dolbyCodecs = MediaCodecUtil.getDolbyCodecs(i18, i19);
                AVLogger.Debug(TAG, this, "dv codecs = " + dolbyCodecs);
                Pair<Integer, Integer> dolbyVisionProfileAndLevel = MediaCodecUtil.getDolbyVisionProfileAndLevel(dolbyCodecs, dolbyCodecs != null ? dolbyCodecs.split("\\.") : null);
                if (dolbyVisionProfileAndLevel != null) {
                    AVLogger.Debug(TAG, this, "dv profile & level  = " + dolbyVisionProfileAndLevel.toString());
                    maybeSetInteger(mediaFormat, "profile", ((Integer) dolbyVisionProfileAndLevel.first).intValue());
                }
            }
            try {
                this.mMediaCodec.configure(mediaFormat, surface2, (MediaCrypto) null, 0);
                return 0;
            } catch (Exception e10) {
                handleCodecException(e10);
                AVLogger.Debug(TAG, this, "configure failed = " + this.mMediaCodec + ", ex=" + e10.toString());
                return e10 instanceof IllegalArgumentException ? -10003 : -1;
            }
        }
        return -1;
    }

    @CalledByNative
    public int createByCodecName(String str) {
        AVLogger.Debug(TAG, this, "createByCodecName = " + str);
        try {
            if (this.mEnableSingleCodec == 1) {
                ReentrantLock reentrantLock = mSingleCodecLock;
                reentrantLock.lock();
                if (mCodecInstanceNums > 0) {
                    mSingleCodecCond.await(3000L, TimeUnit.MILLISECONDS);
                }
                if (mCodecInstanceNums > 0) {
                    AVLogger.Warn(TAG, this, "already create a media codec");
                    reentrantLock.unlock();
                    return -1;
                }
                this.mMediaCodec = MediaCodec.createByCodecName(str);
                mCodecInstanceNums++;
                reentrantLock.unlock();
                return 0;
            }
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            AVLogger.Debug(TAG, this, "createByCodecName fail = " + e10.toString());
            return -1;
        }
    }

    @CalledByNative
    @TargetApi(23)
    public void decodeFRC(int i10) {
        if (this.mMediaCodec != null && this.mInputBuffersValid && Util.SDK_INT >= 23) {
            AVLogger.Debug(TAG, this, "frc level = " + i10);
            Bundle bundle = new Bundle();
            bundle.putInt("vivo.video-dec.dynamic-frc", i10);
            try {
                this.mMediaCodec.setParameters(bundle);
            } catch (Exception e10) {
                AVLogger.Warn(TAG, this, "setParameters failed ret = " + e10);
            }
        }
    }

    @CalledByNative
    public int dequeueInputBuffer(long j10) {
        try {
            return this.mMediaCodec.dequeueInputBuffer(j10);
        } catch (Exception e10) {
            AVLogger.Debug(TAG, this, "dequeueInputBuffer failed, exception: " + e10);
            return handleCodecException(e10);
        }
    }

    @CalledByNative
    public int flush() {
        AVLogger.Debug(TAG, this, "flush");
        try {
            this.mMediaCodec.flush();
            if (this.mMcMode == 1) {
                synchronized (mAsyncLock) {
                    this.mPendingFlushCount++;
                    this.mAsyncHandler.post(new Runnable() { // from class: com.ss.ttm.player.AJMediaCodec.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (AJMediaCodec.this.mMediaCodec != null) {
                                    AJMediaCodec.this.onFlushCompleted(new Runnable() { // from class: com.ss.ttm.player.AJMediaCodec.3.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            if (AJMediaCodec.this.mMediaCodec != null) {
                                                AJMediaCodec.this.mMediaCodec.start();
                                            }
                                        }
                                    });
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
            }
            AVLogger.Debug(TAG, this, "flush done");
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0102 A[Catch: all -> 0x007b, TryCatch #1 {all -> 0x007b, blocks: (B:19:0x0068, B:21:0x0071, B:26:0x007e, B:28:0x0086, B:31:0x008f, B:33:0x0095, B:37:0x00a1, B:39:0x00a7, B:41:0x00b2, B:116:0x020c, B:44:0x00d4, B:46:0x00dc, B:49:0x00e5, B:55:0x00fa, B:58:0x0102, B:60:0x0106, B:115:0x0207, B:63:0x0110, B:65:0x0116, B:67:0x011f, B:69:0x0128, B:70:0x012d, B:72:0x0133, B:74:0x013b, B:76:0x0143, B:77:0x0148, B:80:0x0150, B:82:0x016e, B:84:0x0176, B:86:0x017e, B:88:0x0186, B:90:0x018e, B:92:0x0196, B:95:0x019f, B:97:0x01a7, B:100:0x01ae, B:103:0x01b5, B:106:0x01bc, B:108:0x01e8, B:110:0x01ee, B:113:0x01fb, B:114:0x0204, B:52:0x00ef, B:40:0x00ae, B:117:0x0211, B:119:0x0217, B:122:0x021a, B:123:0x0225, B:125:0x022b, B:128:0x0239, B:129:0x0245, B:34:0x009a, B:131:0x0247, B:132:0x024e), top: B:138:0x0068, inners: #0 }] */
    @com.ss.ttm.player.CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getBestCodecName(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.AJMediaCodec.getBestCodecName(java.lang.String):java.lang.String");
    }

    @CalledByNative
    public int getChannelCount() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_CHANNEL_COUNT);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorFormat() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-format");
                if (integer != 21 && integer != 2130706688 && integer != 2141391872) {
                    return 0;
                }
                return 3;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorTransfer() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-transfer");
                if (integer != 6) {
                    if (integer != 7) {
                        return 0;
                    }
                    return 18;
                }
                return 16;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public String getErrorInfo() {
        return this.mExceptionInfo;
    }

    @CalledByNative
    public int getFormatHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                if (mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP)) {
                    return (this.mOutputMediaFormat.getInteger(KEY_CROP_BOTTOM) - this.mOutputMediaFormat.getInteger(KEY_CROP_TOP)) + 1;
                }
                return this.mOutputMediaFormat.getInteger("height");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getFormatWidth() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                if (mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP)) {
                    return (this.mOutputMediaFormat.getInteger(KEY_CROP_RIGHT) - this.mOutputMediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
                }
                return this.mOutputMediaFormat.getInteger("width");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    @TargetApi(21)
    public ByteBuffer getInputBuffer(int i10) {
        if (this.mInputBuffersValid) {
            try {
                return this.mMediaCodec.getInputBuffer(i10);
            } catch (Exception e10) {
                AVLogger.Error(TAG, this, "getInputBuffer failed, exception: " + e10);
            }
        }
        return null;
    }

    @CalledByNative
    public ByteBuffer[] getInputBuffers() {
        if (this.mInputBuffersValid) {
            return this.mInputBuffers;
        }
        return null;
    }

    @CalledByNative
    public int getOSVerion() {
        return Util.SDK_INT;
    }

    @CalledByNative
    public int getSampleRate() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_SAMPLE_RATE);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getSliceHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("slice-height");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getStride() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("stride");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public int handleCodecException(Exception exc) {
        this.mExceptionInfo = exc.toString();
        if (Util.SDK_INT >= 21) {
            return handleCodecExceptionV21(exc);
        }
        if (exc instanceof IllegalStateException) {
            return -10002;
        }
        return -10000;
    }

    @TargetApi(21)
    public int handleCodecExceptionV21(Exception exc) {
        if (exc instanceof MediaCodec.CodecException) {
            MediaCodec.CodecException codecException = (MediaCodec.CodecException) exc;
            if (Util.SDK_INT >= 23) {
                AVLogger.Debug(TAG, this, "exception codecExc isRecoverable: " + codecException.isRecoverable() + ", errorcode: " + codecException.getErrorCode());
                if (!codecException.isRecoverable() && codecException.getErrorCode() != 1100 && codecException.getErrorCode() != 1101) {
                    return -10001;
                }
            } else {
                AVLogger.Debug(TAG, this, "exception codecExc isRecoverable: " + codecException.isRecoverable());
                if (!codecException.isRecoverable()) {
                    return -10001;
                }
            }
        }
        if (exc instanceof IllegalStateException) {
            return -10002;
        }
        return -10000;
    }

    @CalledByNative
    public int isAdaptivePlayback() {
        int i10 = this.mSupportAdaptivePlayBack;
        if (i10 != -1) {
            return i10;
        }
        this.mSupportAdaptivePlayBack = isAdaptivePlaybackV19() ? 1 : 0;
        if ("Q7-G1".equals(Build.MODEL) && "kunlun".equals(Build.HARDWARE)) {
            "GK6323V100C".equals(Build.BOARD);
        }
        return this.mSupportAdaptivePlayBack;
    }

    public int open(int i10, int i11, int i12, String str, String str2, ByteBuffer byteBuffer, Surface surface) {
        AVLogger.Debug(TAG, this, "open, rotation = " + i12 + "; codecName = " + str + "; codecType =" + str2);
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            AVLogger.Debug(TAG, this, "configure mediacodec");
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", str2);
            maybeSetInteger(mediaFormat, "width", i10);
            maybeSetInteger(mediaFormat, "height", i11);
            if (byteBuffer != null) {
                mediaFormat.setByteBuffer("csd-0", byteBuffer);
            }
            if (surface != null && Util.SDK_INT >= 21) {
                maybeSetInteger(mediaFormat, "rotation-degrees", i12);
            }
            try {
                this.mMediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, 0);
                AVLogger.Debug(TAG, this, "mediacodec start");
                try {
                    this.mMediaCodec.start();
                    this.mInputBuffers = this.mMediaCodec.getInputBuffers();
                    this.mInputBuffersValid = true;
                    AVLogger.Debug(TAG, this, String.format(Locale.US, "open() input params. width:%d,height:%d", Integer.valueOf(i10), Integer.valueOf(i11)));
                    return 0;
                } catch (Exception e10) {
                    AVLogger.Debug(TAG, this, e10.toString());
                    return -1;
                }
            } catch (Exception e11) {
                AVLogger.Debug(TAG, this, e11.toString());
                return -1;
            }
        } catch (Exception e12) {
            AVLogger.Debug(TAG, this, e12.toString());
            return -1;
        }
    }

    @CalledByNative
    public int queueInputBuffer(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.mMediaCodec.queueInputBuffer(i10, i11, i12, j10, i13);
            return 0;
        } catch (Exception e10) {
            AVLogger.Debug(TAG, this, "queueInputBuffer failed, exception: " + e10);
            return handleCodecException(e10);
        }
    }

    @CalledByNative
    public int read(AJMediaCodecFrame aJMediaCodecFrame, long j10) {
        while (true) {
            try {
                int dequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, j10);
                if (dequeueOutputBuffer >= 0) {
                    aJMediaCodecFrame.data = this.mOutputBuffers[dequeueOutputBuffer];
                    MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                    aJMediaCodecFrame.pts = bufferInfo.presentationTimeUs;
                    aJMediaCodecFrame.index = dequeueOutputBuffer;
                    aJMediaCodecFrame.size = bufferInfo.size;
                    aJMediaCodecFrame.flags = bufferInfo.flags;
                    return 0;
                } else if (dequeueOutputBuffer == -3) {
                    AVLogger.Debug(TAG, this, "INFO_OUTPUT_BUFFERS_CHANGED");
                    try {
                        this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                    } catch (Exception e10) {
                        AVLogger.Debug(TAG, this, "getOutputBuffers e = " + e10);
                        return handleCodecException(e10);
                    }
                } else if (dequeueOutputBuffer == -2) {
                    AVLogger.Debug(TAG, this, "INFO_OUTPUT_FORMAT_CHANGED");
                    try {
                        this.mOutputMediaFormat = this.mMediaCodec.getOutputFormat();
                        if (this.mOutputBuffers == null) {
                            try {
                                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                            } catch (Exception e11) {
                                AVLogger.Debug(TAG, this, "getOutputBuffers e = " + e11);
                                return handleCodecException(e11);
                            }
                        }
                        return dequeueOutputBuffer;
                    } catch (Exception e12) {
                        AVLogger.Debug(TAG, this, "getOutputFormat e =" + e12);
                        return handleCodecException(e12);
                    }
                } else {
                    if (dequeueOutputBuffer != -1) {
                        AVLogger.Error(TAG, this, "error, idx = " + dequeueOutputBuffer);
                    }
                    return -1;
                }
            } catch (Exception e13) {
                AVLogger.Debug(TAG, this, "dequeueOutputBuffer e :" + e13);
                return handleCodecException(e13);
            }
        }
    }

    @CalledByNative
    public int releaseBuffer(int i10, boolean z10, long j10) {
        if (Util.SDK_INT >= 21 && z10) {
            return renderOutputBufferV21(i10, j10);
        }
        try {
            this.mMediaCodec.releaseOutputBuffer(i10, z10);
            return 0;
        } catch (Exception e10) {
            return handleCodecException(e10);
        }
    }

    @TargetApi(21)
    public int setCallback(int i10) {
        AVLogger.Debug(TAG, this, "ttmn: set callback func.");
        if (i10 != 0) {
            try {
                MediaCodec.Callback callback = new MediaCodec.Callback() { // from class: com.ss.ttm.player.AJMediaCodec.1
                    @Override // android.media.MediaCodec.Callback
                    public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec.CodecException codecException) {
                        AVLogger.Error(AJMediaCodec.TAG, this, "ttmn: " + codecException);
                        synchronized (AJMediaCodec.mAsyncLock) {
                            try {
                                if (!AJMediaCodec.this.mCodecIsClosed) {
                                    AJMediaCodec._onError(AJMediaCodec.this.mHandler);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }

                    @Override // android.media.MediaCodec.Callback
                    public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i11) {
                        if (mediaCodec == AJMediaCodec.this.mMediaCodec) {
                            synchronized (AJMediaCodec.mAsyncLock) {
                                try {
                                    if (!AJMediaCodec.this.mCodecIsClosed) {
                                        AJMediaCodec._onEmptyBuffer(AJMediaCodec.this.mHandler, i11);
                                    }
                                } finally {
                                }
                            }
                        }
                    }

                    @Override // android.media.MediaCodec.Callback
                    public void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i11, @NonNull MediaCodec.BufferInfo bufferInfo) {
                        if (mediaCodec == AJMediaCodec.this.mMediaCodec) {
                            synchronized (AJMediaCodec.mAsyncLock) {
                                try {
                                    if (!AJMediaCodec.this.mCodecIsClosed) {
                                        AJMediaCodec._onFilledBuffer(AJMediaCodec.this.mHandler, i11, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
                                    }
                                } finally {
                                }
                            }
                        }
                    }

                    @Override // android.media.MediaCodec.Callback
                    public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull android.media.MediaFormat mediaFormat) {
                        int i11;
                        int i12;
                        int i13;
                        int i14;
                        boolean z10;
                        int integer;
                        int integer2;
                        int i15;
                        int i16;
                        int i17;
                        int i18;
                        AJMediaCodec.this.mOutputMediaFormat = mediaFormat;
                        if (mediaFormat != null) {
                            try {
                                String string = mediaFormat.getString("mime");
                                if (string.startsWith("video")) {
                                    if (mediaFormat.containsKey(AJMediaCodec.KEY_CROP_RIGHT) && mediaFormat.containsKey(AJMediaCodec.KEY_CROP_LEFT) && mediaFormat.containsKey(AJMediaCodec.KEY_CROP_BOTTOM) && mediaFormat.containsKey(AJMediaCodec.KEY_CROP_TOP)) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    AJMediaFormat aJMediaFormat = AJMediaCodec.this.mAJMediaFormat;
                                    if (z10) {
                                        integer = (mediaFormat.getInteger(AJMediaCodec.KEY_CROP_RIGHT) - mediaFormat.getInteger(AJMediaCodec.KEY_CROP_LEFT)) + 1;
                                    } else {
                                        integer = mediaFormat.getInteger("width");
                                    }
                                    aJMediaFormat.width = integer;
                                    AJMediaFormat aJMediaFormat2 = AJMediaCodec.this.mAJMediaFormat;
                                    if (z10) {
                                        integer2 = (mediaFormat.getInteger(AJMediaCodec.KEY_CROP_BOTTOM) - mediaFormat.getInteger(AJMediaCodec.KEY_CROP_TOP)) + 1;
                                    } else {
                                        integer2 = mediaFormat.getInteger("height");
                                    }
                                    aJMediaFormat2.height = integer2;
                                    if (mediaFormat.containsKey("color-format")) {
                                        i15 = mediaFormat.getInteger("color-format");
                                    } else {
                                        i15 = 0;
                                    }
                                    if (i15 != 21 && i15 != 2130706688 && i15 != 2141391872) {
                                        AJMediaCodec.this.mAJMediaFormat.colorFormat = 0;
                                    } else {
                                        AJMediaCodec.this.mAJMediaFormat.colorFormat = 3;
                                    }
                                    if (mediaFormat.containsKey("color-transfer")) {
                                        i16 = mediaFormat.getInteger("color-transfer");
                                    } else {
                                        i16 = 0;
                                    }
                                    if (i16 != 6) {
                                        if (i16 != 7) {
                                            i12 = 0;
                                            AJMediaCodec.this.mAJMediaFormat.colorTrans = 0;
                                        } else {
                                            i12 = 0;
                                            AJMediaCodec.this.mAJMediaFormat.colorTrans = 18;
                                        }
                                    } else {
                                        i12 = 0;
                                        AJMediaCodec.this.mAJMediaFormat.colorTrans = 16;
                                    }
                                    AJMediaFormat aJMediaFormat3 = AJMediaCodec.this.mAJMediaFormat;
                                    if (mediaFormat.containsKey("slice-height")) {
                                        i17 = mediaFormat.getInteger("slice-height");
                                    } else {
                                        i17 = i12;
                                    }
                                    aJMediaFormat3.sliceHeight = i17;
                                    AJMediaFormat aJMediaFormat4 = AJMediaCodec.this.mAJMediaFormat;
                                    if (mediaFormat.containsKey("stride")) {
                                        i18 = mediaFormat.getInteger("stride");
                                    } else {
                                        i18 = i12;
                                    }
                                    aJMediaFormat4.stride = i18;
                                } else {
                                    i12 = 0;
                                }
                                if (string.startsWith("audio")) {
                                    AJMediaFormat aJMediaFormat5 = AJMediaCodec.this.mAJMediaFormat;
                                    if (mediaFormat.containsKey(MediaFormat.KEY_SAMPLE_RATE)) {
                                        i13 = mediaFormat.getInteger(MediaFormat.KEY_SAMPLE_RATE);
                                    } else {
                                        i13 = i12;
                                    }
                                    aJMediaFormat5.sampleRate = i13;
                                    AJMediaFormat aJMediaFormat6 = AJMediaCodec.this.mAJMediaFormat;
                                    if (mediaFormat.containsKey(MediaFormat.KEY_CHANNEL_COUNT)) {
                                        i14 = mediaFormat.getInteger(MediaFormat.KEY_CHANNEL_COUNT);
                                    } else {
                                        i14 = i12;
                                    }
                                    aJMediaFormat6.channelCount = i14;
                                }
                            } catch (Exception unused) {
                                AJMediaCodec.this.mAJMediaFormat.reset();
                                AJMediaCodec._onFormatChanged(AJMediaCodec.this.mHandler, -1, 0, 0, 0, 0, 0, 0, 0, 0);
                                i11 = -1;
                            }
                        } else {
                            i12 = 0;
                        }
                        i11 = i12;
                        AJMediaCodec._onFormatChanged(AJMediaCodec.this.mHandler, i11, AJMediaCodec.this.mAJMediaFormat.width, AJMediaCodec.this.mAJMediaFormat.height, AJMediaCodec.this.mAJMediaFormat.sampleRate, AJMediaCodec.this.mAJMediaFormat.channelCount, AJMediaCodec.this.mAJMediaFormat.colorFormat, AJMediaCodec.this.mAJMediaFormat.colorTrans, AJMediaCodec.this.mAJMediaFormat.sliceHeight, AJMediaCodec.this.mAJMediaFormat.stride);
                    }
                };
                if (Util.SDK_INT < 23) {
                    this.mMediaCodec.setCallback(callback);
                    this.mAsyncHandler = new Handler(Looper.getMainLooper());
                } else {
                    AVLogger.d("ttmn", "create async thread");
                    HandlerThread handlerThread = new HandlerThread("mc_async");
                    this.mAsyncThread = handlerThread;
                    handlerThread.start();
                    Handler handler = new Handler(this.mAsyncThread.getLooper());
                    this.mAsyncHandler = handler;
                    this.mMediaCodec.setCallback(callback, handler);
                }
                AVLogger.Debug(TAG, this, "ttmn: success to set callback func.");
                return 0;
            } catch (Exception unused) {
                AVLogger.Error(TAG, this, "ttmn: failed to set callback");
                return -1;
            }
        }
        return 0;
    }

    @CalledByNative
    public void setEnableMediaCodecSyncClose(int i10) {
        mEnableMediaCodecSyncClose = i10;
    }

    @CalledByNative
    public void setEnableVC1BlockList(int i10) {
        mIsByteVC1BlocklistEnable = i10;
    }

    @CalledByNative
    public void setHandler(long j10) {
        AVLogger.Debug(TAG, this, "ttmn: setHandler " + j10);
        this.mHandler = j10;
    }

    @CalledByNative
    public void setMode(int i10, int i11) {
        AVLogger.Debug(TAG, this, "ttmn: mode " + i10 + ", memcpyCrash " + i11);
        this.mMcMode = i10;
        this.mFixedMemcpyCrash = i11;
    }

    @CalledByNative
    public int setOutputSurface(Surface surface) {
        AVLogger.Debug(TAG, this, "setoutput surface = " + surface);
        if (!mDeviceNeedsSetOutputSurfaceWorkaround && this.mInputBuffersValid) {
            if (surface == null) {
                if (this.mDummySurface == null) {
                    createDummySurface();
                }
                surface = this.mDummySurface;
                AVLogger.Debug(TAG, this, "use dummy surface");
            }
            AVLogger.Debug(TAG, this, "setoutputSurface = " + surface);
            return setOutputSurfaceV23(this.mMediaCodec, surface);
        }
        return -1;
    }

    @CalledByNative
    public void setSingleCodec(int i10) {
        AVLogger.Debug(TAG, this, "ttmn: EnableSingleCodec " + i10);
        this.mEnableSingleCodec = i10;
    }

    @CalledByNative
    @TargetApi(23)
    public void speedEnhance(float f10) {
        if (this.mMediaCodec != null && this.mInputBuffersValid && Util.SDK_INT >= 23 && f10 > 30.0f) {
            AVLogger.Debug(TAG, this, "rate " + f10);
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", f10);
            try {
                this.mMediaCodec.setParameters(bundle);
            } catch (Exception e10) {
                AVLogger.Warn(TAG, this, "setParameters failed ret = " + e10);
            }
        }
    }

    @CalledByNative
    public int start() {
        AVLogger.Debug(TAG, this, "start");
        try {
            this.mMediaCodec.start();
            if (this.mMcMode == 0) {
                this.mInputBuffers = this.mMediaCodec.getInputBuffers();
                if (Util.SDK_INT >= 21) {
                    this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                }
            } else {
                this.mInputBuffers = null;
                this.mOutputBuffers = null;
            }
            this.mInputBuffersValid = true;
            this.mBufferInfo = new MediaCodec.BufferInfo();
            AVLogger.Debug(TAG, this, "start end");
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            return -1;
        }
    }

    @CalledByNative
    public int stop() {
        if (this.mInputBuffersValid) {
            AVLogger.Debug(TAG, this, "stop");
            try {
                this.mInputBuffersValid = false;
                this.mMediaCodec.stop();
            } catch (Exception unused) {
                AVLogger.Debug(TAG, this, "mediacodec stop exception");
                return -1;
            }
        }
        return 0;
    }

    @CalledByNative
    public int vendorOppoHWEnable() {
        if (Util.BARND.equals("OPPO")) {
            String property = getProperty(VENDOR_OPPO_PROPERTY, "1");
            AVLogger.Debug(TAG, this, "oppo property = " + property);
            try {
                return Integer.parseInt(property);
            } catch (NumberFormatException unused) {
                AVLogger.Warn(TAG, this, "vendor oppo property abnormal");
            }
        }
        return 1;
    }

    @CalledByNative
    public int write(AJMediaCodecFrame aJMediaCodecFrame) {
        if (aJMediaCodecFrame != null && aJMediaCodecFrame.data != null) {
            try {
                int dequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(30000L);
                if (dequeueInputBuffer >= 0) {
                    this.mInputBuffers[dequeueInputBuffer].put(aJMediaCodecFrame.data);
                    this.mMediaCodec.queueInputBuffer(dequeueInputBuffer, 0, aJMediaCodecFrame.size, aJMediaCodecFrame.pts, 0);
                    return 0;
                } else if (dequeueInputBuffer != -1) {
                    return -1;
                } else {
                    return 4;
                }
            } catch (Exception e10) {
                AVLogger.Error(TAG, this, "write meet exception =" + e10);
                return -1;
            }
        }
        AVLogger.Debug(TAG, this, "buffer is nullpoint");
        return -1;
    }
}
