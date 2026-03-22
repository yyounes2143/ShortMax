package com.ss.ttm.player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.ImageReader;
import android.os.Handler;
import android.os.RemoteException;
import android.view.Surface;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.utils.AVLogger;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Locale;
import java.util.Map;
@Keep
/* loaded from: classes6.dex */
public class TTPlayer {
    private static final String TAG = "TTPlayerJava";
    private static String mAppPath = null;
    private static String mCachePath = null;
    private static String mCrashPath = null;
    private static ILibraryLoader mDebugLibLoader = new DefaultLibraryLoader(true);
    private static boolean mIsIPCPlayer = false;
    private static boolean mSetLibraryLoader = false;
    private static int mSupportSampleRateNB;
    private static int[] mSupportSampleRates;
    private static String playerLibName;
    private Context mContext;
    private FrameMetadataListener mFrameMetadataListener;
    private long mHandle;
    private long mId;
    @Keep
    private long mMediaDataSource;
    private IPlayerNotifyer mNotifyer;
    private MediaPlayer.OnScreenshotListener mScreenshotListener;
    private StrategyParamsTransport mStrategyParamsTransport;
    private int mTracker = 0;

    /* loaded from: classes6.dex */
    private static class DefaultLibraryLoader implements ILibraryLoader {
        boolean mLoadLibraryPath;

        public DefaultLibraryLoader(boolean z10) {
            this.mLoadLibraryPath = z10;
        }

        @Override // com.ss.ttm.player.ILibraryLoader
        @SuppressLint({"UnsafeDynamicallyLoadedCode"})
        public boolean onLoadNativeLibs(List<String> list) {
            for (String str : list) {
                try {
                    if (this.mLoadLibraryPath) {
                        System.load(str);
                    } else {
                        System.loadLibrary(str);
                    }
                } catch (Throwable th2) {
                    AVLogger.Error(TTPlayer.TAG, this, "load lib failed = " + th2.getMessage());
                    return false;
                }
            }
            return true;
        }
    }

