package com.startshorts.androidplayer.viewmodel.search;

import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.viewmodel.search.d;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: SearchViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchFuzzy$1", f = "SearchViewModel.kt", l = {165}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchViewModel$searchFuzzy$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49305h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f49306i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SearchViewModel f49307j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel$searchFuzzy$1(String str, SearchViewModel searchViewModel, rs.c<? super SearchViewModel$searchFuzzy$1> cVar) {
        super(2, cVar);
        this.f49306i = str;
        this.f49307j = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchViewModel$searchFuzzy$1(this.f49306i, this.f49307j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchViewModel$searchFuzzy$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49305h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                j10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            String str = this.f49306i;
            this.f49305h = 1;
            j10 = searchRepo.j(str, 1, 10, this);
            if (j10 == f10) {
                return f10;
            }
        }
        SearchViewModel searchViewModel = this.f49307j;
        if (Result.j(j10)) {
            List list = (List) j10;
            if (!(searchViewModel.C().getValue() instanceof d.a)) {
                o.b(searchViewModel.C(), new d.j(list));
            }
        }
        SearchViewModel searchViewModel2 = this.f49307j;
        Throwable g10 = Result.g(j10);
        if (g10 != null) {
            o.b(searchViewModel2.C(), new d.h(g10.getMessage()));
        }
        return Unit.f60915a;
    }
}
