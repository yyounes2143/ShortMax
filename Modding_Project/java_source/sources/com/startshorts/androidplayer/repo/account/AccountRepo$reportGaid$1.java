package com.startshorts.androidplayer.repo.account;

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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$reportGaid$1", f = "AccountRepo.kt", l = {786}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$reportGaid$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43091h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountRepo$reportGaid$1(rs.c<? super AccountRepo$reportGaid$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$reportGaid$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$reportGaid$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountRemoteDS m02;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43091h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m02 = AccountRepo.f43052a.m0();
            this.f43091h = 1;
            if (m02.j(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
