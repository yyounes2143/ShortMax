package com.mbridge.msdk.foundation.same.net.wrapper;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.j;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.v;
/* compiled from: MBridgeRequestListenerWrapper.java */
/* loaded from: classes5.dex */
public class i<T> implements j<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.foundation.same.net.b<T> f27199a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f27200b = new Handler(Looper.getMainLooper());

    /* compiled from: MBridgeRequestListenerWrapper.java */
    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v f27201a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ q f27202b;

        a(v vVar, q qVar) {
            this.f27201a = vVar;
            this.f27202b = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (i.this.f27199a != null) {
                    i.this.f27199a.onSuccess(i.this.a(this.f27201a, this.f27202b));
                }
            } catch (Exception e10) {
                p0.b("MBridgeRequestListenerWrapper", "onResponseSuccess error", e10);
            }
        }
    }

    /* compiled from: MBridgeRequestListenerWrapper.java */
    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v f27204a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ q f27205b;

        b(v vVar, q qVar) {
            this.f27204a = vVar;
            this.f27205b = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (i.this.f27199a != null) {
                    i.this.f27199a.onError(i.this.a(this.f27204a.f30393c, this.f27205b));
                }
            } catch (Exception e10) {
                p0.b("MBridgeRequestListenerWrapper", "onResponseError error", e10);
            }
        }
    }

    public i(com.mbridge.msdk.foundation.same.net.b<T> bVar) {
        this.f27199a = bVar;
    }

    @Override // com.mbridge.msdk.tracker.network.j
    public void b(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        p0.a("MBridgeRequestListenerWrapper", "onResponseError: " + vVar.f30393c.a() + " " + vVar.f30393c.getMessage());
        this.f27200b.post(new b(vVar, qVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.net.e a(v<T> vVar, q qVar) {
        if (vVar == null) {
            return null;
        }
        return com.mbridge.msdk.foundation.same.net.e.a(vVar.f30391a, new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f30315a, qVar.f30316b, qVar.f30318d));
    }

    @Override // com.mbridge.msdk.tracker.network.j
    public void a(com.mbridge.msdk.tracker.network.h<T> hVar, v<T> vVar, q qVar) {
        p0.a("MBridgeRequestListenerWrapper", "onResponseSuccess: " + vVar.f30391a);
        this.f27200b.post(new a(vVar, qVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.net.exception.a a(b0 b0Var, q qVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        if (b0Var == null) {
            return null;
        }
        if (qVar != null) {
            aVar = new com.mbridge.msdk.foundation.same.net.toolbox.a(qVar.f30315a, qVar.f30316b, qVar.f30318d);
        } else {
            aVar = new com.mbridge.msdk.foundation.same.net.toolbox.a(0, null, null);
        }
        if (b0Var.a() == 0) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 1) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(6, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 2) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 4) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(880041, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 5) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(8, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 6) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(15, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 7) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(7, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 8) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(10, aVar, b0Var.getMessage());
        }
        if (b0Var.a() == 9) {
            return new com.mbridge.msdk.foundation.same.net.exception.a(4, aVar, b0Var.getMessage());
        }
        return new com.mbridge.msdk.foundation.same.net.exception.a(2, aVar, b0Var.getMessage());
    }
}
