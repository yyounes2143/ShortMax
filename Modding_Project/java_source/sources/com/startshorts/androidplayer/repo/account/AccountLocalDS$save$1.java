package com.startshorts.androidplayer.repo.account;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountLocalDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountLocalDS$save$1", f = "AccountLocalDS.kt", l = {725}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAccountLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,719:1\n116#2,11:720\n*S KotlinDebug\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1\n*L\n83#1:720,11\n*E\n"})
/* loaded from: classes7.dex */
public final class AccountLocalDS$save$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f43001h;

    /* renamed from: i  reason: collision with root package name */
    Object f43002i;

    /* renamed from: j  reason: collision with root package name */
    int f43003j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AccountLocalDS f43004k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountLocalDS$save$1(AccountLocalDS accountLocalDS, rs.c<? super AccountLocalDS$save$1> cVar) {
        super(2, cVar);
        this.f43004k = accountLocalDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountLocalDS$save$1(this.f43004k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountLocalDS$save$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        qt.a aVar;
        AccountLocalDS accountLocalDS;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43003j;
        if (i10 != 0) {
            if (i10 == 1) {
                accountLocalDS = (AccountLocalDS) this.f43002i;
                aVar = (qt.a) this.f43001h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = this.f43004k.f43000d;
            AccountLocalDS accountLocalDS2 = this.f43004k;
            this.f43001h = aVar;
            this.f43002i = accountLocalDS2;
            this.f43003j = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            accountLocalDS = accountLocalDS2;
        }
        try {
            accountLocalDS.O();
            Unit unit = Unit.f60915a;
            aVar.unlock(null);
            return Unit.f60915a;
        } catch (Throwable th2) {
            aVar.unlock(null);
            throw th2;
        }
    }
}
