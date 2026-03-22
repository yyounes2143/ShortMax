package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
/* compiled from: EpisodeRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, int r7, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$1) r0
            int r1 = r0.f44034j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44034j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.f44032h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44034j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r5 = r9.n()
            goto L5a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            r2 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = r9.u(r5, r2)
            if (r5 == 0) goto L47
            r2 = r3
        L47:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r9.E(r2)
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$2 r9 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$2
            r2 = 0
            r9.<init>(r6, r7, r8, r2)
            r0.f44034j = r3
            java.lang.Object r5 = r5.o(r9, r0)
            if (r5 != r1) goto L5a
            return r1
        L5a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS.a(android.content.Context, java.lang.String, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, int r7, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortsListNewBean>> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$1) r0
            int r1 = r0.f44041j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44041j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.f44039h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44041j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r5 = r9.n()
            goto L5a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            r2 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = r9.u(r5, r2)
            if (r5 == 0) goto L47
            r2 = r3
        L47:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r9.E(r2)
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$2 r9 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$2
            r2 = 0
            r9.<init>(r6, r7, r8, r2)
            r0.f44041j = r3
            java.lang.Object r5 = r5.o(r9, r0)
            if (r5 != r1) goto L5a
            return r1
        L5a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS.b(android.content.Context, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$1) r0
            int r1 = r0.f44048j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44048j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44046h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44048j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r6.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r6.n()
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$2 r2 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryRecommendEpisode$2
            r4 = 0
            r2.<init>(r4)
            r0.f44048j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS.c(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(int r6, int r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$1) r0
            int r1 = r0.f44052j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44052j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44050h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44052j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = r8.n()
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$2 r2 = new com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$2
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.f44052j = r3
            java.lang.Object r6 = r8.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS.d(int, int, rs.c):java.lang.Object");
    }
}
