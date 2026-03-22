package com.startshorts.androidplayer.startup;

import af.i;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import de.s;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppLifecycleInitializer.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$doWorkOnBackground$1", f = "AppLifecycleInitializer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AppLifecycleInitializer$doWorkOnBackground$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44836h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AppLifecycleInitializer f44837i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLifecycleInitializer$doWorkOnBackground$1(AppLifecycleInitializer appLifecycleInitializer, c<? super AppLifecycleInitializer$doWorkOnBackground$1> cVar) {
        super(2, cVar);
        this.f44837i = appLifecycleInitializer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppLifecycleInitializer$doWorkOnBackground$1(this.f44837i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppLifecycleInitializer$doWorkOnBackground$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44836h == 0) {
            f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            eventManager.U();
            this.f44837i.r();
            PushManager pushManager = PushManager.f42838a;
            pushManager.k();
            PushManager.f(pushManager, false, 1, null);
            PushRepo pushRepo = PushRepo.f44374a;
            pushRepo.w();
            pushRepo.h();
            AdManager.f41600a.a0(AdScene.APP_OPEN);
            CampaignProvider campaignProvider = CampaignProvider.f41870a;
            campaignProvider.o(CampaignType.GP_INSTALL_REFERRER);
            campaignProvider.o(CampaignType.PRE_INSTALL);
            MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
            matchEventUtil.c();
            matchEventUtil.b();
            CampaignRepo.f43678a.M();
            EventManager.s0(eventManager, "app_active_background", null, 0L, 6, null);
            fk.c.f51707a.a();
            i.f639a.f();
            ud.a.f68411a.d0(true);
            s.f50371a.a(false);
            eventManager.r(true);
            Logger.f41511a.f();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
