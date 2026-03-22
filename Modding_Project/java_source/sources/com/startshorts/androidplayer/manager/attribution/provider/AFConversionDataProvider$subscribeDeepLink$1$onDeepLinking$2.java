package com.startshorts.androidplayer.manager.attribution.provider;

import com.appsflyer.deeplink.DeepLink;
import com.google.gson.Gson;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignPullUp;
import com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AFConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2", f = "AFConversionDataProvider.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41969h;

    /* renamed from: i  reason: collision with root package name */
    int f41970i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AFConversionDataProvider f41971j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DeepLink f41972k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2(AFConversionDataProvider aFConversionDataProvider, DeepLink deepLink, rs.c<? super AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2> cVar) {
        super(2, cVar);
        this.f41971j = aFConversionDataProvider;
        this.f41972k = deepLink;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2(this.f41971j, this.f41972k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Gson D;
        String json;
        Object H;
        String str;
        String str2;
        String str3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41970i;
        if (i10 != 0) {
            if (i10 == 1) {
                str = (String) this.f41969h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            D = this.f41971j.D();
            json = D.toJson(this.f41972k.getClickEvent());
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "UdlAFConversionDataProvider onDeepLinking subscribeData: " + json);
            this.f41971j.f41945l = json;
            this.f41971j.f41947n = DeviceUtil.f48146a.L();
            if (this.f41971j.G() != null) {
                logger.h("CampaignNewTag", "UdlAFConversionDataProvider onDeepLinking callback listener");
                AFConversionDataProvider.b G = this.f41971j.G();
                if (G != null) {
                    Intrinsics.checkNotNull(json);
                    G.a(json);
                }
                this.f41971j.O(null);
            } else if (ABTestFactory.f42224a.u1().isEnable().invoke().booleanValue()) {
                logger.h("CampaignNewTag", "UdlAFConversionDataProvider onDeepLinking allPullUp");
                MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                Intrinsics.checkNotNull(json);
                CampaignInfo i11 = matchEventUtil.i(json, AFEventUploadInfo.Companion.getTYPE_AF());
                if (i11 != null) {
                    logger.h("CampaignNewTag", "UdlAFConversionDataProvider onDeepLinking handleActiveJumpImmersion " + i11);
                    if (BaseCampaignProvider.f42007e.b().compareAndSet(false, true)) {
                        logger.h("CampaignNewTag", "Triggering CampaignPullUp.allPullUp (First time in this session)");
                        EventManager.s0(EventManager.f42463a, "udl_active_success", null, 0L, 6, null);
                        AFConversionDataProvider aFConversionDataProvider = this.f41971j;
                        this.f41969h = json;
                        this.f41970i = 1;
                        H = aFConversionDataProvider.H(i11, this);
                        if (H == f10) {
                            return f10;
                        }
                        str = json;
                    }
                    AFConversionDataProvider aFConversionDataProvider2 = this.f41971j;
                    str2 = aFConversionDataProvider2.f41942i;
                    aFConversionDataProvider2.K(json, str2);
                }
            }
            return Unit.f60915a;
        }
        CampaignPullUp campaignPullUp = CampaignPullUp.f41878a;
        Intrinsics.checkNotNull(str);
        str3 = this.f41971j.f41942i;
        campaignPullUp.a(str, str3, false, false);
        json = str;
        AFConversionDataProvider aFConversionDataProvider22 = this.f41971j;
        str2 = aFConversionDataProvider22.f41942i;
        aFConversionDataProvider22.K(json, str2);
        return Unit.f60915a;
    }
}
