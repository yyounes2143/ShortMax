package com.startshorts.androidplayer.viewmodel.search;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: SearchViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchExactly$1", f = "SearchViewModel.kt", l = {117, 119}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchViewModel$searchExactly$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49296h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Long f49297i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f49298j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SearchViewModel f49299k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel$searchExactly$1(Long l10, String str, SearchViewModel searchViewModel, rs.c<? super SearchViewModel$searchExactly$1> cVar) {
        super(2, cVar);
        this.f49297i = l10;
        this.f49298j = str;
        this.f49299k = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SearchViewModel$searchExactly$1(this.f49297i, this.f49298j, this.f49299k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SearchViewModel$searchExactly$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r11.f49296h
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r12 = r12.n()
            goto L53
        L18:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L20:
            kotlin.f.b(r12)
            goto L38
        L24:
            kotlin.f.b(r12)
            java.lang.Long r12 = r11.f49297i
            if (r12 == 0) goto L38
            long r4 = r12.longValue()
            r11.f49296h = r3
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r4, r11)
            if (r12 != r0) goto L38
            return r0
        L38:
            com.startshorts.androidplayer.repo.search.SearchRepo r4 = com.startshorts.androidplayer.repo.search.SearchRepo.f44583a
            java.lang.String r5 = r11.f49298j
            com.startshorts.androidplayer.bean.search.RedeemCodeEquity$Companion r12 = com.startshorts.androidplayer.bean.search.RedeemCodeEquity.Companion
            java.util.List r8 = r12.getSupportTypes()
            java.util.List r9 = r12.getSupportConditionCodes()
            r11.f49296h = r2
            r6 = 1
            r7 = 20
            r10 = r11
            java.lang.Object r12 = r4.i(r5, r6, r7, r8, r9, r10)
            if (r12 != r0) goto L53
            return r0
        L53:
            com.startshorts.androidplayer.viewmodel.search.SearchViewModel r0 = r11.f49299k
            java.lang.String r5 = r11.f49298j
            boolean r1 = kotlin.Result.j(r12)
            if (r1 == 0) goto L9a
            r1 = r12
            com.startshorts.androidplayer.bean.search.SearchResult r1 = (com.startshorts.androidplayer.bean.search.SearchResult) r1
            java.util.List r2 = r1.getShortPlays()
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L8e
            com.startshorts.androidplayer.bean.search.RedeemCodeVip r2 = r1.getMemberInfo()
            if (r2 != 0) goto L8e
            com.startshorts.androidplayer.bean.search.RedeemCode r2 = r1.getCodeInfo()
            if (r2 != 0) goto L8e
            androidx.lifecycle.MutableLiveData r0 = r0.C()
            com.startshorts.androidplayer.viewmodel.search.d$b r1 = new com.startshorts.androidplayer.viewmodel.search.d$b
            com.startshorts.androidplayer.repo.search.SearchRepo r2 = com.startshorts.androidplayer.repo.search.SearchRepo.f44583a
            com.startshorts.androidplayer.bean.search.SearchRankingResultV2 r9 = r2.g()
            r6 = 0
            java.lang.String r7 = "search exactly result is empty"
            r8 = 0
            r4 = r1
            r4.<init>(r5, r6, r7, r8, r9)
            jk.o.b(r0, r1)
            goto L9a
        L8e:
            androidx.lifecycle.MutableLiveData r0 = r0.C()
            com.startshorts.androidplayer.viewmodel.search.d$g r2 = new com.startshorts.androidplayer.viewmodel.search.d$g
            r2.<init>(r5, r1)
            jk.o.b(r0, r2)
        L9a:
            com.startshorts.androidplayer.viewmodel.search.SearchViewModel r0 = r11.f49299k
            java.lang.String r5 = r11.f49298j
            java.lang.Throwable r12 = kotlin.Result.g(r12)
            if (r12 == 0) goto Ld9
            boolean r1 = r12 instanceof com.startshorts.androidplayer.bean.exception.ResponseException
            if (r1 == 0) goto Lac
            r1 = r12
            com.startshorts.androidplayer.bean.exception.ResponseException r1 = (com.startshorts.androidplayer.bean.exception.ResponseException) r1
            goto Lad
        Lac:
            r1 = 0
        Lad:
            r2 = 0
            if (r1 == 0) goto Lb8
            boolean r4 = r1.isNetworkError()
            if (r4 != r3) goto Lb8
            r6 = r3
            goto Lb9
        Lb8:
            r6 = r2
        Lb9:
            if (r1 == 0) goto Lc1
            int r1 = r1.getCode()
            r8 = r1
            goto Lc2
        Lc1:
            r8 = r2
        Lc2:
            androidx.lifecycle.MutableLiveData r0 = r0.C()
            com.startshorts.androidplayer.viewmodel.search.d$b r1 = new com.startshorts.androidplayer.viewmodel.search.d$b
            java.lang.String r7 = r12.getMessage()
            com.startshorts.androidplayer.repo.search.SearchRepo r12 = com.startshorts.androidplayer.repo.search.SearchRepo.f44583a
            com.startshorts.androidplayer.bean.search.SearchRankingResultV2 r9 = r12.g()
            r4 = r1
            r4.<init>(r5, r6, r7, r8, r9)
            jk.o.b(r0, r1)
        Ld9:
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.search.SearchViewModel$searchExactly$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
