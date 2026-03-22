package com.bytedance.applog.network;
/* loaded from: classes3.dex */
public class RangersHttpException extends Exception {
    public int mResponseCode;

    public RangersHttpException(int i10, String str) {
        super(str);
        this.mResponseCode = i10;
    }

    public int getResponseCode() {
        return this.mResponseCode;
    }

    public RangersHttpException(int i10, Throwable th2) {
        super(th2);
        this.mResponseCode = i10;
    }
}
