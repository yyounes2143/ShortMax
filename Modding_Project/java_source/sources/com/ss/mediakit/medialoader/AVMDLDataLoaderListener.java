package com.ss.mediakit.medialoader;
/* loaded from: classes6.dex */
public interface AVMDLDataLoaderListener {
    String getCheckSumInfo(String str);

    long getInt64Value(int i10, long j10);

    String getStringValue(int i10, long j10, String str);

    void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);
}
