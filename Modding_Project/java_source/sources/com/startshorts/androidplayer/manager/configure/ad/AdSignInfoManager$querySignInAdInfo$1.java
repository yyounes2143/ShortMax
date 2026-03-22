package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdSignInfoManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager$querySignInAdInfo$1", f = "AdSignInfoManager.kt", l = {18}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAdSignInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSignInfoManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"})
/* loaded from: classes6.dex */
public final class AdSignInfoManager$querySignInAdInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42266h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSignInfoManager$querySignInAdInfo$1(rs.c<? super AdSignInfoManager$querySignInAdInfo$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AdSignInfoManager$querySignInAdInfo$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AdSignInfoManager$querySignInAdInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object t10;
        String zoneStr;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42266h;
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
            this.f42266h = 1;
            t10 = rewardsRepo.t("1", this);
            if (t10 == f10) {
                return f10;
            }
        }
        if (Result.j(t10)) {
            CheckInInfoResult checkInInfoResult = (CheckInInfoResult) t10;
            AdSignInfoManager.f42264a.c(checkInInfoResult);
            if (checkInInfoResult != null && (zoneStr = checkInInfoResult.getZoneStr()) != null) {
                ud.b.f68412a.r5(zoneStr);
            }
        }
        return Unit.f60915a;
    }
}
