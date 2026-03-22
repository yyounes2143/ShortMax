package com.bytedance.sdk.component.tB.oJ;

import android.os.SystemClock;
/* loaded from: classes3.dex */
public class oJ {
    long Pfn;
    long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    long f12812ba;
    long cFZ;
    long ex;
    long oJ = SystemClock.elapsedRealtime();

    /* renamed from: so  reason: collision with root package name */
    long f12813so;
    long tB;

    public long BTZ() {
        return this.f12813so;
    }

    public void Pfn() {
        this.f12812ba = SystemClock.elapsedRealtime();
    }

    public void PiB() {
        this.f12813so = SystemClock.elapsedRealtime();
    }

    public long WcQ() {
        return this.ZYk;
    }

    public void ZYk() {
        this.ex = SystemClock.elapsedRealtime();
    }

    public void awB() {
        this.ZYk = SystemClock.elapsedRealtime();
    }

    public long ba() {
        return this.f12812ba;
    }

    public long cFZ() {
        return this.tB;
    }

    public void dLZ() {
        this.cFZ = SystemClock.elapsedRealtime();
    }

    public long ex() {
        return this.oJ;
    }

    public long jFA() {
        return this.Pfn;
    }

    public long kkU() {
        return this.cFZ;
    }

    public void oJ() {
        this.tB = SystemClock.elapsedRealtime();
    }

    public long so() {
        return this.ex;
    }

    public void tB() {
        this.Pfn = SystemClock.elapsedRealtime();
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.oJ + ", asyncCallExecTs=" + this.ZYk + ", requestStartExecTs=" + this.tB + ", requestConnectStartTs=" + this.ex + ", requestConnectFinishTs=" + this.Pfn + ", reqCallServerStartTs=" + this.cFZ + ", reqCallServerFinishTs=" + this.f12813so + '}';
    }
}
