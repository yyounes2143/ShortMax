package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import gt.j1;
import gt.q0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodeDetail$1", f = "ImmersionViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS, MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodeDetail$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48564h;

    /* renamed from: i  reason: collision with root package name */
    int f48565i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f48566j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48567k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48568l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48569m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f48570n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodeDetail$1(Context context, ImmersionViewModel immersionViewModel, int i10, int i11, int i12, rs.c<? super ImmersionViewModel$queryEpisodeDetail$1> cVar) {
        super(2, cVar);
        this.f48566j = context;
        this.f48567k = immersionViewModel;
        this.f48568l = i10;
        this.f48569m = i11;
        this.f48570n = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodeDetail$1(this.f48566j, this.f48567k, this.f48568l, this.f48569m, this.f48570n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodeDetail$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object r10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48565i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            r10 = ((Result) obj).n();
        } else {
            kotlin.f.b(obj);
            EpisodeRepo episodeRepo = EpisodeRepo.f44056a;
            Context context = this.f48566j;
            str = this.f48567k.f48548f;
            if (str == null) {
                str = "";
            }
            int i11 = this.f48568l;
            int i12 = this.f48569m;
            this.f48565i = 1;
            r10 = episodeRepo.r(context, str, i11, i12, this);
            if (r10 == f10) {
                return f10;
            }
        }
        ImmersionViewModel immersionViewModel = this.f48567k;
        int i13 = this.f48570n;
        if (Result.j(r10)) {
            BaseEpisode baseEpisode = (BaseEpisode) r10;
            if (baseEpisode != null) {
                o.b(immersionViewModel.Q(), new d.b(i13, baseEpisode));
            } else {
                j1 c10 = q0.c();
                ImmersionViewModel$queryEpisodeDetail$1$1$1 immersionViewModel$queryEpisodeDetail$1$1$1 = new ImmersionViewModel$queryEpisodeDetail$1$1$1(null);
                this.f48564h = r10;
                this.f48565i = 2;
                if (gt.e.g(c10, immersionViewModel$queryEpisodeDetail$1$1$1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
