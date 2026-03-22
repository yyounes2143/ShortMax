package com.mbridge.msdk.tracker;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProcessorWrapper.java */
/* loaded from: classes6.dex */
public class q implements l {

    /* renamed from: a  reason: collision with root package name */
    private final g f30410a;

    public q(g gVar) {
        this.f30410a = gVar;
    }

    @Override // com.mbridge.msdk.tracker.l
    public void a(e eVar) {
        if (y.b(this.f30410a)) {
            return;
        }
        this.f30410a.a(eVar);
    }

    @Override // com.mbridge.msdk.tracker.l
    public void b(e eVar) {
        if (y.b(this.f30410a)) {
            return;
        }
        try {
            h e10 = eVar.e();
            if (y.a(e10)) {
                eVar.a(e10.a(eVar));
            }
            this.f30410a.b(eVar);
        } catch (Exception e11) {
            if (a.f30196a) {
                Log.e("TrackManager", "process event error", e11);
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.l
    public long[] a() {
        if (y.b(this.f30410a)) {
            return new long[]{0, 0};
        }
        return this.f30410a.a();
    }
}
