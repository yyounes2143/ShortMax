package com.startshorts.androidplayer.repo.mylist.history;

import kotlin.Metadata;
/* compiled from: WatchHistoryRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WatchHistoryRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$1 r0 = (com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$1) r0
            int r1 = r0.f44271j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44271j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$1 r0 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44269h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44271j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L53
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            r2 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r7.u(r5, r2)
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$2 r7 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$deleteWatchHistories$2
            r2 = 0
            r7.<init>(r6, r2)
            r0.f44271j = r3
            java.lang.Object r5 = r5.o(r7, r0)
            if (r5 != r1) goto L53
            return r1
        L53:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS.a(android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(long r6, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.WatchHistory>>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$1 r0 = (com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$1) r0
            int r1 = r0.f44276j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44276j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$1 r0 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44274h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44276j
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
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$2 r2 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistories$2
            r2.<init>(r6, r8, r4)
            r0.f44276j = r3
            java.lang.Object r6 = r9.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS.b(long, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(long r6, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.WatchHistory>>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$1 r0 = (com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$1) r0
            int r1 = r0.f44282j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44282j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$1 r0 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44280h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44282j
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
            com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$2 r2 = new com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS$queryWatchHistoriesSimple$2
            r2.<init>(r6, r8, r4)
            r0.f44282j = r3
            java.lang.Object r6 = r9.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.history.WatchHistoryRemoteDS.c(long, int, rs.c):java.lang.Object");
    }
}
