package com.applovin.impl.sdk;

import com.applovin.impl.d7;
import com.applovin.impl.sdk.a;
import com.applovin.impl.v4;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final k f9605a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference f9606b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference f9607c;

    /* renamed from: d  reason: collision with root package name */
    private d7 f9608d;

    private b(com.applovin.impl.s1 s1Var, a.InterfaceC0117a interfaceC0117a, k kVar) {
        this.f9606b = new WeakReference(s1Var);
        this.f9607c = new WeakReference(interfaceC0117a);
        this.f9605a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        d();
        this.f9605a.f().a(this);
    }

    public com.applovin.impl.s1 b() {
        return (com.applovin.impl.s1) this.f9606b.get();
    }

    public void d() {
        a();
        com.applovin.impl.s1 b10 = b();
        if (b10 == null) {
            return;
        }
        b10.setExpired();
        a.InterfaceC0117a interfaceC0117a = (a.InterfaceC0117a) this.f9607c.get();
        if (interfaceC0117a == null) {
            return;
        }
        interfaceC0117a.onAdExpired(b10);
    }

    public static b a(com.applovin.impl.s1 s1Var, a.InterfaceC0117a interfaceC0117a, k kVar) {
        b bVar = new b(s1Var, interfaceC0117a, kVar);
        bVar.a(s1Var.getTimeToLiveMillis());
        return bVar;
    }

    public void a(long j10) {
        a();
        if (((Boolean) this.f9605a.a(v4.f10201a1)).booleanValue() || !this.f9605a.n0().isApplicationPaused()) {
            this.f9608d = d7.a(j10, this.f9605a, new Runnable() { // from class: com.applovin.impl.sdk.a0
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.c();
                }
            });
        }
    }

    public void a() {
        d7 d7Var = this.f9608d;
        if (d7Var != null) {
            d7Var.a();
            this.f9608d = null;
        }
    }
}
