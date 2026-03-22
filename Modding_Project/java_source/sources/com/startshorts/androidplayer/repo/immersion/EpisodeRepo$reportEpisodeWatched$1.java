package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.i;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EpisodeRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRepo$reportEpisodeWatched$1", f = "EpisodeRepo.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EpisodeRepo$reportEpisodeWatched$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44069h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f44070i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44071j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRepo$reportEpisodeWatched$1(BaseEpisode baseEpisode, int i10, c<? super EpisodeRepo$reportEpisodeWatched$1> cVar) {
        super(2, cVar);
        this.f44070i = baseEpisode;
        this.f44071j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EpisodeRepo$reportEpisodeWatched$1(this.f44070i, this.f44071j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EpisodeRepo$reportEpisodeWatched$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EpisodeRemoteDS m10;
        Object d10;
        i iVar;
        i iVar2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44069h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m10 = EpisodeRepo.f44056a.m();
            int id2 = this.f44070i.getId();
            int i11 = this.f44071j;
            this.f44069h = 1;
            d10 = m10.d(id2, i11, this);
            if (d10 == f10) {
                return f10;
            }
        }
        BaseEpisode baseEpisode = this.f44070i;
        if (Result.j(d10)) {
            iVar2 = EpisodeRepo.f44059d;
            ((List) iVar2.getValue()).remove(kotlin.coroutines.jvm.internal.a.d(baseEpisode.getId()));
            au.c.d().l(new RefreshEpisodeNumEvent(baseEpisode.getShortPlayId(), baseEpisode.getEpisodeNum()));
            if (!ud.a.f68411a.A()) {
                ShortsRepo.f44606a.d();
            }
        }
        BaseEpisode baseEpisode2 = this.f44070i;
        if (Result.g(d10) != null) {
            iVar = EpisodeRepo.f44059d;
            ((List) iVar.getValue()).remove(kotlin.coroutines.jvm.internal.a.d(baseEpisode2.getId()));
        }
        return Unit.f60915a;
    }
}
