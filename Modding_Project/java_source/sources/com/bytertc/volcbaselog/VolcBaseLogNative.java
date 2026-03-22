package com.bytertc.volcbaselog;
/* loaded from: classes3.dex */
public class VolcBaseLogNative {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f13437a = 0;

    static {
        System.loadLibrary("VolcBaseLog");
    }

    public static native void enableThreadLoop(long j10, int i10, int i11);

    public static native long getWriteLogFunctionPtr(long j10);

    public static native long init(VolcBaseLogConfig volcBaseLogConfig, int i10, String str);

    public static native void logQuerySalvage(long j10);

    public static native void setEnableLogFile(long j10, int i10);

    public static native void setEnableStdout(long j10, int i10);

    public static native int setHttpTimeout(long j10, int i10);

    public static native int setHttpUploadFileTimeout(long j10, int i10);

    public static native void setLogExpireTime(long j10, int i10);

    public static native int setLogLevel(long j10, int i10);

    public static native void setLogPath(long j10, String str);

    public static native void setMaxLogSize(long j10, int i10);

    public static native void setQueryInterval(long j10, int i10);

    public static native void setSingleFileSize(long j10, int i10);

    public static native void uninit(long j10);

    public static native void writeLog(long j10, int i10, String str, String str2, int i11, String str3);

    public static native void writeLogContent(long j10, int i10, String str);
}
