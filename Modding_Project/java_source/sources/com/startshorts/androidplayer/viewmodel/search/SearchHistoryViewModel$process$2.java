package com.startshorts.androidplayer.viewmodel.search;

import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.viewmodel.search.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchHistoryViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchHistoryViewModel$process$2", f = "SearchHistoryViewModel.kt", l = {50}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchHistoryViewModel$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49284h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchHistoryViewModel f49285i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryViewModel$process$2(SearchHistoryViewModel searchHistoryViewModel, rs.c<? super SearchHistoryViewModel$process$2> cVar) {
        super(2, cVar);
        this.f49285i = searchHistoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchHistoryViewModel$process$2(this.f49285i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchHistoryViewModel$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49284h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            this.f49284h = 1;
            if (searchRepo.b(this) == f10) {
                return f10;
            }
        }
        o.b(this.f49285i.A(), new b.C0686b(CollectionsKt.n()));
        return Unit.f60915a;
    }
}
