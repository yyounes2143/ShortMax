package gn;

import cn.m0;
/* compiled from: StandaloneMediaClock.java */
/* loaded from: classes8.dex */
public final class j0 implements e0 {

    /* renamed from: a  reason: collision with root package name */
    private final cn.h f52466a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52467b;

    /* renamed from: c  reason: collision with root package name */
    private long f52468c;

    /* renamed from: d  reason: collision with root package name */
    private long f52469d;

    /* renamed from: e  reason: collision with root package name */
    private zm.v f52470e = zm.v.f72205d;

    public j0(cn.h hVar) {
        this.f52466a = hVar;
    }

    public void a(long j10) {
        this.f52468c = j10;
        if (this.f52467b) {
            this.f52469d = this.f52466a.elapsedRealtime();
        }
    }

    @Override // gn.e0
    public void b(zm.v vVar) {
        if (this.f52467b) {
            a(getPositionUs());
        }
        this.f52470e = vVar;
    }

    public void c() {
        if (!this.f52467b) {
            this.f52469d = this.f52466a.elapsedRealtime();
            this.f52467b = true;
        }
    }

    public void d() {
        if (this.f52467b) {
            a(getPositionUs());
            this.f52467b = false;
        }
    }

    @Override // gn.e0
    public zm.v getPlaybackParameters() {
        return this.f52470e;
    }

    @Override // gn.e0
    public long getPositionUs() {
        long a10;
        long j10 = this.f52468c;
        if (this.f52467b) {
            long elapsedRealtime = this.f52466a.elapsedRealtime() - this.f52469d;
            zm.v vVar = this.f52470e;
            if (vVar.f72208a == 1.0f) {
                a10 = m0.S0(elapsedRealtime);
            } else {
                a10 = vVar.a(elapsedRealtime);
            }
            return j10 + a10;
        }
        return j10;
    }
}
