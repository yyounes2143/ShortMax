package com.mbridge.msdk.tracker.network;
/* compiled from: VolleyError.java */
/* loaded from: classes6.dex */
public abstract class b0 extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final q f30260a;

    /* renamed from: b  reason: collision with root package name */
    private long f30261b;

    /* renamed from: c  reason: collision with root package name */
    private int f30262c;

    /* renamed from: d  reason: collision with root package name */
    private String f30263d;

    public b0() {
        this.f30262c = 0;
        this.f30263d = "";
        this.f30260a = null;
    }

    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j10) {
        this.f30261b = j10;
    }

    public int b() {
        return this.f30262c;
    }

    public void a(int i10) {
        this.f30262c = i10;
    }

    public b0(q qVar) {
        this.f30262c = 0;
        this.f30263d = "";
        this.f30260a = qVar;
    }

    public b0(String str) {
        super(str);
        this.f30262c = 0;
        this.f30263d = "";
        this.f30260a = null;
    }

    public b0(Throwable th2) {
        super(th2);
        this.f30262c = 0;
        this.f30263d = "";
        this.f30260a = null;
    }
}
