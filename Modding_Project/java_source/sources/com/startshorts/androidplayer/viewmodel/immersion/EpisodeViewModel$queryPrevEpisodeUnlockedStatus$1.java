package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.EpisodeDetail;
import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.viewmodel.immersion.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: EpisodeViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1", f = "EpisodeViewModel.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48540h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f48541i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f48542j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48543k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48544l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ EpisodeViewModel f48545m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1(Context context, BaseEpisode baseEpisode, int i10, int i11, EpisodeViewModel episodeViewModel, rs.c<? super EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1> cVar) {
        super(2, cVar);
        this.f48541i = context;
        this.f48542j = baseEpisode;
        this.f48543k = i10;
        this.f48544l = i11;
        this.f48545m = episodeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1(this.f48541i, this.f48542j, this.f48543k, this.f48544l, this.f48545m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object t10;
        List<EpisodeDetail> dramaListResponseList;
        EpisodeDetail episodeDetail;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48540h;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                t10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            EpisodeRepo episodeRepo = EpisodeRepo.f44056a;
            Context context = this.f48541i;
            int shortPlayId = this.f48542j.getShortPlayId();
            int i11 = this.f48543k;
            int i12 = this.f48544l;
            this.f48540h = 1;
            t10 = episodeRepo.t(context, shortPlayId, i11, i12, this);
            if (t10 == f10) {
                return f10;
            }
        }
        EpisodeViewModel episodeViewModel = this.f48545m;
        BaseEpisode baseEpisode = this.f48542j;
        if (Result.j(t10)) {
            ShortsListNewBean shortsListNewBean = (ShortsListNewBean) t10;
            MutableLiveData<b> B = episodeViewModel.B();
            if (shortsListNewBean != null && (dramaListResponseList = shortsListNewBean.getDramaListResponseList()) != null && (episodeDetail = (EpisodeDetail) CollectionsKt.C0(dramaListResponseList)) != null) {
                z10 = episodeDetail.isLocked();
            }
            o.b(B, new b.a(baseEpisode, z10));
        }
        return Unit.f60915a;
    }
}
