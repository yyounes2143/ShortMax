package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$queryRechargeUserInfo$1", f = "AccountRepo.kt", l = {830}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$queryRechargeUserInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43077h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<GPayExchangePremiumResult.RechargeUserInfo, Unit> f43078i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AccountRepo$queryRechargeUserInfo$1(Function1<? super GPayExchangePremiumResult.RechargeUserInfo, Unit> function1, rs.c<? super AccountRepo$queryRechargeUserInfo$1> cVar) {
        super(2, cVar);
        this.f43078i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$queryRechargeUserInfo$1(this.f43078i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$queryRechargeUserInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountRemoteDS m02;
        Object g10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43077h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                g10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m02 = AccountRepo.f43052a.m0();
            this.f43077h = 1;
            g10 = m02.g(this);
            if (g10 == f10) {
                return f10;
            }
        }
        Function1<GPayExchangePremiumResult.RechargeUserInfo, Unit> function1 = this.f43078i;
        if (Result.j(g10)) {
            function1.invoke((GPayExchangePremiumResult.RechargeUserInfo) g10);
        }
        Function1<GPayExchangePremiumResult.RechargeUserInfo, Unit> function12 = this.f43078i;
        if (Result.g(g10) != null) {
            function12.invoke(null);
        }
        return Unit.f60915a;
    }
}
