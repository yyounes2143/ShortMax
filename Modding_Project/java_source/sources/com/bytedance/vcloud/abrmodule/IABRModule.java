package com.bytedance.vcloud.abrmodule;

import com.ss.ttm.player.ABRStrategy;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public interface IABRModule {
    public static final int SELECT_SCENE_PRELOAD = 0;
    public static final int SELECT_SCENE_STARTUP = 1;

    void addBufferInfo(int i10, String str, long j10, long j11, long j12);

    float getFloatOption(int i10, float f10);

    long getLongOption(int i10, long j10);

    ABRResult getPredict();

    String getPredictByJsonParams(String str);

    String getStringOption(int i10, String str);

    String getVersion();

    void init(IPlayStateSupplier iPlayStateSupplier);

    ABRResult onceSelect(int i10, int i11);

    void release();

    void setDeviceInfo(IDeviceInfo iDeviceInfo);

    void setDoubleOptionForKey(int i10, double d10);

    void setFloatOptionForKey(int i10, float f10);

    void setInfoListener(IABRInfoListener iABRInfoListener);

    void setIntOptionForKey(int i10, int i11);

    void setLongOptionForKey(int i10, long j10);

    void setMediaInfo(List<IVideoStream> list, List<IAudioStream> list2);

    void setSRBenchmark(Map<Integer, Integer> map);

    void setSRBenchmarkMap(Map<Integer, List<Integer>> map);

    void setStringOptionForKey(int i10, String str);

    void start(int i10, int i11);

    void stop();

    ABRStrategy toStratrgy();
}
