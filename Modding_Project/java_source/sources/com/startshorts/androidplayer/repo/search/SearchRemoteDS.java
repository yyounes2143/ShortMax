package com.startshorts.androidplayer.repo.search;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: SearchRemoteDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSearchRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchRemoteDS.kt\ncom/startshorts/androidplayer/repo/search/SearchRemoteDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1#2:54\n1567#3:55\n1598#3,4:56\n1567#3:60\n1598#3,4:61\n*S KotlinDebug\n*F\n+ 1 SearchRemoteDS.kt\ncom/startshorts/androidplayer/repo/search/SearchRemoteDS\n*L\n36#1:55\n36#1:56,4\n47#1:60\n47#1:61,4\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull java.lang.String r6, int r7, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.search.EpisodeSearchResult>>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$1 r0 = (com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$1) r0
            int r1 = r0.f44561j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44561j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$1 r0 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44559h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44561j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r9, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = r9.n()
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$2 r2 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResult$2
            r2.<init>(r7, r8, r6, r4)
            r0.f44561j = r3
            java.lang.Object r6 = r9.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            boolean r7 = kotlin.Result.j(r6)
            if (r7 == 0) goto L66
            java.util.List r6 = (java.util.List) r6
            if (r6 != 0) goto L66
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
        L66:
            java.lang.Object r6 = kotlin.Result.d(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRemoteDS.a(java.lang.String, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r15, int r16, int r17, @org.jetbrains.annotations.NotNull java.util.List<java.lang.Integer> r18, @org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.search.SearchResult>> r20) {
        /*
            r14 = this;
            r0 = r20
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$1 r1 = (com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$1) r1
            int r2 = r1.f44568j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f44568j = r2
            r2 = r14
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$1 r1 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$1
            r2 = r14
            r1.<init>(r14, r0)
        L1c:
            java.lang.Object r0 = r1.f44566h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f44568j
            r5 = 0
            r6 = 1
            if (r4 == 0) goto L3c
            if (r4 != r6) goto L34
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L66
        L34:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3c:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r4, r6, r5)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.n()
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$2 r4 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$querySearchResultV2$2
            r13 = 0
            r7 = r4
            r8 = r16
            r9 = r17
            r10 = r15
            r11 = r18
            r12 = r19
            r7.<init>(r8, r9, r10, r11, r12, r13)
            r1.f44568j = r6
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L66
            return r3
        L66:
            boolean r1 = kotlin.Result.j(r0)
            if (r1 == 0) goto L7a
            com.startshorts.androidplayer.bean.search.SearchResult r0 = (com.startshorts.androidplayer.bean.search.SearchResult) r0
            if (r0 != 0) goto L7a
            com.startshorts.androidplayer.bean.search.SearchResult r0 = new com.startshorts.androidplayer.bean.search.SearchResult
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r0.<init>(r1, r5, r5)
        L7a:
            java.lang.Object r0 = kotlin.Result.d(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRemoteDS.b(java.lang.String, int, int, java.util.List, java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(int r15, int r16, @org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.Nullable java.lang.String r18, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.search.SearchRankingResultV2>> r19) {
        /*
            r14 = this;
            r0 = r19
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$1 r1 = (com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$1) r1
            int r2 = r1.f44577j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f44577j = r2
            r2 = r14
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$1 r1 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$1
            r2 = r14
            r1.<init>(r14, r0)
        L1c:
            java.lang.Object r0 = r1.f44575h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f44577j
            r5 = 0
            r6 = 0
            r7 = 1
            if (r4 == 0) goto L3d
            if (r4 != r7) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L64
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r5, r7, r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.n()
            com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$2 r4 = new com.startshorts.androidplayer.repo.search.SearchRemoteDS$searchPopularAndRanking$2
            r13 = 0
            r8 = r4
            r9 = r15
            r10 = r16
            r11 = r17
            r12 = r18
            r8.<init>(r9, r10, r11, r12, r13)
            r1.f44577j = r7
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L64
            return r3
        L64:
            boolean r1 = kotlin.Result.j(r0)
            if (r1 == 0) goto Lac
            com.startshorts.androidplayer.bean.search.SearchRankingResultV2 r0 = (com.startshorts.androidplayer.bean.search.SearchRankingResultV2) r0
            if (r0 == 0) goto La0
            java.util.List r1 = r0.getTopResponseList()
            if (r1 == 0) goto La0
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 10
            int r4 = kotlin.collections.CollectionsKt.z(r1, r4)
            r3.<init>(r4)
            java.util.Iterator r1 = r1.iterator()
        L85:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto La0
            java.lang.Object r4 = r1.next()
            int r7 = r5 + 1
            if (r5 >= 0) goto L96
            kotlin.collections.CollectionsKt.y()
        L96:
            com.startshorts.androidplayer.bean.search.EpisodeSearchResult r4 = (com.startshorts.androidplayer.bean.search.EpisodeSearchResult) r4
            r4.setIndex(r5)
            r3.add(r4)
            r5 = r7
            goto L85
        La0:
            if (r0 != 0) goto Lac
            com.startshorts.androidplayer.bean.search.SearchRankingResultV2 r0 = new com.startshorts.androidplayer.bean.search.SearchRankingResultV2
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r0.<init>(r1, r6, r6)
        Lac:
            java.lang.Object r0 = kotlin.Result.d(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.search.SearchRemoteDS.c(int, int, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
