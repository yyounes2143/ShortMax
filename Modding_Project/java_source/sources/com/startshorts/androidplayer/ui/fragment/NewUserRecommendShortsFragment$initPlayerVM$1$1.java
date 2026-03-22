package com.startshorts.androidplayer.ui.fragment;

import android.os.Bundle;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.player.c;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NewUserRecommendShortsFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment$initPlayerVM$1$1", f = "NewUserRecommendShortsFragment.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class NewUserRecommendShortsFragment$initPlayerVM$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45597h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f45598i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ com.startshorts.androidplayer.viewmodel.player.c f45599j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f45600k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewUserRecommendShortsFragment$initPlayerVM$1$1(BaseEpisode baseEpisode, com.startshorts.androidplayer.viewmodel.player.c cVar, String str, rs.c<? super NewUserRecommendShortsFragment$initPlayerVM$1$1> cVar2) {
        super(2, cVar2);
        this.f45598i = baseEpisode;
        this.f45599j = cVar;
        this.f45600k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new NewUserRecommendShortsFragment$initPlayerVM$1$1(this.f45598i, this.f45599j, this.f45600k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((NewUserRecommendShortsFragment$initPlayerVM$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45597h == 0) {
            kotlin.f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(this.f45598i);
            com.startshorts.androidplayer.viewmodel.player.c cVar = this.f45599j;
            String str = this.f45600k;
            C.putString("scene", "new_user_drama");
            C.putString("err_msg", ((c.d) cVar).b());
            C.putString(CampaignEx.JSON_KEY_VIDEO_URL, str);
            C.putString("clarity_level", "720p");
            C.putString("userNetworkType", DeviceUtil.f48146a.A());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reel_play_fail", C, 0L, 4, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
