package com.startshorts.androidplayer.viewmodel.search;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$goToInitState$1", f = "SearchViewModel.kt", l = {102}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchViewModel$goToInitState$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49294h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchViewModel f49295i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel$goToInitState$1(SearchViewModel searchViewModel, rs.c<? super SearchViewModel$goToInitState$1> cVar) {
        super(2, cVar);
        this.f49295i = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchViewModel$goToInitState$1(this.f49295i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchViewModel$goToInitState$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49294h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            this.f49294h = 1;
            obj = searchRepo.h(this);
            if (obj == f10) {
                return f10;
            }
        }
        boolean z10 = !((Collection) obj).isEmpty();
        SearchRepo searchRepo2 = SearchRepo.f44583a;
        if (searchRepo2.g() == null) {
            o.b(this.f49295i.C(), new d.a(null, z10));
            this.f49295i.B();
        } else {
            this.f49295i.v("goToInitState -> use cached popular list.");
            o.b(this.f49295i.C(), new d.a(searchRepo2.g(), z10));
        }
        return Unit.f60915a;
    }
}