    static {
        playerLibName = "";
        synchronized (TTPlayer.class) {
            try {
                TTPlayerLibLoader.loadLibrary();
                playerLibName = TTPlayerLibLoader.getPlayerLibName();
                try {
                    detectAudioFormat();
                } catch (UnsatisfiedLinkError e10) {
                    String errorInfo = TTPlayerLibLoader.getErrorInfo();
                    if (errorInfo != null) {
                        throw new UnsatisfiedLinkError(errorInfo);
                    }
                    throw e10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public TTPlayer(Context context, long j10, int i10, int i11) throws Exception {
        this.mContext = context;
        create(j10, i10, i11);
    }

    private static final native void _close(long j10);

    private final native long _create(Context context, int i10, int i11, int i12, String str);

    private static final native String _getAppPath();

    private static final native int _getCurrentPosition(long j10);

    private static final native long _getDemuxerFactory(int i10);

    private static final native double _getDoubleValue(long j10, int i10, double d10);

    private static final native int _getDuration(long j10);

    private static final native float _getFloatValue(long j10, int i10, float f10);

    private static final native int _getIntValue(long j10, int i10, int i11);

    private static final native Object _getJObjectValue(long j10, int i10);

    private static final native long _getLongValue(long j10, int i10, long j11);

    private static final native Object[] _getStreamInfo(long j10);

    private static final native String _getStringValue(long j10, int i10);

    private static final native String _getSubtitleContent(long j10, int i10);

    private static final native int _getVideoHeight(long j10);

    private static final native int _getVideoWidth(long j10);

    private static final native int _isLooping(long j10);

    private static final native int _isPlaying(long j10);

    private static final native void _mouseEvent(long j10, int i10, int i11, int i12);

    private static final native int _pause(long j10);

    private static final native int _prepare(long j10);

    private static final native void _prevClose(long j10);

    private static final native int _registerNativeMdl(long j10);

    private static final native void _registerPlayerInfo();

    private static final native void _release(long j10);

    private static final native int _reset(long j10);

    private static final native void _rotateCamera(long j10, float f10, float f11);

    private static final native int _seek(long j10, int i10);

    private static final native int _seek2(long j10, int i10, int i11);

    private static final native void _setABRStrategy(long j10, ABRStrategy aBRStrategy);

    private static final native void _setAIBarrageInfo(long j10, MaskInfo maskInfo);

    private static final native void _setAudioProcessor(long j10, AudioProcessor audioProcessor);

    private static final native void _setDataSource(long j10, IMediaDataSource iMediaDataSource);

    private static final native void _setDataSource(long j10, String str);

    private static final native void _setDataSourceFd(long j10, int i10);

    private static final native int _setDoubleValue(long j10, int i10, double d10);

    private static final native int _setFloatValue(long j10, int i10, float f10);

    private static final native int _setFloatValueArray(long j10, int[] iArr, float[] fArr);

    private static final native void _setGlobalIntForKey(int i10, int i11);

    private static final native int _setIntValue(long j10, int i10, int i11);

    private static final native int _setIntValueArray(long j10, int[] iArr, int[] iArr2);

    private static final native void _setLoadControl(long j10, LoadControl loadControl);

    private static final native int _setLongValue(long j10, int i10, long j11);

    private static final native int _setLongValueArray(long j10, int[] iArr, long[] jArr);

    private static final native void _setLooping(long j10, int i10);

    private static final native void _setMaskInfo(long j10, MaskInfo maskInfo);

    private static final native void _setMediaTransport(long j10, MediaTransport mediaTransport);

    private static final native int _setStringValue(long j10, int i10, String str);

    private static final native int _setStringValueArray(long j10, int[] iArr, String[] strArr);

    private static final native void _setSubInfo(long j10, SubInfo subInfo);

    private static final native void _setSupportFormatNB(int i10);

    private static final native void _setSupprotSampleRates(int[] iArr, int i10);

    private static final native int _setSurfaceValue(long j10, long j11);

    private static final native void _setTraitObject(long j10, int i10, int i11, TraitObject traitObject);

    private static final native int _setVideoSurface(long j10, Surface surface);

    private static final native int _setVideoSurfaceTimeout(long j10, Surface surface, int i10);

    private static final native void _setVolume(long j10, float f10, float f11);

    private static final native int _setupMediaCodec(long j10);

    private static final native int _start(long j10);

    private static final native void _stop(long j10);

    private static final native void _switchStream(long j10, int i10, int i11);

    private static final native void _takeScreenshot(long j10);

    private void create(long j10, int i10, int i11) throws Exception {
        this.mNotifyer = null;
        long _create = _create(this.mContext, 0, i10, i11, mAppPath);
        this.mHandle = _create;
        AVLogger.InfoTrackLife(TAG, this, String.format(Locale.US, "create TTPlayer:%x", Long.valueOf(_create)));
        this.mId = j10;
        if (this.mHandle != 0) {
            return;
        }
        throw new Exception("create native player is fail.");
    }

    private static void detectAudioFormat() {
        if (mSupportSampleRateNB == 0) {
            int[] iArr = new int[AudioFormats.getDefaultSampleRatesNB()];
            mSupportSampleRates = iArr;
            int maxSupportedSampleRates = AudioFormats.getMaxSupportedSampleRates(iArr);
            mSupportSampleRateNB = maxSupportedSampleRates;
            _setSupprotSampleRates(mSupportSampleRates, maxSupportedSampleRates);
        }
    }

    public static final String getAppPath() {
        return mAppPath;
    }

    public static final String getCachePath() {
        return mCachePath;
    }

    @CalledByNative
    public static final String getCrashPath() {
        return mCrashPath;
    }

    public static long getDemuxerFactory(int i10) {
        return _getDemuxerFactory(i10);
    }

    @CalledByNative
    public static int getThreadPoolStackSize() {
        return TTPlayerConfiger.getValue(25, 32);
    }

    @CalledByNative
    public static int getVC2DecPoolSize() {
        return TTPlayerConfiger.getValue(42, 0);
    }

    @CalledByNative
    public static int getVC2StackSizeValue() {
        return TTPlayerConfiger.getValue(40, 0);
    }

    @CalledByNative
    public static int getVC2ThreadPriorityValue() {
        return TTPlayerConfiger.getValue(35, 0);
    }

    @CalledByNative
    public static int isEnableVC2DecPool() {
        return TTPlayerConfiger.getValue(41, false) ? 1 : 0;
    }

    @CalledByNative
    public static int isEnableVC2ThreadPriority() {
        return TTPlayerConfiger.getValue(34, false) ? 1 : 0;
    }

    @CalledByNative
    public static int isEnableVC2ThreadPriorityLite() {
        return TTPlayerConfiger.getValue(36, false) ? 1 : 0;
    }

    @CalledByNative
    public static boolean isIPPlayer() {
        AVLogger.d(TAG, "mIsIPCPlayer:" + mIsIPCPlayer);
        return mIsIPCPlayer;
    }

    @CalledByNative
    public static int isUseThreadV2() {
        return TTPlayerConfiger.getValue(38, 0);
    }

    @CalledByNative
    public static int isUsedThreadPool() {
        return TTPlayerConfiger.getValue(24, false) ? 1 : 0;
    }

    @CalledByNative
    public static int isVC2StackSizeOpt() {
        return TTPlayerConfiger.getValue(39, false) ? 1 : 0;
    }

    @Keep
    public static int registerNativeMdl(long j10) {
        return _registerNativeMdl(j10);
    }

    public static void registerPlayerInfo() {
        _registerPlayerInfo();
    }

    public static final void setCachePath(String str) {
        mCachePath = str;
    }

    public static final void setCrashPath(String str) {
        mCrashPath = str;
    }

    public static final void setGlobalIntOptionForKey(int i10, int i11) {
        _setGlobalIntForKey(i10, i11);
    }

    public static void setIsIPPlayer(boolean z10) {
        mIsIPCPlayer = z10;
    }

    public static final void setTempFileDir(String str) {
        mAppPath = str;
    }

    public int close() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        _close(j10);
        return 0;
    }

    @CalledByNative
    public void didReceivePacket(int i10, long j10, long j11, Map<Integer, String> map) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.didReceivePacket(i10, j10, j11, map);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @CalledByNative
    public void frameDTSNotify(int i10, long j10, long j11) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.frameDTSNotify(i10, j11, j10);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public double getDoubleOption(int i10, double d10) {
        return _getDoubleValue(this.mHandle, i10, d10);
    }

    public float getFloatOption(int i10, float f10) {
        return _getFloatValue(this.mHandle, i10, f10);
    }

    public final long getHandle() {
        return this.mHandle;
    }

    public int getIntOption(int i10, int i11) {
        if (i10 != 11) {
            if (i10 != 51) {
                switch (i10) {
                    case 1:
                        return _getDuration(this.mHandle);
                    case 2:
                        return _getCurrentPosition(this.mHandle);
                    case 3:
                        return _getVideoWidth(this.mHandle);
                    case 4:
                        return _getVideoHeight(this.mHandle);
                    case 5:
                        return _isLooping(this.mHandle);
                    case 6:
                        return _isPlaying(this.mHandle);
                    default:
                        return _getIntValue(this.mHandle, i10, i11);
                }
            }
            return this.mTracker;
        }
        return _getIntValue(this.mHandle, i10, i11);
    }

    public long getLongOption(int i10, long j10) {
        if (i10 == 50) {
            return this.mHandle;
        }
        return _getLongValue(this.mHandle, i10, j10);
    }

    public long getNativePlayer() {
        return this.mHandle;
    }

    public Object getObjectValue(int i10) {
        return _getJObjectValue(this.mHandle, i10);
    }

    @CalledByNative
    public String getStrategyParams(String str) {
        try {
            StrategyParamsTransport strategyParamsTransport = this.mStrategyParamsTransport;
            if (strategyParamsTransport == null) {
                return DevicePublicKeyStringDef.NONE;
            }
            return strategyParamsTransport.getStrategyParams(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return DevicePublicKeyStringDef.NONE;
        }
    }

    public StreamInfo[] getStreamInfo() {
        return (StreamInfo[]) _getStreamInfo(this.mHandle);
    }

    public String getStringOption(int i10) {
        if (i10 == 1095) {
            return playerLibName;
        }
        return _getStringValue(this.mHandle, i10);
    }

    public String getSubtitleContent(int i10) {
        return _getSubtitleContent(this.mHandle, i10);
    }

    public MediaPlayer.TrackInfo[] getTrackInfo() {
        StreamInfo[] streamInfoArr = (StreamInfo[]) _getStreamInfo(this.mHandle);
        if (streamInfoArr != null && streamInfoArr.length != 0) {
            int length = streamInfoArr.length;
            MediaPlayer.TrackInfo[] trackInfoArr = new MediaPlayer.TrackInfo[length];
            for (int i10 = 0; i10 < length; i10++) {
                trackInfoArr[i10] = streamInfoArr[i10].convertToTrackInfo();
            }
            return trackInfoArr;
        }
        return null;
    }

    public void mouseEvent(int i10, int i11, int i12) {
        _mouseEvent(this.mHandle, i10, i11, i12);
    }

    @CalledByNative
    public void onAbrDecisionInfo(long j10, String str) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.onAbrDecisionInfo(j10, str);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @CalledByNative
    public void onFrameAboutToBeRendered(int i10, long j10, long j11, Map<Integer, String> map) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.onFrameAboutToBeRendered(i10, j10, j11, map);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @CalledByNative
    public final void onLogInfo(int i10, int i11, String str) {
        AVLogger.d(TAG, "type:" + i10 + " code:" + i11 + str);
        IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
        if (iPlayerNotifyer != null) {
            try {
                iPlayerNotifyer.handleErrorNotify(this.mId, i10, i11, str);
            } catch (Throwable unused) {
            }
        }
    }

    @CalledByNative
    public void onNotify(int i10, int i11, int i12, String str) {
        try {
            IPlayerNotifyer iPlayerNotifyer = this.mNotifyer;
            if (iPlayerNotifyer != null) {
                iPlayerNotifyer.handlePlayerNotify(this.mId, i10, i11, i12, str);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int pause() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _pause(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int prepare() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _prepare(j10);
    }

    public int prevClose() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        _setVideoSurface(j10, null);
        return 0;
    }

    @CalledByNative
    public void receiveBinarySei(ByteBuffer byteBuffer) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.receiveBinarySei(byteBuffer);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void release() {
        AVLogger.InfoTrackLife(TAG, this, String.format(Locale.US, "release TTPlayer:%x", Long.valueOf(this.mHandle)));
        long j10 = this.mHandle;
        if (j10 != 0) {
            _release(j10);
            this.mHandle = 0L;
        }
        this.mNotifyer = null;
        this.mScreenshotListener = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int reset() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _reset(j10);
    }

    public void rotateCamera(float f10, float f11) {
        _rotateCamera(this.mHandle, f10, f11);
    }

    public void seekTo(int i10) {
        _seek(this.mHandle, i10);
    }

    public void setABRStrategy(ABRStrategy aBRStrategy) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setABRStrategy(j10, aBRStrategy);
        }
    }

    public void setAIBarrageInfo(MaskInfo maskInfo) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setAIBarrageInfo(j10, maskInfo);
        }
    }

    public void setAudioProcessor(AudioProcessor audioProcessor) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setAudioProcessor(j10, audioProcessor);
        }
    }

