package com.bytedance.vcloud.networkpredictor;

import java.util.Map;
/* loaded from: classes3.dex */
public interface ISpeedPredictor {
    void close();

    float getAverageDownloadSpeed(int i10, int i11, boolean z10);

    Map<String, String> getDownloadSpeed(int i10);

    float getLastPredictConfidence();

    String getMultidimensionalDownloadSpeeds();

    SpeedPredictorResultCollection getMultidimensionalDownloadSpeedsObj();

    String getMultidimensionalPredictSpeeds();

    SpeedPredictorResultCollection getMultidimensionalPredictSpeedsObj();

    float getPredictSpeed();

    float getPredictSpeed(int i10);

    String getVersion();

    void prepare();

    void release();

    void setConfigInfo(Map map);

    void setSpeedQueueSize(int i10);

    void start();

    void update(long j10, long j11, long j12);

    void update(ISpeedRecordOld iSpeedRecordOld, Map<String, Integer> map);

    void update(String str, Map<String, Integer> map);
}
