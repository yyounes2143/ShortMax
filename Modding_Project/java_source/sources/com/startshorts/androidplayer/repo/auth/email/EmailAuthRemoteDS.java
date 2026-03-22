package com.startshorts.androidplayer.repo.auth.email;

import kotlin.Metadata;
/* compiled from: EmailAuthRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EmailAuthRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$1 r0 = (com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$1) r0
            int r1 = r0.f43140j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43140j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$1 r0 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43138h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43140j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L56
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r7.u(r5, r3)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r5.n()
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$2 r7 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$sendOTP$2
            r2 = 0
            r7.<init>(r6, r2)
            r0.f43140j = r3
            java.lang.Object r5 = r5.o(r7, r0)
            if (r5 != r1) goto L56
            return r1
        L56:
            boolean r6 = kotlin.Result.j(r5)
            if (r6 == 0) goto L67
            ud.b r6 = ud.b.f68412a
            com.startshorts.androidplayer.utils.DeviceUtil r7 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            long r0 = r7.K()
            r6.Y2(r0)
        L67:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS.a(android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$1 r0 = (com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$1) r0
            int r1 = r0.f43145j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43145j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$1 r0 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f43143h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43145j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L56
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r8.u(r5, r3)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = r5.n()
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$2 r8 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$2
            r2 = 0
            r8.<init>(r6, r7, r2)
            r0.f43145j = r3
            java.lang.Object r5 = r5.o(r8, r0)
            if (r5 != r1) goto L56
            return r1
        L56:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS.b(android.content.Context, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
