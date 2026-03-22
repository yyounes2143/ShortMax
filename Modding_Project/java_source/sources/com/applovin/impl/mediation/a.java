package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.k7;
import com.applovin.impl.z2;
/* loaded from: classes2.dex */
public class a extends com.applovin.impl.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.c f8551a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8552b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8553c;

    /* renamed from: d  reason: collision with root package name */
    private InterfaceC0112a f8554d;

    /* renamed from: e  reason: collision with root package name */
    private z2 f8555e;

    /* renamed from: f  reason: collision with root package name */
    private String f8556f;

    /* renamed from: com.applovin.impl.mediation.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0112a {
        void b(z2 z2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(com.applovin.impl.sdk.k kVar) {
        this.f8552b = kVar.O();
        this.f8551a = kVar.e();
        this.f8553c = k7.a(com.applovin.impl.sdk.k.o(), "AdActivityObserver", kVar);
    }

    public void a(z2 z2Var, InterfaceC0112a interfaceC0112a) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f8552b;
            oVar.a("AdActivityObserver", "Starting for ad " + z2Var.getAdUnitId() + "...");
        }
        a();
        this.f8554d = interfaceC0112a;
        this.f8555e = z2Var;
        this.f8551a.a(this);
    }

    @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.getClass().getName().equals(this.f8553c) && this.f8555e.s0()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8552b.a("AdActivityObserver", "App relaunched via launcher without an ad hidden callback, manually invoking ad hidden");
            }
            if (this.f8554d != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8552b.a("AdActivityObserver", "Invoking callback...");
                }
                this.f8554d.b(this.f8555e);
            }
            a();
        } else if (this.f8556f == null) {
            this.f8556f = activity.getClass().getName();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8552b;
                oVar.a("AdActivityObserver", "Started tracking ad Activity: " + this.f8556f);
            }
        }
    }

    @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity.getClass().getName().equals(this.f8556f)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f8552b;
                oVar.a("AdActivityObserver", "Ad Activity destroyed: " + this.f8556f);
            }
            if (this.f8554d != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8552b.a("AdActivityObserver", "Invoking callback...");
                }
                this.f8554d.b(this.f8555e);
            }
            a();
        }
    }

    public void a() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f8552b.a("AdActivityObserver", "Cancelling...");
        }
        this.f8551a.b(this);
        this.f8554d = null;
        this.f8555e = null;
        this.f8556f = null;
    }
}
