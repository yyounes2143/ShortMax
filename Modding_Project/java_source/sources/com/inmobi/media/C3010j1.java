package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.inmobi.media.C3010j1;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.j1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3010j1 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final HandlerC2978h1 f24881a;

    /* renamed from: b  reason: collision with root package name */
    public WeakReference f24882b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Context f24883c;

    public C3010j1(Context context) {
        this.f24883c = context;
        Looper mainLooper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(mainLooper, "getMainLooper(...)");
        this.f24881a = new HandlerC2978h1(mainLooper);
    }

    public static final void a(Context context, C3010j1 this$0) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!C3026k1.a(C3026k1.f24916a, context) && this$0.f24882b == null) {
            this$0.f24881a.sendEmptyMessageDelayed(1001, 3000L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Activity activity2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f24882b;
        if (weakReference != null) {
            activity2 = (Activity) weakReference.get();
        } else {
            activity2 = null;
        }
        if (!Intrinsics.areEqual(activity2, activity)) {
            this.f24882b = new WeakReference(activity);
        }
        this.f24881a.removeMessages(1001);
        this.f24881a.sendEmptyMessage(1002);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Activity activity2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f24882b;
        if (weakReference != null) {
            activity2 = (Activity) weakReference.get();
        } else {
            activity2 = null;
        }
        if (!Intrinsics.areEqual(activity2, activity)) {
            this.f24882b = new WeakReference(activity);
        }
        this.f24881a.removeMessages(1001);
        this.f24881a.sendEmptyMessage(1002);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Activity activity2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f24882b;
        if (weakReference != null) {
            activity2 = (Activity) weakReference.get();
        } else {
            activity2 = null;
        }
        if (Intrinsics.areEqual(activity2, activity)) {
            this.f24881a.sendEmptyMessageDelayed(1001, 3000L);
        } else if (this.f24882b == null) {
            final Context context = this.f24883c;
            Uc.a(new Runnable() { // from class: ub.o4
                @Override // java.lang.Runnable
                public final void run() {
                    C3010j1.a(context, this);
                }
            });
        }
    }
}
