package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.discover.h;
import gt.g0;
import java.util.List;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverRankingTabViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.RankingTabViewModel$queryRankingTabData$1", f = "DiscoverRankingTabViewModel.kt", l = {52}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RankingTabViewModel$queryRankingTabData$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48492h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48493i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RankingTabViewModel f48494j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RankingTabViewModel$queryRankingTabData$1(int i10, RankingTabViewModel rankingTabViewModel, rs.c<? super RankingTabViewModel$queryRankingTabData$1> cVar) {
        super(2, cVar);
        this.f48493i = i10;
        this.f48494j = rankingTabViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RankingTabViewModel$queryRankingTabData$1(this.f48493i, this.f48494j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RankingTabViewModel$queryRankingTabData$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object l10;
        List<DiscoverModule> n10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48492h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                l10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            int i11 = this.f48493i;
            this.f48492h = 1;
            l10 = discoverRepo.l(i11, this);
            if (l10 == f10) {
                return f10;
            }
        }
        RankingTabViewModel rankingTabViewModel = this.f48494j;
        if (Result.j(l10)) {
            DiscoverTabPage discoverTabPage = (DiscoverTabPage) l10;
            if (discoverTabPage == null || (n10 = discoverTabPage.getBannerResponseList()) == null) {
                n10 = CollectionsKt.n();
            }
            DiscoverModule discoverModule = (DiscoverModule) CollectionsKt.firstOrNull(n10);
            if (discoverModule != null) {
                str = discoverModule.getBannerId();
            } else {
                str = null;
            }
            if (str == null) {
                discoverModule = null;
            }
            rankingTabViewModel.H(discoverModule);
            o.b(rankingTabViewModel.D(), new h.b(rankingTabViewModel.C()));
        }
        RankingTabViewModel rankingTabViewModel2 = this.f48494j;
        Throwable g10 = Result.g(l10);
        if (g10 != null) {
            o.b(rankingTabViewModel2.D(), new h.a(rankingTabViewModel2.p(z.a(g10))));
        }
        return Unit.f60915a;
    }
}
