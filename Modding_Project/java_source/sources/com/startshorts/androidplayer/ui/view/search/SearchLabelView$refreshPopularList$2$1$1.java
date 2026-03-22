package com.startshorts.androidplayer.ui.view.search;

import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchLabelView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.search.SearchLabelView$refreshPopularList$2$1$1", f = "SearchLabelView.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchLabelView$refreshPopularList$2$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47813h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchLabelView f47814i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SearchRankingResultV2 f47815j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchLabelView$refreshPopularList$2$1$1(SearchLabelView searchLabelView, SearchRankingResultV2 searchRankingResultV2, c<? super SearchLabelView$refreshPopularList$2$1$1> cVar) {
        super(2, cVar);
        this.f47814i = searchLabelView;
        this.f47815j = searchRankingResultV2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchLabelView$refreshPopularList$2$1$1(this.f47814i, this.f47815j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SearchLabelView$refreshPopularList$2$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f47813h == 0) {
            f.b(obj);
            this.f47814i.setLabels(this.f47815j.getKeyResponseList());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
