package com.startshorts.androidplayer.viewmodel.billing;

import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$process$1", f = "BillingViewModel.kt", l = {VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingViewModel$process$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48335h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f48336i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BillingViewModel f48337j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ a f48338k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingViewModel$process$1(BillingViewModel billingViewModel, a aVar, c<? super BillingViewModel$process$1> cVar) {
        super(2, cVar);
        this.f48337j = billingViewModel;
        this.f48338k = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        BillingViewModel$process$1 billingViewModel$process$1 = new BillingViewModel$process$1(this.f48337j, this.f48338k, cVar);
        billingViewModel$process$1.f48336i = obj;
        return billingViewModel$process$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingViewModel$process$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0075 -> B:20:0x0078). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.f48335h
            r2 = 1
            if (r1 == 0) goto L1b
            if (r1 != r2) goto L13
            java.lang.Object r1 = r5.f48336i
            gt.g0 r1 = (gt.g0) r1
            kotlin.f.b(r6)
            goto L78
        L13:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1b:
            kotlin.f.b(r6)
            java.lang.Object r6 = r5.f48336i
            gt.g0 r6 = (gt.g0) r6
            r1 = r6
        L23:
            boolean r6 = kotlinx.coroutines.i.h(r1)
            if (r6 == 0) goto La1
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            int r6 = com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.G(r6)
            r3 = 3
            r4 = 0
            if (r6 <= r3) goto L4b
            kotlinx.coroutines.i.e(r1, r4, r2, r4)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            java.lang.String r0 = "QueryProductDetailList -> check supportSubscription:failed"
            r6.v(r0)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            com.startshorts.androidplayer.viewmodel.billing.a r0 = r5.f48338k
            com.startshorts.androidplayer.viewmodel.billing.a$h r0 = (com.startshorts.androidplayer.viewmodel.billing.a.h) r0
            java.util.List r0 = r0.a()
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.H(r6, r0)
            goto La1
        L4b:
            com.startshorts.androidplayer.repo.billing.BillingRepo r6 = com.startshorts.androidplayer.repo.billing.BillingRepo.f43237a
            boolean r6 = r6.B()
            if (r6 == 0) goto L6b
            kotlinx.coroutines.i.e(r1, r4, r2, r4)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            java.lang.String r0 = "QueryProductDetailList -> check supportSubscription:success"
            r6.v(r0)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            com.startshorts.androidplayer.viewmodel.billing.a r0 = r5.f48338k
            com.startshorts.androidplayer.viewmodel.billing.a$h r0 = (com.startshorts.androidplayer.viewmodel.billing.a.h) r0
            java.util.List r0 = r0.a()
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.H(r6, r0)
            goto La1
        L6b:
            r5.f48336i = r1
            r5.f48335h = r2
            r3 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r6 = kotlinx.coroutines.DelayKt.b(r3, r5)
            if (r6 != r0) goto L78
            return r0
        L78:
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            int r6 = com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.G(r6)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r3 = r5.f48337j
            int r6 = r6 + r2
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.I(r3, r6)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r6 = r5.f48337j
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "QueryProductDetailList -> check supportSubscription:"
            r3.append(r4)
            com.startshorts.androidplayer.viewmodel.billing.BillingViewModel r4 = r5.f48337j
            int r4 = com.startshorts.androidplayer.viewmodel.billing.BillingViewModel.G(r4)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r6.v(r3)
            goto L23
        La1:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.billing.BillingViewModel$process$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
