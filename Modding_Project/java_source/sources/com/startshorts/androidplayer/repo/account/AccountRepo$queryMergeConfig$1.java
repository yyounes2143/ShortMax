package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.settings.MergeConfig;
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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$queryMergeConfig$1", f = "AccountRepo.kt", l = {791}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$queryMergeConfig$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43075h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<MergeConfig, Unit> f43076i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AccountRepo$queryMergeConfig$1(Function1<? super MergeConfig, Unit> function1, rs.c<? super AccountRepo$queryMergeConfig$1> cVar) {
        super(2, cVar);
        this.f43076i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$queryMergeConfig$1(this.f43076i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$queryMergeConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountRemoteDS m02;
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43075h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m02 = AccountRepo.f43052a.m0();
            this.f43075h = 1;
            d10 = m02.d(this);
            if (d10 == f10) {
                return f10;
            }
        }
        Function1<MergeConfig, Unit> function1 = this.f43076i;
        if (Result.j(d10)) {
            function1.invoke((MergeConfig) d10);
        }
        Function1<MergeConfig, Unit> function12 = this.f43076i;
        if (Result.g(d10) != null) {
            function12.invoke(null);
        }
        return Unit.f60915a;
    }
}
