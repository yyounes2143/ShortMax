package com.ss.ttm.player;

import android.content.Context;
import android.media.ImageReader;
import android.os.Handler;
import android.os.RemoteException;
import android.view.Surface;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.utils.AVLogger;
/* loaded from: classes6.dex */
public class TTPlayerRef extends ITTPlayerRef implements IPlayerNotifyer {
    private static final String TAG = "TTPlayerRef";
    private static String mAppPath = null;
    private static String mLoadErr = null;
    private static boolean mLoadSoSuccess = false;
    private TTPlayerClient mClient;
    private Context mContext;
    private long mId = System.currentTimeMillis();
    private TTPlayer mPlayer;

    public TTPlayerRef(Context context) {
        this.mContext = context;
    }

    public static final synchronized TTPlayerRef create(TTPlayerClient tTPlayerClient, Context context, int i10, int i11) {
        TTPlayerRef tTPlayerRef;
        synchronized (TTPlayerRef.class) {
            if (mAppPath == null) {
                mAppPath = TTPlayerConfiger.getAppFileCachePath(context);
                try {
                    if (TTPlayer.getAppPath() == null) {
                        TTPlayer.setTempFileDir(mAppPath);
                    }
                } catch (UnsatisfiedLinkError e10) {
                    mLoadErr = e10.getMessage();
                }
            }
            if (mLoadErr == null) {
                if (!mLoadSoSuccess) {
                    TTPlayer.setGlobalIntOptionForKey(1015, TTPlayerConfiger.getValue(31, 0));
                    TTPlayer.setGlobalIntOptionForKey(1016, TTPlayerConfiger.getValue(32, 0));
                    TTPlayer.setGlobalIntOptionForKey(1356, TTPlayerConfiger.getValue(44, 0));
                    TTPlayer.setGlobalIntOptionForKey(1357, TTPlayerConfiger.getValue(45, 0));
                    TTPlayer.setGlobalIntOptionForKey(1358, TTPlayerConfiger.getValue(46, 0));
                }
                mLoadSoSuccess = true;
                tTPlayerRef = new TTPlayerRef(context);
                tTPlayerRef.mClient = tTPlayerClient;
                TTPlayer tTPlayer = new TTPlayer(context, tTPlayerRef.mId, i10, i11);
                tTPlayerRef.mPlayer = tTPlayer;
                tTPlayer.setNotifyer(tTPlayerRef);
            } else {
                throw new UnsatisfiedLinkError(mLoadErr);
            }
        }
        return tTPlayerRef;
    }

