package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.a;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$querySignInAdInfo$1", f = "RewardsViewModel.kt", l = {356}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$querySignInAdInfo$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$querySignInAdInfo$1\n*L\n358#1:589,13\n*E\n"})
/* loaded from: classes7.dex */
final class RewardsViewModel$querySignInAdInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49134h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49135i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$querySignInAdInfo$1(RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$querySignInAdInfo$1> cVar) {
        super(2, cVar);
        this.f49135i = rewardsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$querySignInAdInfo$1(this.f49135i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$querySignInAdInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object v10;
        ResponseException responseException;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49134h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                v10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            this.f49134h = 1;
            v10 = rewardsRepo.v(this);
            if (v10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49135i;
        if (Result.j(v10)) {
            o.b(rewardsViewModel.I(), new a.h((SignInAdInfoResult) v10));
        }
        RewardsViewModel rewardsViewModel2 = this.f49135i;
        Throwable g10 = Result.g(v10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException == null) {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                o.b(rewardsViewModel2.I(), new a.h(null));
            }
        }
        return Unit.f60915a;
    }
}
