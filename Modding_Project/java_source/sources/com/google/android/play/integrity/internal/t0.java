package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class t0 extends p0 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ f f20023g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(f fVar) {
        this.f20023g = fVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    public final void b() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        o0 o0Var;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        o0 o0Var2;
        obj = this.f20023g.f19998f;
        synchronized (obj) {
            try {
                atomicInteger = this.f20023g.f20004l;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.f20023g.f20004l;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        o0Var2 = this.f20023g.f19994b;
                        o0Var2.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                        return;
                    }
                }
                f fVar = this.f20023g;
                iInterface = fVar.f20006n;
                if (iInterface != null) {
                    o0Var = fVar.f19994b;
                    o0Var.d("Unbind from service.", new Object[0]);
                    f fVar2 = this.f20023g;
                    context = fVar2.f19993a;
                    serviceConnection = fVar2.f20005m;
                    context.unbindService(serviceConnection);
                    this.f20023g.f19999g = false;
                    this.f20023g.f20006n = null;
                    this.f20023g.f20005m = null;
                }
                this.f20023g.x();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
