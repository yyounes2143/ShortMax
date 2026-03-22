package com.startshorts.androidplayer.repo.account;

import android.content.Context;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshBalance$2", f = "AccountRepo.kt", l = {607}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$refreshBalance$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43079h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f43080i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f43081j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function1<Result<Account>, Unit> f43082k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AccountRepo$refreshBalance$2(boolean z10, Context context, Function1<? super Result<Account>, Unit> function1, rs.c<? super AccountRepo$refreshBalance$2> cVar) {
        super(2, cVar);
        this.f43080i = z10;
        this.f43081j = context;
        this.f43082k = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$refreshBalance$2(this.f43080i, this.f43081j, this.f43082k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$refreshBalance$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AccountRemoteDS m02;
        Object h10;
        long j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43079h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                h10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            long L = DeviceUtil.f48146a.L();
            if (!this.f43080i) {
                j10 = AccountRepo.f43055d;
                if (L - j10 < 10000) {
                    return Unit.f60915a;
                }
            }
            AccountRepo.f43055d = L;
            m02 = AccountRepo.f43052a.m0();
            Context context = this.f43081j;
            this.f43079h = 1;
            h10 = m02.h(context, this);
            if (h10 == f10) {
                return f10;
            }
        }
        Function1<Result<Account>, Unit> function1 = this.f43082k;
        if (Result.j(h10)) {
            Account account = (Account) h10;
            if (account != null) {
                String userCode = account.getUserCode();
                AccountRepo accountRepo = AccountRepo.f43052a;
                if (Intrinsics.areEqual(userCode, accountRepo.t0())) {
                    AccountRepo.w1(accountRepo, account.getCoins(), account.getBonus(), false, 4, null);
                    function1.invoke(Result.b(Result.d(account)));
                }
            }
            function1.invoke(Result.b(Result.d(f.a(new Throwable("refreshBalance failed")))));
        }
        Function1<Result<Account>, Unit> function12 = this.f43082k;
        Throwable g10 = Result.g(h10);
        if (g10 != null) {
            function12.invoke(Result.b(Result.d(f.a(g10))));
        }
        return Unit.f60915a;
    }
}
