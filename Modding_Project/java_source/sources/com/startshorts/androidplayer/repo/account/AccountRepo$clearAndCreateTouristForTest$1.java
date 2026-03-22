package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.h0;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$clearAndCreateTouristForTest$1", f = "AccountRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$clearAndCreateTouristForTest$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43059h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f43060i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$clearAndCreateTouristForTest$1(Function0<Unit> function0, rs.c<? super AccountRepo$clearAndCreateTouristForTest$1> cVar) {
        super(2, cVar);
        this.f43060i = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final Function0 function0) {
        h0.f51735a.e(new Runnable() { // from class: com.startshorts.androidplayer.repo.account.c
            @Override // java.lang.Runnable
            public final void run() {
                AccountRepo$clearAndCreateTouristForTest$1.q(Function0.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Function0 function0) {
        function0.invoke();
        u.k(u.f51776a, "新账号创建完毕", 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(ResponseException responseException) {
        u.k(u.f51776a, "新账号创建失败", 0, 2, null);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$clearAndCreateTouristForTest$1(this.f43060i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$clearAndCreateTouristForTest$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43059h == 0) {
            f.b(obj);
            DeviceUtil.f48146a.n0(String.valueOf(System.currentTimeMillis()));
            SubsExpansionManager.f42751a.j();
            AccountManager accountManager = AccountManager.f41533a;
            final Function0<Unit> function0 = this.f43060i;
            accountManager.f(new Runnable() { // from class: com.startshorts.androidplayer.repo.account.a
                @Override // java.lang.Runnable
                public final void run() {
                    AccountRepo$clearAndCreateTouristForTest$1.n(Function0.this);
                }
            }, new Function1() { // from class: com.startshorts.androidplayer.repo.account.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit s10;
                    s10 = AccountRepo$clearAndCreateTouristForTest$1.s((ResponseException) obj2);
                    return s10;
                }
            });
            AccountRepo.X(AccountRepo.f43052a, null, 1, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
