package com.bytedance.vcloud.strategy;
/* loaded from: classes3.dex */
public interface IPreloadTaskCallbackListener {
    public static final int PreloadTaskAdded = 1;
    public static final int PreloadTaskAllUrlFailed = 6;
    public static final int PreloadTaskCancel = 5;
    public static final int PreloadTaskFail = 4;
    public static final int PreloadTaskStart = 2;
    public static final int PreloadTaskSuccess = 3;

    void preloadItemInfo(int i10, String str, String str2);
}
