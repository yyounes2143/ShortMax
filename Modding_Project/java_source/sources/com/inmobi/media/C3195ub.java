package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.inmobi.media.C3195ub;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.ub  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3195ub {

    /* renamed from: a  reason: collision with root package name */
    public C2889bb f25328a;

    /* renamed from: b  reason: collision with root package name */
    public BillingClient f25329b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicInteger f25330c = new AtomicInteger(0);

    /* renamed from: d  reason: collision with root package name */
    public final C2940eb f25331d = new C2940eb();

    /* renamed from: e  reason: collision with root package name */
    public final int f25332e = 2;

    public static final void a(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    public static final void b(BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
    }

    public static BillingClient b(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).setListener(new PurchasesUpdatedListener() { // from class: ub.u6
                @Override // com.android.billingclient.api.PurchasesUpdatedListener
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C3195ub.b(billingResult, list);
                }
            }).build();
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        } catch (NoClassDefFoundError e11) {
            S5 s53 = S5.f24132a;
            C2947f2 event = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return null;
        }
    }

    public final void a(Context context, C2889bb onComplete) {
        Function1 c3179tb;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        try {
            this.f25328a = onComplete;
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString("com.google.android.play.billingclient.version") : null;
            if (string == null) {
                a(new C2972gb((short) 2236), (C2940eb) null);
                return;
            }
            if (StringsKt.V(string, SubsSku.SCENE_AD_2_PAY, false, 2, null)) {
                c3179tb = new C3147rb(this);
            } else if (StringsKt.V(string, "7", false, 2, null)) {
                c3179tb = new C3163sb(this);
            } else {
                c3179tb = new C3179tb(this);
            }
            BillingClient billingClient = (BillingClient) c3179tb.invoke(context);
            if (billingClient == null) {
                a(new C2972gb((short) 2233), (C2940eb) null);
                return;
            }
            this.f25329b = billingClient;
            C3132qb onComplete2 = new C3132qb(this);
            Intrinsics.checkNotNullParameter(onComplete2, "onComplete");
            BillingClient billingClient2 = this.f25329b;
            if (billingClient2 != null) {
                billingClient2.startConnection(new C3100ob(this, onComplete2));
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            a(new C2972gb((short) 2237), (C2940eb) null);
        }
    }

    public static final void b(final C3195ub this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C2940eb c2940eb = this$0.f25331d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c2940eb.f24662b = arrayList.size();
        Uc.a(new Runnable() { // from class: ub.w6
            @Override // java.lang.Runnable
            public final void run() {
                C3195ub.b(Function1.this, this$0);
            }
        });
    }

    public static final void b(Function1 onComplete, C3195ub this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.f25331d);
    }

    public final void a(AbstractC3020jb abstractC3020jb, C2940eb c2940eb) {
        AbstractC3036kb.a(abstractC3020jb);
        C2889bb c2889bb = this.f25328a;
        if (c2889bb != null) {
            c2889bb.invoke(c2940eb);
        }
    }

    public static BillingClient a(Context context) {
        try {
            return BillingClient.newBuilder(context).enablePendingPurchases().setListener(new PurchasesUpdatedListener() { // from class: ub.x6
                @Override // com.android.billingclient.api.PurchasesUpdatedListener
                public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                    C3195ub.a(billingResult, list);
                }
            }).build();
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        } catch (NoClassDefFoundError e11) {
            S5 s53 = S5.f24132a;
            C2947f2 event = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return null;
        }
    }

    public final void a(final C3116pb onComplete) {
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        QueryPurchasesParams.Builder newBuilder = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        newBuilder.setProductType("inapp");
        QueryPurchasesParams.Builder newBuilder2 = QueryPurchasesParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder(...)");
        newBuilder2.setProductType("subs");
        BillingClient billingClient = this.f25329b;
        if (billingClient != null) {
            billingClient.queryPurchasesAsync(newBuilder.build(), new PurchasesResponseListener() { // from class: ub.s6
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C3195ub.a(C3195ub.this, onComplete, billingResult, list);
                }
            });
        }
        BillingClient billingClient2 = this.f25329b;
        if (billingClient2 != null) {
            billingClient2.queryPurchasesAsync(newBuilder2.build(), new PurchasesResponseListener() { // from class: ub.t6
                @Override // com.android.billingclient.api.PurchasesResponseListener
                public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                    C3195ub.b(C3195ub.this, onComplete, billingResult, list);
                }
            });
        }
    }

    public static final void a(final C3195ub this$0, final Function1 onComplete, BillingResult billingResult, List purchasesResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchasesResult, "purchasesResult");
        C2940eb c2940eb = this$0.f25331d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : purchasesResult) {
            Purchase purchase = (Purchase) obj;
            if (purchase.getPurchaseState() == 1 && purchase.isAcknowledged()) {
                arrayList.add(obj);
            }
        }
        c2940eb.f24661a = arrayList.size();
        Uc.a(new Runnable() { // from class: ub.v6
            @Override // java.lang.Runnable
            public final void run() {
                C3195ub.a(Function1.this, this$0);
            }
        });
    }

    public static final void a(Function1 onComplete, C3195ub this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        onComplete.invoke(this$0.f25331d);
    }
}
