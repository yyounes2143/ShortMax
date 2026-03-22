package com.bytedance.sdk.component.ba.oJ.ex.ZYk;
/* loaded from: classes3.dex */
public class oJ {
    private int ZYk;
    private int oJ;

    oJ(int i10, int i11, long j10) {
        if (i11 >= i10) {
            this.oJ = i10;
            this.ZYk = i11;
            return;
        }
        throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
    }

    public static oJ Pfn() {
        return new oJ(3, 100, 172800000L);
    }

    public static oJ ex() {
        return new oJ(1, 100, -1L);
    }

    public static oJ tB() {
        return new oJ(1, 100, 172800000L);
    }

    public int ZYk() {
        return this.ZYk;
    }

    public int oJ() {
        return this.oJ;
    }
}
