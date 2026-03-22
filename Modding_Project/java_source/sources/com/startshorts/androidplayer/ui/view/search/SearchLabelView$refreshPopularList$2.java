package com.startshorts.androidplayer.ui.view.search;

import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.repo.search.SearchRepo;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: SearchLabelView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.search.SearchLabelView$refreshPopularList$2", f = "SearchLabelView.kt", l = {65, 68}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchLabelView$refreshPopularList$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f47810h;

    /* renamed from: i  reason: collision with root package name */
    int f47811i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SearchLabelView f47812j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchLabelView$refreshPopularList$2(SearchLabelView searchLabelView, c<? super SearchLabelView$refreshPopularList$2> cVar) {
        super(2, cVar);
        this.f47812j = searchLabelView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchLabelView$refreshPopularList$2(this.f47812j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SearchLabelView$refreshPopularList$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        SearchRankingResultV2 searchRankingResultV2;
        List<EpisodeSearchResult> topResponseList;
        Object f10 = a.f();
        int i10 = this.f47811i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            d10 = ((Result) obj).n();
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            this.f47811i = 1;
            d10 = searchRepo.d(1, 20, this);
            if (d10 == f10) {
                return f10;
            }
        }
        SearchLabelView searchLabelView = this.f47812j;
        if (Result.j(d10) && (topResponseList = (searchRankingResultV2 = (SearchRankingResultV2) d10).getTopResponseList()) != null && (!topResponseList.isEmpty())) {
            j1 c10 = q0.c();
            SearchLabelView$refreshPopularList$2$1$1 searchLabelView$refreshPopularList$2$1$1 = new SearchLabelView$refreshPopularList$2$1$1(searchLabelView, searchRankingResultV2, null);
            this.f47810h = d10;
            this.f47811i = 2;
            if (e.g(c10, searchLabelView$refreshPopularList$2$1$1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
