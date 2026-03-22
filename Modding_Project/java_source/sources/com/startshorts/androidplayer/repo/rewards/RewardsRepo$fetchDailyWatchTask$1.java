package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
import vi.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo$fetchDailyWatchTask$1", f = "RewardsRepo.kt", l = {51}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRepo$fetchDailyWatchTask$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44530h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardsRepo$fetchDailyWatchTask$1(c<? super RewardsRepo$fetchDailyWatchTask$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RewardsRepo$fetchDailyWatchTask$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RewardsRepo$fetchDailyWatchTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object u10;
        Object f10 = a.f();
        int i10 = this.f44530h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                u10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            this.f44530h = 1;
            u10 = rewardsRepo.u(this);
            if (u10 == f10) {
                return f10;
            }
        }
        if (Result.j(u10)) {
            NewbieWatchTask newbieWatchTask = (NewbieWatchTask) u10;
            if (newbieWatchTask != null && !newbieWatchTask.getList().isEmpty()) {
                e.f68955a.e(newbieWatchTask);
            } else {
                b.f68412a.w3(new NewbieWatchTask(true));
            }
        }
        return Unit.f60915a;
    }
}
