package com.startshorts.androidplayer.viewmodel.recommend;

import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.viewmodel.recommend.a;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NewUserRecommendShortViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.recommend.NewUserRecommendShortViewModel$queryRecommend$1", f = "NewUserRecommendShortViewModel.kt", l = {31}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nNewUserRecommendShortViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendShortViewModel.kt\ncom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,83:1\n125#2,13:84\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendShortViewModel.kt\ncom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1\n*L\n41#1:84,13\n*E\n"})
/* loaded from: classes7.dex */
public final class NewUserRecommendShortViewModel$queryRecommend$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49078h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ NewUserRecommendShortViewModel f49079i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewUserRecommendShortViewModel$queryRecommend$1(NewUserRecommendShortViewModel newUserRecommendShortViewModel, c<? super NewUserRecommendShortViewModel$queryRecommend$1> cVar) {
        super(2, cVar);
        this.f49079i = newUserRecommendShortViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new NewUserRecommendShortViewModel$queryRecommend$1(this.f49079i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((NewUserRecommendShortViewModel$queryRecommend$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object G;
        ResponseException responseException;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49078h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                G = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            o.b(this.f49079i.D(), kotlin.coroutines.jvm.internal.a.a(true));
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            this.f49078h = 1;
            G = campaignRepo.G(this);
            if (G == f10) {
                return f10;
            }
        }
        NewUserRecommendShortViewModel newUserRecommendShortViewModel = this.f49079i;
        if (Result.j(G)) {
            QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult = (QueryCampaignRecommendShortsResult) G;
            if (queryCampaignRecommendShortsResult == null) {
                o.b(newUserRecommendShortViewModel.D(), kotlin.coroutines.jvm.internal.a.a(false));
                newUserRecommendShortViewModel.y("empty data");
            } else {
                o.b(newUserRecommendShortViewModel.C(), new a.C0679a(queryCampaignRecommendShortsResult));
            }
        }
        NewUserRecommendShortViewModel newUserRecommendShortViewModel2 = this.f49079i;
        Throwable g10 = Result.g(G);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException == null) {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                o.b(newUserRecommendShortViewModel2.D(), kotlin.coroutines.jvm.internal.a.a(false));
                newUserRecommendShortViewModel2.x(responseException);
            }
        }
        return Unit.f60915a;
    }
}
