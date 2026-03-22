package com.facebook.appevents.iap;

import a2.i;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.appevents.iap.a;
import com.facebook.v;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import y1.l;
/* compiled from: InAppPurchaseActivityLifecycleTracker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInAppPurchaseActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppPurchaseActivityLifecycleTracker.kt\ncom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f15025a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15026b = a.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f15027c = new AtomicBoolean(false);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f15028d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static Boolean f15029e;

    /* renamed from: f  reason: collision with root package name */
    private static ServiceConnection f15030f;

    /* renamed from: g  reason: collision with root package name */
    private static Application.ActivityLifecycleCallbacks f15031g;

    /* renamed from: h  reason: collision with root package name */
    private static Intent f15032h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static Object f15033i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static InAppPurchaseUtils.BillingClientVersion f15034j;

    /* compiled from: InAppPurchaseActivityLifecycleTracker.kt */
    @Metadata
    /* renamed from: com.facebook.appevents.iap.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class ServiceConnectionC0251a implements ServiceConnection {
        ServiceConnectionC0251a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@NotNull ComponentName name, @NotNull IBinder service) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(service, "service");
            a aVar = a.f15025a;
            a.f15033i = l.a(v.l(), service);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@NotNull ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    /* compiled from: InAppPurchaseActivityLifecycleTracker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c() {
            Context l10 = v.l();
            ArrayList<String> i10 = l.i(l10, a.f15033i);
            a aVar = a.f15025a;
            aVar.f(l10, i10, false);
            aVar.f(l10, l.j(l10, a.f15033i), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d() {
            Context l10 = v.l();
            ArrayList<String> i10 = l.i(l10, a.f15033i);
            if (i10.isEmpty()) {
                i10 = l.g(l10, a.f15033i);
            }
            a.f15025a.f(l10, i10, false);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            try {
                v.u().execute(new Runnable() { // from class: y1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.b.c();
                    }
                });
            } catch (Exception unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            try {
                if (Intrinsics.areEqual(a.f15029e, Boolean.TRUE) && Intrinsics.areEqual(activity.getLocalClassName(), "com.android.billingclient.api.ProxyBillingActivity")) {
                    v.u().execute(new Runnable() { // from class: y1.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            a.b.d();
                        }
                    });
                }
            } catch (Exception unused) {
            }
        }
    }

    private a() {
    }

    private final void e() {
        boolean z10;
        if (f15028d != null) {
            return;
        }
        boolean z11 = false;
        if (InAppPurchaseUtils.a("com.android.vending.billing.IInAppBillingService$Stub") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Boolean valueOf = Boolean.valueOf(z10);
        f15028d = valueOf;
        if (Intrinsics.areEqual(valueOf, Boolean.FALSE)) {
            return;
        }
        if (InAppPurchaseUtils.a("com.android.billingclient.api.ProxyBillingActivity") != null) {
            z11 = true;
        }
        f15029e = Boolean.valueOf(z11);
        l.b();
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
        Intrinsics.checkNotNullExpressionValue(intent, "Intent(\"com.android.vend…ge(\"com.android.vending\")");
        f15032h = intent;
        f15030f = new ServiceConnectionC0251a();
        f15031g = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(Context context, ArrayList<String> arrayList, boolean z10) {
        if (arrayList.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String purchase = it.next();
            try {
                String sku = new JSONObject(purchase).getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                Intrinsics.checkNotNullExpressionValue(sku, "sku");
                Intrinsics.checkNotNullExpressionValue(purchase, "purchase");
                hashMap.put(sku, purchase);
                arrayList2.add(sku);
            } catch (JSONException e10) {
                Log.e(f15026b, "Error parsing in-app purchase data.", e10);
            }
        }
        for (Map.Entry<String, String> entry : l.k(context, arrayList2, f15033i, z10).entrySet()) {
            String value = entry.getValue();
            String str = (String) hashMap.get(entry.getKey());
            if (str != null) {
                i.k(str, value, z10, f15034j, false, 16, null);
            }
        }
    }

    public static final void g(@NotNull InAppPurchaseUtils.BillingClientVersion billingClientVersion) {
        Intrinsics.checkNotNullParameter(billingClientVersion, "billingClientVersion");
        a aVar = f15025a;
        aVar.e();
        if (!Intrinsics.areEqual(f15028d, Boolean.FALSE) && i.g()) {
            f15034j = billingClientVersion;
            aVar.h();
        }
    }

    private final void h() {
        if (!f15027c.compareAndSet(false, true)) {
            return;
        }
        Context l10 = v.l();
        if (l10 instanceof Application) {
            Application application = (Application) l10;
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f15031g;
            ServiceConnection serviceConnection = null;
            if (activityLifecycleCallbacks == null) {
                Intrinsics.throwUninitializedPropertyAccessException("callbacks");
                activityLifecycleCallbacks = null;
            }
            application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            Intent intent = f15032h;
            if (intent == null) {
                Intrinsics.throwUninitializedPropertyAccessException(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK);
                intent = null;
            }
            ServiceConnection serviceConnection2 = f15030f;
            if (serviceConnection2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("serviceConnection");
            } else {
                serviceConnection = serviceConnection2;
            }
            l10.bindService(intent, serviceConnection, 1);
        }
    }
}
