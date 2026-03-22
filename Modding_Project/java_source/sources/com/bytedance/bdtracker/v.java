package com.bytedance.bdtracker;

import com.bytedance.bdtracker.b;
/* loaded from: classes3.dex */
public final class v implements b.e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e4 f12462a;

    public v(e4 e4Var) {
        this.f12462a = e4Var;
    }

    @Override // com.bytedance.bdtracker.b.e
    public boolean a(d dVar) {
        if (!b.f11875b.a(dVar) || dVar.isAutoTrackPageIgnored(this.f12462a.E)) {
            return false;
        }
        if (!this.f12462a.D) {
            return true;
        }
        if (dVar.getInitConfig() != null && !dVar.getInitConfig().isAutoTrackFragmentEnabled()) {
            return false;
        }
        return true;
    }
}
