package com.startshorts.androidplayer.repo.billing.purchase;

import com.startshorts.androidplayer.bean.purchase.RefreshPayScoreResult;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$refreshPayScore$1", f = "PurchaseRepo.kt", l = {332}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseRepo$refreshPayScore$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f43433h;

    /* renamed from: i  reason: collision with root package name */
    int f43434i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseRepo$refreshPayScore$1(c<? super PurchaseRepo$refreshPayScore$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseRepo$refreshPayScore$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseRepo$refreshPayScore$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PurchaseRemoteDS n10;
        String str;
        Object obj2;
        boolean z10;
        Object f10 = a.f();
        int i10 = this.f43434i;
        if (i10 != 0) {
            if (i10 == 1) {
                str = (String) this.f43433h;
                f.b(obj);
                obj2 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            String t02 = AccountRepo.f43052a.t0();
            n10 = PurchaseRepo.f43366a.n();
            this.f43433h = t02;
            this.f43434i = 1;
            Object f11 = n10.f(this);
            if (f11 == f10) {
                return f10;
            }
            str = t02;
            obj2 = f11;
        }
        if (Result.j(obj2)) {
            RefreshPayScoreResult refreshPayScoreResult = (RefreshPayScoreResult) obj2;
            if (Intrinsics.areEqual(str, AccountRepo.f43052a.t0())) {
                PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
                if (refreshPayScoreResult != null) {
                    z10 = refreshPayScoreResult.getValue();
                } else {
                    z10 = false;
                }
                purchaseRepo.x(z10);
            }
        }
        return Unit.f60915a;
    }
}
