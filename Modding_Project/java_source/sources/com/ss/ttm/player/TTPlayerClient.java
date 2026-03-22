package com.ss.ttm.player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.ImageReader;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ss.ttm.net.AVResolver;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.utils.AVErrorInfo;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttm.utils.AVTime;
import com.vungle.ads.internal.model.AdPayload;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
@Keep
/* loaded from: classes6.dex */
public class TTPlayerClient extends MediaPlayerClient implements Handler.Callback, ISurfaceListener {
    public static final int KEY_IS_CONFIG_PARAMS_OPTION = 100;
    private static final String TAG = "TTPlayerClient";
    private String mBufferingInfo;
    private TTSurfaceCallback mCallback;
    private int mCodecAndSurfaceReuse;
    private HashMap<Integer, Integer> mConfigParams;
    private boolean mConnectedCpu;
    private Context mContext;
    private int mCrashType;
    private StringBuilder mCrashedInfo;
    private int mDisablePlayerStayAwake;
    private int mErrorCode;
    private Handler mHandler;
    private int mIgnoreSurfaceCreated;
    private MediaPlayer.OnLogListener mLogListener;
    private int mMediaCodecStopTimeOutMs;
    private MediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnExternInfoListener mOnExternInfoListener;
    private MediaPlayer.OnInfoListener mOnInfoListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private MediaPlayer.onSARChangedListener mOnSARChangedListener;
    private MediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
    private MediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private ITTPlayerRef mPlayer;
    private final ReentrantReadWriteLock.ReadLock mReadLock;
    private final ReentrantReadWriteLock mReadWritedLock;
    private volatile boolean mRealsedSurface;
    private int mRtcPlay;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private SurfaceHolder mSurfaceHolder;
    private String mUri;
    private String mVoiceInfo;
    private PowerManager.WakeLock mWakeLock;
    private MediaPlayer mWrapper;
    private final ReentrantReadWriteLock.WriteLock mWriteLock;
    private boolean mSeekComplete = true;
    private LinkedList<String> mLogInfo = new LinkedList<>();
    private int mPlayLifeId = -1;
    private final Object mHandlerLocker = new Object();
    private final ReentrantLock mReentrantLock = new ReentrantLock();
    private final ReentrantLock mReentrantLockInRtc = new ReentrantLock();

    static {
        TTVersion.saveVersionInfo();
    }

    private TTPlayerClient(Context context, HashMap<Integer, Integer> hashMap) {
        this.mRealsedSurface = false;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mReadWritedLock = reentrantReadWriteLock;
        this.mReadLock = reentrantReadWriteLock.readLock();
        this.mWriteLock = reentrantReadWriteLock.writeLock();
        this.mErrorCode = 0;
        this.mRtcPlay = 0;
        this.mCrashedInfo = new StringBuilder(1024);
        this.mCrashType = -1;
        this.mDisablePlayerStayAwake = 0;
        this.mMediaCodecStopTimeOutMs = -1;
        this.mCodecAndSurfaceReuse = 0;
        this.mIgnoreSurfaceCreated = 0;
        this.mConnectedCpu = false;
        this.mConfigParams = hashMap;
        this.mRealsedSurface = false;
        this.mCallback = new TTSurfaceCallback(this);
        this.mContext = context;
        if (Looper.myLooper() != null) {
            this.mHandler = new Handler(this);
        } else {
            this.mHandler = new Handler(Looper.getMainLooper(), this);
        }
    }

    @Keep
    public static synchronized TTPlayerClient create(MediaPlayer mediaPlayer, Context context) {
        TTPlayerClient create;
        synchronized (TTPlayerClient.class) {
            create = create(mediaPlayer, context, null);
        }
        return create;
    }

    @Keep
    public static long getDemuxerFactory(int i10) {
        return TTPlayer.getDemuxerFactory(i10);
    }

