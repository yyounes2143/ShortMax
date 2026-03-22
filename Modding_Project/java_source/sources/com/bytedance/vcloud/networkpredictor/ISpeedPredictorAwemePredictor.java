package com.bytedance.vcloud.networkpredictor;
/* loaded from: classes3.dex */
public interface ISpeedPredictorAwemePredictor {
    double calculateSpeed();

    void configMlModel(ISpeedPredictorMLConfig iSpeedPredictorMLConfig);

    double getSpeed();

    void monitorVideoSpeed(double d10, double d11, long j10);

    void setPredictorListener(ISpeedPredictorAwemeListener iSpeedPredictorAwemeListener);

    void setSpeedAlgorithmType(int i10);
}
