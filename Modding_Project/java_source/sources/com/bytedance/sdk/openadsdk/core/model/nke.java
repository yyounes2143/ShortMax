package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.utils.wd;
/* loaded from: classes3.dex */
public class nke {
    private long Pfn;
    public long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private long f13234ba;
    private long cFZ;
    private int dLZ;
    private long jFA;
    private long kkU;
    public boolean oJ;

    /* renamed from: so  reason: collision with root package name */
    private long f13235so;
    private wd tB = wd.tB();
    private wd ex = wd.tB();

    public long Pfn() {
        return this.f13235so;
    }

    public void ZYk(wd wdVar) {
        this.ex = wdVar;
        this.jFA = wdVar.oJ(this.tB);
    }

    public long ba() {
        return this.jFA;
    }

    public long cFZ() {
        return this.kkU;
    }

    public long ex() {
        return this.cFZ;
    }

    public void oJ(wd wdVar, wd wdVar2, int i10, wd wdVar3) {
        this.Pfn = wdVar.oJ(this.tB);
        this.f13234ba = wdVar2.oJ(wdVar);
        this.cFZ = i10;
        this.f13235so = wdVar3.oJ(wdVar2);
    }

    public int so() {
        return this.dLZ;
    }

    public long tB() {
        return this.f13234ba;
    }

    public long ZYk() {
        return this.Pfn;
    }

    public void oJ(wd wdVar) {
        this.tB = wdVar;
    }

    public wd oJ() {
        return this.tB;
    }

    public void oJ(long j10) {
        this.kkU = j10;
    }

    public void oJ(int i10) {
        this.dLZ = i10;
    }
}
