package com.ss.mediakit.net;
/* loaded from: classes6.dex */
public class Error {
    int code;
    public String errStr;
    public String host;

    /* renamed from: id  reason: collision with root package name */
    public String f37041id;

    public Error(int i10, String str, String str2) {
        this.code = i10;
        this.host = str;
        this.f37041id = str2;
        this.errStr = null;
    }

    public Error(int i10, String str, String str2, String str3) {
        this.code = i10;
        this.host = str;
        this.f37041id = str2;
        this.errStr = str3;
    }
}
