package com.startshorts.androidplayer.ui.activity.download;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.repo.immersion.DownloadEpisodeRepo;
import com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB;
import gt.g0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadChooseViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadChooseViewModel$queryDownloadDetail$1", f = "DownloadChooseViewModel.kt", l = {32, 39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadChooseViewModel$queryDownloadDetail$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f45062h;

    /* renamed from: i  reason: collision with root package name */
    int f45063i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f45064j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DownloadChooseViewModel f45065k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadChooseViewModel$queryDownloadDetail$1(int i10, DownloadChooseViewModel downloadChooseViewModel, rs.c<? super DownloadChooseViewModel$queryDownloadDetail$1> cVar) {
        super(2, cVar);
        this.f45064j = i10;
        this.f45065k = downloadChooseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadChooseViewModel$queryDownloadDetail$1(this.f45064j, this.f45065k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadChooseViewModel$queryDownloadDetail$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        QueryDownloadEpisodesResult queryDownloadEpisodesResult;
        List<BaseEpisode> dramaResponseList;
        QueryDownloadEpisodesResult queryDownloadEpisodesResult2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45063i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    queryDownloadEpisodesResult2 = (QueryDownloadEpisodesResult) this.f45062h;
                    kotlin.f.b(obj);
                    queryDownloadEpisodesResult = queryDownloadEpisodesResult2;
                    this.f45065k.C().clear();
                    this.f45065k.C().addAll(DownloadEpisodeManager.f45066a.G(this.f45064j, queryDownloadEpisodesResult.getDramaResponseList()));
                    this.f45065k.B().setValue(queryDownloadEpisodesResult);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            d10 = ((Result) obj).n();
        } else {
            kotlin.f.b(obj);
            DownloadEpisodeRepo downloadEpisodeRepo = DownloadEpisodeRepo.f44027a;
            int i11 = this.f45064j;
            this.f45063i = 1;
            d10 = downloadEpisodeRepo.d(i11, this);
            if (d10 == f10) {
                return f10;
            }
        }
        if (Result.j(d10)) {
            if (Result.i(d10)) {
                d10 = null;
            }
            queryDownloadEpisodesResult = (QueryDownloadEpisodesResult) d10;
            if (queryDownloadEpisodesResult != null && (dramaResponseList = queryDownloadEpisodesResult.getDramaResponseList()) != null && (!dramaResponseList.isEmpty())) {
                if (this.f45064j > 0) {
                    xh.f fVar = new xh.f(this.f45064j, l.d(queryDownloadEpisodesResult));
                    DEpisodesDB dEpisodesDB = DEpisodesDB.f45229a;
                    this.f45062h = queryDownloadEpisodesResult;
                    this.f45063i = 2;
                    if (dEpisodesDB.e(fVar, this) == f10) {
                        return f10;
                    }
                    queryDownloadEpisodesResult2 = queryDownloadEpisodesResult;
                    queryDownloadEpisodesResult = queryDownloadEpisodesResult2;
                }
                this.f45065k.C().clear();
                this.f45065k.C().addAll(DownloadEpisodeManager.f45066a.G(this.f45064j, queryDownloadEpisodesResult.getDramaResponseList()));
                this.f45065k.B().setValue(queryDownloadEpisodesResult);
            }
        }
        return Unit.f60915a;
    }
}
