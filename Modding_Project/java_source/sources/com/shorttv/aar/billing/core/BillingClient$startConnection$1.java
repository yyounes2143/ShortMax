package com.shorttv.aar.billing.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: BillingClient.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.core.BillingClient$startConnection$1", f = "BillingClient.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class BillingClient$startConnection$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37026h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ com.android.billingclient.api.BillingClient f37027i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingClient$startConnection$1(com.android.billingclient.api.BillingClient billingClient, c<? super BillingClient$startConnection$1> cVar) {
        super(2, cVar);
        this.f37027i = billingClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingClient$startConnection$1(this.f37027i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingClient$startConnection$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f37026h == 0) {
            f.b(obj);
            com.android.billingclient.api.BillingClient billingClient = this.f37027i;
            if (billingClient != null) {
                billingClient.endConnection();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
