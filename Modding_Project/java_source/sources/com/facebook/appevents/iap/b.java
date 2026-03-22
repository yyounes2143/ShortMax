package com.facebook.appevents.iap;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.appevents.iap.d;
import com.facebook.appevents.iap.e;
import com.facebook.appevents.integrity.ProtectedModeManager;
import com.facebook.internal.FeatureManager;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: InAppPurchaseAutoLogger.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f15035a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f15036b = new AtomicBoolean(false);

    private b() {
    }

    private final void d(InAppPurchaseUtils.BillingClientVersion billingClientVersion, String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            boolean e10 = f.e();
            if (e10) {
                f.g();
            }
            if (billingClientVersion == InAppPurchaseUtils.BillingClientVersion.V2_V4) {
                d.b bVar = d.f15037q;
                f.d(bVar.c(), bVar.e(), false, str, billingClientVersion, e10);
                f.d(bVar.f(), bVar.e(), true, str, billingClientVersion, e10);
                bVar.c().clear();
                bVar.f().clear();
            } else {
                e.a aVar = e.N;
                f.d(aVar.c(), aVar.e(), false, str, billingClientVersion, e10);
                f.d(aVar.f(), aVar.e(), true, str, billingClientVersion, e10);
                aVar.c().clear();
                aVar.f().clear();
            }
            if (e10) {
                f.h();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [com.facebook.appevents.iap.e, T] */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, com.facebook.appevents.iap.d] */
    public static final synchronized void e(@NotNull final Context context, @NotNull final InAppPurchaseUtils.BillingClientVersion billingClientVersion) {
        synchronized (b.class) {
            if (o4.a.d(b.class)) {
                return;
            }
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(billingClientVersion, "billingClientVersion");
            AtomicBoolean atomicBoolean = f15036b;
            if (atomicBoolean.get()) {
                return;
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            InAppPurchaseUtils.BillingClientVersion billingClientVersion2 = InAppPurchaseUtils.BillingClientVersion.V2_V4;
            if (billingClientVersion == billingClientVersion2) {
                objectRef.element = d.f15037q.d(context);
            } else if (billingClientVersion == InAppPurchaseUtils.BillingClientVersion.V5_V7) {
                objectRef.element = e.N.d(context);
            }
            if (objectRef.element == 0) {
                atomicBoolean.set(true);
                return;
            }
            if (FeatureManager.g(FeatureManager.Feature.AndroidIAPSubscriptionAutoLogging) && (!ProtectedModeManager.d() || billingClientVersion == billingClientVersion2)) {
                ((c) objectRef.element).a(InAppPurchaseUtils.IAPProductType.INAPP, new Runnable() { // from class: y1.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.facebook.appevents.iap.b.f(Ref.ObjectRef.this, billingClientVersion, context);
                    }
                });
            } else {
                ((c) objectRef.element).a(InAppPurchaseUtils.IAPProductType.INAPP, new Runnable() { // from class: y1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.facebook.appevents.iap.b.h(InAppPurchaseUtils.BillingClientVersion.this, context);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Ref.ObjectRef billingClientWrapper, final InAppPurchaseUtils.BillingClientVersion billingClientVersion, final Context context) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(billingClientWrapper, "$billingClientWrapper");
            Intrinsics.checkNotNullParameter(billingClientVersion, "$billingClientVersion");
            Intrinsics.checkNotNullParameter(context, "$context");
            ((c) billingClientWrapper.element).a(InAppPurchaseUtils.IAPProductType.SUBS, new Runnable() { // from class: y1.f
                @Override // java.lang.Runnable
                public final void run() {
                    com.facebook.appevents.iap.b.g(InAppPurchaseUtils.BillingClientVersion.this, context);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(InAppPurchaseUtils.BillingClientVersion billingClientVersion, Context context) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(billingClientVersion, "$billingClientVersion");
            Intrinsics.checkNotNullParameter(context, "$context");
            b bVar = f15035a;
            String packageName = context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            bVar.d(billingClientVersion, packageName);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(InAppPurchaseUtils.BillingClientVersion billingClientVersion, Context context) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(billingClientVersion, "$billingClientVersion");
            Intrinsics.checkNotNullParameter(context, "$context");
            b bVar = f15035a;
            String packageName = context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            bVar.d(billingClientVersion, packageName);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }
}
