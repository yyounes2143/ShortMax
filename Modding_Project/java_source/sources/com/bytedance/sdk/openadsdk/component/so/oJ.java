package com.bytedance.sdk.openadsdk.component.so;
/* loaded from: classes3.dex */
public final class oJ {
    private long ZYk;
    private long ex;
    private float oJ;
    private boolean tB;

    public float ZYk() {
        return this.oJ;
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    public long tB() {
        return this.ZYk;
    }

    public void ZYk(long j10) {
        this.ZYk = j10;
    }

    public long oJ() {
        return this.ex;
    }

    public void oJ(long j10) {
        this.ex = j10;
    }

    public void oJ(float f10) {
        StringBuilder sb2 = new StringBuilder("setTotalTime() called with: time = [");
        sb2.append(f10);
        sb2.append("]");
        this.oJ = f10;
    }
}
