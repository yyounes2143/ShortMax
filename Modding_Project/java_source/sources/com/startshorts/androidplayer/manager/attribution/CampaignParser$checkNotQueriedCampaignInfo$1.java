package com.startshorts.androidplayer.manager.attribution;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$checkNotQueriedCampaignInfo$1", f = "CampaignParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignParser$checkNotQueriedCampaignInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41843h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignParser$checkNotQueriedCampaignInfo$1(rs.c<? super CampaignParser$checkNotQueriedCampaignInfo$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$checkNotQueriedCampaignInfo$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$checkNotQueriedCampaignInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41843h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ConfigRepo configRepo = ConfigRepo.f43771a;
            this.f41843h = 1;
            if (configRepo.l(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
