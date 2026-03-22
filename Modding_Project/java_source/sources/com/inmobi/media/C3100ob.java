package com.inmobi.media;

import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.inmobi.media.C3100ob;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ob  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3100ob implements BillingClientStateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3195ub f25123a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C3132qb f25124b;

    public C3100ob(C3195ub c3195ub, C3132qb c3132qb) {
        this.f25123a = c3195ub;
        this.f25124b = c3132qb;
    }

    public static final void a(Function1 onComplete, AbstractC3084nb result) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(result, "$result");
        onComplete.invoke(result);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        this.f25123a.getClass();
        final C3132qb c3132qb = this.f25124b;
        final C3195ub c3195ub = this.f25123a;
        Uc.a(new Runnable() { // from class: ub.u5
            @Override // java.lang.Runnable
            public final void run() {
                C3100ob.a(Function1.this, c3195ub);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingSetupFinished(BillingResult billingResult) {
        final AbstractC3084nb c3052lb;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f25123a.getClass();
        Objects.toString(billingResult);
        if (billingResult.getResponseCode() == 0) {
            c3052lb = C3068mb.f25043a;
        } else {
            int responseCode = billingResult.getResponseCode();
            String debugMessage = billingResult.getDebugMessage();
            Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
            c3052lb = new C3052lb(debugMessage, responseCode);
        }
        final C3132qb c3132qb = this.f25124b;
        Uc.a(new Runnable() { // from class: ub.t5
            @Override // java.lang.Runnable
            public final void run() {
                C3100ob.a(Function1.this, c3052lb);
            }
        });
    }

    public static final void a(Function1 onComplete, C3195ub this$0) {
        Intrinsics.checkNotNullParameter(onComplete, "$onComplete");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getClass();
        onComplete.invoke(new C3052lb("Billing Service Disconnected", -1));
    }
}
