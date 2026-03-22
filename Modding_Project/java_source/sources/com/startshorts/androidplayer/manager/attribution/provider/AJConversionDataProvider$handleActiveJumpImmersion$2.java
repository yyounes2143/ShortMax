package com.startshorts.androidplayer.manager.attribution.provider;

import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: AJConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$handleActiveJumpImmersion$2", f = "AJConversionDataProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class AJConversionDataProvider$handleActiveJumpImmersion$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41990h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f41991i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CampaignInfo f41992j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$handleActiveJumpImmersion$2(MainActivity mainActivity, CampaignInfo campaignInfo, rs.c<? super AJConversionDataProvider$handleActiveJumpImmersion$2> cVar) {
        super(2, cVar);
        this.f41991i = mainActivity;
        this.f41992j = campaignInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AJConversionDataProvider$handleActiveJumpImmersion$2(this.f41991i, this.f41992j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AJConversionDataProvider$handleActiveJumpImmersion$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41990h == 0) {
            f.b(obj);
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            MainActivity mainActivity = this.f41991i;
            ImmersionParams immersionParams = new ImmersionParams();
            CampaignInfo campaignInfo = this.f41992j;
            immersionParams.setFrom(Constants.DEEPLINK);
            immersionParams.setType(3);
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(campaignInfo.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(String.valueOf(campaignInfo.getShortPlayId()));
            immersionShortsInfo.setShortsName(campaignInfo.getShortPlayName());
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(mainActivity, immersionParams);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
