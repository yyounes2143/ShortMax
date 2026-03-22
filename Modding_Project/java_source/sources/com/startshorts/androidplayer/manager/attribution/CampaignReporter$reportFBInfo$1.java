package com.startshorts.androidplayer.manager.attribution;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignReporter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportFBInfo$1", f = "CampaignReporter.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION, 522}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignReporter$reportFBInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41908h;

    /* renamed from: i  reason: collision with root package name */
    int f41909i;

    /* renamed from: j  reason: collision with root package name */
    int f41910j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f41911k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f41912l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignReporter$reportFBInfo$1(String str, int i10, rs.c<? super CampaignReporter$reportFBInfo$1> cVar) {
        super(2, cVar);
        this.f41911k = str;
        this.f41912l = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "reportFBInfo success CampaignRefreshSuccessEvent");
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignReporter$reportFBInfo$1(this.f41911k, this.f41912l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignReporter$reportFBInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0190  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportFBInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
