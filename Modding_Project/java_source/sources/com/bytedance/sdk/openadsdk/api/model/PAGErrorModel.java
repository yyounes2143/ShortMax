package com.bytedance.sdk.openadsdk.api.model;
/* loaded from: classes3.dex */
public class PAGErrorModel {
    private final String ZYk;
    private final int oJ;

    public PAGErrorModel(int i10, String str) {
        this.oJ = i10;
        this.ZYk = str;
    }

    public int getErrorCode() {
        return this.oJ;
    }

    public String getErrorMessage() {
        return this.ZYk;
    }
}