    public static void setGlobalIntOptionForKey(int i10, int i11) {
        if (i10 != 1015) {
            if (i10 != 1016) {
                switch (i10) {
                    case 1356:
                        TTPlayerConfiger.setValue(44, i11);
                        break;
                    case 1357:
                        TTPlayerConfiger.setValue(45, i11);
                        break;
                    case 1358:
                        TTPlayerConfiger.setValue(46, i11);
                        break;
                    case MediaPlayer.MEDIA_PLAYER_OPTION_GS_AUDIOTRACK_POOL_SIZE /* 1359 */:
                        TTPlayerConfiger.setValue(47, i11);
                        break;
                }
            } else {
                TTPlayerConfiger.setValue(32, i11);
            }
        } else {
            TTPlayerConfiger.setValue(31, i11);
        }
        if (mLoadSoSuccess) {
            TTPlayer.setGlobalIntOptionForKey(i10, i11);
        }
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void close() {
        this.mPlayer.close();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    protected double getDoubleOption(int i10, double d10) {
        return this.mPlayer.getDoubleOption(i10, d10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public float getFloatOption(int i10, float f10) {
        return this.mPlayer.getFloatOption(i10, f10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int getIntOption(int i10, int i11) {
        return this.mPlayer.getIntOption(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public int getLifeId() {
        return this.mPlayer.getIntOption(35, -1);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public long getLongOption(int i10, long j10) {
        return this.mPlayer.getLongOption(i10, j10);
    }

    public long getNativeObject() {
        return this.mPlayer.getNativePlayer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public Object getObjectOption(int i10) {
        return this.mPlayer.getObjectValue(i10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public String getStringOption(int i10) {
        return this.mPlayer.getStringOption(i10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public String getSubtitleContent(int i10) {
        return this.mPlayer.getSubtitleContent(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        return this.mPlayer.getTrackInfo();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int getType() {
        return 1;
    }

    @Override // com.ss.ttm.player.IPlayerNotifyer
    public void handleErrorNotify(long j10, int i10, int i11, String str) {
        this.mClient.onPlayLogInfo(i10, i11, str);
    }

    @Override // com.ss.ttm.player.IPlayerNotifyer
    public void handlePlayerNotify(long j10, int i10, int i11, int i12, String str) {
        this.mClient.onPlayerNotify(i10, i11, i12, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public boolean isValid() {
        if (this.mPlayer == null) {
            return false;
        }
        return true;
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void mouseEvent(int i10, int i11, int i12) {
        this.mPlayer.mouseEvent(i10, i11, i12);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void pause() {
        this.mPlayer.pause();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void prepare() {
        this.mPlayer.prepare();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void prevClose() {
        this.mPlayer.prevClose();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void release() {
        TTPlayer tTPlayer = this.mPlayer;
        this.mPlayer = null;
        String str = TAG;
        AVLogger.d(str, "release native player start");
        tTPlayer.release();
        AVLogger.d(str, "release native player end");
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void reset() {
        this.mPlayer.reset();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void rotateCamera(float f10, float f11) {
        this.mPlayer.rotateCamera(f10, f11);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void seekTo(int i10) {
        this.mPlayer.seekTo(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setABRStrategy(ABRStrategy aBRStrategy) {
        this.mPlayer.setABRStrategy(aBRStrategy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setAIBarrageInfo(MaskInfo maskInfo) {
        this.mPlayer.setAIBarrageInfo(maskInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setAudioProcessor(AudioProcessor audioProcessor) {
        this.mPlayer.setAudioProcessor(audioProcessor);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setDataSource(String str) {
        this.mPlayer.setDataSource(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setDataSourceFd(int i10) {
        this.mPlayer.setDataSourceFd(i10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    protected int setDoubleOption(int i10, double d10) {
        return this.mPlayer.setDoubleOption(i10, d10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setFloatOption(int i10, float f10) {
        return this.mPlayer.setFloatOption(i10, f10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setFloatOptionArray(int[] iArr, float[] fArr) {
        return this.mPlayer.setFloatOptionArray(iArr, fArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        this.mPlayer.setFrameMetadataListener(frameMetadataListener);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setIntOption(int i10, int i11) {
        try {
            return this.mPlayer.setIntOption(i10, i11);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setIntOptionArray(int[] iArr, int[] iArr2) {
        return this.mPlayer.setIntOptionArray(iArr, iArr2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setLoadControl(LoadControl loadControl) {
        this.mPlayer.setLoadControl(loadControl);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setLongOption(int i10, long j10) {
        return this.mPlayer.setLongOption(i10, j10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setLongOptionArray(int[] iArr, long[] jArr) {
        return this.mPlayer.setLongOptionArray(iArr, jArr);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setLooping(int i10) {
        this.mPlayer.setLooping(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setMaskInfo(MaskInfo maskInfo) {
        this.mPlayer.setMaskInfo(maskInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setMediaTransport(MediaTransport mediaTransport) {
        this.mPlayer.setMediaTransport(mediaTransport);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setNotifyState(long j10) {
        this.mPlayer.setNotifyerState(j10);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
        this.mPlayer.setOnImageAvailableListener(onImageAvailableListener, handler);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        this.mPlayer.setOnScreenshotListener(onScreenshotListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setStrategyParamsTransport(StrategyParamsTransport strategyParamsTransport) {
        this.mPlayer.setStrategyParamsTransport(strategyParamsTransport);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setStringOption(int i10, String str) {
        return this.mPlayer.setStringOption(i10, str);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public int setStringOptionArray(int[] iArr, String[] strArr) {
        return this.mPlayer.setStringOptionArray(iArr, strArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setSubInfo(SubInfo subInfo) {
        this.mPlayer.setSubInfo(subInfo);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setSurface(Surface surface) {
        this.mPlayer.setVideoSurface(surface);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setSurfaceTimeOut(Surface surface, int i10) {
        this.mPlayer.setVideoSurfaceTimeOut(surface, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setTraitObject(int i10, TraitObject traitObject) {
        this.mPlayer.setTraitObject(i10, traitObject);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setVolume(float f10, float f11) {
        this.mPlayer.setVolume(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setupMediaCodec() {
        this.mPlayer.setupMediaCodec();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void start() {
        this.mPlayer.start();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void stop() {
        this.mPlayer.stop();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void switchStream(int i10, int i11) {
        this.mPlayer.switchStream(i10, i11);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void takeScreenshot() {
        this.mPlayer.takeScreenshot();
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void seekTo(int i10, int i11) {
        this.mPlayer.seekTo(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.mPlayer.setDataSource(iMediaDataSource);
    }

    @Override // com.ss.ttm.player.ITTPlayerRef
    public void setCacheFile(String str, int i10) {
    }
}
