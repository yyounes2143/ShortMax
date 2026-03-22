package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1", f = "ImmersionViewModel.kt", l = {320}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1\n*L\n330#1:783,13\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48588h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48589i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48590j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48591k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48592l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1(ImmersionViewModel immersionViewModel, int i10, int i11, int i12, rs.c<? super ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1> cVar) {
        super(2, cVar);
        this.f48589i = immersionViewModel;
        this.f48590j = i10;
        this.f48591k = i11;
        this.f48592l = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1(this.f48589i, this.f48590j, this.f48591k, this.f48592l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodesByDownLoadEpisodeNum$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        ResponseException responseException;
        int i10;
        int i11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i12 = this.f48588h;
        if (i12 != 0) {
            if (i12 == 1) {
                kotlin.f.b(obj);
                obj2 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            this.f48589i.v("queryEpisodesByDownLoadEpisodeNum -> shortsId(" + this.f48590j + ") episodeNum(" + this.f48591k + ") ");
            DEpisodesDB dEpisodesDB = DEpisodesDB.f45229a;
            int i13 = this.f48590j;
            int i14 = this.f48591k;
            int i15 = this.f48592l;
            this.f48588h = 1;
            Object d10 = dEpisodesDB.d(i13, i14, i15, this);
            if (d10 == f10) {
                return f10;
            }
            obj2 = d10;
        }
        ImmersionViewModel immersionViewModel = this.f48589i;
        if (Result.j(obj2)) {
            QueryEpisodesResult queryEpisodesResult = (QueryEpisodesResult) obj2;
            List<BaseEpisode> previousEpisodesReponse = queryEpisodesResult.getPreviousEpisodesReponse();
            if (previousEpisodesReponse != null) {
                i10 = previousEpisodesReponse.size();
            } else {
                i10 = 0;
            }
            List<BaseEpisode> nextEpisodesReponse = queryEpisodesResult.getNextEpisodesReponse();
            if (nextEpisodesReponse != null) {
                i11 = nextEpisodesReponse.size();
            } else {
                i11 = 0;
            }
            ImmersionViewModel.V(immersionViewModel, false, i10, i11, queryEpisodesResult, null, 16, null);
        }
        ImmersionViewModel immersionViewModel2 = this.f48589i;
        int i16 = this.f48590j;
        Throwable g10 = Result.g(obj2);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            ResponseException responseException2 = responseException;
            if (responseException2 == null) {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                ImmersionViewModel.T(immersionViewModel2, i16, responseException2, false, 4, null);
            }
        }
        return Unit.f60915a;
    }
}
