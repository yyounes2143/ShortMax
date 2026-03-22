package com.startshorts.androidplayer.viewmodel.search;

import com.startshorts.androidplayer.bean.search.RedeemCodeEquity;
import com.startshorts.androidplayer.bean.search.SearchResult;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchExactlyMore$1", f = "SearchViewModel.kt", l = {143}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchViewModel$searchExactlyMore$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49300h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f49301i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f49302j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f49303k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ SearchViewModel f49304l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel$searchExactlyMore$1(String str, int i10, int i11, SearchViewModel searchViewModel, rs.c<? super SearchViewModel$searchExactlyMore$1> cVar) {
        super(2, cVar);
        this.f49301i = str;
        this.f49302j = i10;
        this.f49303k = i11;
        this.f49304l = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchViewModel$searchExactlyMore$1(this.f49301i, this.f49302j, this.f49303k, this.f49304l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchViewModel$searchExactlyMore$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object i10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f49300h;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
                i10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SearchRepo searchRepo = SearchRepo.f44583a;
            String str = this.f49301i;
            int i12 = this.f49302j;
            int i13 = this.f49303k;
            RedeemCodeEquity.Companion companion = RedeemCodeEquity.Companion;
            List<Integer> supportTypes = companion.getSupportTypes();
            List<String> supportConditionCodes = companion.getSupportConditionCodes();
            this.f49300h = 1;
            i10 = searchRepo.i(str, i12, i13, supportTypes, supportConditionCodes, this);
            if (i10 == f10) {
                return f10;
            }
        }
        SearchViewModel searchViewModel = this.f49304l;
        String str2 = this.f49301i;
        if (Result.j(i10)) {
            o.b(searchViewModel.C(), new d.e(str2, (SearchResult) i10));
        }
        SearchViewModel searchViewModel2 = this.f49304l;
        String str3 = this.f49301i;
        Throwable g10 = Result.g(i10);
        if (g10 != null) {
            o.b(searchViewModel2.C(), new d.c(str3, g10.getMessage()));
        }
        return Unit.f60915a;
    }
}
