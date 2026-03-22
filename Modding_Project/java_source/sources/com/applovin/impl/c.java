package com.applovin.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class c implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final List f7617a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b  reason: collision with root package name */
    private WeakReference f7618b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference f7619c;

    public c(Context context) {
        this.f7618b = new WeakReference(null);
        this.f7619c = new WeakReference(null);
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            this.f7618b = new WeakReference(activity);
            if (activity.hasWindowFocus()) {
                this.f7619c = this.f7618b;
            }
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
    }

    public Activity a() {
        return (Activity) this.f7619c.get();
    }

    public Activity b() {
        return (Activity) this.f7618b.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityCreated(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityDestroyed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f7619c = new WeakReference(null);
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        WeakReference weakReference = new WeakReference(activity);
        this.f7618b = weakReference;
        this.f7619c = weakReference;
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivitySaveInstanceState(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityStarted(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        for (b bVar : new ArrayList(this.f7617a)) {
            bVar.onActivityStopped(activity);
        }
    }

    public void a(b bVar) {
        this.f7617a.add(bVar);
    }

    public void b(b bVar) {
        this.f7617a.remove(bVar);
    }
}
