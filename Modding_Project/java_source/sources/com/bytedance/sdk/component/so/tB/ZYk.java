package com.bytedance.sdk.component.so.tB;
/* loaded from: classes3.dex */
public abstract class ZYk implements Comparable<ZYk>, Runnable {
    private long Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private long f12809ba;
    private long ex;
    private int oJ;
    private Runnable tB;

    public ZYk(String str) {
        this.oJ = 5;
        this.ZYk = str;
    }

    public long Pfn() {
        return this.f12809ba;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public Runnable ba() {
        return this.tB;
    }

    public long ex() {
        return this.Pfn;
    }

    public void oJ(int i10) {
        this.oJ = i10;
    }

    public long tB() {
        return this.ex;
    }

    public void ZYk(long j10) {
        this.Pfn = j10;
    }

    public int oJ() {
        return this.oJ;
    }

    public void tB(long j10) {
        this.f12809ba = j10;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(ZYk zYk) {
        if (oJ() < zYk.oJ()) {
            return 1;
        }
        return oJ() >= zYk.oJ() ? -1 : 0;
    }

    public ZYk(int i10, String str) {
        this.oJ = i10;
        this.ZYk = str;
    }

    public void oJ(long j10) {
        this.ex = j10;
    }

    public ZYk(String str, Runnable runnable) {
        this.oJ = 5;
        this.ZYk = str;
        this.tB = runnable;
    }
}
