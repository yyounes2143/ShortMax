package com.drake.statelayout;

import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import kotlin.Metadata;
/* compiled from: StateUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class StateUtilsKt$stateCreate$1 implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ StateLayout f13581a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Fragment f13582b;

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void removeState() {
        ViewParent parent = this.f13581a.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.f13581a);
            this.f13582b.getLifecycle().removeObserver(this);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup");
    }
}
