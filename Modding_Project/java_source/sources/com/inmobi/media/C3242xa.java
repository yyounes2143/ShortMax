package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.squareup.picasso.Picasso;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.xa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3242xa implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Object obj;
        Picasso picasso;
        WeakReference a10;
        List list;
        List list2;
        Picasso picasso2;
        Picasso picasso3;
        Intrinsics.checkNotNullParameter(activity, "activity");
        obj = C3258ya.f25465c;
        synchronized (obj) {
            try {
                picasso = C3258ya.f25464b;
                if (picasso != null && (a10 = C3258ya.a(C3258ya.f25463a, activity)) != null) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(this);
                    list = C3258ya.f25466d;
                    list.remove(a10);
                    list2 = C3258ya.f25466d;
                    if (list2.isEmpty()) {
                        Intrinsics.checkNotNullExpressionValue(C3258ya.d(), "access$getTAG$p(...)");
                        picasso2 = C3258ya.f25464b;
                        Objects.toString(picasso2);
                        picasso3 = C3258ya.f25464b;
                        if (picasso3 != null) {
                            picasso3.shutdown();
                        }
                        C3258ya.f25464b = null;
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }
}
