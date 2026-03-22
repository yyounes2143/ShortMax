package com.startshorts.androidplayer.manager.attribution.pullup;

import com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AJConversionDataPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.pullup.AJConversionDataPullUp$handleUdlQuerySuccess$1", f = "AJConversionDataPullUp.kt", l = {74}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AJConversionDataPullUp$handleUdlQuerySuccess$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42075h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42076i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42077j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataPullUp$handleUdlQuerySuccess$1(String str, String str2, rs.c<? super AJConversionDataPullUp$handleUdlQuerySuccess$1> cVar) {
        super(2, cVar);
        this.f42076i = str;
        this.f42077j = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "AJConversionDataPullUp reportUdlAjActive success CampaignRefreshSuccessEvent");
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AJConversionDataPullUp$handleUdlQuerySuccess$1(this.f42076i, this.f42077j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AJConversionDataPullUp$handleUdlQuerySuccess$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object T;
        boolean z10;
        long j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42075h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                T = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            String str = this.f42076i;
            String str2 = this.f42077j;
            String valueOf = String.valueOf(DeviceUtil.f48146a.q());
            String a10 = BaseCampaignProvider.f42007e.a(CampaignType.GP_INSTALL_REFERRER);
            if (a10 == null) {
                a10 = "";
            }
            this.f42075h = 1;
            T = campaignRepo.T(true, str, str2, valueOf, a10, this);
            if (T == f10) {
                return f10;
            }
        }
        if (Result.j(T)) {
            UploadCampaignInfoResult uploadCampaignInfoResult = (UploadCampaignInfoResult) T;
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "AJConversionDataPullUp reportAjUdlInfo onSuccess -> " + uploadCampaignInfoResult);
            if (uploadCampaignInfoResult != null) {
                z10 = Intrinsics.areEqual(uploadCampaignInfoResult.getMatchResult(), kotlin.coroutines.jvm.internal.a.a(true));
            } else {
                z10 = false;
            }
            if (z10) {
                CampaignRepo.f43678a.W(DeviceUtil.f48146a.r());
                if (uploadCampaignInfoResult.getDelayedAttributedTime() > 0) {
                    j10 = uploadCampaignInfoResult.getDelayedAttributedTime() * 1000;
                } else {
                    j10 = 5000;
                }
                CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: com.startshorts.androidplayer.manager.attribution.pullup.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit j11;
                        j11 = AJConversionDataPullUp$handleUdlQuerySuccess$1.j();
                        return j11;
                    }
                }, 2, null);
            }
        }
        Throwable g10 = Result.g(T);
        if (g10 != null) {
            Logger logger2 = Logger.f41511a;
            logger2.e("CampaignNewTag", "AJConversionDataPullUp reportLPInfo onFailure -> " + g10.getMessage());
        }
        return Unit.f60915a;
    }
}
