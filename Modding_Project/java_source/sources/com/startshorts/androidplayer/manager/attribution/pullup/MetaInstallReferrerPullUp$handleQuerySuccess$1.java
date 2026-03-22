package com.startshorts.androidplayer.manager.attribution.pullup;

import com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.log.Logger;
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
/* compiled from: MetaInstallReferrerPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.pullup.MetaInstallReferrerPullUp$handleQuerySuccess$1", f = "MetaInstallReferrerPullUp.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class MetaInstallReferrerPullUp$handleQuerySuccess$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42099h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42100i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42101j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f42102k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetaInstallReferrerPullUp$handleQuerySuccess$1(String str, String str2, int i10, rs.c<? super MetaInstallReferrerPullUp$handleQuerySuccess$1> cVar) {
        super(2, cVar);
        this.f42100i = str;
        this.f42101j = str2;
        this.f42102k = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "reportFBActive success CampaignRefreshSuccessEvent");
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MetaInstallReferrerPullUp$handleQuerySuccess$1(this.f42100i, this.f42101j, this.f42102k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MetaInstallReferrerPullUp$handleQuerySuccess$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object O;
        boolean z10;
        long j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42099h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                O = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            String str = this.f42100i;
            if (str != null && str.length() != 0) {
                CampaignRepo campaignRepo = CampaignRepo.f43678a;
                String str2 = this.f42101j;
                String str3 = this.f42100i;
                String valueOf = String.valueOf(DeviceUtil.f48146a.q());
                int i11 = this.f42102k;
                this.f42099h = 1;
                O = campaignRepo.O(true, str2, str3, valueOf, i11, this);
                if (O == f10) {
                    return f10;
                }
            } else {
                return Unit.f60915a;
            }
        }
        if (Result.j(O)) {
            UploadCampaignInfoResult uploadCampaignInfoResult = (UploadCampaignInfoResult) O;
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "MetaInstallReferrer reportFBInfo onSuccess -> " + uploadCampaignInfoResult);
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
                CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: com.startshorts.androidplayer.manager.attribution.pullup.e
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit j11;
                        j11 = MetaInstallReferrerPullUp$handleQuerySuccess$1.j();
                        return j11;
                    }
                }, 2, null);
            }
        }
        Throwable g10 = Result.g(O);
        if (g10 != null) {
            Logger logger2 = Logger.f41511a;
            logger2.e("CampaignNewTag", "MetaInstallReferrer reportFBInfo onFailure -> " + g10.getMessage());
        }
        return Unit.f60915a;
    }
}
