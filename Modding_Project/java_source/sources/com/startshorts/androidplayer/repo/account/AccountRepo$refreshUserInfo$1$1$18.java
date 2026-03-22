package com.startshorts.androidplayer.repo.account;

import ci.c0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.account.Account;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshUserInfo$1$1$18", f = "AccountRepo.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_FETCH_WITH_ABILITY_OPTION}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AccountRepo$refreshUserInfo$1$1$18 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43086h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Account f43087i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$refreshUserInfo$1$1$18(Account account, rs.c<? super AccountRepo$refreshUserInfo$1$1$18> cVar) {
        super(2, cVar);
        this.f43087i = account;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$refreshUserInfo$1$1$18(this.f43087i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$refreshUserInfo$1$1$18) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43086h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            kt.d<Boolean> a10 = c0.f3500a.a();
            Boolean a11 = kotlin.coroutines.jvm.internal.a.a(this.f43087i.getDisplayThirdUnsubscribe());
            this.f43086h = 1;
            if (a10.emit(a11, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
