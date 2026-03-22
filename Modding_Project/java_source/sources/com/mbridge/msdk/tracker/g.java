package com.mbridge.msdk.tracker;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventProcessor.java */
/* loaded from: classes6.dex */
public class g implements l {

    /* renamed from: a  reason: collision with root package name */
    private final c f30212a;

    /* renamed from: b  reason: collision with root package name */
    private final s f30213b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f30214c = new AtomicLong(0);

    /* renamed from: d  reason: collision with root package name */
    private final long[] f30215d = new long[2];

    public g(c cVar, s sVar) {
        this.f30212a = cVar;
        this.f30213b = sVar;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void a(e eVar) {
        try {
            long incrementAndGet = this.f30214c.incrementAndGet();
            this.f30215d[0] = System.currentTimeMillis();
            this.f30215d[1] = incrementAndGet;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("TrackManager", "notice error", e10);
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.l
    public void b(e eVar) {
        try {
            i iVar = new i(eVar);
            iVar.a(1);
            iVar.b(0);
            iVar.a(System.currentTimeMillis() + eVar.f());
            this.f30212a.a(iVar);
            this.f30213b.k();
            this.f30213b.e();
            this.f30213b.a(eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("TrackManager", "process error", e10);
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.l
    public long[] a() {
        long[] jArr = this.f30215d;
        return jArr.length == 0 ? new long[]{0, 0} : jArr;
    }
}
