package com.ss.ttvideoengine;

import android.content.Context;
import android.media.AudioManager;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttm.player.TTPlayerConfiger;
import com.ss.ttvideoengine.configcenter.IEngineConfig;
import com.ss.ttvideoengine.configcenter.PlayerConfigExecutor;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.IPlayDurationManager;
import com.ss.ttvideoengine.utils.TTVideoEngineInternalHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineInternalLog;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public abstract class TTVideoEngineInternal implements ITTVideoEngineInternal, ITTVideoEngineEventSource {
    protected static final int MAX_ERROR_COUNT = 3;
    private static final String TAG = "TTVideoEngine";
    private static int sIsColdStart = 1;
    protected int mAllowAllExtensions;
    protected int mConfigCenterVersion;
    protected Context mContext;
    protected int mEnableMasterM3u8Optimize;
    protected int mEnablePlaySpeedExtend;
    protected IEngineConfig mEngineConfig;
    protected String mInitialURL;
    protected boolean mIsMute;
    protected boolean mLooping;
    protected MediaPlayer mMediaPlayer;
    protected MyMediaPlayerListener mMediaPlayerListener;
    protected IPlayDurationManager mPlayDuration;
    protected PlaybackParams mPlaybackParams;
    protected PlayerConfigExecutor mPlayerConfigExecutor;
    protected int mPlayerType;
    protected SeekCompletionListener mSeekCompletionListener;
    protected Surface mSurface;
    protected SurfaceHolder mSurfaceHolder;
    protected String mTag = "";
    protected String mSubTag = "";
    protected HashMap<Integer, Integer> mConfigParams = null;
    protected int mSurfaceHolderByKernel = 0;
    protected int mState = 0;
    protected int mPlaybackState = 0;
    protected int mLoadState = 0;
    protected int mExtVoiceFormat = -1;
    protected int mBufferingType = -1;
    private String mSourceTypeStr = "";
    protected boolean mIsDirectURL = false;
    protected String mDirectURL = "";
    protected String mDirectUrlSrc = "";
    protected String[] mOriginalUrls = null;
    protected boolean mIsLocal = false;
    protected String mLocalURL = "";
    protected int mConfigParamsOption = 1;
    protected int mForbidOSPlayer = 0;
    protected int mFallbackExoFirst = -1;
    protected int mPlayerDegradeMode = 0;
    protected int mDisableThreadPoolUsing = 0;
    protected int mIsColdStart = 0;
    protected boolean mShouldPlay = false;
    protected boolean mShouldStop = false;
    protected boolean mUserStopped = false;
    protected boolean mPausedBeforePrepared = false;
    protected boolean mStarted = false;
    protected boolean mPrepared = false;
    protected boolean mReleased = false;
    protected boolean mHasComplete = false;
    protected boolean mErrorEnd = false;
    protected boolean mEngineHasUsed = false;
    protected long mPlayTime = 0;
    protected boolean mRetrying = false;
    protected boolean mRetryingNotHandleError = false;
    protected int mAccumulatedErrorCount = 0;
    protected boolean mIsPlayComplete = false;
    protected boolean mHasFirstFrameShown = false;
    protected boolean mTexNotifyFirstFrame = false;
    protected boolean mFirstGetWidthHeight = true;
    protected boolean mSeeking = false;
    protected long mSeekingStartTime = 0;
    protected int mLastPlaybackTime = 0;
    protected float mLeftVolume = -1.0f;
    protected float mRightVolume = -1.0f;
    protected int mDuration = 0;
    protected int mCurPlayBackTime = 0;
    protected int mLoadedProgress = 0;
    protected int mWidth = 0;
    protected int mHeight = 0;
    protected int mCodecId = 0;
    protected int mAsyncInitEnable = 0;
    protected int mSetTrackVolume = 0;
    protected boolean mIsStartPlayAutomatically = true;
    protected int mCleanWhenStop = 0;
    protected int mMaxAccumulatedCountSetByUser = 30;
    protected int mRadioModeEnable = 0;
    protected long mLastSwitchRadioModeTime = 0;
    protected int mHardwareDecodeEnablePlayer2 = 0;
    protected int mDisableResetSystemVolume = 0;
    protected int mVideoCodecType = -1;
    protected int mAudioCodecType = -1;
    protected int mVideoCodecID = -1;
    protected int mAudioCodecID = -1;
    protected String mExoLoadControlParameters = null;
    protected int mExoRenderReadyMs = -1;
    protected int mExoConsecutiveFailNum = -1;
    protected int mExoCodecReusable = 0;
    protected int mExoCodecAsyncInitEnable = 0;
    protected int mExoAllowMediaCodecHelper = 0;
    protected boolean mExoEnableNativeMdl = false;
    protected int mErrorCount = 0;
    protected Error mError = null;
    protected String mPlayLoadConfig = "";
    protected String mPlayRangeConfig = "";
    protected String mPlayBufferConfig = "";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class MyMediaPlayerListener implements MediaPlayer.OnPreparedListener, MediaPlayer.OnInfoListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.onSARChangedListener {
        private final WeakReference<TTVideoEngineInternal> mVideoEngineInternalRef;

        public MyMediaPlayerListener(TTVideoEngineInternal tTVideoEngineInternal) {
            this.mVideoEngineInternalRef = new WeakReference<>(tTVideoEngineInternal);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerBufferingUpdate(mediaPlayer, i10);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerCompletion(mediaPlayer);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return false;
            }
            return tTVideoEngineInternal.onMediaPlayerError(mediaPlayer, i10, i11);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return false;
            }
            return tTVideoEngineInternal.onMediaPlayerInfo(mediaPlayer, i10, i11);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerPrepared(mediaPlayer);
        }

        @Override // com.ss.ttm.player.MediaPlayer.onSARChangedListener
        public void onSARChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerSARChanged(mediaPlayer, i10, i11);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerSeekComplete(mediaPlayer, true);
        }

        @Override // com.ss.ttm.player.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            TTVideoEngineInternal tTVideoEngineInternal = this.mVideoEngineInternalRef.get();
            if (tTVideoEngineInternal == null) {
                return;
            }
            tTVideoEngineInternal.onMediaPlayerVideoSizeChanged(mediaPlayer, i10, i11);
        }
    }

    public static String logcatTag(TTVideoEngineInternal tTVideoEngineInternal) {
        if (tTVideoEngineInternal == null) {
            return TAG;
        }
        return tTVideoEngineInternal.logcatTag();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setIntOption2(int i10, int i11) {
        boolean z10;
        if (i10 != 3) {
            if (i10 != 100) {
                if (i10 != 117) {
                    if (i10 != 480) {
                        switch (i10) {
                            case 5001:
                                this.mExoRenderReadyMs = i11;
                                MediaPlayer mediaPlayer = this.mMediaPlayer;
                                if (mediaPlayer != null && mediaPlayer.getPlayerType() == 5) {
                                    this.mMediaPlayer.setIntOption(5001, i11);
                                    return;
                                }
                                return;
                            case 5002:
                                this.mExoConsecutiveFailNum = i11;
                                MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                                if (mediaPlayer2 != null && mediaPlayer2.getPlayerType() == 5) {
                                    this.mMediaPlayer.setIntOption(5002, i11);
                                    return;
                                }
                                return;
                            case 5003:
                                this.mExoCodecReusable = i11;
                                MediaPlayer mediaPlayer3 = this.mMediaPlayer;
                                if (mediaPlayer3 != null && mediaPlayer3.getPlayerType() == 5) {
                                    this.mMediaPlayer.setIntOption(5003, i11);
                                    return;
                                }
                                return;
                            case ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE /* 5004 */:
                                this.mExoCodecAsyncInitEnable = i11;
                                MediaPlayer mediaPlayer4 = this.mMediaPlayer;
                                if (mediaPlayer4 != null && mediaPlayer4.getPlayerType() == 5) {
                                    this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE, i11);
                                    return;
                                }
                                return;
                            case ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER /* 5005 */:
                                this.mExoAllowMediaCodecHelper = i11;
                                MediaPlayer mediaPlayer5 = this.mMediaPlayer;
                                if (mediaPlayer5 != null && mediaPlayer5.getPlayerType() == 5) {
                                    this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER, i11);
                                    return;
                                }
                                return;
                            default:
                                this.mPlayerConfigExecutor.execute(this.mEngineConfig.setIntOption(i10, i11));
                                return;
                        }
                    }
                    this.mRadioModeEnable = i11;
                    this.mLastSwitchRadioModeTime = System.currentTimeMillis();
                    MediaPlayer mediaPlayer6 = this.mMediaPlayer;
                    if (mediaPlayer6 != null) {
                        mediaPlayer6.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, i11);
                        return;
                    }
                    return;
                }
                TTPlayerConfiger.setValue(4, i11);
                return;
            }
            if (i11 != 0) {
                z10 = 1;
            } else {
                z10 = 0;
            }
            this.mIsStartPlayAutomatically = z10;
            MediaPlayer mediaPlayer7 = this.mMediaPlayer;
            if (mediaPlayer7 != null) {
                mediaPlayer7.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, 1 ^ z10);
                return;
            }
            return;
        }
        this.mForbidOSPlayer = i11;
        TTPlayerConfiger.setValue(11, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int transMediaPlayerType(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            return 0;
        }
        int playerType = mediaPlayer.getPlayerType();
        if (playerType != 0) {
            if (playerType != 2) {
                int i10 = 3;
                if (playerType != 3) {
                    i10 = 4;
                    if (playerType != 4) {
                        i10 = 5;
                        if (playerType != 5) {
                            return 0;
                        }
                    }
                }
                return i10;
            }
            return 1;
        }
        return 2;
    }

    abstract MediaPlayer createMediaPlayer();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0171, code lost:
        if (r10.equals(com.ss.ttvideoengine.ITTVideoEngineEventSource.KEY_CHIPHARDWARE) == false) goto L3;
     */
    @Override // com.ss.ttvideoengine.log.EventSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object get(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineInternal.get(java.lang.String):java.lang.Object");
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getBufferingType() {
        return this.mBufferingType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getConfigFloat(int i10, float f10) {
        if (this.mConfigCenterVersion > 0) {
            return this.mEngineConfig.getFloatOption(i10);
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getConfigInt(int i10, int i11) {
        if (this.mConfigCenterVersion > 0) {
            return this.mEngineConfig.getIntOption(i10);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getConfigString(int i10, String str) {
        if (this.mConfigCenterVersion > 0) {
            return this.mEngineConfig.getStringOption(i10);
        }
        return str;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getCurrentPlaybackTimeAsync() {
        return getCurrentPlaybackTime();
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getDuration() {
        return this.mDuration;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public float getFloatOption(int i10) {
        return 0.0f;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getIntOption(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        int i11 = -1;
        try {
            if (i10 != 480) {
                switch (i10) {
                    case 43:
                        if (this.mVideoCodecType < 0 && mediaPlayer != null) {
                            this.mVideoCodecType = mediaPlayer.getIntOption(157, -1);
                        }
                        return this.mVideoCodecType;
                    case 44:
                        if (this.mAudioCodecType < 0 && mediaPlayer != null) {
                            this.mAudioCodecType = mediaPlayer.getIntOption(158, -1);
                        }
                        return this.mAudioCodecType;
                    case 45:
                        if (this.mVideoCodecID < 0 && mediaPlayer != null) {
                            this.mVideoCodecID = mediaPlayer.getIntOption(141, -1);
                        }
                        return this.mVideoCodecID;
                    case 46:
                        if (this.mAudioCodecID < 0 && mediaPlayer != null) {
                            this.mAudioCodecID = mediaPlayer.getIntOption(140, -1);
                        }
                        return this.mAudioCodecID;
                    case 47:
                        return this.mPlayerType;
                    case 48:
                        Context context = this.mContext;
                        if (context == null) {
                            return -1;
                        }
                        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                        if (audioManager != null) {
                            i11 = audioManager.getStreamMaxVolume(3);
                        }
                        if (i11 < 0) {
                            break;
                        } else {
                            return i11;
                        }
                    case 49:
                        Context context2 = this.mContext;
                        if (context2 == null) {
                            return -1;
                        }
                        AudioManager audioManager2 = (AudioManager) context2.getSystemService("audio");
                        if (audioManager2 != null) {
                            i11 = audioManager2.getStreamVolume(3);
                        }
                        if (i11 < 0) {
                            break;
                        } else {
                            return i11;
                        }
                    case 50:
                        return this.mDuration;
                    case 51:
                        return this.mLoadedProgress;
                    case 52:
                        if (mediaPlayer != null) {
                            return mediaPlayer.getCurrentPosition();
                        }
                        break;
                    case 53:
                        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
                        if (iPlayDurationManager == null) {
                            return -1;
                        }
                        return iPlayDurationManager.getPlayedDuration();
                    case 54:
                        return this.mBufferingType;
                    case 55:
                        return this.mPlaybackState;
                    case 56:
                        return this.mLoadState;
                    case 57:
                        return this.mState;
                    default:
                        if (this.mConfigCenterVersion <= 0) {
                            return -1;
                        }
                        return this.mEngineConfig.getIntOption(i10);
                }
                return 0;
            }
            return this.mRadioModeEnable;
        } catch (Throwable th2) {
            TTVideoEngineInternalLog.d(th2);
            return -1;
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getLoadState() {
        return this.mLoadState;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getLoadedProgress() {
        return this.mLoadedProgress;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public long getLongOption(int i10) {
        if (this.mConfigCenterVersion > 0) {
            return this.mEngineConfig.getLongOption(i10);
        }
        return -1L;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getPlaybackState() {
        return this.mPlaybackState;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public String getStringOption(int i10) {
        return "";
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public Surface getSurface() {
        return this.mSurface;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getVideoHeight() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getVideoWidth() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public float getVolume() {
        return TTVideoEngineInternalHelper.getVolume(this.mContext);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getWatchedDuration() {
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            return iPlayDurationManager.getPlayedDuration();
        }
        return 0;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void initEngine(Context context, int i10) {
        int i11;
        boolean z10;
        this.mContext = context;
        this.mPlayerType = i10;
        this.mConfigParams = new HashMap<>();
        this.mIsMute = false;
        this.mIsColdStart = sIsColdStart;
        sIsColdStart = 0;
        TTPlayerConfiger.setValue(6, false);
        boolean z11 = true;
        if (i10 != 2 && i10 != 5) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        TTPlayerConfiger.setValue(1, i11);
        if (i10 == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        TTPlayerConfiger.setValue(2, z10);
        if (i10 != 5) {
            z11 = false;
        }
        TTPlayerConfiger.setValue(26, z11);
        TTPlayerConfiger.setValue(11, false);
        TTPlayerConfiger.setValue(4, false);
    }

    public boolean isInHousePlayer() {
        if (!isPlayerType(0) && !isPlayerType(1) && !isPlayerType(3) && !isPlayerType(4)) {
            return false;
        }
        return true;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isLooping() {
        return this.mLooping;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isMute() {
        if (this.mState == 3 && (this.mShouldPlay || this.mPlaybackState == 2)) {
            boolean z10 = this.mIsMute;
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                return mediaPlayer.isMute();
            }
            return z10;
        }
        return this.mIsMute;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isOSPlayer() {
        return isPlayerType(2);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isPlayerType(int i10) {
        int i11;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            i11 = transMediaPlayerType(mediaPlayer.getPlayerType());
        } else {
            i11 = this.mPlayerType;
        }
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isShouldPlay() {
        return this.mShouldPlay;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isStarted() {
        return this.mStarted;
    }

    public abstract String logcatTag();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean needReleaseMediaPlayer() {
        if (this.mMediaPlayer.getPlayerType() != 0 && this.mMediaPlayer.getPlayerType() != 5 && this.mMediaPlayer.getPlayerType() != 3 && this.mMediaPlayer.getPlayerType() != 4) {
            return false;
        }
        return true;
    }

    protected boolean onMediaPlayerError(MediaPlayer mediaPlayer, int i10, int i11) {
        return false;
    }

    protected boolean onMediaPlayerInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void refreshEnginePara(Context context, int i10, Map map) {
        this.mIsColdStart = sIsColdStart;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerListenerMediaPlayer() {
        if (this.mMediaPlayer == null) {
            return;
        }
        MyMediaPlayerListener myMediaPlayerListener = new MyMediaPlayerListener(this);
        this.mMediaPlayerListener = myMediaPlayerListener;
        this.mMediaPlayer.setOnPreparedListener(myMediaPlayerListener);
        this.mMediaPlayer.setOnInfoListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnBufferingUpdateListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnCompletionListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnErrorListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnSeekCompleteListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnVideoSizeChangedListener(this.mMediaPlayerListener);
        this.mMediaPlayer.setOnSARChangedListener(this.mMediaPlayerListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void releaseMediaPlayer() {
        this.mMediaPlayer.release();
        this.mMediaPlayer = null;
        this.mTexNotifyFirstFrame = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetAllOptions() {
        this.mTag = "";
        this.mSubTag = "";
        this.mContext = null;
        this.mMediaPlayerListener = null;
        this.mPlayerType = 0;
        this.mConfigParams = new HashMap<>();
        this.mSurface = null;
        this.mSurfaceHolder = null;
        this.mSurfaceHolderByKernel = 0;
        this.mState = 0;
        this.mPlaybackState = 0;
        this.mLoadState = 0;
        this.mPlaybackParams = null;
        this.mEnablePlaySpeedExtend = 0;
        this.mAllowAllExtensions = 0;
        this.mEnableMasterM3u8Optimize = 0;
        this.mBufferingType = -1;
        this.mSourceTypeStr = "";
        this.mInitialURL = null;
        this.mIsDirectURL = false;
        this.mDirectURL = "";
        this.mDirectUrlSrc = "";
        this.mIsLocal = false;
        this.mLocalURL = "";
        this.mConfigParamsOption = 1;
        this.mForbidOSPlayer = 0;
        this.mFallbackExoFirst = -1;
        this.mPlayerDegradeMode = 0;
        this.mIsColdStart = 0;
        this.mShouldPlay = false;
        this.mUserStopped = false;
        this.mPausedBeforePrepared = false;
        this.mStarted = false;
        this.mPrepared = false;
        this.mHasComplete = false;
        this.mErrorEnd = false;
        this.mPlayTime = 0L;
        this.mRetrying = false;
        this.mRetryingNotHandleError = false;
        this.mAccumulatedErrorCount = 0;
        this.mIsPlayComplete = false;
        this.mHasFirstFrameShown = false;
        this.mTexNotifyFirstFrame = false;
        this.mFirstGetWidthHeight = true;
        this.mSeeking = false;
        this.mSeekingStartTime = 0L;
        this.mSeekCompletionListener = null;
        this.mLastPlaybackTime = 0;
        this.mLooping = false;
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mIsMute = false;
        this.mDuration = 0;
        this.mCurPlayBackTime = 0;
        this.mLoadedProgress = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mCodecId = 0;
        this.mAsyncInitEnable = 0;
        this.mSetTrackVolume = 0;
        this.mIsStartPlayAutomatically = true;
        this.mCleanWhenStop = 0;
        this.mMaxAccumulatedCountSetByUser = 30;
        this.mRadioModeEnable = 0;
        this.mLastSwitchRadioModeTime = 0L;
        this.mPlayLoadConfig = "";
        this.mPlayRangeConfig = "";
        this.mPlayBufferConfig = "";
        this.mHardwareDecodeEnablePlayer2 = 0;
        this.mDisableResetSystemVolume = 0;
        this.mVideoCodecType = -1;
        this.mAudioCodecType = -1;
        this.mVideoCodecID = -1;
        this.mAudioCodecID = -1;
        this.mExoLoadControlParameters = null;
        this.mExoRenderReadyMs = -1;
        this.mExoConsecutiveFailNum = -1;
        this.mExoCodecReusable = 0;
        this.mExoCodecAsyncInitEnable = 0;
        this.mExoAllowMediaCodecHelper = 0;
        this.mErrorCount = 0;
        this.mError = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetMediaPlayerOptions() {
        this.mMediaPlayer.setIntOption(59, this.mHardwareDecodeEnablePlayer2);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setFloatOption(int i10, float f10) {
        if (this.mConfigCenterVersion > 0) {
            this.mPlayerConfigExecutor.execute(this.mEngineConfig.setFloatOption(i10, f10));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIntOption(int i10, int i11) {
        if (this.mConfigCenterVersion > 0) {
            setIntOption2(i10, i11);
        } else if (i10 != 3) {
            if (i10 != 7) {
                if (i10 != 85) {
                    boolean z10 = 0;
                    boolean z11 = false;
                    if (i10 != 100) {
                        if (i10 != 117) {
                            if (i10 != 340) {
                                if (i10 != 415) {
                                    if (i10 != 480) {
                                        if (i10 != 5010) {
                                            if (i10 != 27) {
                                                if (i10 != 28) {
                                                    switch (i10) {
                                                        case 5001:
                                                            this.mExoRenderReadyMs = i11;
                                                            MediaPlayer mediaPlayer = this.mMediaPlayer;
                                                            if (mediaPlayer != null && mediaPlayer.getPlayerType() == 5) {
                                                                this.mMediaPlayer.setIntOption(5001, i11);
                                                                return;
                                                            }
                                                            return;
                                                        case 5002:
                                                            this.mExoConsecutiveFailNum = i11;
                                                            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                                                            if (mediaPlayer2 != null && mediaPlayer2.getPlayerType() == 5) {
                                                                this.mMediaPlayer.setIntOption(5002, i11);
                                                                return;
                                                            }
                                                            return;
                                                        case 5003:
                                                            this.mExoCodecReusable = i11;
                                                            MediaPlayer mediaPlayer3 = this.mMediaPlayer;
                                                            if (mediaPlayer3 != null && mediaPlayer3.getPlayerType() == 5) {
                                                                this.mMediaPlayer.setIntOption(5003, i11);
                                                                return;
                                                            }
                                                            return;
                                                        case ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE /* 5004 */:
                                                            this.mExoCodecAsyncInitEnable = i11;
                                                            MediaPlayer mediaPlayer4 = this.mMediaPlayer;
                                                            if (mediaPlayer4 != null && mediaPlayer4.getPlayerType() == 5) {
                                                                this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE, i11);
                                                                return;
                                                            }
                                                            return;
                                                        case ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER /* 5005 */:
                                                            this.mExoAllowMediaCodecHelper = i11;
                                                            MediaPlayer mediaPlayer5 = this.mMediaPlayer;
                                                            if (mediaPlayer5 != null && mediaPlayer5.getPlayerType() == 5) {
                                                                this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER, i11);
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            return;
                                                    }
                                                }
                                                this.mMaxAccumulatedCountSetByUser = i11;
                                                return;
                                            }
                                            this.mCleanWhenStop = i11;
                                            return;
                                        }
                                        if (i11 != 0) {
                                            z11 = true;
                                        }
                                        this.mExoEnableNativeMdl = z11;
                                        return;
                                    }
                                    this.mRadioModeEnable = i11;
                                    this.mLastSwitchRadioModeTime = System.currentTimeMillis();
                                    MediaPlayer mediaPlayer6 = this.mMediaPlayer;
                                    if (mediaPlayer6 != null) {
                                        mediaPlayer6.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, i11);
                                        return;
                                    }
                                    return;
                                }
                                this.mSetTrackVolume = i11;
                                MediaPlayer mediaPlayer7 = this.mMediaPlayer;
                                if (mediaPlayer7 != null) {
                                    mediaPlayer7.setIntOption(94, i11);
                                    return;
                                }
                                return;
                            }
                            this.mDisableResetSystemVolume = i11;
                            MediaPlayer mediaPlayer8 = this.mMediaPlayer;
                            if (mediaPlayer8 != null) {
                                mediaPlayer8.setIntOption(98, i11);
                                return;
                            }
                            return;
                        }
                        TTPlayerConfiger.setValue(4, i11);
                        return;
                    }
                    if (i11 != 0) {
                        z10 = 1;
                    }
                    this.mIsStartPlayAutomatically = z10;
                    MediaPlayer mediaPlayer9 = this.mMediaPlayer;
                    if (mediaPlayer9 != null) {
                        mediaPlayer9.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, !z10);
                        return;
                    }
                    return;
                }
                this.mFallbackExoFirst = i11;
                return;
            }
            this.mHardwareDecodeEnablePlayer2 = i11;
            TTVideoEngineInternalLog.i(logcatTag(), "hardware enable = " + this.mHardwareDecodeEnablePlayer2);
            MediaPlayer mediaPlayer10 = this.mMediaPlayer;
            if (mediaPlayer10 != null) {
                mediaPlayer10.setIntOption(59, i11);
            }
        } else {
            this.mForbidOSPlayer = i11;
            TTPlayerConfiger.setValue(11, i11);
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIsMute(boolean z10) {
        TTVideoEngineInternalLog.i(logcatTag(), String.format("setIsMute:%s", Boolean.valueOf(z10)));
        this.mIsMute = z10;
        setPlayerMute(z10);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLongOption(int i10, long j10) {
        if (this.mConfigCenterVersion > 0) {
            this.mPlayerConfigExecutor.execute(this.mEngineConfig.setLongOption(i10, j10));
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLooping(boolean z10) {
        String logcatTag = logcatTag();
        TTVideoEngineInternalLog.i(logcatTag, "setLooping:" + z10);
        this.mLooping = z10;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setMediaPlayerOptions() {
        this.mMediaPlayer.setIntOption(94, getConfigInt(415, this.mSetTrackVolume));
        this.mMediaPlayer.setIntOption(98, getConfigInt(340, this.mDisableResetSystemVolume));
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, this.mRadioModeEnable);
        setPlayerMute(this.mIsMute);
        float f10 = this.mLeftVolume;
        if (f10 >= 0.0f) {
            float f11 = this.mRightVolume;
            if (f11 >= 0.0f) {
                setPlayerVolume(f10, f11);
            }
        }
        if (this.mHardwareDecodeEnablePlayer2 == 1) {
            this.mMediaPlayer.setIntOption(182, this.mCodecId);
            this.mMediaPlayer.setIntOption(181, this.mAsyncInitEnable);
        }
        if (this.mPlayerType == 5) {
            String str = this.mExoLoadControlParameters;
            if (str != null) {
                this.mMediaPlayer.setStringOption(5000, str);
            }
            int i10 = this.mExoRenderReadyMs;
            if (i10 >= 0) {
                this.mMediaPlayer.setIntOption(5001, i10);
            }
            int i11 = this.mExoConsecutiveFailNum;
            if (i11 >= 0) {
                this.mMediaPlayer.setIntOption(5002, i11);
            }
            int i12 = this.mExoCodecReusable;
            if (i12 >= 0) {
                this.mMediaPlayer.setIntOption(5003, i12);
            }
            int i13 = this.mExoCodecAsyncInitEnable;
            if (i13 >= 0) {
                this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE, i13);
            }
            int i14 = this.mExoAllowMediaCodecHelper;
            if (i14 >= 0) {
                this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER, i14);
            }
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.mPlaybackParams = playbackParams;
        if (this.mMediaPlayer != null) {
            try {
                if (isOSPlayer() && !this.mPrepared) {
                    return;
                }
                this.mMediaPlayer.setPlaybackParams(playbackParams);
            } catch (NullPointerException unused) {
            }
        }
    }

    protected void setPlayerMute(boolean z10) {
        float f10;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (mediaPlayer.isOSPlayer()) {
                if (z10) {
                    f10 = 0.0f;
                } else {
                    f10 = 1.0f;
                }
                try {
                    mediaPlayer.setVolume(f10, f10);
                    return;
                } catch (Exception e10) {
                    TTVideoEngineInternalLog.d(e10);
                    return;
                }
            }
            mediaPlayer.setIsMute(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPlayerVolume(float f10, float f11) {
        float f12;
        float f13;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (getConfigInt(415, this.mSetTrackVolume) == 0 && !isInHousePlayer()) {
            if (f10 != 0.0f) {
                f13 = 1.0f;
                f12 = 1.0f;
            } else {
                f12 = f11;
                f13 = f10;
            }
            AudioManager audioManager = (AudioManager) this.mContext.getSystemService("audio");
            if (audioManager != null) {
                audioManager.setStreamVolume(3, (int) f10, 0);
            }
            f10 = f13;
            f11 = f12;
        }
        mediaPlayer.setVolume(f10, f11);
    }

    public void setSourceType(int i10) {
        switch (i10) {
            case 0:
                this.mSourceTypeStr = "local_url";
                return;
            case 1:
                this.mSourceTypeStr = "dir_url";
                return;
            case 2:
                this.mSourceTypeStr = "playitem";
                return;
            case 3:
                this.mSourceTypeStr = "preload";
                return;
            case 4:
                this.mSourceTypeStr = "feed";
                return;
            case 5:
                this.mSourceTypeStr = "vid";
                return;
            case 6:
                this.mSourceTypeStr = "fd";
                return;
            case 7:
                this.mSourceTypeStr = "mds";
                return;
            default:
                return;
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setStringOption(int i10, String str) {
        if (i10 != 5000) {
            if (this.mConfigCenterVersion > 0) {
                this.mPlayerConfigExecutor.execute(this.mEngineConfig.setStringOption(i10, str));
                return;
            }
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 5) {
            this.mMediaPlayer.setStringOption(5000, str);
        }
        this.mExoLoadControlParameters = str;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSubTag(String str) {
        String logcatTag = logcatTag();
        TTVideoEngineInternalLog.i(logcatTag, "setSubTag: " + str);
        this.mSubTag = str;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setTag(String str) {
        String logcatTag = logcatTag();
        TTVideoEngineInternalLog.i(logcatTag, "setTag: " + str);
        this.mTag = str;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setVolume(float f10, float f11) {
        String logcatTag = logcatTag();
        TTVideoEngineInternalLog.i(logcatTag, "setVolume left:" + f10 + " right:" + f11);
        this.mLeftVolume = f10;
        this.mRightVolume = f11;
        setPlayerVolume(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldPrepare() {
        int i10 = this.mPlaybackState;
        if ((i10 == 0 || i10 == 3) && !this.mPrepared) {
            return true;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 0 && !this.mPrepared) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateConfigParams(Map<Integer, Integer> map) {
        int i10;
        int i11;
        if (map == null) {
            return;
        }
        int i12 = 0;
        if (this.mPlayerType == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        map.put(2, Integer.valueOf(i10));
        int i13 = this.mPlayerType;
        if (i13 != 2 && i13 != 5) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        map.put(1, Integer.valueOf(i11));
        HashMap<Integer, Integer> hashMap = this.mConfigParams;
        if (this.mPlayerType == 5) {
            i12 = 1;
        }
        hashMap.put(26, Integer.valueOf(i12));
        map.put(11, Integer.valueOf(this.mForbidOSPlayer));
        map.put(100, Integer.valueOf(this.mConfigParamsOption));
        map.put(43, Integer.valueOf(this.mDisableThreadPoolUsing));
        if (getConfigInt(85, this.mFallbackExoFirst) >= 0) {
            map.put(27, Integer.valueOf(getConfigInt(85, this.mFallbackExoFirst)));
        }
    }

    protected static int transMediaPlayerType(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return 5;
                            }
                            throw new RuntimeException("unknown internal player type: " + i10);
                        }
                        return 4;
                    }
                    return 3;
                }
                return 1;
            }
            return 0;
        }
        return 2;
    }

    protected void notifyCompletion() {
    }

    protected void notifyPrepare() {
    }

    protected void notifyPrepared() {
    }

    protected void notifyReadyForDisplay() {
    }

    protected void notifyRenderStart() {
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void resetEngine() {
    }

    protected void notifyBufferEnd(int i10) {
    }

    protected void notifyBufferingUpdate(int i10) {
    }

    protected void notifyError(Error error) {
    }

    protected void notifyInfoIdChanged(int i10) {
    }

    protected void notifyLoadStateChanged(int i10) {
    }

    protected void notifyPlaybackStateChanged(int i10) {
    }

    protected void notifySeekCompletion(boolean z10) {
    }

    protected void notifyStreamChanged(int i10) {
    }

    protected void onMediaPlayerCompletion(MediaPlayer mediaPlayer) {
    }

    protected void onMediaPlayerPrepared(MediaPlayer mediaPlayer) {
    }

    protected void receivedError(Error error) {
    }

    protected void updatePlaybackState(int i10) {
    }

    protected void notifySARChanged(int i10, int i11) {
    }

    protected void notifyVideoSizeChanged(int i10, int i11) {
    }

    protected void onMediaPlayerBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
    }

    protected void onMediaPlayerSeekComplete(MediaPlayer mediaPlayer, boolean z10) {
    }

    protected void updateLoadState(int i10, int i11) {
    }

    protected void notifyBufferStart(int i10, int i11, int i12) {
    }

    protected void onMediaPlayerSARChanged(MediaPlayer mediaPlayer, int i10, int i11) {
    }

    protected void onMediaPlayerVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
    }
}
