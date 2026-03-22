package com.startshorts.androidplayer.viewmodel.billing;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedPurchases$1", f = "BillingViewModel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL, TTVideoEngineInterface.PLAYER_OPTION_DISABLE_MC_REUSE, 508, 511}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingViewModel$queryNotAcknowledgedPurchases$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48339h;

    /* renamed from: i  reason: collision with root package name */
    int f48340i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BillingViewModel f48341j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48342k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingViewModel.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedPurchases$1$2", f = "BillingViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedPurchases$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f48343h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ AcknowledgePurchaseResult f48344i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AcknowledgePurchaseResult acknowledgePurchaseResult, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f48344i = acknowledgePurchaseResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass2(this.f48344i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f48343h == 0) {
                f.b(obj);
                this.f48344i.showTip();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingViewModel$queryNotAcknowledgedPurchases$1(BillingViewModel billingViewModel, String str, c<? super BillingViewModel$queryNotAcknowledgedPurchases$1> cVar) {
        super(2, cVar);
        this.f48341j = billingViewModel;
        this.f48342k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingViewModel$queryNotAcknowledgedPurchases$1(this.f48341j, this.f48342k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingViewModel$queryNotAcknowledgedPurchases$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00bc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$queryNotAcknowledgedPurchases$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
