package com.startshorts.androidplayer.manager.attribution;

import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$handleParsedCampaignInfo$5", f = "CampaignParser.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignParser$handleParsedCampaignInfo$5 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41849h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f41850i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CampaignInfo f41851j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignParser$handleParsedCampaignInfo$5(MainActivity mainActivity, CampaignInfo campaignInfo, rs.c<? super CampaignParser$handleParsedCampaignInfo$5> cVar) {
        super(2, cVar);
        this.f41850i = mainActivity;
        this.f41851j = campaignInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$handleParsedCampaignInfo$5(this.f41850i, this.f41851j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$handleParsedCampaignInfo$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long r10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41849h == 0) {
            kotlin.f.b(obj);
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            MainActivity mainActivity = this.f41850i;
            ImmersionParams immersionParams = new ImmersionParams();
            CampaignInfo campaignInfo = this.f41851j;
            immersionParams.setFrom(Constants.DEEPLINK);
            if (CampaignRepo.f43678a.x()) {
                immersionParams.setType(7);
            } else {
                immersionParams.setType(3);
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(campaignInfo.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(String.valueOf(campaignInfo.getShortPlayId()));
            immersionShortsInfo.setShortsName(campaignInfo.getShortPlayName());
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(mainActivity, immersionParams);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            CampaignInfo campaignInfo2 = this.f41851j;
            bundle.putString("reel_id", String.valueOf(campaignInfo2.getShortPlayId()));
            r10 = CampaignParser.f41836a.r();
            bundle.putLong("duration", r10);
            bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignInfo2.getCampaign());
            EventManager.s0(eventManager, "parse_to_jump", bundle, 0L, 4, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
