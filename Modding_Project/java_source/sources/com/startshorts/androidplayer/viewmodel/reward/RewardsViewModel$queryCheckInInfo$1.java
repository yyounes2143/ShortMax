package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryCheckInInfo$1", f = "RewardsViewModel.kt", l = {309}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1\n*L\n314#1:589,13\n*E\n"})
/* loaded from: classes7.dex */
final class RewardsViewModel$queryCheckInInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49129h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f49130i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49131j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$queryCheckInInfo$1(String str, RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$queryCheckInInfo$1> cVar) {
        super(2, cVar);
        this.f49130i = str;
        this.f49131j = rewardsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$queryCheckInInfo$1(this.f49130i, this.f49131j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$queryCheckInInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object t10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49129h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                t10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            String str2 = this.f49130i;
            this.f49129h = 1;
            t10 = rewardsRepo.t(str2, this);
            if (t10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49131j;
        ResponseException responseException = null;
        if (Result.j(t10)) {
            CheckInInfoResult checkInInfoResult = (CheckInInfoResult) t10;
            AdSignInfoManager.f42264a.c(checkInInfoResult);
            ud.b bVar = ud.b.f68412a;
            if (checkInInfoResult != null) {
                str = checkInInfoResult.getZoneStr();
            } else {
                str = null;
            }
            bVar.r5(str);
            RewardsFragment.Y.b((checkInInfoResult == null || (r4 = checkInInfoResult.getZoneStr()) == null) ? "UTC+0" : "UTC+0");
            o.b(rewardsViewModel.I(), new a.b(checkInInfoResult));
        }
        RewardsViewModel rewardsViewModel2 = this.f49131j;
        Throwable g10 = Result.g(t10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            }
            if (responseException == null) {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                o.b(rewardsViewModel2.I(), new a.c(rewardsViewModel2.p(responseException)));
                EventManager.f42463a.m0(responseException, "check_in");
            }
        }
        return Unit.f60915a;
    }
}
