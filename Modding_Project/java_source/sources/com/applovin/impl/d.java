package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import com.applovin.adview.AppLovinFullscreenActivity;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.applovin.impl.b {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference f7739a = new WeakReference(null);

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f7740b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f7741c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ c f7742d;

        a(Class cls, b bVar, c cVar) {
            this.f7740b = cls;
            this.f7741c = bVar;
            this.f7742d = cVar;
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (this.f7740b.isInstance(activity) && this.f7739a.get() == null) {
                this.f7739a = new WeakReference(activity);
                this.f7741c.a(activity);
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f7740b.isInstance(activity) && !activity.isChangingConfigurations() && this.f7739a.get() == activity) {
                this.f7742d.b(this);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(Activity activity);
    }

    public static void a(Context context, Class cls, c cVar, b bVar) {
        cVar.a(new a(cls, bVar, cVar));
        a(context, cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
        r0 = r1.getWindow().getInsetsController();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.app.Activity r1) {
        /*
            boolean r0 = com.applovin.impl.o0.b()
            if (r0 == 0) goto L1c
            android.view.Window r0 = r1.getWindow()
            android.view.WindowInsetsController r0 = androidx.core.view.h2.a(r0)
            if (r0 == 0) goto L1c
            r1 = 2
            androidx.core.view.i2.a(r0, r1)
            int r1 = androidx.core.view.y1.a()
            androidx.core.view.c0.a(r0, r1)
            return
        L1c:
            android.view.Window r1 = r1.getWindow()
            android.view.View r1 = r1.getDecorView()
            r0 = 5380(0x1504, float:7.539E-42)
            r1.setSystemUiVisibility(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d.b(android.app.Activity):void");
    }

    public static void c(Activity activity) {
        WindowInsetsController insetsController;
        int systemBars;
        if (o0.b()) {
            insetsController = activity.getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsBehavior(2);
                systemBars = WindowInsets.Type.systemBars();
                insetsController.hide(systemBars);
                return;
            }
            activity.getWindow().getDecorView().setSystemUiVisibility(5894);
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public static boolean d(Activity activity) {
        if (activity != null && !activity.isFinishing() && !activity.isChangingConfigurations() && !activity.isDestroyed()) {
            return false;
        }
        return true;
    }

    public static void a(Context context, Class cls) {
        Intent intent = new Intent(context, cls);
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    public static String b(AppLovinFullscreenActivity appLovinFullscreenActivity) {
        try {
            return appLovinFullscreenActivity.getPackageManager().getActivityInfo(new ComponentName(appLovinFullscreenActivity, appLovinFullscreenActivity.getClass()), 0).taskAffinity;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
        r0 = r1.getWindow().getInsetsController();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.app.Activity r1) {
        /*
            boolean r0 = com.applovin.impl.o0.b()
            if (r0 == 0) goto L1c
            android.view.Window r0 = r1.getWindow()
            android.view.WindowInsetsController r0 = androidx.core.view.h2.a(r0)
            if (r0 == 0) goto L1c
            r1 = 2
            androidx.core.view.i2.a(r0, r1)
            int r1 = androidx.core.view.z1.a()
            androidx.core.view.c0.a(r0, r1)
            return
        L1c:
            android.view.Window r1 = r1.getWindow()
            android.view.View r1 = r1.getDecorView()
            r0 = 4866(0x1302, float:6.819E-42)
            r1.setSystemUiVisibility(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d.a(android.app.Activity):void");
    }

    public static Activity a(View view) {
        if (view == null) {
            return null;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        r2 = r2.baseActivity;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(com.applovin.adview.AppLovinFullscreenActivity r5) {
        /*
            boolean r0 = com.applovin.impl.o0.j()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r5.getSystemService(r0)     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Exception -> L5b
            java.util.List r0 = r0.getAppTasks()     // Catch: java.lang.Exception -> L5b
            if (r0 == 0) goto L5b
            boolean r2 = r0.isEmpty()     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L1d
            goto L5b
        L1d:
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L5b
        L21:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L5b
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager$AppTask r2 = (android.app.ActivityManager.AppTask) r2     // Catch: java.lang.Exception -> L5b
            android.app.ActivityManager$RecentTaskInfo r2 = r2.getTaskInfo()     // Catch: java.lang.Exception -> L5b
            android.content.ComponentName r3 = com.applovin.impl.h9.a(r2)     // Catch: java.lang.Exception -> L5b
            java.lang.Class r4 = r5.getClass()     // Catch: java.lang.Exception -> L5b
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Exception -> L5b
            if (r3 == 0) goto L21
            java.lang.String r3 = r3.getClassName()     // Catch: java.lang.Exception -> L5b
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L5b
            if (r3 == 0) goto L21
            android.content.ComponentName r2 = com.applovin.impl.i9.a(r2)     // Catch: java.lang.Exception -> L5b
            if (r2 == 0) goto L21
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Exception -> L5b
            r0 = 0
            android.content.pm.ActivityInfo r5 = r5.getActivityInfo(r2, r0)     // Catch: java.lang.Exception -> L5b
            java.lang.String r5 = r5.taskAffinity     // Catch: java.lang.Exception -> L5b
            return r5
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d.a(com.applovin.adview.AppLovinFullscreenActivity):java.lang.String");
    }
}
