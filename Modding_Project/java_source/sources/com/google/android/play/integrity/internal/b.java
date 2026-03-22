package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class b extends p0 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ IBinder f19988g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ e f19989h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(e eVar, IBinder iBinder) {
        this.f19988g = iBinder;
        this.f19989h = eVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    public final void b() {
        v0 v0Var;
        List<Runnable> list;
        List list2;
        v0Var = this.f19989h.f19991a.f20001i;
        this.f19989h.f19991a.f20006n = (IInterface) v0Var.a(this.f19988g);
        f.r(this.f19989h.f19991a);
        this.f19989h.f19991a.f19999g = false;
        list = this.f19989h.f19991a.f19996d;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f19989h.f19991a.f19996d;
        list2.clear();
    }
}
