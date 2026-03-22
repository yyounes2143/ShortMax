package com.applovin.adview;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.applovin.impl.m2;
import com.applovin.impl.v1;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class AppLovinFullscreenAdViewObserver implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Lifecycle f7266a;

    /* renamed from: b  reason: collision with root package name */
    private m2 f7267b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f7268c = new AtomicBoolean(true);

    /* renamed from: d  reason: collision with root package name */
    private v1 f7269d;

    public AppLovinFullscreenAdViewObserver(Lifecycle lifecycle, m2 m2Var) {
        this.f7266a = lifecycle;
        this.f7267b = m2Var;
        lifecycle.addObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        this.f7266a.removeObserver(this);
        m2 m2Var = this.f7267b;
        if (m2Var != null) {
            m2Var.a();
            this.f7267b = null;
        }
        v1 v1Var = this.f7269d;
        if (v1Var != null) {
            v1Var.a("lifecycle_on_destroy");
            this.f7269d.q();
            this.f7269d = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        v1 v1Var = this.f7269d;
        if (v1Var != null) {
            v1Var.r();
            this.f7269d.u();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        v1 v1Var;
        if (!this.f7268c.getAndSet(false) && (v1Var = this.f7269d) != null) {
            v1Var.s();
            this.f7269d.b(0L);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        v1 v1Var = this.f7269d;
        if (v1Var != null) {
            v1Var.t();
        }
    }

    public void setPresenter(v1 v1Var) {
        this.f7269d = v1Var;
    }
}
