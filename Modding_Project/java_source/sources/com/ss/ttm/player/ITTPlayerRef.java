package com.ss.ttm.player;

import android.content.Context;
import android.media.ImageReader;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.ss.ttm.player.MediaPlayer;
import java.util.HashMap;
/* loaded from: classes6.dex */
public abstract class ITTPlayerRef {
    public static synchronized ITTPlayerRef create(Context context, TTPlayerClient tTPlayerClient, HashMap<Integer, Integer> hashMap) {
        int i10;
        int i11;
        TTPlayerRef create;
        synchronized (ITTPlayerRef.class) {
            try {
                Integer num = 0;
                if (hashMap != null && hashMap.get(33) != null) {
                    i10 = hashMap.get(33).intValue();
                } else {
                    i10 = 1;
                }
                if (hashMap != null && hashMap.get(43) != null) {
                    i11 = hashMap.get(43).intValue();
                } else {
                    i11 = 0;
                }
                create = TTPlayerRef.create(tTPlayerClient, context, i10, i11);
                if (create != null && TTPlayerConfiger.isPrintInfo()) {
                    Log.i(TTPlayerConfiger.TAG, "---------->ttplayer on<------------");
                }
                if (create == null) {
                    Log.i(TTPlayerConfiger.TAG, TTPlayerConfiger.getValue(16, "not find start service info."));
                    if (hashMap != null) {
                        num = hashMap.get(100);
                    }
                    if (hashMap != null && num != null && num.intValue() == 1) {
                        if (hashMap.get(7).intValue() == 0 && hashMap.get(10).intValue() < 3) {
                            hashMap.put(7, 1);
                        }
                    } else if (!TTPlayerConfiger.getValue(7, false) && TTPlayerConfiger.getValue(10, 0) < 3) {
                        TTPlayerConfiger.setValue(7, true);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return create;
    }

    public static void setGlobalIntOptionForKey(int i10, int i11) {
        TTPlayerRef.setGlobalIntOptionForKey(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void close();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Context getContext();

    protected abstract double getDoubleOption(int i10, double d10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract float getFloatOption(int i10, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getIntOption(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getLifeId();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long getLongOption(int i10, long j10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object getObjectOption(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getStringOption(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getSubtitleContent(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract MediaPlayer.TrackInfo[] getTrackInfo();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getType();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isValid();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void mouseEvent(int i10, int i11, int i12);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void pause();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void prepare();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void prevClose();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void release();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void reset();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void rotateCamera(float f10, float f11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void seekTo(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void seekTo(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setABRStrategy(ABRStrategy aBRStrategy);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setAIBarrageInfo(MaskInfo maskInfo);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setAudioProcessor(AudioProcessor audioProcessor);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setCacheFile(String str, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setDataSource(IMediaDataSource iMediaDataSource);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setDataSource(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setDataSourceFd(int i10);

    protected abstract int setDoubleOption(int i10, double d10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int setFloatOption(int i10, float f10);

    public int setFloatOptionArray(int[] iArr, float[] fArr) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setFrameMetadataListener(FrameMetadataListener frameMetadataListener);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int setIntOption(int i10, int i11);

    public int setIntOptionArray(int[] iArr, int[] iArr2) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setLoadControl(LoadControl loadControl);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int setLongOption(int i10, long j10);

    public int setLongOptionArray(int[] iArr, long[] jArr) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setLooping(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setMaskInfo(MaskInfo maskInfo);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setMediaTransport(MediaTransport mediaTransport);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setNotifyState(long j10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setOnScreenshotListener(MediaPlayer.OnScreenshotListener onScreenshotListener);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setStrategyParamsTransport(StrategyParamsTransport strategyParamsTransport);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int setStringOption(int i10, String str);

    public int setStringOptionArray(int[] iArr, String[] strArr) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setSubInfo(SubInfo subInfo);

    @Deprecated
    protected abstract void setSurface(Surface surface);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setSurfaceTimeOut(Surface surface, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setTraitObject(int i10, TraitObject traitObject);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setVolume(float f10, float f11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void setupMediaCodec();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void start();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void stop();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void switchStream(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void takeScreenshot();

    /* JADX INFO: Access modifiers changed from: protected */
    public void invalid() {
    }
}
