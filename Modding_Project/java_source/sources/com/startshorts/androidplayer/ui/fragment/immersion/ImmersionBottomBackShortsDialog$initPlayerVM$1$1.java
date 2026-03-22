package com.startshorts.androidplayer.ui.fragment.immersion;

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
/* compiled from: ImmersionBottomBackShortsDialog.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBottomBackShortsDialog$initPlayerVM$1$1", f = "ImmersionBottomBackShortsDialog.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionBottomBackShortsDialog$initPlayerVM$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46138h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f46139i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ com.startshorts.androidplayer.viewmodel.player.c f46140j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f46141k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionBottomBackShortsDialog$initPlayerVM$1$1(BaseEpisode baseEpisode, com.startshorts.androidplayer.viewmodel.player.c cVar, String str, rs.c<? super ImmersionBottomBackShortsDialog$initPlayerVM$1$1> cVar2) {
        super(2, cVar2);
        this.f46139i = baseEpisode;
        this.f46140j = cVar;
        this.f46141k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionBottomBackShortsDialog$initPlayerVM$1$1(this.f46139i, this.f46140j, this.f46141k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionBottomBackShortsDialog$initPlayerVM$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f46138h == 0) {
            kotlin.f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(this.f46139i);
            com.startshorts.androidplayer.viewmodel.player.c cVar = this.f46140j;
            String str = this.f46141k;
            C.putString("scene", "immersion_back_pop");
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
