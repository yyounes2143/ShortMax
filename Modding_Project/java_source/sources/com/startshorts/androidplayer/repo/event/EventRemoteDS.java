package com.startshorts.androidplayer.repo.event;

import kotlin.Metadata;
/* compiled from: EventRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EventRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.event.EventAdjustTime>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$1 r0 = (com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$1) r0
            int r1 = r0.f44004j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44004j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$1 r0 = new com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44002h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44004j
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
            com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$2 r2 = new com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$2
            r4 = 0
            r2.<init>(r4)
            r0.f44004j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.event.EventRemoteDS.a(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.event.UploadSupersetEventResult>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$1 r0 = (com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$1) r0
            int r1 = r0.f44008j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44008j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$1 r0 = new com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44006h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44008j
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
            com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$2 r2 = new com.startshorts.androidplayer.repo.event.EventRemoteDS$uploadEvents$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.f44008j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.event.EventRemoteDS.b(java.lang.String, rs.c):java.lang.Object");
    }
}
