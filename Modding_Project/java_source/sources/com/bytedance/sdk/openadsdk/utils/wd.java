package com.bytedance.sdk.openadsdk.utils;

import android.os.SystemClock;
/* loaded from: classes3.dex */
public class wd {
    private long ZYk;
    public long oJ;

    private wd(boolean z10) {
        if (z10) {
            Pfn();
        }
    }

    public static wd ZYk() {
        return new wd(true);
    }

    public static wd tB() {
        return new wd(false);
    }

    public void Pfn() {
        this.oJ = System.currentTimeMillis();
        this.ZYk = SystemClock.elapsedRealtime();
    }

    public boolean ba() {
        if (this.ZYk > 0) {
            return true;
        }
        return false;
    }

    public long ex() {
        return SystemClock.elapsedRealtime() - this.ZYk;
    }

    public long oJ() {
        return this.ZYk;
    }

    public String toString() {
        return String.valueOf(this.oJ);
    }

    public long oJ(wd wdVar) {
        return Math.abs(wdVar.ZYk - this.ZYk);
    }
}
