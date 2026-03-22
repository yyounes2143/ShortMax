package com.shorttv.aar.billing.core;

import bd.b;
import cd.g;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import zc.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingClient.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.core.BillingClient$checkFeatureSupport$1", f = "BillingClient.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BillingClient$checkFeatureSupport$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37009h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingClient f37010i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingClient$checkFeatureSupport$1(BillingClient billingClient, c<? super BillingClient$checkFeatureSupport$1> cVar) {
        super(2, cVar);
        this.f37010i = billingClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingClient$checkFeatureSupport$1(this.f37010i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingClient$checkFeatureSupport$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        j jVar;
        boolean z10;
        boolean z11;
        boolean z12;
        BillingResult isFeatureSupported;
        boolean z13;
        BillingResult isFeatureSupported2;
        a.f();
        if (this.f37009h == 0) {
            f.b(obj);
            jVar = this.f37010i.f36994b;
            boolean z14 = false;
            if (jVar != null && jVar.c()) {
                BillingClient billingClient = this.f37010i;
                com.android.billingclient.api.BillingClient billingClient2 = billingClient.f36993a;
                if (billingClient2 != null && (isFeatureSupported2 = billingClient2.isFeatureSupported(BillingClient.FeatureType.SUBSCRIPTIONS)) != null) {
                    z13 = g.a(isFeatureSupported2);
                } else {
                    z13 = false;
                }
                billingClient.f36997e = z13;
            }
            BillingClient billingClient3 = this.f37010i;
            com.android.billingclient.api.BillingClient billingClient4 = billingClient3.f36993a;
            if (billingClient4 != null && (isFeatureSupported = billingClient4.isFeatureSupported(BillingClient.FeatureType.PRODUCT_DETAILS)) != null) {
                z14 = g.a(isFeatureSupported);
            }
            billingClient3.f36998f = z14;
            b bVar = b.f2605a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("checkFeatureSupport -> mSupportOneTimePurchase(");
            z10 = this.f37010i.f36996d;
            sb2.append(z10);
            sb2.append(") mSupportSubscription(");
            z11 = this.f37010i.f36997e;
            sb2.append(z11);
            sb2.append(") mSupportProductDetails(");
            z12 = this.f37010i.f36998f;
            sb2.append(z12);
            sb2.append(')');
            bVar.b("BillingClient", sb2.toString());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
