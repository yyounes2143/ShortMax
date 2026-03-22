package com.bytedance.sdk.component.ZYk.oJ;

import java.nio.charset.Charset;
/* loaded from: classes3.dex */
public final class jFA {
    private String ZYk;
    private String oJ;

    private jFA(String str) {
        this.oJ = str;
    }

    public static jFA oJ(String str) {
        return new jFA(str);
    }

    public String oJ() {
        return this.oJ;
    }

    public Charset oJ(Charset charset) {
        try {
            String str = this.ZYk;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
