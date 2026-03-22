package com.startshorts.androidplayer.repo.search;

import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SearchRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSearchRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchRepo.kt\ncom/startshorts/androidplayer/repo/search/SearchRepo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final SearchRepo f44583a = new SearchRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SearchLocalDS f44584b = new SearchLocalDS();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final SearchRemoteDS f44585c = new SearchRemoteDS();

    private SearchRepo() {
    }

    private final String e() {
        return ABTestFactory.f42224a.N0().getAbTestKey();
    }

    private final String f() {
        String abTestValue = ABTestFactory.f42224a.N0().abTestValue();
        if (abTestValue.length() == 0) {
            return null;
        }
        return abTestValue;
    }

    @Nullable
    public final Object a(@NotNull String str, @NotNull c<? super Unit> cVar) {
        Object a10 = f44584b.a(str, cVar);
        if (a10 == a.f()) {
            return a10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object b(@NotNull c<? super Unit> cVar) {
        Object b10 = f44584b.b(cVar);
        if (b10 == a.f()) {
            return b10;
        }
        return Unit.f60915a;
    }

    public final void c() {
        f44584b.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(int r8, int r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.search.SearchRankingResultV2>> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.startshorts.androidplayer.repo.search.SearchRepo$fetchPopularAndRanking$1
            if (r0 == 0) goto L14
            r0 = r10
            com.startshorts.androidplayer.repo.search.SearchRepo$fetchPopularAndRanking$1 r0 = (com.startshorts.androidplayer.repo.search.SearchRepo$fetchPopularAndRanking$1) r0
            int r1 = r0.f44588j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44588j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.search.SearchRepo$fetchPopularAndRanking$1 r0 = new com.startshorts.androidplayer.repo.search.SearchRepo$fetchPopularAndRanking$1
            r0.<init>(r7, r10)
            goto L12
        L1a:
            java.lang.Object r10 = r6.f44586h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f44588j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r8 = r10.n()
            goto L51
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r10)
            com.startshorts.androidplayer.repo.search.SearchRemoteDS r1 = com.startshorts.androidplayer.repo.search.SearchRepo.f44585c
            java.lang.String r4 = r7.e()
            java.lang.String r5 = r7.f()
            r6.f44588j = r2
            r2 = r8
            r3 = r9
            java.lang.Object r8 = r1.c(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L51
            return r0
        L51:
            boolean r9 = kotlin.Result.j(r8)
            if (r9 == 0) goto L5f
            r9 = r8
            com.startshorts.androidplayer.bean.search.SearchRankingResultV2 r9 = (com.startshorts.androidplayer.bean.search.SearchRankingResultV2) r9
            com.startshorts.androidplayer.repo.search.SearchLocalDS r10 = com.startshorts.androidplayer.repo.search.SearchRepo.f44584b
            r10.f(r9)
        L5f:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRepo.d(int, int, rs.c):java.lang.Object");
    }

    @Nullable
    public final SearchRankingResultV2 g() {
        return f44584b.e();
    }

    @Nullable
    public final Object h(@NotNull c<? super List<String>> cVar) {
        return f44584b.d(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(@org.jetbrains.annotations.NotNull java.lang.String r9, int r10, int r11, @org.jetbrains.annotations.NotNull java.util.List<java.lang.Integer> r12, @org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.search.SearchResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.search.SearchRepo$searchExactly$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.search.SearchRepo$searchExactly$1 r0 = (com.startshorts.androidplayer.repo.search.SearchRepo$searchExactly$1) r0
            int r1 = r0.f44591j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44591j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.search.SearchRepo$searchExactly$1 r0 = new com.startshorts.androidplayer.repo.search.SearchRepo$searchExactly$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f44589h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44591j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L4c
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.search.SearchRemoteDS r1 = com.startshorts.androidplayer.repo.search.SearchRepo.f44585c
            r7.f44591j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.b(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L4c
            return r0
        L4c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRepo.i(java.lang.String, int, int, java.util.List, java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(@org.jetbrains.annotations.NotNull java.lang.String r5, int r6, int r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.search.EpisodeSearchResult>>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.search.SearchRepo$searchFuzzy$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.search.SearchRepo$searchFuzzy$1 r0 = (com.startshorts.androidplayer.repo.search.SearchRepo$searchFuzzy$1) r0
            int r1 = r0.f44594j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44594j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.search.SearchRepo$searchFuzzy$1 r0 = new com.startshorts.androidplayer.repo.search.SearchRepo$searchFuzzy$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44592h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44594j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.search.SearchRemoteDS r8 = com.startshorts.androidplayer.repo.search.SearchRepo.f44585c
            r0.f44594j = r3
            java.lang.Object r5 = r8.a(r5, r6, r7, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRepo.j(java.lang.String, int, int, rs.c):java.lang.Object");
    }
}