    private String getPlayerCrashedInfo() {
        Context context;
        String crashFileContext;
        String crashFileContext2;
        int value = TTPlayerConfiger.getValue(18, 1);
        StringBuilder sb2 = new StringBuilder();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef == null) {
            context = this.mContext;
        } else {
            context = iTTPlayerRef.getContext();
        }
        if (context == null) {
            return "context is null";
        }
        if (value > 1) {
            String existsCrashFilePath = TTCrashUtil.existsCrashFilePath(context);
            if (existsCrashFilePath != null && (crashFileContext2 = TTCrashUtil.getCrashFileContext(context, existsCrashFilePath, sb2)) != null) {
                TTCrashUtil.deleteCrashFile(this.mContext, existsCrashFilePath);
                this.mCrashType = 1;
                if (TTPlayerConfiger.getValue(5, false)) {
                    AVLogger.d(TAG, "<TTPlayerIPClient,getCrashedInfo>find breakpad file");
                }
                return crashFileContext2;
            }
            AVErrorInfo.setupPhoneInfo(context, sb2);
        }
        String value2 = TTPlayerConfiger.getValue(19, (String) null);
        if (value2 != null && (crashFileContext = TTCrashUtil.getCrashFileContext(this.mContext, value2, sb2)) != null) {
            TTCrashUtil.deleteCrashFile(this.mContext, value2);
            this.mCrashType = 1;
            if (TTPlayerConfiger.getValue(5, false)) {
                AVLogger.d(TAG, "<TTPlayerIPClient,getCrashedInfo>find breakpad file");
            }
            return crashFileContext;
        }
        sb2.append("\ncreate time:" + AVTime.getFormatNow());
        sb2.append("\nport version:");
        sb2.append(value);
        sb2.append("\nstart service info:");
        sb2.append(TTPlayerConfiger.getValue(16, "not find service start info"));
        sb2.append("\nstop service info:");
        sb2.append(TTPlayerConfiger.getValue(12, "not find service stop info"));
        sb2.append("\ncrash:");
        sb2.append(TTPlayerConfiger.getValue(7, false));
        sb2.append("\nsdk info:");
        sb2.append(TTPlayerConfiger.getValue(15, "not find sdk info"));
        sb2.append("\ntimeout count:");
        sb2.append(TTPlayerConfiger.getValue(10, -1));
        sb2.append("\nforeground:");
        sb2.append(TTPlayerConfiger.getValue(21, -1));
        sb2.append("\non screen:");
        sb2.append(TTPlayerConfiger.getValue(22, -1));
        sb2.append("\n battery info:");
        sb2.append(TTPlayerConfiger.getValue(23, "not find"));
        sb2.append("\nurl:");
        sb2.append(this.mUri);
        sb2.append("\ncrash:\r\n");
        sb2.append((CharSequence) this.mCrashedInfo);
        this.mCrashType = 0;
        if (value > 1) {
            if (TTPlayerConfiger.getValue(5, false)) {
                String str = TAG;
                AVLogger.d(str, "<TTPlayerIPClient,getCrashedInfo>" + sb2.toString());
            }
            return TTCrashUtil.getBase64SampleCrash(sb2.toString());
        }
        return sb2.toString();
    }

    private String getPlayerErrorInfo() {
        try {
            StringBuilder sb2 = new StringBuilder();
            LinkedList<String> linkedList = this.mLogInfo;
            if ((linkedList != null && linkedList.size() > 0) || this.mBufferingInfo != null || this.mVoiceInfo != null) {
                AVErrorInfo.setupErrorInfo(this.mContext, sb2, "error", "play error", this.mUri);
                Iterator<String> it = this.mLogInfo.iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append("\n");
                }
                String str = this.mBufferingInfo;
                if (str != null) {
                    sb2.append(str);
                    sb2.append("\n");
                    this.mBufferingInfo = null;
                }
                String str2 = this.mVoiceInfo;
                if (str2 != null) {
                    sb2.append(str2);
                    sb2.append("\n");
                    this.mVoiceInfo = null;
                }
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValid() {
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef != null && iTTPlayerRef.isValid()) {
            return true;
        }
        return false;
    }

    private void notifyInfo(int i10, int i11) {
        int i12;
        if (this.mOnInfoListener == null) {
            return;
        }
        if (i10 != 4) {
            if (i10 != 5) {
                if (i10 != 41) {
                    if (i10 != 42) {
                        if (i10 != 57) {
                            if (i10 != 58) {
                                if (i10 != 61) {
                                    if (i10 != 62) {
                                        switch (i10) {
                                            case 7:
                                                String str = TAG;
                                                AVLogger.d(str, "handleNotify --------------->>>>>>info rendering start:what:" + i10 + "");
                                                i12 = 3;
                                                break;
                                            case 8:
                                                i12 = 801;
                                                break;
                                            case 9:
                                                i12 = 802;
                                                break;
                                            case 10:
                                                i12 = 901;
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 20:
                                                        i12 = MediaPlayer.MEDIA_INFO_ROTATION_CHANGED;
                                                        break;
                                                    case 21:
                                                        i12 = MediaPlayer.MEDIA_INFO_STREAM_CHANGED;
                                                        break;
                                                    case 22:
                                                        i12 = MediaPlayer.MEDIA_INFO_DEVICE_OPENED;
                                                        break;
                                                    case 23:
                                                        i12 = MediaPlayer.MEDIA_INFO_SAR_CHANGED;
                                                        break;
                                                    case 24:
                                                        i12 = MediaPlayer.MEDIA_INFO_SPEED_CHANGED;
                                                        break;
                                                    case 25:
                                                        i12 = MediaPlayer.MEDIA_INFO_FIRST_FRAME_AFTER_SEEK;
                                                        break;
                                                    case 26:
                                                        i12 = MediaPlayer.MEDIA_INFO_VIDEO_STREAM_BITRATE_CHANGED;
                                                        break;
                                                    case 27:
                                                        String str2 = TAG;
                                                        AVLogger.d(str2, "handleNotify --------------->>>>>>info video render stall:what:" + i10 + "");
                                                        i12 = MediaPlayer.MEDIA_INFO_AUDIO_RENDER_STALL;
                                                        break;
                                                    case 28:
                                                        String str3 = TAG;
                                                        AVLogger.d(str3, "handleNotify --------------->>>>>>info audio render stall:what:" + i10 + "");
                                                        i12 = MediaPlayer.MEDIA_INFO_VIDEO_RENDER_STALL;
                                                        break;
                                                    case 29:
                                                        String str4 = TAG;
                                                        AVLogger.d(str4, "handleNotify --------------->>>>>>info audio rendering start:what:" + i10 + "");
                                                        i12 = MediaPlayer.MEDIA_INFO_AUDIO_RENDER_START;
                                                        break;
                                                    case 30:
                                                        String str5 = TAG;
                                                        AVLogger.d(str5, "handleNotify --------------->>>>>>info ready for display:what:" + i10 + "");
                                                        i12 = MediaPlayer.MEDIA_INFO_VIDEO_READY_FOR_DISPLAY;
                                                        break;
                                                    case 32:
                                                        i12 = MediaPlayer.MEDIA_INFO_SILENCE_DETECTED;
                                                        break;
                                                    case 47:
                                                        String str6 = TAG;
                                                        AVLogger.d(str6, "handleNotify --------------->>>>>>info preBuffering  start:what:" + i10 + "");
                                                        i12 = MediaPlayer.MEDIA_INFO_PREBUFFERING_START;
                                                        break;
                                                    case 82:
                                                        i12 = MediaPlayer.MEDIA_INFO_VIDEO_ABNORMAL_OCCURED;
                                                        break;
                                                    case 84:
                                                        i12 = MediaPlayer.MEDIA_INFO_RENDER_EXCEPTION;
                                                        break;
                                                    case 1000:
                                                        i12 = MediaPlayer.MEDIA_INFO_DUMMY_PLAYER_SESSON_STOP;
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                            case 34:
                                                                String str7 = TAG;
                                                                AVLogger.d(str7, "handleNotify --------------->>>>>>info video demuxer stall:what:" + i10 + "");
                                                                i12 = MediaPlayer.MEDIA_INFO_VIDEO_DEMUX_STALL;
                                                                break;
                                                            case 35:
                                                                String str8 = TAG;
                                                                AVLogger.d(str8, "handleNotify --------------->>>>>>info audio demuxer stall:what:" + i10 + "");
                                                                i12 = MediaPlayer.MEDIA_INFO_AUDIO_DEMUX_STALL;
                                                                break;
                                                            case 36:
                                                                String str9 = TAG;
                                                                AVLogger.d(str9, "handleNotify --------------->>>>>>info video decode stall:what:" + i10 + "");
                                                                i12 = MediaPlayer.MEDIA_INFO_VIDEO_DECODE_STALL;
                                                                break;
                                                            case 37:
                                                                String str10 = TAG;
                                                                AVLogger.d(str10, "handleNotify --------------->>>>>>info audio decode stall:what:" + i10 + "");
                                                                i12 = MediaPlayer.MEDIA_INFO_AUDIO_DECODE_STALL;
                                                                break;
                                                            case 38:
                                                                i12 = MediaPlayer.MEDIA_INFO_POSITION_UPDATE;
                                                                break;
                                                            case 39:
                                                                String str11 = TAG;
                                                                AVLogger.d(str11, "handleNotify --------------->>>>>>info audio pts back:what:" + i10 + "");
                                                                i12 = MediaPlayer.MEDIA_INFO_AUDIO_PTS_BACK;
                                                                break;
                                                            default:
                                                                switch (i10) {
                                                                    case 49:
                                                                        i12 = MediaPlayer.MEDIA_INFO_BARRAGE_MASK_INFO;
                                                                        break;
                                                                    case 50:
                                                                        i12 = MediaPlayer.MEDIA_INFO_SUBTITLE_INFO;
                                                                        break;
                                                                    case 51:
                                                                        i12 = MediaPlayer.MEDIA_INFO_AVOUTSYNC_START;
                                                                        break;
                                                                    case 52:
                                                                        i12 = MediaPlayer.MEDIA_INFO_AVOUTSYNC_END;
                                                                        break;
                                                                    case 53:
                                                                        String str12 = TAG;
                                                                        AVLogger.d(str12, "handleNotify --------------->>>>>>formater start:what:" + i10 + "");
                                                                        i12 = MediaPlayer.MEDIA_INFO_FORMATER_START;
                                                                        break;
                                                                    case 54:
                                                                        String str13 = TAG;
                                                                        AVLogger.d(str13, "handleNotify --------------->>>>>>decoder start:what:" + i10 + "");
                                                                        i12 = MediaPlayer.MEDIA_INFO_DECODER_START;
                                                                        break;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 65:
                                                                                i12 = MediaPlayer.MEDIA_INFO_PRECISE_PAUSED;
                                                                                break;
                                                                            case 66:
                                                                                i12 = MediaPlayer.MEDIA_INFO_ABR_GET_PREDICT;
                                                                                break;
                                                                            case 67:
                                                                                i12 = MediaPlayer.MEDIA_INFO_LIVE_VIDEO_RENDER_START;
                                                                                break;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 70:
                                                                                        i12 = MediaPlayer.MEDIA_INFO_VIDEO_SECOND_FRAME;
                                                                                        break;
                                                                                    case 71:
                                                                                        i12 = MediaPlayer.MEDIA_INFO_LIVE_FIRST_FRAME_AFTER_SURFACE_CHANGE;
                                                                                        break;
                                                                                    case 72:
                                                                                        i12 = MediaPlayer.MEDIA_INFO_FIRST_AVSYNC_FRAME;
                                                                                        break;
                                                                                    case 73:
                                                                                        i12 = MediaPlayer.MEDIA_INFO_REFRESH_SURFACE;
                                                                                        break;
                                                                                    default:
                                                                                        i12 = -1;
                                                                                        break;
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                    } else {
                                        i12 = MediaPlayer.MEDIA_INFO_INFO_ID_CHANGED;
                                    }
                                } else {
                                    i12 = MediaPlayer.MEDIA_STARTTIME_NO_VIDEO_FRAME;
                                }
                            } else {
                                i12 = MediaPlayer.MEDIA_NO_AVRENDER_END;
                            }
                        } else {
                            i12 = MediaPlayer.MEDIA_NO_AVRENDER_START;
                        }
                    } else {
                        String str14 = TAG;
                        AVLogger.d(str14, "handleNotify --------------->>>>>>info rtc audio decode stall:what:" + i10 + "");
                        i12 = MediaPlayer.MEDIA_INFO_RTC_AUDIO_DECODE_STALL;
                    }
                } else {
                    String str15 = TAG;
                    AVLogger.d(str15, "handleNotify --------------->>>>>>info rtc video decode stall:what:" + i10 + "");
                    i12 = MediaPlayer.MEDIA_INFO_RTC_VIDEO_DECODE_STALL;
                }
            } else {
                String str16 = TAG;
                AVLogger.d(str16, "handleNotify --------------->>>>>>info buffering  end:what:" + i10 + "");
                i12 = 702;
            }
        } else {
            String str17 = TAG;
            AVLogger.d(str17, "handleNotify --------------->>>>>>info buffering  start:what:" + i10 + "");
            i12 = 701;
        }
        this.mOnInfoListener.onInfo(this.mWrapper, i12, i11);
    }

    private void onExternInfo(int i10, int i11, String str) {
        if (this.mRtcPlay != 0) {
            try {
                this.mReentrantLockInRtc.lock();
                MediaPlayer.OnExternInfoListener onExternInfoListener = this.mOnExternInfoListener;
                if (onExternInfoListener != null && str != null) {
                    onExternInfoListener.onExternInfo(this.mWrapper, i10, str);
                    this.mOnExternInfoListener.onExternInfo2(this.mWrapper, i10, i11, str);
                }
                return;
            } finally {
                this.mReentrantLockInRtc.unlock();
            }
        }
        MediaPlayer.OnExternInfoListener onExternInfoListener2 = this.mOnExternInfoListener;
        if (onExternInfoListener2 != null && str != null) {
            onExternInfoListener2.onExternInfo(this.mWrapper, i10, str);
            this.mOnExternInfoListener.onExternInfo2(this.mWrapper, i10, i11, str);
        }
    }

    private void sendCompletioned(int i10) {
        try {
            this.mReentrantLock.lock();
            MediaPlayer.OnCompletionListener onCompletionListener = this.mOnCompletionListener;
            if (onCompletionListener != null && i10 >= this.mPlayLifeId) {
                onCompletionListener.onCompletion(this.mWrapper);
            }
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    private void sendErrorInfo(int i10, int i11) {
        try {
            this.mReentrantLock.lock();
            MediaPlayer.OnErrorListener onErrorListener = this.mOnErrorListener;
            if (onErrorListener != null && i11 >= this.mPlayLifeId) {
                int i12 = this.mErrorCode;
                if (i12 == 0) {
                    if (i10 == 0) {
                        i10 = -1048575;
                    }
                } else {
                    i10 = i12;
                }
                onErrorListener.onError(this.mWrapper, i10, 0);
            }
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    private void sendSeekCompleted(int i10) {
        MediaPlayer.OnSeekCompleteListener onSeekCompleteListener;
        if (!this.mSeekComplete && (onSeekCompleteListener = this.mOnSeekCompleteListener) != null) {
            this.mSeekComplete = true;
            if (i10 >= this.mPlayLifeId) {
                onSeekCompleteListener.onSeekComplete(this.mWrapper);
            }
        }
    }

    @Keep
    public static void setGlobalIntOptionForKey(int i10, int i11) {
        ITTPlayerRef.setGlobalIntOptionForKey(i10, i11);
    }

    @SuppressLint({"Wakelock"})
    private void stayAwake(boolean z10) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z10 && !wakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z10 && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z10;
        updateSurfaceScreenOn();
    }

    public void close() {
        String str = TAG;
        AVLogger.d(str, "close start");
        this.mRealsedSurface = true;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.close();
            }
            this.mReadLock.unlock();
            AVLogger.d(str, "close end");
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void deselectTrack(int i10) {
        this.mReadLock.lock();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef != null && i10 == 0) {
            iTTPlayerRef.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 1);
        } else if (iTTPlayerRef != null) {
            iTTPlayerRef.setIntOption(65, i10 << 8);
        }
        this.mReadLock.unlock();
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getCurrentPosition() {
        this.mReadLock.lock();
        try {
            int i10 = 0;
            if (isValid()) {
                i10 = this.mPlayer.getIntOption(2, 0);
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public String getDataSource() {
        return this.mUri;
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getDuration() {
        this.mReadLock.lock();
        try {
            int i10 = 0;
            if (isValid()) {
                i10 = this.mPlayer.getIntOption(1, 0);
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public float getFloatOption(int i10, float f10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                f10 = this.mPlayer.getFloatOption(i10, f10);
            }
            return f10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getIntOption(int i10, int i11) {
        if (i10 == 5000) {
            return this.mErrorCode;
        }
        if (i10 == 26) {
            return this.mCrashType;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i11 = this.mPlayer.getIntOption(i10, i11);
            }
            return i11;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public long getLongOption(int i10, long j10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                j10 = this.mPlayer.getLongOption(i10, j10);
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public Object getObjectOption(int i10) {
        Object obj;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                obj = this.mPlayer.getObjectOption(i10);
            } else {
                obj = null;
            }
            return obj;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getSelectedTrack(int i10) {
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 4) {
            return 2;
        }
        return -1;
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public String getStringOption(int i10) {
        if (i10 == 5001) {
            return getPlayerCrashedInfo();
        }
        String str = null;
        if (i10 == 5002) {
            LinkedList<String> linkedList = this.mLogInfo;
            if (linkedList == null || linkedList.size() == 0) {
                return null;
            }
            return getPlayerErrorInfo();
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                str = this.mPlayer.getStringOption(i10);
            }
            return str;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public String getSubtitleContent(int i10) {
        String str;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                str = this.mPlayer.getSubtitleContent(i10);
            } else {
                str = null;
            }
            return str;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        MediaPlayer.TrackInfo[] trackInfoArr;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                trackInfoArr = this.mPlayer.getTrackInfo();
            } else {
                trackInfoArr = null;
            }
            return trackInfoArr;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getType() {
        int i10;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i10 = this.mPlayer.getType();
            } else {
                i10 = 0;
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getVideoHeight() {
        this.mReadLock.lock();
        try {
            int i10 = 0;
            if (isValid()) {
                i10 = this.mPlayer.getIntOption(4, 0);
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getVideoType() {
        this.mReadLock.lock();
        try {
            int i10 = 0;
            if (isValid()) {
                i10 = this.mPlayer.getIntOption(11, 0);
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int getVideoWidth() {
        this.mReadLock.lock();
        try {
            int i10 = 0;
            if (isValid()) {
                i10 = this.mPlayer.getIntOption(3, 0);
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        String str;
        if (message.what != 3) {
            String str2 = TAG;
            AVLogger.d(str2, "handleMessage send message prev.thread id:" + Thread.currentThread().getId());
        }
        int i10 = message.arg2;
        int i11 = message.what;
        int i12 = message.arg1;
        Object obj = message.obj;
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        handleNotify(i10, i11, i12, str);
        if (message.what != 3) {
            String str3 = TAG;
            AVLogger.d(str3, "handleMessage send message after.thread id:" + Thread.currentThread().getId());
            return true;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void handleNotify(int i10, int i11, int i12, String str) {
        if (i11 != 0) {
            if (i11 != 12) {
                if (i11 != 13) {
                    if (i11 != 84) {
                        if (i11 != 85) {
                            switch (i11) {
                                case 0:
                                case 45:
                                    break;
                                case 32:
                                case 34:
                                case 35:
                                case 36:
                                case 37:
                                case 38:
                                case 39:
                                case 41:
                                case 42:
                                case 47:
                                case 49:
                                case 82:
                                case 1000:
                                    break;
                                case 33:
                                case 40:
                                case 43:
                                case 44:
                                    break;
                                case 20000:
                                    String str2 = TAG;
                                    AVLogger.d(str2, "handleNotify -------------->>>>>>>Completed:what:" + i11 + ",parameter:" + i12);
                                    if (this.mErrorCode == -2139062143) {
                                        return;
                                    }
                                    this.mErrorCode = MediaPlayer.MEDIA_PLAYER_CRASHED_ERROR;
                                    this.mWriteLock.lock();
                                    try {
                                        ITTPlayerRef iTTPlayerRef = this.mPlayer;
                                        if (iTTPlayerRef != null) {
                                            this.mPlayer = null;
                                            iTTPlayerRef.invalid();
                                            this.mWriteLock.unlock();
                                            HashMap<Integer, Integer> hashMap = this.mConfigParams;
                                            if (hashMap != null && hashMap.get(100).intValue() == 1) {
                                                this.mConfigParams.put(7, 1);
                                            } else {
                                                TTPlayerConfiger.setValue(7, true);
                                            }
                                            stayAwake(false);
                                            sendSeekCompleted(i10);
                                            sendErrorInfo(i12, i10);
                                            sendCompletioned(i10);
                                            return;
                                        }
                                        return;
                                    } finally {
                                        this.mWriteLock.unlock();
                                    }
                                default:
                                    switch (i11) {
                                        case 2:
                                            if (this.mOnPreparedListener != null) {
                                                String str3 = TAG;
                                                AVLogger.d(str3, "handleNotify --------------->>>>>>Prepared:what:" + i11 + ",parameter:" + i12);
                                                this.mOnPreparedListener.onPrepared(this.mWrapper);
                                                return;
                                            }
                                            return;
                                        case 3:
                                            if (i12 == 100) {
                                                String str4 = TAG;
                                                AVLogger.d(str4, "handleNotify -------------->>>>>>>update buffer:what:" + i11 + ",parameter:" + i12);
                                            }
                                            MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = this.mOnBufferingUpdateListener;
                                            if (onBufferingUpdateListener != null) {
                                                onBufferingUpdateListener.onBufferingUpdate(this.mWrapper, i12);
                                                return;
                                            }
                                            return;
                                        case 4:
                                        case 5:
                                        case 7:
                                        case 8:
                                        case 9:
                                        case 10:
                                            break;
                                        case 6:
                                            MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = this.mOnVideoSizeChangedListener;
                                            if (onVideoSizeChangedListener != null) {
                                                onVideoSizeChangedListener.onVideoSizeChanged(this.mWrapper, 65535 & i12, i12 >> 16);
                                                return;
                                            }
                                            return;
                                        default:
                                            switch (i11) {
                                                case 19:
                                                    break;
                                                case 20:
                                                case 21:
                                                case 22:
                                                case 24:
                                                case 25:
                                                case 26:
                                                case 27:
                                                case 28:
                                                case 29:
                                                case 30:
                                                    break;
                                                case 23:
                                                    String str5 = TAG;
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("handleNotify --------------->>>>>>IsSARChange:what:");
                                                    sb2.append(i11);
                                                    sb2.append(",num:");
                                                    int i13 = 65535 & i12;
                                                    sb2.append(i13);
                                                    sb2.append(",den:");
                                                    int i14 = i12 >> 16;
                                                    sb2.append(i14);
                                                    AVLogger.d(str5, sb2.toString());
                                                    MediaPlayer.onSARChangedListener onsarchangedlistener = this.mOnSARChangedListener;
                                                    if (onsarchangedlistener != null) {
                                                        onsarchangedlistener.onSARChanged(this.mWrapper, i13, i14);
                                                        return;
                                                    }
                                                    return;
                                                default:
                                                    switch (i11) {
                                                        case 51:
                                                        case 52:
                                                        case 53:
                                                        case 54:
                                                            break;
                                                        default:
                                                            switch (i11) {
                                                                case 57:
                                                                case 58:
                                                                    break;
                                                                case 59:
                                                                    break;
                                                                default:
                                                                    switch (i11) {
                                                                        case 61:
                                                                        case 62:
                                                                            break;
                                                                        case 63:
                                                                            break;
                                                                        default:
                                                                            switch (i11) {
                                                                                case 65:
                                                                                case 66:
                                                                                case 67:
                                                                                    break;
                                                                                case 68:
                                                                                    break;
                                                                                default:
                                                                                    switch (i11) {
                                                                                        case 70:
                                                                                        case 71:
                                                                                        case 72:
                                                                                            break;
                                                                                        case 73:
                                                                                            this.mConnectedCpu = true;
                                                                                            notifyInfo(i11, i12);
                                                                                            return;
                                                                                        default:
                                                                                            return;
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        onExternInfo(i11, i12, str);
                        return;
                    }
                    notifyInfo(i11, i12);
                    return;
                }
                String str6 = TAG;
                AVLogger.d(str6, "handleNotify -------------->>>>>>>Completed:what:" + i11 + ",parameter:" + i12);
                stayAwake(false);
                AVLogger.d(str6, "life:" + i10 + ",plifeId:" + this.mPlayLifeId);
                sendSeekCompleted(i10);
                sendCompletioned(i10);
                return;
            }
            String str7 = TAG;
            AVLogger.d(str7, "handleNotify -------------->>>>>>>update seek complete:what:" + i11 + ",parameter:" + i12);
            sendSeekCompleted(i10);
            return;
        }
        String str8 = TAG;
        AVLogger.d(str8, "handleNotify -------------->>>>>>>Error:what:" + i11 + ",parameter:" + i12);
        stayAwake(false);
        if (i12 == -499989) {
            HashMap<Integer, Integer> hashMap2 = this.mConfigParams;
            if (hashMap2 != null && hashMap2.get(100).intValue() == 1) {
                this.mConfigParams.put(8, 1);
            } else {
                TTPlayerConfiger.setValue(8, true);
            }
        }
        AVLogger.d(str8, "life:" + i10 + ",plifeId:" + this.mPlayLifeId);
        sendSeekCompleted(i10);
        sendErrorInfo(i12, i10);
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public boolean isLooping() {
        this.mReadLock.lock();
        try {
            boolean z10 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(5, 0) == 1) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public boolean isMute() {
        this.mReadLock.lock();
        try {
            boolean z10 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(12, 0) == 1) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public boolean isPlaying() {
        this.mReadLock.lock();
        try {
            boolean z10 = false;
            if (isValid()) {
                if (this.mPlayer.getIntOption(6, 0) == 1) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void mouseEvent(int i10, int i11, int i12) {
        int i13 = 1;
        if (i10 != 0) {
            if (i10 != 1) {
                i13 = 2;
                if (i10 != 2) {
                    i13 = 0;
                }
            } else {
                i13 = 3;
            }
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.mouseEvent(i13, i11, i12);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    protected void onCrashedInfo(String str) {
        if (this.mCrashedInfo.length() < 1024) {
            StringBuilder sb2 = this.mCrashedInfo;
            sb2.append(str);
            sb2.append("\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPlayLogInfo(int i10, int i11, String str) {
        if (i10 == 2) {
            if (i11 == 1) {
                this.mVoiceInfo = str;
                return;
            } else if (i11 == 0) {
                this.mBufferingInfo = str;
                return;
            } else {
                return;
            }
        }
        if (i10 == 0) {
            this.mErrorCode = i11;
        }
        if (str != null) {
            if (this.mLogInfo.size() > 40) {
                this.mLogInfo.removeFirst();
            }
            this.mLogInfo.addLast(String.format(Locale.US, "%s&&time:%d", str, Long.valueOf(System.currentTimeMillis())));
        }
    }

    public void onPlayerNotify(int i10, int i11, int i12, String str) {
        if (i11 != 3) {
            String str2 = TAG;
            AVLogger.d(str2, "onPlayerNotify send message start .thread id:" + Thread.currentThread().getId());
        }
        synchronized (this.mHandlerLocker) {
            try {
                if (this.mHandler == null) {
                    String str3 = TAG;
                    AVLogger.d(str3, "onPlayerNotify send message play is null:thread id" + Thread.currentThread().getId());
                } else if (i11 == 40 && str != null) {
                    handleNotify(i10, i11, i12, str);
                } else {
                    if (i11 != 3) {
                        String str4 = TAG;
                        AVLogger.d(str4, "onPlayerNotify send message prev.thread id:" + Thread.currentThread().getId());
                    }
                    Message obtainMessage = this.mHandler.obtainMessage(i11, i12, i10);
                    obtainMessage.obj = str;
                    obtainMessage.sendToTarget();
                    if (i11 != 3) {
                        String str5 = TAG;
                        AVLogger.d(str5, "onPlayerNotify send message after.thread id:" + Thread.currentThread().getId());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.ss.ttm.player.ISurfaceListener
    public void onSurfaceChanged(SurfaceHolder surfaceHolder) {
        AVLogger.d(TAG, "surface is change");
    }

    @Override // com.ss.ttm.player.ISurfaceListener
    public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        AVLogger.d(TAG, "onSurfaceCreated");
        this.mSurfaceHolder = surfaceHolder;
        if (this.mRealsedSurface || this.mIgnoreSurfaceCreated == 1) {
            return;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                SurfaceHolder surfaceHolder2 = this.mSurfaceHolder;
                if (surfaceHolder != surfaceHolder2) {
                    if (surfaceHolder2 != null) {
                        surfaceHolder2.removeCallback(this.mCallback);
                    }
                    this.mSurfaceHolder = surfaceHolder;
                    if (surfaceHolder != null) {
                        surfaceHolder.addCallback(this.mCallback);
                    }
                }
                this.mPlayer.setSurfaceTimeOut(surfaceHolder.getSurface(), 0);
            }
            this.mReadLock.unlock();
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.ISurfaceListener
    public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
        String str = TAG;
        AVLogger.d(str, "surface is destory");
        if (this.mRealsedSurface) {
            AVLogger.d(str, "TTIPMediaPlayer player is will release");
        } else if (this.mMediaCodecStopTimeOutMs > 0) {
            try {
                AVThreadPool.addTask(new Callable<String>() { // from class: com.ss.ttm.player.TTPlayerClient.2
                    @Override // java.util.concurrent.Callable
                    public String call() {
                        try {
                            TTPlayerClient.this.mReadLock.lockInterruptibly();
                            if (TTPlayerClient.this.isValid()) {
                                TTPlayerClient.this.mPlayer.setSurfaceTimeOut(null, 0);
                            }
                            TTPlayerClient.this.mReadLock.unlock();
                            return "OK";
                        } catch (InterruptedException unused) {
                            AVLogger.Error(TTPlayerClient.TAG, this, "mPlayer setsurface null failed.");
                            return "OK";
                        }
                    }
                }).get(this.mMediaCodecStopTimeOutMs, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                AVLogger.Error(TAG, this, "set surface time out");
            }
        } else {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.setSurfaceTimeOut(null, 0);
                }
                this.mReadLock.unlock();
                AVLogger.d(str, "TTIPMediaPlayer player set surface");
            } catch (Throwable th2) {
                this.mReadLock.unlock();
                throw th2;
            }
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void pause() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.pause();
            }
            this.mReadLock.unlock();
            stayAwake(false);
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void prepare() {
        prepareAsync();
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void prepareAsync() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mErrorCode = 0;
                this.mLogInfo.clear();
                if (this.mRealsedSurface) {
                    this.mPlayer.setSurfaceTimeOut(this.mSurfaceHolder.getSurface(), 0);
                    this.mRealsedSurface = false;
                }
                this.mPlayer.prepare();
                updateLifeId();
            }
            this.mReadLock.unlock();
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Deprecated
    public void prevClose() {
        String str = TAG;
        AVLogger.d(str, "prev close start");
        this.mRealsedSurface = true;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.mCallback);
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.prevClose();
            }
            this.mReadLock.unlock();
            AVLogger.d(str, "prev close end");
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void release() {
        String playerErrorInfo;
        stayAwake(false);
        updateSurfaceScreenOn();
        this.mWriteLock.lock();
        try {
            ITTPlayerRef iTTPlayerRef = this.mPlayer;
            this.mPlayer = null;
            this.mPlayLifeId = -1;
            if (iTTPlayerRef != null) {
                iTTPlayerRef.release();
            }
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.removeCallback(this.mCallback);
                this.mSurfaceHolder = null;
                this.mRealsedSurface = true;
            }
            synchronized (this.mHandlerLocker) {
                try {
                    Handler handler = this.mHandler;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.mHandler = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.mLogListener != null && (playerErrorInfo = getPlayerErrorInfo()) != null && playerErrorInfo.length() > 0) {
                this.mLogListener.onLogInfo(this.mWrapper, playerErrorInfo);
            }
            this.mContext = null;
            AVLogger.d(TAG, "release end");
        } finally {
            this.mWriteLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void releaseAsync() {
        String str = TAG;
        AVLogger.d(str, "prev close start");
        this.mRealsedSurface = true;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.mCallback);
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.prevClose();
            }
            this.mReadLock.unlock();
            AVLogger.d(str, "prev close end");
            new Thread(new Runnable() { // from class: com.ss.ttm.player.TTPlayerClient.1
                @Override // java.lang.Runnable
                public void run() {
                    TTPlayerClient.this.release();
                }
            }).start();
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void reset() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.reset();
                SurfaceHolder surfaceHolder = this.mSurfaceHolder;
                if (surfaceHolder != null && this.mCodecAndSurfaceReuse == 0) {
                    this.mPlayer.setSurfaceTimeOut(surfaceHolder.getSurface(), 0);
                }
                this.mHandler.removeCallbacksAndMessages(null);
                this.mErrorCode = 0;
                this.mLogInfo.clear();
                updateLifeId();
            }
            this.mReadLock.unlock();
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void rotateCamera(float f10, float f11) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.rotateCamera(f10, f11);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void seekTo(int i10, int i11) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mSeekComplete = false;
                this.mPlayer.seekTo(i10, i11);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void selectTrack(int i10) {
        this.mReadLock.lock();
        ITTPlayerRef iTTPlayerRef = this.mPlayer;
        if (iTTPlayerRef != null && i10 == 0) {
            iTTPlayerRef.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 0);
        }
        this.mReadLock.unlock();
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setABRStrategy(ABRStrategy aBRStrategy) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setABRStrategy(aBRStrategy);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setAIBarrageInfo(MaskInfo maskInfo) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setAIBarrageInfo(maskInfo);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setAudioProcessor(AudioProcessor audioProcessor) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setAudioProcessor(audioProcessor);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setCacheFile(String str, int i10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setCacheFile(str, i10);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        if (uri == null) {
            return;
        }
        setDataSource(context, uri);
        if (map == null || map.size() == 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(": ");
            sb2.append(entry.getValue());
            sb2.append("\r\n");
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setStringOption(20, sb2.toString());
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setDisplay(SurfaceHolder surfaceHolder) {
        Surface surface;
        SurfaceHolder surfaceHolder2;
        if (this.mCodecAndSurfaceReuse != 0 && (surfaceHolder2 = this.mSurfaceHolder) == surfaceHolder && surfaceHolder2 != null) {
            AVLogger.d(TAG, "surfaceholder already setted");
            return;
        }
        SurfaceHolder surfaceHolder3 = this.mSurfaceHolder;
        if (surfaceHolder3 != null) {
            surfaceHolder3.removeCallback(this.mCallback);
        }
        this.mSurfaceHolder = surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.addCallback(this.mCallback);
            surface = this.mSurfaceHolder.getSurface();
        } else {
            surface = null;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSurfaceTimeOut(surface, 0);
            }
            this.mReadLock.unlock();
            updateSurfaceScreenOn();
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setFloatOption(int i10, float f10) {
        int i11;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i11 = this.mPlayer.setFloatOption(i10, f10);
            } else {
                i11 = -1;
            }
            return i11;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setFloatOptionArray(int[] iArr, float[] fArr) {
        int i10;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i10 = this.mPlayer.setFloatOptionArray(iArr, fArr);
            } else {
                i10 = -1;
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setFrameMetadataListener(frameMetadataListener);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setIntOption(int i10, int i11) {
        int i12;
        int i13 = 0;
        if (i10 == 1301) {
            if (Looper.myLooper() != null) {
                this.mHandler = new Handler(this);
            } else {
                this.mHandler = new Handler(Looper.getMainLooper(), this);
            }
            return 0;
        } else if (i10 == 41) {
            AVResolver.HOST_MAX_CACHE_TIME = i11;
            return 0;
        } else if (i10 == 5003) {
            this.mDisablePlayerStayAwake = i11;
            return 0;
        } else if (i10 == 952) {
            this.mMediaCodecStopTimeOutMs = i11;
            return 0;
        } else {
            if (i10 == 1007) {
                this.mCodecAndSurfaceReuse = i11;
            } else if (i10 == 1036) {
                this.mIgnoreSurfaceCreated = i11;
            } else if (i10 == 984) {
                if (i11 != 0) {
                    if (i11 == 1) {
                        i11 = 16777216;
                    } else if (i11 == 2) {
                        i11 = 33554432;
                    } else {
                        i13 = 34603008;
                        if (i11 != 3 && i11 != 4) {
                            if (i11 == 5) {
                                i11 = 50331648;
                            } else if (i11 == 6) {
                                i11 = 67108864;
                            }
                        }
                    }
                    AVLogger.setLogLevel(i11);
                }
                i11 = i13;
                AVLogger.setLogLevel(i11);
            } else if (i10 == 1501) {
                AVLogger.setLogLevel(i11);
            }
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    i12 = this.mPlayer.setIntOption(i10, i11);
                } else {
                    i12 = -1;
                }
                return i12;
            } finally {
                this.mReadLock.unlock();
            }
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setIntOptionArray(int[] iArr, int[] iArr2) {
        int i10;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i10 = this.mPlayer.setIntOptionArray(iArr, iArr2);
            } else {
                i10 = -1;
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setIsMute(boolean z10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setIntOption(12, z10 ? 1 : 0);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setLoadControl(LoadControl loadControl) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLoadControl(loadControl);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setLongOption(int i10, long j10) {
        int i11;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i11 = this.mPlayer.setLongOption(i10, j10);
            } else {
                i11 = -1;
            }
            return i11;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setLongOptionArray(int[] iArr, long[] jArr) {
        int i10;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i10 = this.mPlayer.setLongOptionArray(iArr, jArr);
            } else {
                i10 = -1;
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setLooping(boolean z10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLooping(z10 ? 1 : 0);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setMaskInfo(MaskInfo maskInfo) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setMaskInfo(maskInfo);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setMediaTransport(MediaTransport mediaTransport) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setMediaTransport(mediaTransport);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(3L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(13L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
        long[] jArr = {0, 45};
        this.mReadLock.lock();
        try {
            if (isValid()) {
                for (int i10 = 0; i10 < 2; i10++) {
                    this.mPlayer.setNotifyState(jArr[i10]);
                }
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnExternInfoListener(MediaPlayer.OnExternInfoListener onExternInfoListener) {
        this.mOnExternInfoListener = onExternInfoListener;
        long[] jArr = {63, 59, 19, 33, 40, 43, 44, 68, 85};
        this.mReadLock.lock();
        try {
            if (isValid()) {
                for (int i10 = 0; i10 < 9; i10++) {
                    this.mPlayer.setNotifyState(jArr[i10]);
                }
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setOnImageAvailableListener(onImageAvailableListener, handler);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
        long[] jArr = {1, 4, 5, 7, 8, 9, 10, 21, 22, 20, 24, 25, 26, 28, 27, 29, 32, 34, 35, 36, 37, 38, 39, 41, 42, 50, 49, 47, 51, 52, 53, 54, 30, 57, 58, 61, 62, 65, 66, 67, 70, 71, 72, 73, 82, 84};
        this.mReadLock.lock();
        try {
            if (isValid()) {
                for (int i10 = 0; i10 < 46; i10++) {
                    this.mPlayer.setNotifyState(jArr[i10]);
                }
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnLogListener(MediaPlayer.OnLogListener onLogListener) {
        this.mLogListener = onLogListener;
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(2L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnSARChangedListener(MediaPlayer.onSARChangedListener onsarchangedlistener) {
        this.mOnSARChangedListener = onsarchangedlistener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(23L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(12L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setNotifyState(6L);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setPanoVideoControlModel(int i10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setIntOption(11, i10);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.mReadLock.lock();
        try {
            if (isValid() && playbackParams != null && playbackParams.getSpeed() != -1.0f) {
                this.mPlayer.setFloatOption(60, playbackParams.getSpeed());
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setScreenOnWhilePlaying(boolean z10) {
        if (this.mScreenOnWhilePlaying != z10) {
            if (z10 && this.mSurfaceHolder == null) {
                AVLogger.Warn(TAG, this, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z10;
            updateSurfaceScreenOn();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setStrategyParamsTransport(StrategyParamsTransport strategyParamsTransport) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setStrategyParamsTransport(strategyParamsTransport);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setStringOption(int i10, String str) {
        int i11;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i11 = this.mPlayer.setStringOption(i10, str);
            } else {
                i11 = -1;
            }
            return i11;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public int setStringOptionArray(int[] iArr, String[] strArr) {
        int i10;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                i10 = this.mPlayer.setStringOptionArray(iArr, strArr);
            } else {
                i10 = -1;
            }
            return i10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setSubInfo(SubInfo subInfo) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSubInfo(subInfo);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setSurface(Surface surface) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSurfaceTimeOut(surface, 0);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setSurfaceTimeOut(Surface surface, int i10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setSurfaceTimeOut(surface, i10);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setTraitObject(int i10, TraitObject traitObject) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setTraitObject(i10, traitObject);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setVolume(float f10, float f11) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setVolume(f10, f11);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int i10) {
        boolean z10;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z10 = true;
            } else {
                z10 = false;
            }
            this.mWakeLock = null;
        } else {
            z10 = false;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i10 | 536870912, TTPlayerClient.class.getName());
        this.mWakeLock = newWakeLock;
        if (newWakeLock != null) {
            newWakeLock.setReferenceCounted(false);
            if (z10) {
                this.mWakeLock.acquire();
            }
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    @Keep
    public void setupMediaCodec() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setupMediaCodec();
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void start() {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.start();
                updateLifeId();
                this.mRtcPlay = this.mPlayer.getIntOption(800, 0);
            }
            this.mReadLock.unlock();
            stayAwake(true);
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void stop() {
        SurfaceHolder surfaceHolder;
        this.mReadLock.lock();
        try {
            if (isValid()) {
                if (this.mConnectedCpu && this.mCodecAndSurfaceReuse == 1 && (surfaceHolder = this.mSurfaceHolder) != null) {
                    surfaceHolder.removeCallback(this.mCallback);
                    this.mSurfaceHolder = null;
                    this.mPlayer.setSurfaceTimeOut(null, 0);
                    this.mConnectedCpu = false;
                    String str = TAG;
                    AVLogger.Warn(str, this, "testlog: mConnected Cpu " + this.mConnectedCpu);
                }
                this.mPlayer.stop();
            }
            this.mReadLock.unlock();
            stayAwake(false);
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void switchStream(int i10, int i11) {
        if (this.mPlayer != null) {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.switchStream(i10, i11);
                }
            } finally {
                this.mReadLock.unlock();
            }
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void takeScreenshot(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        if (this.mPlayer != null && onScreenshotListener != null) {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.setNotifyState(15L);
                    this.mPlayer.setOnScreenshotListener(onScreenshotListener);
                    this.mPlayer.takeScreenshot();
                }
            } finally {
                this.mReadLock.unlock();
            }
        }
    }

    protected void updateLifeId() {
        try {
            this.mReentrantLock.lock();
            this.mPlayLifeId = this.mPlayer.getLifeId();
            String str = TAG;
            AVLogger.d(str, "reset.mPlayLifeId" + this.mPlayLifeId);
        } finally {
            if (this.mReentrantLock.isLocked()) {
                this.mReentrantLock.unlock();
            }
        }
    }

    public void updateSurfaceScreenOn() {
        boolean z10;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null && this.mDisablePlayerStayAwake == 0) {
            if (this.mScreenOnWhilePlaying && this.mStayAwake) {
                z10 = true;
            } else {
                z10 = false;
            }
            surfaceHolder.setKeepScreenOn(z10);
        }
    }

    @Keep
    public static synchronized TTPlayerClient create(MediaPlayer mediaPlayer, Context context, HashMap<Integer, Integer> hashMap) {
        synchronized (TTPlayerClient.class) {
            TTVersion.saveVersionInfo();
            TTPlayerClient tTPlayerClient = new TTPlayerClient(context, hashMap);
            ITTPlayerRef create = ITTPlayerRef.create(context, tTPlayerClient, hashMap);
            if (create == null) {
                return null;
            }
            tTPlayerClient.mPlayer = create;
            tTPlayerClient.mWrapper = mediaPlayer;
            return tTPlayerClient;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void seekTo(int i10) {
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mSeekComplete = false;
                this.mPlayer.seekTo(i10);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
        if (0 != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005a, code lost:
        if (0 != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
        setDataSource(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0064, code lost:
        return;
     */
    @Override // com.ss.ttm.player.MediaPlayerClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDataSource(android.content.Context r3, android.net.Uri r4) throws java.lang.IllegalArgumentException, java.lang.SecurityException, java.lang.IllegalStateException, java.io.IOException {
        /*
            r2 = this;
            if (r4 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r4.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L2f
            java.lang.String r0 = "settings"
            java.lang.String r1 = r4.getAuthority()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L2f
            int r4 = android.media.RingtoneManager.getDefaultType(r4)
            android.net.Uri r4 = android.media.RingtoneManager.getActualDefaultRingtoneUri(r3, r4)
            if (r4 == 0) goto L27
            goto L2f
        L27:
            java.io.FileNotFoundException r3 = new java.io.FileNotFoundException
            java.lang.String r4 = "Can't resolve default ringtone"
            r3.<init>(r4)
            throw r3
        L2f:
            r0 = 0
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L54 java.lang.SecurityException -> L5a
            java.lang.String r1 = "r"
            android.content.res.AssetFileDescriptor r0 = r3.openAssetFileDescriptor(r4, r1)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L54 java.lang.SecurityException -> L5a
            if (r0 != 0) goto L42
            if (r0 == 0) goto L41
            r0.close()
        L41:
            return
        L42:
            java.io.FileDescriptor r3 = r0.getFileDescriptor()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L54 java.lang.SecurityException -> L5a
            r2.setDataSource(r3)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L54 java.lang.SecurityException -> L5a
            r0.close()
            return
        L4d:
            r3 = move-exception
            if (r0 == 0) goto L53
            r0.close()
        L53:
            throw r3
        L54:
            if (r0 == 0) goto L5d
        L56:
            r0.close()
            goto L5d
        L5a:
            if (r0 == 0) goto L5d
            goto L56
        L5d:
            java.lang.String r3 = r4.toString()
            r2.setDataSource(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.TTPlayerClient.setDataSource(android.content.Context, android.net.Uri):void");
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        ParcelFileDescriptor dup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            ITTPlayerRef iTTPlayerRef = this.mPlayer;
            if (iTTPlayerRef != null) {
                iTTPlayerRef.setDataSourceFd(dup.getFd());
            }
        } finally {
            if (dup != null) {
                dup.close();
            }
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) throws IllegalStateException, IllegalArgumentException, IOException {
        setDataSource(fileDescriptor);
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setLongOption(135, j10);
                this.mPlayer.setLongOption(136, j11);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setDataSource(String str) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        if (str.toLowerCase(Locale.US).indexOf("://") <= 0) {
            this.mUri = AdPayload.FILE_SCHEME + str;
        } else {
            this.mUri = str;
        }
        this.mReadLock.lock();
        try {
            if (isValid()) {
                this.mPlayer.setDataSource(this.mUri);
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayerClient
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        if (iMediaDataSource != null) {
            this.mReadLock.lock();
            try {
                if (isValid()) {
                    this.mPlayer.setDataSource(iMediaDataSource);
                }
                return;
            } finally {
                this.mReadLock.unlock();
            }
        }
        throw new IllegalArgumentException("null mediadatasource pointer.");
    }
}
