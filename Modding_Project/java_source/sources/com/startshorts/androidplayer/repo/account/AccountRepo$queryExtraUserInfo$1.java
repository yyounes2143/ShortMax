package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.account.ExtraUserInfo;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$queryExtraUserInfo$1", f = "AccountRepo.kt", l = {801}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$queryExtraUserInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43074h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountRepo$queryExtraUserInfo$1(rs.c<? super AccountRepo$queryExtraUserInfo$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$queryExtraUserInfo$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$queryExtraUserInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountRemoteDS m02;
        Object f10;
        AccountLocalDS l02;
        AccountLocalDS l03;
        AccountLocalDS l04;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43074h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                f10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m02 = AccountRepo.f43052a.m0();
            this.f43074h = 1;
            f10 = m02.f(this);
            if (f10 == f11) {
                return f11;
            }
        }
        if (Result.j(f10)) {
            ExtraUserInfo extraUserInfo = (ExtraUserInfo) f10;
            if (extraUserInfo == null) {
                return Unit.f60915a;
            }
            AccountRepo accountRepo = AccountRepo.f43052a;
            l02 = accountRepo.l0();
            ExtraUserInfo o10 = l02.o();
            if (o10 == null || !o10.isSame(extraUserInfo)) {
                l03 = accountRepo.l0();
                l03.T(extraUserInfo);
            } else {
                Logger.f41511a.h("AccountRepo", "ignore same extraUserInfo");
                l04 = accountRepo.l0();
                l04.T(extraUserInfo);
            }
        }
        return Unit.f60915a;
    }
}
