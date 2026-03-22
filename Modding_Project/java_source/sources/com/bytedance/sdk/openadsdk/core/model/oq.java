package com.bytedance.sdk.openadsdk.core.model;
/* loaded from: classes3.dex */
public class oq {
    private long oJ = 10000;
    private long ZYk = 10000;
    private long tB = 10;
    private long ex = 20;
    private String Pfn = "";

    public String Pfn() {
        return this.Pfn;
    }

    public long ZYk() {
        return this.ZYk;
    }

    public long ex() {
        return this.ex;
    }

    public long oJ() {
        return this.oJ;
    }

    public long tB() {
        return this.tB;
    }

    public void ZYk(long j10) {
        if (j10 < 0) {
            this.ZYk = 20L;
        } else {
            this.ZYk = j10;
        }
    }

    public void ex(long j10) {
        if (j10 < 0) {
            this.ex = 20L;
        } else {
            this.ex = j10;
        }
    }

    public void oJ(long j10) {
        if (j10 <= 0) {
            this.oJ = 10L;
        } else {
            this.oJ = j10;
        }
    }

    public void tB(long j10) {
        if (j10 <= 0) {
            this.tB = 10L;
        } else {
            this.tB = j10;
        }
    }

    public void oJ(String str) {
        this.Pfn = str;
    }
}
