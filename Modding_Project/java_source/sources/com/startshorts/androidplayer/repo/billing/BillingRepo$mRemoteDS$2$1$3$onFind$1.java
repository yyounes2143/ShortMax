package com.startshorts.androidplayer.repo.billing;

import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import zc.f;
/* compiled from: BillingRepo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$mRemoteDS$2$1$3$onFind$1", f = "BillingRepo.kt", l = {95, 98}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class BillingRepo$mRemoteDS$2$1$3$onFind$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43273h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<f> f43274i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingRepo.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo$mRemoteDS$2$1$3$onFind$1$1", f = "BillingRepo.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.billing.BillingRepo$mRemoteDS$2$1$3$onFind$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43275h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ AcknowledgePurchaseResult f43276i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AcknowledgePurchaseResult acknowledgePurchaseResult, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f43276i = acknowledgePurchaseResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f43276i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f43275h == 0) {
                kotlin.f.b(obj);
                this.f43276i.showTip();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$mRemoteDS$2$1$3$onFind$1(List<f> list, rs.c<? super BillingRepo$mRemoteDS$2$1$3$onFind$1> cVar) {
        super(2, cVar);
        this.f43274i = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new BillingRepo$mRemoteDS$2$1$3$onFind$1(this.f43274i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((BillingRepo$mRemoteDS$2$1$3$onFind$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43273h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            BillingRepo billingRepo = BillingRepo.f43237a;
            List<f> list = this.f43274i;
            this.f43273h = 1;
            obj = billingRepo.E(true, "other", list, this);
            if (obj == f10) {
                return f10;
            }
        }
        AcknowledgePurchaseResult acknowledgePurchaseResult = (AcknowledgePurchaseResult) obj;
        if (acknowledgePurchaseResult.hasAcknowledged()) {
            au.c.d().l(acknowledgePurchaseResult);
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(acknowledgePurchaseResult, null);
            this.f43273h = 2;
            if (e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
