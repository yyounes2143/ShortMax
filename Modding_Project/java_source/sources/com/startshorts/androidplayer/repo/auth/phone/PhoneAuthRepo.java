package com.startshorts.androidplayer.repo.auth.phone;

import com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS;
import com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: PhoneAuthRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PhoneAuthRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PhoneAuthRepo f43186a = new PhoneAuthRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43187b = c.b(new Function0() { // from class: fg.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PhoneAuthRemoteDS c10;
            c10 = PhoneAuthRepo.c();
            return c10;
        }
    });

    private PhoneAuthRepo() {
    }

    private final PhoneAuthRemoteDS b() {
        return (PhoneAuthRemoteDS) f43187b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PhoneAuthRemoteDS c() {
        return new PhoneAuthRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.region.Region>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$regionCode$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$regionCode$1 r0 = (com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$regionCode$1) r0
            int r1 = r0.f43190j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43190j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$regionCode$1 r0 = new com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$regionCode$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43188h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43190j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS r5 = r4.b()
            r0.f43190j = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo.d(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.NotNull java.lang.String r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.auth.OTPSendResult>> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$sendOTP$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$sendOTP$1 r0 = (com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$sendOTP$1) r0
            int r1 = r0.f43193j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43193j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$sendOTP$1 r0 = new com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$sendOTP$1
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.f43191h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f43193j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r8 = r12.n()
            goto L4d
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS r1 = r7.b()
            r6.f43193j = r2
            r2 = r9
            r3 = r10
            r4 = r8
            r5 = r11
            java.lang.Object r8 = r1.b(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L4d
            return r0
        L4d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo.e(java.lang.String, java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndBind$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndBind$1 r0 = (com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndBind$1) r0
            int r1 = r0.f43196j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43196j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndBind$1 r0 = new com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndBind$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f43194h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43196j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS r8 = r4.b()
            r0.f43196j = r3
            java.lang.Object r5 = r8.c(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo.f(java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull java.lang.String r15, @org.jetbrains.annotations.NotNull java.lang.String r16, @org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.auth.LoginResult>> r18) {
        /*
            r11 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndLogin$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndLogin$1 r1 = (com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndLogin$1) r1
            int r2 = r1.f43199j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43199j = r2
            r2 = r11
        L15:
            r10 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndLogin$1 r1 = new com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo$verifyOTPAndLogin$1
            r2 = r11
            r1.<init>(r11, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r10.f43197h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r10.f43199j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L55
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS r3 = r11.b()
            r10.f43199j = r4
            r4 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            java.lang.Object r0 = r3.d(r4, r5, r6, r7, r8, r9, r10)
            if (r0 != r1) goto L55
            return r1
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo.g(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
