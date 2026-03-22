package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.ad.QueryWatchAdBonusTaskResult;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.k;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryWatchAdBonuses$1", f = "RewardsViewModel.kt", l = {402}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1\n*L\n412#1:589,13\n*E\n"})
/* loaded from: classes7.dex */
final class RewardsViewModel$queryWatchAdBonuses$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49138h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f49139i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49140j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$queryWatchAdBonuses$1(boolean z10, RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$queryWatchAdBonuses$1> cVar) {
        super(2, cVar);
        this.f49139i = z10;
        this.f49140j = rewardsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$queryWatchAdBonuses$1(this.f49139i, this.f49140j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$queryWatchAdBonuses$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object x10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49138h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                x10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            if (this.f49139i) {
                o.b(this.f49140j.O(), k.g.f49214a);
            }
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            this.f49138h = 1;
            x10 = rewardsRepo.x(this);
            if (x10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49140j;
        boolean z10 = this.f49139i;
        ResponseException responseException = null;
        if (Result.j(x10)) {
            QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult = (QueryWatchAdBonusTaskResult) x10;
            if (queryWatchAdBonusTaskResult != null) {
                str = queryWatchAdBonusTaskResult.getTaskUnCompletedToast();
            } else {
                str = null;
            }
            rewardsViewModel.X(str);
            o.b(rewardsViewModel.O(), new k.e(z10, queryWatchAdBonusTaskResult));
        }
        RewardsViewModel rewardsViewModel2 = this.f49140j;
        Throwable g10 = Result.g(x10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            }
            if (responseException == null) {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                o.b(rewardsViewModel2.O(), new k.f(rewardsViewModel2.p(responseException)));
            }
        }
        return Unit.f60915a;
    }
}
