package com.bytedance.vcloud.networkpredictor;
/* loaded from: classes3.dex */
public interface ISpeedPredictorListener {
    String getCountry();

    boolean getDownFileState(String str, String str2, String str3) throws Exception;

    String getFilesCachePath();

    Object getIOExecutor();

    String getNetworkType();

    int getPhoneSignal();
}
