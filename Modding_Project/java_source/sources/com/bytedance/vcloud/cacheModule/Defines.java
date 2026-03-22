package com.bytedance.vcloud.cacheModule;
/* loaded from: classes3.dex */
public class Defines {
    public static final int ErrorCodeCanceled = -1004;
    public static final int ErrorCodeIsInvalidRequestInfo = -4000;
    public static final int ErrorCodeNone = 0;

    public static String getErrorMsg(int i10) {
        if (i10 != -4000) {
            if (i10 != -1004) {
                if (i10 != 0) {
                    return CacheModule.getNativeErrorMsg(i10);
                }
                return null;
            }
            return "ErrorCodeCanceled";
        }
        return "ErrorCodeIsInvalidRequestInfo";
    }

    public static int mkTag(int i10, int i11, int i12, int i13) {
        return -(i10 | (i11 << 8) | (i12 << 16) | (i13 << 24));
    }

    public static int getErrorCode(int i10) {
        return i10;
    }
}