    public void setDataSource(String str) {
        AVLogger.d(TAG, str);
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSource(j10, str);
        }
    }

    public void setDataSourceFd(int i10) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSourceFd(j10, i10);
        }
    }

    public int setDoubleOption(int i10, double d10) {
        return _setDoubleValue(this.mHandle, i10, d10);
    }

    public int setFloatOption(int i10, float f10) {
        return _setFloatValue(this.mHandle, i10, f10);
    }

    public int setFloatOptionArray(int[] iArr, float[] fArr) {
        return _setFloatValueArray(this.mHandle, iArr, fArr);
    }

    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mFrameMetadataListener = frameMetadataListener;
    }

    public int setIntOption(int i10, int i11) throws RemoteException {
        if (i10 == 111) {
            int[] iArr = TTPlayerKeys.SupportSampleRates;
            int length = iArr.length;
            int[] iArr2 = new int[iArr.length];
            int i12 = 0;
            for (int i13 = 0; i13 < length; i13++) {
                if (((1 << i13) & i11) == 0) {
                    iArr2[i12] = TTPlayerKeys.SupportSampleRates[i13];
                    i12++;
                }
            }
            _setSupprotSampleRates(iArr2, i12);
            return 0;
        }
        return _setIntValue(this.mHandle, i10, i11);
    }

    public int setIntOptionArray(int[] iArr, int[] iArr2) {
        return _setIntValueArray(this.mHandle, iArr, iArr2);
    }

    public void setLoadControl(LoadControl loadControl) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setLoadControl(j10, loadControl);
        }
    }

    public int setLongOption(int i10, long j10) {
        return _setLongValue(this.mHandle, i10, j10);
    }

    public int setLongOptionArray(int[] iArr, long[] jArr) {
        return _setLongValueArray(this.mHandle, iArr, jArr);
    }

    public void setLooping(int i10) {
        _setLooping(this.mHandle, i10);
    }

    public void setMaskInfo(MaskInfo maskInfo) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setMaskInfo(j10, maskInfo);
        }
    }

    public void setMediaTransport(MediaTransport mediaTransport) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setMediaTransport(j10, mediaTransport);
        }
    }

    public void setNotifyer(IPlayerNotifyer iPlayerNotifyer) {
        this.mNotifyer = iPlayerNotifyer;
    }

    public void setNotifyerState(long j10) {
        _setIntValue(this.mHandle, 16, (int) j10);
    }

    public void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
        AJProducerManager.setOnImageAvailableListener(this.mHandle, onImageAvailableListener, handler);
    }

    public void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        this.mScreenshotListener = onScreenshotListener;
    }

    public void setStrategyParamsTransport(StrategyParamsTransport strategyParamsTransport) {
        this.mStrategyParamsTransport = strategyParamsTransport;
    }

    public int setStringOption(int i10, String str) {
        return _setStringValue(this.mHandle, i10, str);
    }

    public int setStringOptionArray(int[] iArr, String[] strArr) {
        return _setStringValueArray(this.mHandle, iArr, strArr);
    }

    public void setSubInfo(SubInfo subInfo) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setSubInfo(j10, subInfo);
        }
    }

    public int setSurfaceValue(long j10) {
        return _setSurfaceValue(this.mHandle, j10);
    }

    public void setTraitObject(int i10, TraitObject traitObject) {
        int i11;
        if (this.mHandle != 0) {
            if (traitObject != null) {
                i11 = traitObject.version();
            } else {
                i11 = -1;
            }
            _setTraitObject(this.mHandle, i10, i11, traitObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int setVideoSurface(Surface surface) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            return _setVideoSurface(j10, surface);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int setVideoSurfaceTimeOut(Surface surface, int i10) {
        long j10 = this.mHandle;
        if (j10 != 0) {
            return _setVideoSurfaceTimeout(j10, surface, i10);
        }
        return -1;
    }

    public void setVolume(float f10, float f11) {
        _setVolume(this.mHandle, f10, f11);
    }

    public int setupMediaCodec() {
        return _setupMediaCodec(this.mHandle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int start() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _start(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int stop() {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _stop(j10);
            return 0;
        }
        return -1;
    }

    public void switchStream(int i10, int i11) {
        _switchStream(this.mHandle, i10, i11);
    }

    public void takeScreenshot() {
        _takeScreenshot(this.mHandle);
    }

    @CalledByNative
    public final void takeScreenshotComplete(Bitmap bitmap) {
        MediaPlayer.OnScreenshotListener onScreenshotListener = this.mScreenshotListener;
        if (onScreenshotListener != null) {
            onScreenshotListener.onTakeScreenShotCompletion(bitmap);
        }
    }

    @CalledByNative
    public void updateFrameTerminatedDTS(int i10, long j10, long j11) {
        try {
            FrameMetadataListener frameMetadataListener = this.mFrameMetadataListener;
            if (frameMetadataListener != null) {
                frameMetadataListener.updateFrameTerminatedDTS(i10, j10, j11);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void seekTo(int i10, int i11) {
        _seek2(this.mHandle, i10, i11);
    }

    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalArgumentException, SecurityException, IllegalStateException {
        long j10 = this.mHandle;
        if (j10 != 0) {
            _setDataSource(j10, iMediaDataSource);
        }
    }

    private static final void checkPlayerModel() {
    }
}
