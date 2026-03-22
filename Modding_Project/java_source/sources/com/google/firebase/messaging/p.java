package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FcmLifecycleCallbacks.java */
/* loaded from: classes5.dex */
public class p implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<String> f21231a = new ArrayDeque(10);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void b(Intent intent) {
        Bundle bundle = null;
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String h10 = g0.h(extras);
                if (!TextUtils.isEmpty(h10)) {
                    if (this.f21231a.contains(h10)) {
                        return;
                    }
                    this.f21231a.add(h10);
                }
                bundle = extras.getBundle("gcm.n.analytics_data");
            }
        } catch (RuntimeException e10) {
            Log.w("FirebaseMessaging", "Failed trying to get analytics data from Intent extras.", e10);
        }
        if (g0.E(bundle)) {
            g0.x(bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @SuppressLint({"ThreadPoolCreation"})
    public void onActivityCreated(Activity activity, Bundle bundle) {
        final Intent intent = activity.getIntent();
        if (intent == null) {
            return;
        }
        if (Build.VERSION.SDK_INT <= 25) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.firebase.messaging.o
                @Override // java.lang.Runnable
                public final void run() {
                    p.this.b(intent);
                }
            });
        } else {
            b(intent);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
