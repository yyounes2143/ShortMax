package com.ss.ttvideoengine.configcenter;

import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public final class OptionHolder {
    private static final String TAG = "OptionHolder";
    private final Map<Integer, Integer> mIntMap = new ConcurrentHashMap();
    private final Map<Integer, Long> mLongMap = new ConcurrentHashMap();
    private final Map<Integer, Float> mFloatMap = new ConcurrentHashMap();
    private final Map<Integer, String> mStringMap = new ConcurrentHashMap();

    public void apply(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            return;
        }
        try {
            for (Map.Entry<Integer, Integer> entry : this.mIntMap.entrySet()) {
                mediaPlayer.setIntOption(entry.getKey().intValue(), entry.getValue().intValue());
            }
            for (Map.Entry<Integer, Long> entry2 : this.mLongMap.entrySet()) {
                mediaPlayer.setLongOption(entry2.getKey().intValue(), entry2.getValue().longValue());
            }
            for (Map.Entry<Integer, Float> entry3 : this.mFloatMap.entrySet()) {
                mediaPlayer.setFloatOption(entry3.getKey().intValue(), entry3.getValue().floatValue());
            }
            for (Map.Entry<Integer, String> entry4 : this.mStringMap.entrySet()) {
                mediaPlayer.setStringOption(entry4.getKey().intValue(), entry4.getValue());
            }
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.getMessage());
        }
    }

    public int getIntOption(int i10, int i11) {
        Integer num;
        if (this.mIntMap.containsKey(Integer.valueOf(i10)) && (num = this.mIntMap.get(Integer.valueOf(i10))) != null) {
            return num.intValue();
        }
        return i11;
    }

    public void setFloatOption(int i10, float f10) {
        this.mFloatMap.put(Integer.valueOf(i10), Float.valueOf(f10));
    }

    public void setIntOption(int i10, int i11) {
        this.mIntMap.put(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public void setLongOption(int i10, long j10) {
        this.mLongMap.put(Integer.valueOf(i10), Long.valueOf(j10));
    }

    public void setStringOption(int i10, String str) {
        this.mStringMap.put(Integer.valueOf(i10), str);
    }
}
