package com.startshorts.androidplayer.viewmodel.search;

import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.viewmodel.search.d;
import gt.g0;
import java.util.Collection;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: SearchViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$fetchPopularAndRanking$1", f = "SearchViewModel.kt", l = {84}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchViewModel$fetchPopularAndRanking$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49292h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchViewModel f49293i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel$fetchPopularAndRanking$1(SearchViewModel searchViewModel, rs.c<? super SearchViewModel$fetchPopularAndRanking$1> cVar) {
        super(2, cVar);
        this.f49293i = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchViewModel$fetchPopularAndRanking$1(this.f49293i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchViewModel$fetchPopularAndRanking$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49292h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            this.f49292h = 1;
            obj = searchRepo.h(this);
            if (obj == f10) {
                return f10;
            }
        }
        boolean z10 = !((Collection) obj).isEmpty();
        SearchRankingResultV2 g10 = SearchRepo.f44583a.g();
        d value = this.f49293i.C().getValue();
        if (value instanceof d.a) {
            o.b(this.f49293i.C(), new d.a(g10, z10));
        }
        if (value instanceof d.b) {
            d.b bVar = (d.b) value;
            o.b(this.f49293i.C(), new d.b(bVar.a(), bVar.c(), bVar.b(), bVar.e(), g10));
        }
        return Unit.f60915a;
    }
}
