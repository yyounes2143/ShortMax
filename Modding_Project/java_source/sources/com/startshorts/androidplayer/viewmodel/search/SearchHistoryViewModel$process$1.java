package com.startshorts.androidplayer.viewmodel.search;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.viewmodel.search.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchHistoryViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchHistoryViewModel$process$1", f = "SearchHistoryViewModel.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SearchHistoryViewModel$process$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f49281h;

    /* renamed from: i  reason: collision with root package name */
    int f49282i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SearchHistoryViewModel f49283j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryViewModel$process$1(SearchHistoryViewModel searchHistoryViewModel, rs.c<? super SearchHistoryViewModel$process$1> cVar) {
        super(2, cVar);
        this.f49283j = searchHistoryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchHistoryViewModel$process$1(this.f49283j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchHistoryViewModel$process$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableLiveData<b> mutableLiveData;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49282i;
        if (i10 != 0) {
            if (i10 == 1) {
                mutableLiveData = (MutableLiveData) this.f49281h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            MutableLiveData<b> A = this.f49283j.A();
            SearchRepo searchRepo = SearchRepo.f44583a;
            this.f49281h = A;
            this.f49282i = 1;
            Object h10 = searchRepo.h(this);
            if (h10 == f10) {
                return f10;
            }
            mutableLiveData = A;
            obj = h10;
        }
        o.b(mutableLiveData, new b.C0686b((List) obj));
        return Unit.f60915a;
    }
}
