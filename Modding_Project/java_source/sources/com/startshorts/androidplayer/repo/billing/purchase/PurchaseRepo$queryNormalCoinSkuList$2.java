package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import gt.g0;
import hg.a;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$queryNormalCoinSkuList$2", f = "PurchaseRepo.kt", l = {51}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRepo$queryNormalCoinSkuList$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43429h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43430i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43431j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f43432k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$queryNormalCoinSkuList$2(boolean z10, String str, boolean z11, c<? super PurchaseRepo$queryNormalCoinSkuList$2> cVar) {
        super(2, cVar);
        this.f43430i = z10;
        this.f43431j = str;
        this.f43432k = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseRepo$queryNormalCoinSkuList$2(this.f43430i, this.f43431j, this.f43432k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseRepo$queryNormalCoinSkuList$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PurchaseRemoteDS n10;
        Object e10;
        a m10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43429h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            n10 = PurchaseRepo.f43366a.n();
            boolean z10 = this.f43430i;
            String str = this.f43431j;
            this.f43429h = 1;
            e10 = n10.e(z10, str, this);
            if (e10 == f10) {
                return f10;
            }
        }
        String str2 = this.f43431j;
        boolean z11 = this.f43432k;
        if (Result.j(e10)) {
            QueryNormalCoinSkuResult queryNormalCoinSkuResult = (QueryNormalCoinSkuResult) e10;
            PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
            m10 = purchaseRepo.m();
            m10.g(str2, queryNormalCoinSkuResult);
            purchaseRepo.g(z11, queryNormalCoinSkuResult);
        }
        return Unit.f60915a;
    }
}
