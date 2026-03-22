package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(int r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult>>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1) r0
            int r1 = r0.f44074j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44074j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44072h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44074j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r8, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = r8.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByEpisodeNum$2
            r2.<init>(r6, r7, r4)
            r0.f44074j = r3
            java.lang.Object r6 = r8.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.a(int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult2>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$1) r0
            int r1 = r0.f44080j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44080j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44078h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44080j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r7, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$2
            r2.<init>(r6, r4)
            r0.f44080j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.b(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.Nullable android.content.Context r15, @org.jetbrains.annotations.NotNull java.lang.String r16, int r17, int r18, int r19, int r20, boolean r21, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult>> r22) {
        /*
            r14 = this;
            r0 = r15
            r1 = r22
            boolean r2 = r1 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$1
            if (r2 == 0) goto L17
            r2 = r1
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$1 r2 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$1) r2
            int r3 = r2.f44085j
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f44085j = r3
            r3 = r14
            goto L1d
        L17:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$1 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$1
            r3 = r14
            r2.<init>(r14, r1)
        L1d:
            java.lang.Object r1 = r2.f44083h
            java.lang.Object r4 = kotlin.coroutines.intrinsics.a.f()
            int r5 = r2.f44085j
            r6 = 1
            if (r5 == 0) goto L3c
            if (r5 != r6) goto L34
            kotlin.f.b(r1)
            kotlin.Result r1 = (kotlin.Result) r1
            java.lang.Object r0 = r1.n()
            goto L6c
        L34:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3c:
            kotlin.f.b(r1)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r1 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r1.<init>()
            r5 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r1 = r1.u(r15, r5)
            if (r0 != 0) goto L4d
            if (r21 == 0) goto L4e
        L4d:
            r5 = r6
        L4e:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r1.E(r5)
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$2 r1 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$2
            r13 = 0
            r7 = r1
            r8 = r16
            r9 = r17
            r10 = r18
            r11 = r19
            r12 = r20
            r7.<init>(r8, r9, r10, r11, r12, r13)
            r2.f44085j = r6
            java.lang.Object r0 = r0.o(r1, r2)
            if (r0 != r4) goto L6c
            return r4
        L6c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.c(android.content.Context, java.lang.String, int, int, int, int, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, boolean r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$1) r0
            int r1 = r0.f44094j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44094j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44092h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44094j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L5c
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            r2 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = r8.u(r5, r2)
            if (r5 != 0) goto L48
            if (r7 == 0) goto L49
        L48:
            r2 = r3
        L49:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r8.E(r2)
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$2 r7 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$2
            r8 = 0
            r7.<init>(r6, r8)
            r0.f44094j = r3
            java.lang.Object r5 = r5.o(r7, r0)
            if (r5 != r1) goto L5c
            return r1
        L5c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.d(android.content.Context, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$1) r0
            int r1 = r0.f44099j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44099j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44097h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44099j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r6.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r6, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r6.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$2
            r2.<init>(r4)
            r0.f44099j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.e(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.shorts.BaseEpisode>>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$1) r0
            int r1 = r0.f44103j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44103j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44101h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44103j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r7, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$2
            r2.<init>(r6, r4)
            r0.f44103j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.f(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$1) r0
            int r1 = r0.f44108j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44108j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44106h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44108j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisode$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.f44108j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.g(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$1) r0
            int r1 = r0.f44113j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44113j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44111h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44113j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.f44113j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.h(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(int r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.Nullable java.lang.String r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortDiscountSkuResult>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$1) r0
            int r1 = r0.f44118j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44118j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44116h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44118j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = r9.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortDiscount$2
            r4 = 0
            r2.<init>(r6, r7, r8, r4)
            r0.f44118j = r3
            java.lang.Object r6 = r9.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.i(int, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(@org.jetbrains.annotations.NotNull java.lang.String r6, int r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortsDetail>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$1) r0
            int r1 = r0.f44125j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44125j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44123h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44125j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r8, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = r8.n()
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$2 r2 = new com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$2
            r2.<init>(r6, r7, r4)
            r0.f44125j = r3
            java.lang.Object r6 = r8.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS.j(java.lang.String, int, rs.c):java.lang.Object");
    }
}
