package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$preloadNextEpisodes$1", f = "ImmersionViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$preloadNextEpisodes$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48555h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f48556i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48557j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f48558k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$preloadNextEpisodes$1(BaseEpisode baseEpisode, ImmersionViewModel immersionViewModel, boolean z10, rs.c<? super ImmersionViewModel$preloadNextEpisodes$1> cVar) {
        super(2, cVar);
        this.f48556i = baseEpisode;
        this.f48557j = immersionViewModel;
        this.f48558k = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$preloadNextEpisodes$1(this.f48556i, this.f48557j, this.f48558k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$preloadNextEpisodes$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m02;
        Object s02;
        boolean booleanValue;
        ImmersionViewModel$preloadNextEpisodes$1 immersionViewModel$preloadNextEpisodes$1;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48555h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    m02 = obj;
                    booleanValue = ((Boolean) m02).booleanValue();
                    immersionViewModel$preloadNextEpisodes$1 = this;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                s02 = obj;
                booleanValue = ((Boolean) s02).booleanValue();
                immersionViewModel$preloadNextEpisodes$1 = this;
            }
        } else {
            kotlin.f.b(obj);
            if (this.f48556i.isTrailer()) {
                ImmersionViewModel immersionViewModel = this.f48557j;
                BaseEpisode baseEpisode = this.f48556i;
                this.f48555h = 1;
                s02 = immersionViewModel.s0(baseEpisode, this);
                if (s02 == f10) {
                    return f10;
                }
                booleanValue = ((Boolean) s02).booleanValue();
                immersionViewModel$preloadNextEpisodes$1 = this;
            } else {
                int shortPlayId = this.f48556i.getShortPlayId();
                int id2 = this.f48556i.getId();
                int videoType = this.f48556i.getVideoType();
                boolean isMergeShortPlay = this.f48556i.isMergeShortPlay();
                ImmersionViewModel immersionViewModel2 = this.f48557j;
                boolean z10 = this.f48558k;
                this.f48555h = 2;
                m02 = ImmersionViewModel.m0(immersionViewModel2, null, true, shortPlayId, id2, 0, 12, videoType, isMergeShortPlay, null, z10, false, false, this, 3329, null);
                if (m02 == f10) {
                    return f10;
                }
                booleanValue = ((Boolean) m02).booleanValue();
                immersionViewModel$preloadNextEpisodes$1 = this;
            }
        }
        o.b(immersionViewModel$preloadNextEpisodes$1.f48557j.Q(), new d.e(booleanValue));
        return Unit.f60915a;
    }
}
