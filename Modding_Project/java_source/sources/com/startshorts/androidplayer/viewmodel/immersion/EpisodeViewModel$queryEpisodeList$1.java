package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.viewmodel.immersion.b;
import gt.g0;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: EpisodeViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel$queryEpisodeList$1", f = "EpisodeViewModel.kt", l = {53}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class EpisodeViewModel$queryEpisodeList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48535h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48536i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48537j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48538k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ EpisodeViewModel f48539l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeViewModel$queryEpisodeList$1(int i10, int i11, int i12, EpisodeViewModel episodeViewModel, rs.c<? super EpisodeViewModel$queryEpisodeList$1> cVar) {
        super(2, cVar);
        this.f48536i = i10;
        this.f48537j = i11;
        this.f48538k = i12;
        this.f48539l = episodeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new EpisodeViewModel$queryEpisodeList$1(this.f48536i, this.f48537j, this.f48538k, this.f48539l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((EpisodeViewModel$queryEpisodeList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object u10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48535h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                u10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            EpisodeRepo episodeRepo = EpisodeRepo.f44056a;
            int i11 = this.f48536i;
            int i12 = this.f48537j;
            int i13 = this.f48538k;
            this.f48535h = 1;
            u10 = EpisodeRepo.u(episodeRepo, null, i11, i12, i13, this, 1, null);
            if (u10 == f10) {
                return f10;
            }
        }
        EpisodeViewModel episodeViewModel = this.f48539l;
        if (Result.j(u10)) {
            o.b(episodeViewModel.B(), new b.C0661b((ShortsListNewBean) u10));
        }
        EpisodeViewModel episodeViewModel2 = this.f48539l;
        Throwable g10 = Result.g(u10);
        if (g10 != null) {
            episodeViewModel2.x(z.a(g10));
        }
        return Unit.f60915a;
    }
}
